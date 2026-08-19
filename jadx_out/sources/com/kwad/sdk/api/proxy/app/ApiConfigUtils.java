package com.kwad.sdk.api.proxy.app;

import android.content.Context;

/* loaded from: classes4.dex */
public class ApiConfigUtils {
    private static final String PREFERENCE_NAME = "ksadsdk_config";

    public static int readInt(Context context, String str, int i2) {
        try {
            return context.getSharedPreferences(PREFERENCE_NAME, 0).getInt(str, i2);
        } catch (Throwable unused) {
            return i2;
        }
    }

    public static String readString(Context context, String str, String str2) {
        try {
            return context.getSharedPreferences(PREFERENCE_NAME, 0).getString(str, str2);
        } catch (Throwable unused) {
            return str2;
        }
    }
}
