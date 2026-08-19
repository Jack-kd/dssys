package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class ik {
    public static String a(Context context) {
        String strB;
        return context == null ? "" : ((t3.a() == null || (!t3.b() && t3.a().d())) && (strB = sm.b(context, "__HONOROAID__")) != null) ? strB : "";
    }

    public static String b(Context context) {
        String strB;
        if (context == null) {
            return "";
        }
        String strA = t3.a() != null ? t3.a().a() : null;
        return !TextUtils.isEmpty(strA) ? strA : ((t3.a() == null || (!t3.b() && t3.a().d())) && (strB = sm.b(context, "__OAID__")) != null) ? strB : "";
    }
}
