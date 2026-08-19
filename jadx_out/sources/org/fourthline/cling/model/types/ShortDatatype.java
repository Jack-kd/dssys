package org.fourthline.cling.model.types;

/* loaded from: classes5.dex */
public class ShortDatatype extends AbstractDatatype<Short> {
    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isHandlingJavaType(Class cls) {
        return cls == Short.TYPE || Short.class.isAssignableFrom(cls);
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public Short valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            Short shValueOf = Short.valueOf(Short.parseShort(str.trim()));
            if (isValid(shValueOf)) {
                return shValueOf;
            }
            throw new InvalidValueException("Not a valid short: " + str);
        } catch (NumberFormatException e2) {
            throw new InvalidValueException("Can't convert string to number: " + str, e2);
        }
    }
}
