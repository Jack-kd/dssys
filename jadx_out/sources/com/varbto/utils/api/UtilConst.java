package com.varbto.utils.api;

/* loaded from: classes5.dex */
public final class UtilConst {
    public static final String CRASH_CAT_A = "A";
    public static final String CRASH_CAT_B = "B";
    public static final String CRASH_CAT_C = "C";
    public static final String CRASH_CAT_S = "S";
    public static final String CRASH_CAT_UNKNOWN = "UNKNOWN";
    public static final int SDK_MCSDK = 0;
    public static final int SDK_OTHER = 2;
    public static final int SDK_TOPON = 1;

    public static boolean isValidCrashCategory(String str) {
        if (str == null) {
            return false;
        }
        return "S".equals(str) || "A".equals(str) || CRASH_CAT_B.equals(str) || CRASH_CAT_C.equals(str) || "UNKNOWN".equals(str);
    }
}
