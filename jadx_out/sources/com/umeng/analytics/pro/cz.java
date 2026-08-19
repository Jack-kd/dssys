package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes5.dex */
public class cz {

    /* renamed from: a, reason: collision with root package name */
    public static final String f49148a = "cl_count";

    /* renamed from: b, reason: collision with root package name */
    public static final String f49149b = "interval_";

    /* renamed from: c, reason: collision with root package name */
    public static final String f49150c = "config_ts";

    /* renamed from: d, reason: collision with root package name */
    private static final String f49151d = "ncc_sp_config_file";

    private cz() {
    }

    public static SharedPreferences a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getSharedPreferences(f49151d, 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void b(Context context) {
        SharedPreferences sharedPreferencesA;
        if (context == null || (sharedPreferencesA = a(context)) == null) {
            return;
        }
        sharedPreferencesA.edit().putInt("cl_count", sharedPreferencesA.getInt("cl_count", 0) + 1).apply();
    }

    public static int c(Context context) {
        SharedPreferences sharedPreferencesA;
        if (context == null || (sharedPreferencesA = a(context)) == null) {
            return 0;
        }
        return sharedPreferencesA.getInt("cl_count", 0);
    }
}
