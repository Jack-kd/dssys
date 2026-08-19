package org.fourthline.cling.binding.annotations;

import java.util.Set;
import java.util.logging.Logger;
import org.fourthline.cling.binding.AllowedValueProvider;
import org.fourthline.cling.binding.AllowedValueRangeProvider;
import org.fourthline.cling.binding.LocalServiceBindingException;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.meta.StateVariableAllowedValueRange;
import org.fourthline.cling.model.meta.StateVariableEventDetails;
import org.fourthline.cling.model.meta.StateVariableTypeDetails;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.Datatype;

/* loaded from: classes5.dex */
public class AnnotationStateVariableBinder {
    private static Logger log = Logger.getLogger(AnnotationLocalServiceBinder.class.getName());
    protected StateVariableAccessor accessor;
    protected UpnpStateVariable annotation;
    protected String name;
    protected Set<Class> stringConvertibleTypes;

    public AnnotationStateVariableBinder(UpnpStateVariable upnpStateVariable, String str, StateVariableAccessor stateVariableAccessor, Set<Class> set) {
        this.annotation = upnpStateVariable;
        this.name = str;
        this.accessor = stateVariableAccessor;
        this.stringConvertibleTypes = set;
    }

    public Datatype createDatatype() throws LocalServiceBindingException {
        String strDatatype = getAnnotation().datatype();
        if (strDatatype.length() == 0 && getAccessor() != null) {
            Class<?> returnType = getAccessor().getReturnType();
            log.finer("Using accessor return type as state variable type: " + returnType);
            if (ModelUtil.isStringConvertibleType(getStringConvertibleTypes(), returnType)) {
                log.finer("Return type is string-convertible, using string datatype");
                return Datatype.Default.STRING.getBuiltinType().getDatatype();
            }
            Datatype.Default byJavaType = Datatype.Default.getByJavaType(returnType);
            if (byJavaType != null) {
                log.finer("Return type has default UPnP datatype: " + byJavaType);
                return byJavaType.getBuiltinType().getDatatype();
            }
        }
        if (strDatatype.length() == 0 && (getAnnotation().allowedValues().length > 0 || getAnnotation().allowedValuesEnum() != Void.TYPE)) {
            log.finer("State variable has restricted allowed values, hence using 'string' datatype");
            strDatatype = "string";
        }
        if (strDatatype.length() == 0) {
            throw new LocalServiceBindingException("Could not detect datatype of state variable: " + getName());
        }
        log.finer("Trying to find built-in UPnP datatype for detected name: " + strDatatype);
        Datatype.Builtin byDescriptorName = Datatype.Builtin.getByDescriptorName(strDatatype);
        if (byDescriptorName == null) {
            throw new LocalServiceBindingException("No built-in UPnP datatype found, using CustomDataType (TODO: NOT IMPLEMENTED)");
        }
        log.finer("Found built-in UPnP datatype: " + byDescriptorName);
        return byDescriptorName.getDatatype();
    }

    public String createDefaultValue(Datatype datatype) throws LocalServiceBindingException {
        if (getAnnotation().defaultValue().length() == 0) {
            return null;
        }
        try {
            datatype.valueOf(getAnnotation().defaultValue());
            log.finer("Found state variable default value: " + getAnnotation().defaultValue());
            return getAnnotation().defaultValue();
        } catch (Exception e2) {
            throw new LocalServiceBindingException("Default value doesn't match datatype of state variable '" + getName() + "': " + e2.getMessage());
        }
    }

