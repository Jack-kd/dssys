package com.czhj.sdk.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.czhj.sdk.common.utils.Preconditions;

/* loaded from: classes3.dex */
public final class SharedPreferencesUtil {

    /* renamed from: a, reason: collision with root package name */
    private static String f29549a = "com.sigmob.Settings";

    private SharedPreferencesUtil(String str) {
        f29549a = str;
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        Preconditions.NoThrow.checkNotNull(context);
        return context.getSharedPreferences(f29549a, 4);
    }

    public static SharedPreferences getSharedPreferences(Context context, String str) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(str);
        return context.getSharedPreferences(str, 4);
    }
}
