package com.anythink.core.a;

import android.content.Context;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.bq;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;
import com.anythink.core.e.m;

/* loaded from: classes.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    private static volatile a f1496c;

    /* renamed from: a, reason: collision with root package name */
    Context f1497a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1498b = getClass().getSimpleName();

    private a(Context context) {
        this.f1497a = context;
    }

    public static a a(Context context) {
        if (f1496c == null) {
            synchronized (a.class) {
                try {
                    if (f1496c == null) {
                        f1496c = new a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1496c;
    }

    public static int a(m mVar, String str) {
        if (mVar == null) {
            return b.f1499n;
        }
        return b.a(s.b().g()).a(str, String.valueOf(mVar.ap()), mVar.au(), mVar.av());
    }

    public static int a(by byVar, int i2) {
        if (byVar == null) {
            return b.f1499n;
        }
        b bVarA = b.a(s.b().g());
        String strValueOf = String.valueOf(byVar.n());
        String strG = byVar.G();
        String strValueOf2 = String.valueOf(i2);
        long jP = byVar.p();
        long jQ = byVar.q();
        byVar.F();
        return bVarA.a(strValueOf, strG, strValueOf2, jP, jQ);
    }

    public static bq a(String str, int i2) {
        b bVarA = b.a(s.b().g());
        bq bqVar = new bq();
        bqVar.f4018b = str;
        bqVar.f4017a = i2;
        bqVar.f4019c = (int) bVarA.b(str);
        bqVar.f4020d = (int) bVarA.c(str);
        return bqVar;
    }

    public static bq.a a(String str) {
        b bVarA = b.a(s.b().g());
        bq.a aVar = new bq.a();
        aVar.f4025a = str;
        aVar.f4028d = (int) bVarA.d(str);
        aVar.f4029e = (int) bVarA.e(str);
        return aVar;
    }

    public static int[] a(int i2) {
        b bVarA = b.a(s.b().g());
        String strValueOf = String.valueOf(i2);
        return new int[]{(int) bVarA.f(strValueOf), (int) bVarA.g(strValueOf)};
    }

    public static void a(n nVar, String str, String str2, String str3) {
        b.a(s.b().g()).a(nVar.Z(), str, str2, str3);
    }
}
