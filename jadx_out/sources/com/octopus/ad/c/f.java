package com.octopus.ad.c;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;

/* loaded from: classes4.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static c f33821a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f33822b = null;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f33823c = false;

    public static synchronized String a(Context context) {
        if (context != null) {
            try {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    if (f33821a == null) {
                        f33821a = a.a();
                    }
                    c cVar = f33821a;
                    if (cVar == null) {
                        return null;
                    }
                    try {
                        String strA = cVar.a(context);
                        if (!TextUtils.isEmpty(strA)) {
                            f33822b = strA;
                        }
                        f33823c = true;
                        return f33822b;
                    } catch (Throwable unused) {
                        return null;
                    }
                }
            } finally {
            }
        }
        return null;
    }

    public static String b(Context context) {
        return f33823c ? f33822b : a(context);
    }
}
