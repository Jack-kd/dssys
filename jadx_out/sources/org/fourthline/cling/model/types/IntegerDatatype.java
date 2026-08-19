package org.fourthline.cling.model.types;

/* loaded from: classes5.dex */
public class IntegerDatatype extends AbstractDatatype<Integer> {
    private int byteSize;

    public IntegerDatatype(int i2) {
        this.byteSize = i2;
    }

    public int getByteSize() {
        return this.byteSize;
    }

    public int getMaxValue() {
        int byteSize = getByteSize();
        if (byteSize == 1) {
            return 127;
        }
        if (byteSize == 2) {
            return 32767;
        }
        if (byteSize == 4) {
            return Integer.MAX_VALUE;
        }
        throw new IllegalArgumentException("Invalid integer byte size: " + getByteSize());
    }

    public int getMinValue() {
        int byteSize = getByteSize();
        if (byteSize == 1) {
            return -128;
        }
        if (byteSize == 2) {
            return -32768;
        }
        if (byteSize == 4) {
            return Integer.MIN_VALUE;
        }
        throw new IllegalArgumentException("Invalid integer byte size: " + getByteSize());
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isHandlingJavaType(Class cls) {
        return cls == Integer.TYPE || Integer.class.isAssignableFrom(cls);
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public boolean isValid(Integer num) {
        if (num != null) {
            return num.intValue() >= getMinValue() && num.intValue() <= getMaxValue();
        }
        return true;
    }

    @Override // org.fourthline.cling.model.types.AbstractDatatype, org.fourthline.cling.model.types.Datatype
    public Integer valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        try {
            Integer numValueOf = Integer.valueOf(Integer.parseInt(str.trim()));
            if (isValid(numValueOf)) {
                return numValueOf;
            }
            throw new InvalidValueException("Not a " + getByteSize() + " byte(s) integer: " + str);
        } catch (NumberFormatException e2) {
            if (str.equals("NOT_IMPLEMENTED")) {
                return Integer.valueOf(getMaxValue());
            }
            throw new InvalidValueException("Can't convert string to number: " + str, e2);
        }
    }
}
