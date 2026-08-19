package org.fourthline.cling.support.model.dlna;

import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable;

/* loaded from: classes5.dex */
public class DLNAPlaySpeedAttribute extends DLNAAttribute<AVTransportVariable.TransportPlaySpeed[]> {
    public DLNAPlaySpeedAttribute() {
        setValue(new AVTransportVariable.TransportPlaySpeed[0]);
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public String getString() {
        String string = "";
        for (AVTransportVariable.TransportPlaySpeed transportPlaySpeed : getValue()) {
            if (!transportPlaySpeed.getValue().equals("1")) {
                StringBuilder sb = new StringBuilder();
                sb.append(string);
                sb.append(string.length() == 0 ? "" : ",");
                sb.append(transportPlaySpeed);
                string = sb.toString();
            }
        }
        return string;
    }

    @Override // org.fourthline.cling.support.model.dlna.DLNAAttribute
    public void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException {
        AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr = null;
        if (str != null && str.length() != 0) {
            String[] strArrSplit = str.split(",");
            try {
                AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr2 = new AVTransportVariable.TransportPlaySpeed[strArrSplit.length];
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    transportPlaySpeedArr2[i2] = new AVTransportVariable.TransportPlaySpeed(strArrSplit[i2]);
                }
                transportPlaySpeedArr = transportPlaySpeedArr2;
            } catch (InvalidValueException unused) {
            }
        }
        if (transportPlaySpeedArr != null) {
            setValue(transportPlaySpeedArr);
            return;
        }
        throw new InvalidDLNAProtocolAttributeException("Can't parse DLNA play speeds from: " + str);
    }

    public DLNAPlaySpeedAttribute(AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr) {
        setValue(transportPlaySpeedArr);
    }

    public DLNAPlaySpeedAttribute(String[] strArr) {
        AVTransportVariable.TransportPlaySpeed[] transportPlaySpeedArr = new AVTransportVariable.TransportPlaySpeed[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            try {
                transportPlaySpeedArr[i2] = new AVTransportVariable.TransportPlaySpeed(strArr[i2]);
            } catch (InvalidValueException unused) {
                throw new InvalidDLNAProtocolAttributeException("Can't parse DLNA play speeds.");
            }
        }
        setValue(transportPlaySpeedArr);
    }
}
