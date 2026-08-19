package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.pro.be;

/* loaded from: classes5.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50176a = be.b().b(be.f48815r);

    /* renamed from: b, reason: collision with root package name */
    private static final String f50177b = "um_common_strength";

    /* renamed from: c, reason: collision with root package name */
    private static final String f50178c = "um_common_battery";

    public static String a(Context context) {
        SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f50176a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f50178c, null);
    }

    public static void a(Context context, String str) {
        SharedPreferences sharedPreferences;
        if (context == null || TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences(f50176a, 0)) == null) {
            return;
        }
        sharedPreferences.edit().putString(f50178c, str).commit();
    }
}
