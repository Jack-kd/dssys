package org.fourthline.cling.support.model.dlna;

/* loaded from: classes5.dex */
public enum DLNAOperations {
    NONE(0),
    RANGE(1),
    TIMESEEK(16);

    private int code;

    DLNAOperations(int i2) {
        this.code = i2;
    }

    public int getCode() {
        return this.code;
    }

    public static DLNAOperations valueOf(int i2) {
        for (DLNAOperations dLNAOperations : values()) {
            if (dLNAOperations.getCode() == i2) {
                return dLNAOperations;
            }
        }
        return null;
    }
}
