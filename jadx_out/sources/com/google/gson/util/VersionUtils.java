package com.google.gson.util;

/* loaded from: classes3.dex */
public class VersionUtils {
    private static final int majorJavaVersion = determineMajorJavaVersion();

    private static int determineMajorJavaVersion() throws NumberFormatException {
        String[] strArrSplit = System.getProperty("java.version").split("[._]");
        int i2 = Integer.parseInt(strArrSplit[0]);
        return (i2 != 1 || strArrSplit.length <= 1) ? i2 : Integer.parseInt(strArrSplit[1]);
    }

    public static int getMajorJavaVersion() {
        return majorJavaVersion;
    }

    public static boolean isJava9OrLater() {
        return majorJavaVersion >= 9;
    }
}
