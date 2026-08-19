package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange;

/* loaded from: classes5.dex */
public class AvailableSeekRangeHeader extends DLNAHeader<AvailableSeekRangeType> {
    public AvailableSeekRangeHeader() {
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public String getString() {
        AvailableSeekRangeType value = getValue();
        String string = Integer.toString(value.getModeFlag().ordinal());
        if (value.getNormalPlayTimeRange() != null) {
            string = string + " " + value.getNormalPlayTimeRange().getString(false);
        }
        if (value.getBytesRange() == null) {
            return string;
        }
        return string + " " + value.getBytesRange().getString(false);
    }

    @Override // org.fourthline.cling.model.message.header.UpnpHeader
    public void setString(String str) throws InvalidHeaderException, InvalidValueException {
        NormalPlayTimeRange normalPlayTimeRangeValueOf;
        if (str.length() != 0) {
            String[] strArrSplit = str.split(" ");
            boolean z2 = true;
            if (strArrSplit.length > 1) {
                try {
                    try {
                        AvailableSeekRangeType.Mode modeValueOf = AvailableSeekRangeType.Mode.valueOf("MODE_" + strArrSplit[0]);
                        BytesRange bytesRangeValueOf = null;
                        try {
                            try {
                                normalPlayTimeRangeValueOf = NormalPlayTimeRange.valueOf(strArrSplit[1], true);
                            } catch (InvalidValueException unused) {
                                bytesRangeValueOf = BytesRange.valueOf(strArrSplit[1]);
                                z2 = false;
                                normalPlayTimeRangeValueOf = null;
                            }
                            if (!z2) {
                                setValue(new AvailableSeekRangeType(modeValueOf, bytesRangeValueOf));
                                return;
                            } else if (strArrSplit.length > 2) {
                                setValue(new AvailableSeekRangeType(modeValueOf, normalPlayTimeRangeValueOf, BytesRange.valueOf(strArrSplit[2])));
                                return;
                            } else {
                                setValue(new AvailableSeekRangeType(modeValueOf, normalPlayTimeRangeValueOf));
                                return;
                            }
                        } catch (InvalidValueException unused2) {
                            throw new InvalidValueException("Invalid AvailableSeekRange Range");
                        }
                    } catch (IllegalArgumentException unused3) {
                        throw new InvalidValueException("Invalid AvailableSeekRange Mode");
                    }
                } catch (InvalidValueException e2) {
                    throw new InvalidHeaderException("Invalid AvailableSeekRange header value: " + str + "; " + e2.getMessage());
                }
            }
        }
        throw new InvalidHeaderException("Invalid AvailableSeekRange header value: " + str);
    }

    public AvailableSeekRangeHeader(AvailableSeekRangeType availableSeekRangeType) {
        setValue(availableSeekRangeType);
    }
}
