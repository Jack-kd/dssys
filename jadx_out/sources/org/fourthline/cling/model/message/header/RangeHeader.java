package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;

/* loaded from: classes5.dex */
public class RangeHeader extends UpnpHeader<BytesRange> {
    public RangeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return getValue().getString();
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(BytesRange.valueOf(str));
        } catch (InvalidValueException e2) {
            throw new InvalidHeaderException("Invalid Range Header: " + e2.getMessage());
        }
    }

    public RangeHeader(BytesRange bytesRange) {
        setValue(bytesRange);
    }

    public RangeHeader(String str) throws InvalidHeaderException {
        setString(str);
    }
}
