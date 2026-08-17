package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;

/* loaded from: classes5.dex */
public class SupportedHeader extends DLNAHeader<String[]> {
    public SupportedHeader() {
        setValue(new String[0]);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        String[] value = getValue();
        String str = value.length > 0 ? value[0] : "";
        for (int i2 = 1; i2 < value.length; i2++) {
            str = str + "," + value[i2];
        }
        return str;
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            if (str.endsWith(";")) {
                str = str.substring(0, str.length() - 1);
            }
            setValue(str.split("\\s*,\\s*"));
        } else {
            throw new InvalidHeaderException("Invalid Supported header value: " + str);
        }
    }
}
