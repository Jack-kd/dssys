package org.fourthline.cling.binding.annotations;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URI;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import org.fourthline.cling.binding.LocalServiceBinder;
import org.fourthline.cling.binding.LocalServiceBindingException;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.action.ActionExecutor;
import org.fourthline.cling.model.action.QueryStateVariableExecutor;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.QueryStateVariableAction;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.FieldStateVariableAccessor;
import org.fourthline.cling.model.state.GetterStateVariableAccessor;
import org.fourthline.cling.model.state.StateVariableAccessor;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDAServiceId;
import org.fourthline.cling.model.types.UDAServiceType;
import org.fourthline.cling.model.types.csv.CSV;
import org.seamless.util.Reflections;

/* loaded from: classes5.dex */
public class AnnotationLocalServiceBinder implements LocalServiceBinder {
    private static Logger log = Logger.getLogger(AnnotationLocalServiceBinder.class.getName());

    public static String toJavaActionName(String str) {
        if (str.length() < 1) {
            throw new IllegalArgumentException("Variable name must be at least 1 character long");
        }
        return str.substring(0, 1).toLowerCase(Locale.ROOT) + str.substring(1);
    }

    public static String toJavaStateVariableName(String str) {
        if (str.length() < 1) {
            throw new IllegalArgumentException("Variable name must be at least 1 character long");
        }
        return str.substring(0, 1).toLowerCase(Locale.ROOT) + str.substring(1);
    }

    public static String toUpnpActionName(String str) {
        if (str.length() < 1) {
            throw new IllegalArgumentException("Action name must be at least 1 character long");
        }
        return str.substring(0, 1).toUpperCase(Locale.ROOT) + str.substring(1);
    }

    public static String toUpnpStateVariableName(String str) {
        if (str.length() < 1) {
            throw new IllegalArgumentException("Variable name must be at least 1 character long");
        }
        return str.substring(0, 1).toUpperCase(Locale.ROOT) + str.substring(1);
    }

    public boolean isActionExcluded(Action action) {
        return false;
    }

    @Override // org.fourthline.cling.binding.LocalServiceBinder
    public LocalService read(Class<?> cls) throws LocalServiceBindingException {
        log.fine("Reading and binding annotations of service implementation class: " + cls);
        if (!cls.isAnnotationPresent(UpnpService.class)) {
            throw new LocalServiceBindingException("Given class is not an @UpnpService");
        }
        UpnpService upnpService = (UpnpService) cls.getAnnotation(UpnpService.class);
        UpnpServiceId upnpServiceIdServiceId = upnpService.serviceId();
        UpnpServiceType upnpServiceTypeServiceType = upnpService.serviceType();
        return read(cls, upnpServiceIdServiceId.namespace().equals(UDAServiceId.DEFAULT_NAMESPACE) ? new UDAServiceId(upnpServiceIdServiceId.value()) : new ServiceId(upnpServiceIdServiceId.namespace(), upnpServiceIdServiceId.value()), upnpServiceTypeServiceType.namespace().equals("schemas-upnp-org") ? new UDAServiceType(upnpServiceTypeServiceType.value(), upnpServiceTypeServiceType.version()) : new ServiceType(upnpServiceTypeServiceType.namespace(), upnpServiceTypeServiceType.value(), upnpServiceTypeServiceType.version()), upnpService.supportsQueryStateVariables(), readStringConvertibleTypes(upnpService.stringConvertibleTypes()));
    }

