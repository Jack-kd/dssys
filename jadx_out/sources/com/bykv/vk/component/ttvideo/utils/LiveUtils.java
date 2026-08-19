package com.bykv.vk.component.ttvideo.utils;

/* loaded from: classes3.dex */
public class LiveUtils {
    public static int versionStringToInt(String str) throws NumberFormatException {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length <= 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < strArrSplit.length; i3++) {
            i2 = i3 == 0 ? Integer.parseInt(strArrSplit[i3]) : (i2 * 100) + Integer.parseInt(strArrSplit[i3]);
        }
        return i2;
    }
}