    public StateVariable createStateVariable() throws LocalServiceBindingException {
        String[] allowedValues;
        int i2;
        int iEventMaximumRateMilliseconds;
        log.fine("Creating state variable '" + getName() + "' with accessor: " + getAccessor());
        Datatype datatypeCreateDatatype = createDatatype();
        String strCreateDefaultValue = createDefaultValue(datatypeCreateDatatype);
        boolean zEquals = Datatype.Builtin.STRING.equals(datatypeCreateDatatype.getBuiltin());
        Class cls = Void.TYPE;
        int iEventMinimumDelta = 0;
        StateVariableAllowedValueRange allowedValueRange = null;
        if (zEquals) {
            if (getAnnotation().allowedValueProvider() != cls) {
                allowedValues = getAllowedValuesFromProvider();
            } else if (getAnnotation().allowedValues().length > 0) {
                allowedValues = getAnnotation().allowedValues();
            } else if (getAnnotation().allowedValuesEnum() != cls) {
                allowedValues = getAllowedValues(getAnnotation().allowedValuesEnum());
            } else if (getAccessor() == null || !getAccessor().getReturnType().isEnum()) {
                log.finer("Not restricting allowed values (of string typed state var): " + getName());
                allowedValues = null;
            } else {
                allowedValues = getAllowedValues(getAccessor().getReturnType());
            }
            if (allowedValues != null && strCreateDefaultValue != null) {
                for (String str : allowedValues) {
                    if (!str.equals(strCreateDefaultValue)) {
                    }
                }
                throw new LocalServiceBindingException("Default value '" + strCreateDefaultValue + "' is not in allowed values of: " + getName());
            }
        } else {
            allowedValues = null;
        }
        if (Datatype.Builtin.isNumeric(datatypeCreateDatatype.getBuiltin())) {
            if (getAnnotation().allowedValueRangeProvider() != cls) {
                allowedValueRange = getAllowedRangeFromProvider();
            } else if (getAnnotation().allowedValueMinimum() > 0 || getAnnotation().allowedValueMaximum() > 0) {
                allowedValueRange = getAllowedValueRange(getAnnotation().allowedValueMinimum(), getAnnotation().allowedValueMaximum(), getAnnotation().allowedValueStep());
            } else {
                log.finer("Not restricting allowed value range (of numeric typed state var): " + getName());
            }
            if (strCreateDefaultValue != null && allowedValueRange != null) {
                try {
                    if (!allowedValueRange.isInRange(Long.valueOf(strCreateDefaultValue).longValue())) {
                        throw new LocalServiceBindingException("Default value '" + strCreateDefaultValue + "' is not in allowed range of: " + getName());
                    }
                } catch (Exception unused) {
                    throw new LocalServiceBindingException("Default value '" + strCreateDefaultValue + "' is not numeric (for range checking) of: " + getName());
                }
            }
        }
        boolean zSendEvents = getAnnotation().sendEvents();
        if (zSendEvents && getAccessor() == null) {
            throw new LocalServiceBindingException("State variable sends events but has no accessor for field or getter: " + getName());
        }
        if (zSendEvents) {
            if (getAnnotation().eventMaximumRateMilliseconds() > 0) {
                log.finer("Moderating state variable events using maximum rate (milliseconds): " + getAnnotation().eventMaximumRateMilliseconds());
                iEventMaximumRateMilliseconds = getAnnotation().eventMaximumRateMilliseconds();
            } else {
                iEventMaximumRateMilliseconds = 0;
            }
            if (getAnnotation().eventMinimumDelta() > 0 && Datatype.Builtin.isNumeric(datatypeCreateDatatype.getBuiltin())) {
                log.finer("Moderating state variable events using minimum delta: " + getAnnotation().eventMinimumDelta());
                iEventMinimumDelta = getAnnotation().eventMinimumDelta();
            }
            int i3 = iEventMinimumDelta;
            iEventMinimumDelta = iEventMaximumRateMilliseconds;
            i2 = i3;
        } else {
            i2 = 0;
        }
        return new StateVariable(getName(), new StateVariableTypeDetails(datatypeCreateDatatype, strCreateDefaultValue, allowedValues, allowedValueRange), new StateVariableEventDetails(zSendEvents, iEventMinimumDelta, i2));
    }

    public StateVariableAccessor getAccessor() {
        return this.accessor;
    }

    public StateVariableAllowedValueRange getAllowedRangeFromProvider() throws LocalServiceBindingException {
        Class clsAllowedValueRangeProvider = getAnnotation().allowedValueRangeProvider();
        if (!AllowedValueRangeProvider.class.isAssignableFrom(clsAllowedValueRangeProvider)) {
            throw new LocalServiceBindingException("Allowed value range provider is not of type " + AllowedValueRangeProvider.class + ": " + getName());
        }
        try {
            AllowedValueRangeProvider allowedValueRangeProvider = (AllowedValueRangeProvider) clsAllowedValueRangeProvider.newInstance();
            return getAllowedValueRange(allowedValueRangeProvider.getMinimum(), allowedValueRangeProvider.getMaximum(), allowedValueRangeProvider.getStep());
        } catch (Exception e2) {
            throw new LocalServiceBindingException("Allowed value range provider can't be instantiated: " + getName(), e2);
        }
    }

    public StateVariableAllowedValueRange getAllowedValueRange(long j2, long j3, long j4) throws LocalServiceBindingException {
        if (j3 >= j2) {
            return new StateVariableAllowedValueRange(j2, j3, j4);
        }
        throw new LocalServiceBindingException("Allowed value range maximum is smaller than minimum: " + getName());
    }

    public String[] getAllowedValues(Class cls) throws LocalServiceBindingException {
        if (!cls.isEnum()) {
            throw new LocalServiceBindingException("Allowed values type is not an Enum: " + cls);
        }
        log.finer("Restricting allowed values of state variable to Enum: " + getName());
        String[] strArr = new String[cls.getEnumConstants().length];
        for (int i2 = 0; i2 < cls.getEnumConstants().length; i2++) {
            Object obj = cls.getEnumConstants()[i2];
            if (obj.toString().length() > 32) {
                throw new LocalServiceBindingException("Allowed value string (that is, Enum constant name) is longer than 32 characters: " + obj.toString());
            }
            log.finer("Adding allowed value (converted to string): " + obj.toString());
            strArr[i2] = obj.toString();
        }
        return strArr;
    }

    public String[] getAllowedValuesFromProvider() throws LocalServiceBindingException {
        Class clsAllowedValueProvider = getAnnotation().allowedValueProvider();
        if (AllowedValueProvider.class.isAssignableFrom(clsAllowedValueProvider)) {
            try {
                return ((AllowedValueProvider) clsAllowedValueProvider.newInstance()).getValues();
            } catch (Exception e2) {
                throw new LocalServiceBindingException("Allowed value provider can't be instantiated: " + getName(), e2);
            }
        }
        throw new LocalServiceBindingException("Allowed value provider is not of type " + AllowedValueProvider.class + ": " + getName());
    }

    public UpnpStateVariable getAnnotation() {
        return this.annotation;
    }

    public String getName() {
        return this.name;
    }

    public Set<Class> getStringConvertibleTypes() {
        return this.stringConvertibleTypes;
    }
}
