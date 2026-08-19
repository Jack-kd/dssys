package com.kwad.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class bv {
    public static long C(@Nullable Context context, boolean z2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!z2) {
            return jCurrentTimeMillis;
        }
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ksadsdk_pref", 0);
            if (sharedPreferences == null) {
                return Math.abs(jCurrentTimeMillis);
            }
            long j2 = sharedPreferences.getLong("key_time_diff_s2c", 0L);
            if (j2 != 0) {
                return jCurrentTimeMillis + j2;
            }
        }
        return Math.abs(jCurrentTimeMillis);
    }

    public static void a(long j2, int i2, @Nullable Context context) {
        if (j2 == 0 || context == null || i2 <= 0 || i2 > 100) {
            return;
        }
        long jCurrentTimeMillis = j2 - System.currentTimeMillis();
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("ksadsdk_pref", 0);
            if (sharedPreferences == null) {
                return;
            }
            if (Math.abs(jCurrentTimeMillis) / com.kuaishou.weapon.p0.bg.f30873s > i2) {
                sharedPreferences.edit().putLong("key_time_diff_s2c", jCurrentTimeMillis).apply();
            } else {
                sharedPreferences.edit().remove("key_time_diff_s2c").apply();
            }
        } catch (Throwable unused) {
        }
    }
}
