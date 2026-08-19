package org.fourthline.cling.support.model.dlna;

/* loaded from: classes5.dex */
public enum DLNAConversionIndicator {
    NONE(0),
    TRANSCODED(1);

    private int code;

    DLNAConversionIndicator(int i2) {
        this.code = i2;
    }

    public int getCode() {
        return this.code;
    }

    public static DLNAConversionIndicator valueOf(int i2) {
        for (DLNAConversionIndicator dLNAConversionIndicator : values()) {
            if (dLNAConversionIndicator.getCode() == i2) {
                return dLNAConversionIndicator;
            }
        }
        return null;
    }
}
