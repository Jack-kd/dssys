package com.anythink.core.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.k;
import com.anythink.core.e.m;

/* loaded from: classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static volatile c f1535b;

    /* renamed from: a, reason: collision with root package name */
    final String f1536a = c.class.getSimpleName();

    public static c a() {
        if (f1535b == null) {
            synchronized (c.class) {
                try {
                    if (f1535b == null) {
                        f1535b = new c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1535b;
    }

    public static void b(Context context, String str, m mVar) {
        if (context == null || mVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        b.a(context).a(mVar.aD(), mVar.aE(), str, mVar.ap());
    }

    private static void c(Context context, by byVar, String str) {
        if (context == null || byVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        b.a(context).d(byVar);
    }

    public static void b(Context context, by byVar, String str) {
        if (context == null || byVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        b.a(context).a(byVar);
    }

    public static int a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            int iA = b.a(context).a(str);
            int i2 = b.f1499n;
            return iA != i2 ? iA : i2;
        }
        return b.f1499n;
    }

    public static void b(Context context, by byVar) {
        if (context == null || byVar == null) {
            return;
        }
        b.a(context).c(byVar);
    }

    public static int a(Context context, String str, m mVar) {
        if (context != null && mVar != null && !TextUtils.isEmpty(str)) {
            return b.a(context).a(mVar.aD(), mVar.aE(), str);
        }
        return b.f1499n;
    }

    public static int a(Context context, by byVar, String str, int i2) {
        if (context != null && byVar != null && !TextUtils.isEmpty(str)) {
            return b.a(context).a(byVar.bv(), byVar.bw(), byVar.n(), byVar.G(), String.valueOf(i2));
        }
        return b.f1499n;
    }

    public static void a(Context context, by byVar, String str) {
        if (context == null || byVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            b.a(context).d(byVar);
        }
        int iBv = byVar.bv();
        long jBw = byVar.bw();
        String strG = byVar.G();
        b.a(context).b(iBv, jBw, byVar.n(), strG, String.valueOf(byVar.bn()));
    }

    public static k a(Context context, by byVar) {
        if (context == null || byVar == null) {
            return null;
        }
        return b.a(context).b(byVar);
    }
}
