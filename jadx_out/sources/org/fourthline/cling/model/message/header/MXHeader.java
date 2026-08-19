package org.fourthline.cling.model.message.header;

/* loaded from: classes5.dex */
public class MXHeader extends UpnpHeader<Integer> {
    public static final Integer DEFAULT_VALUE = 3;

    public MXHeader() {
        setValue(DEFAULT_VALUE);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().toString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException, NumberFormatException {
        try {
            int i2 = Integer.parseInt(str);
            Integer numValueOf = Integer.valueOf(i2);
            if (i2 < 0 || i2 > 120) {
                setValue(DEFAULT_VALUE);
            } else {
                setValue(numValueOf);
            }
        } catch (Exception unused) {
            throw new InvalidHeaderException("Can't parse MX seconds integer from: " + str);
        }
    }

    public MXHeader(Integer num) {
        setValue(num);
    }
}
