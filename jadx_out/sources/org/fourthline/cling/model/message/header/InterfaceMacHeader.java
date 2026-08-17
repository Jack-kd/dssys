package org.fourthline.cling.model.message.header;

import org.seamless.util.io.HexBin;

/* loaded from: classes5.dex */
public class InterfaceMacHeader extends UpnpHeader<byte[]> {
    public InterfaceMacHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        return HexBin.bytesToString(getValue(), ":");
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException {
        byte[] bArrStringToBytes = HexBin.stringToBytes(str, ":");
        setValue(bArrStringToBytes);
        if (bArrStringToBytes.length == 6) {
            return;
        }
        throw new InvalidHeaderException("Invalid MAC address: " + str);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String toString() {
        return "(" + getClass().getSimpleName() + ") '" + getString() + "'";
    }

    public InterfaceMacHeader(byte[] bArr) {
        setValue(bArr);
    }

    public InterfaceMacHeader(String str) throws InvalidHeaderException {
        setString(str);
    }
}
