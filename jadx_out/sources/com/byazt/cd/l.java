package com.byazt.cd;

/* loaded from: classes2.dex */
public enum l {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);

    public final int eb;

    l(int i2) {
        this.eb = i2;
    }

    public static l hp(int i2) {
        try {
            for (l lVar : values()) {
                if (lVar.eb == i2) {
                    return lVar;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
