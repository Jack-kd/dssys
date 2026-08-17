package com.anythink.core.basead;

import android.content.Context;
import com.anythink.core.common.d.t;
import com.anythink.core.common.h.x;
import com.anythink.core.common.v.ad;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile b f1622a;

    private b() {
    }

    private static b a() {
        if (f1622a == null) {
            synchronized (b.class) {
                try {
                    if (f1622a == null) {
                        f1622a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1622a;
    }

    private static void b(Context context, String str) {
        ad.a(context, t.b.f3062e, str);
    }

    private static void a(Context context, String str, String str2) {
        ad.b(context, t.b.f3062e, str, str2);
    }

    private static String a(Context context, String str) {
        return ad.c(context, t.b.f3062e, str, "");
    }

    private static String a(x xVar) {
        if (xVar == null) {
            return "";
        }
        return xVar.f4481a + "_" + xVar.f4485e + "_" + xVar.f4490j;
    }

    private static String a(String str, String str2, int i2) {
        return str + "_" + str2 + "_" + i2;
    }
}