    public Map<Action, ActionExecutor> readActions(Class<?> cls, Map<StateVariable, StateVariableAccessor> map, Set<Class> set) throws LocalServiceBindingException {
        HashMap map2 = new HashMap();
        Iterator<Method> it = Reflections.getMethods(cls, UpnpAction.class).iterator();
        while (it.hasNext()) {
            Action actionAppendAction = new AnnotationActionBinder(it.next(), map, set).appendAction(map2);
            if (isActionExcluded(actionAppendAction)) {
                map2.remove(actionAppendAction);
            }
        }
        return map2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v12, types: [org.fourthline.cling.model.state.GetterStateVariableAccessor] */
    /* JADX WARN: Type inference failed for: r6v9, types: [org.fourthline.cling.model.state.GetterStateVariableAccessor] */
    public Map<StateVariable, StateVariableAccessor> readStateVariables(Class<?> cls, Set<Class> set) throws SecurityException, LocalServiceBindingException {
        FieldStateVariableAccessor fieldStateVariableAccessor;
        FieldStateVariableAccessor getterStateVariableAccessor;
        HashMap map = new HashMap();
        if (cls.isAnnotationPresent(UpnpStateVariables.class)) {
            UpnpStateVariables upnpStateVariables = (UpnpStateVariables) cls.getAnnotation(UpnpStateVariables.class);
            for (UpnpStateVariable upnpStateVariable : upnpStateVariables.value()) {
                if (upnpStateVariable.name().length() == 0) {
                    throw new LocalServiceBindingException("Class-level @UpnpStateVariable name attribute value required");
                }
                String javaStateVariableName = toJavaStateVariableName(upnpStateVariable.name());
                Method getterMethod = Reflections.getGetterMethod(cls, javaStateVariableName);
                Field field = Reflections.getField(cls, javaStateVariableName);
                if (getterMethod == null || field == null) {
                    if (field != null) {
                        fieldStateVariableAccessor = new FieldStateVariableAccessor(field);
                    } else if (getterMethod != null) {
                        getterStateVariableAccessor = new GetterStateVariableAccessor(getterMethod);
                        fieldStateVariableAccessor = getterStateVariableAccessor;
                    } else {
                        log.finer("No field or getter found for state variable, skipping accessor: " + upnpStateVariable.name());
                        fieldStateVariableAccessor = null;
                    }
                } else if (upnpStateVariables.preferFields()) {
                    fieldStateVariableAccessor = new FieldStateVariableAccessor(field);
                } else {
                    getterStateVariableAccessor = new GetterStateVariableAccessor(getterMethod);
                    fieldStateVariableAccessor = getterStateVariableAccessor;
                }
                map.put(new AnnotationStateVariableBinder(upnpStateVariable, upnpStateVariable.name(), fieldStateVariableAccessor, set).createStateVariable(), fieldStateVariableAccessor);
            }
        }
        for (Field field2 : Reflections.getFields(cls, UpnpStateVariable.class)) {
            UpnpStateVariable upnpStateVariable2 = (UpnpStateVariable) field2.getAnnotation(UpnpStateVariable.class);
            FieldStateVariableAccessor fieldStateVariableAccessor2 = new FieldStateVariableAccessor(field2);
            map.put(new AnnotationStateVariableBinder(upnpStateVariable2, upnpStateVariable2.name().length() == 0 ? toUpnpStateVariableName(field2.getName()) : upnpStateVariable2.name(), fieldStateVariableAccessor2, set).createStateVariable(), fieldStateVariableAccessor2);
        }
        for (Method method : Reflections.getMethods(cls, UpnpStateVariable.class)) {
            String methodPropertyName = Reflections.getMethodPropertyName(method.getName());
            if (methodPropertyName == null) {
                throw new LocalServiceBindingException("Annotated method is not a getter method (: " + method);
            }
            if (method.getParameterTypes().length > 0) {
                throw new LocalServiceBindingException("Getter method defined as @UpnpStateVariable can not have parameters: " + method);
            }
            UpnpStateVariable upnpStateVariable3 = (UpnpStateVariable) method.getAnnotation(UpnpStateVariable.class);
            GetterStateVariableAccessor getterStateVariableAccessor2 = new GetterStateVariableAccessor(method);
            map.put(new AnnotationStateVariableBinder(upnpStateVariable3, upnpStateVariable3.name().length() == 0 ? toUpnpStateVariableName(methodPropertyName) : upnpStateVariable3.name(), getterStateVariableAccessor2, set).createStateVariable(), getterStateVariableAccessor2);
        }
        return map;
    }

    public Set<Class> readStringConvertibleTypes(Class[] clsArr) throws NoSuchMethodException, SecurityException, LocalServiceBindingException {
        for (Class cls : clsArr) {
            if (!Modifier.isPublic(cls.getModifiers())) {
                throw new LocalServiceBindingException("Declared string-convertible type must be public: " + cls);
            }
            try {
                cls.getConstructor(String.class);
            } catch (NoSuchMethodException unused) {
                throw new LocalServiceBindingException("Declared string-convertible type needs a public single-argument String constructor: " + cls);
            }
        }
        HashSet hashSet = new HashSet(Arrays.asList(clsArr));
        hashSet.add(URI.class);
        hashSet.add(URL.class);
        hashSet.add(CSV.class);
        return hashSet;
    }

    @Override // org.fourthline.cling.binding.LocalServiceBinder
    public LocalService read(Class<?> cls, ServiceId serviceId, ServiceType serviceType, boolean z2, Class[] clsArr) throws LocalServiceBindingException {
        return read(cls, serviceId, serviceType, z2, new HashSet(Arrays.asList(clsArr)));
    }

    public LocalService read(Class<?> cls, ServiceId serviceId, ServiceType serviceType, boolean z2, Set<Class> set) throws SecurityException, LocalServiceBindingException {
        Map<StateVariable, StateVariableAccessor> stateVariables = readStateVariables(cls, set);
        Map<Action, ActionExecutor> actions = readActions(cls, stateVariables, set);
        if (z2) {
            actions.put(new QueryStateVariableAction(), new QueryStateVariableExecutor());
        }
        try {
            return new LocalService(serviceType, serviceId, actions, stateVariables, set, z2);
        } catch (ValidationException e2) {
            log.severe("Could not validate device model: " + e2.toString());
            Iterator<ValidationError> it = e2.getErrors().iterator();
            while (it.hasNext()) {
                log.severe(it.next().toString());
            }
            throw new LocalServiceBindingException("Validation of model failed, check the log");
        }
    }
}
