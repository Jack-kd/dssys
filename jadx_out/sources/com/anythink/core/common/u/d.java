package com.anythink.core.common.u;

import android.text.TextUtils;
import com.anythink.core.common.h.bj;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.u;
import com.anythink.core.common.h.x;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7840a = "d";

    /* renamed from: b, reason: collision with root package name */
    private static volatile d f7841b;

    /* renamed from: c, reason: collision with root package name */
    private long f7842c = 0;

    /* renamed from: d, reason: collision with root package name */
    private long f7843d = 0;

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, Long> f7844e = new ConcurrentHashMap();

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, bj> f7845f = new ConcurrentHashMap();

    private d() {
    }

    public static d a() {
        if (f7841b == null) {
            synchronized (d.class) {
                try {
                    if (f7841b == null) {
                        f7841b = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7841b;
    }

    private static boolean c(n nVar) {
        return nVar == null || TextUtils.isEmpty(nVar.aQ()) || TextUtils.isEmpty(nVar.A());
    }

    private static boolean d(n nVar) {
        try {
            String strAS = nVar.aS();
            if (TextUtils.isEmpty(strAS)) {
                return false;
            }
            return strAS.equals("0");
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean e(n nVar) {
        return nVar.Z() == 66;
    }

    private void f(String str, long j2) {
        a(str).f3925f = j2;
    }

    private void g(String str, long j2) {
        a(str).f3926g = j2;
    }

    public final long b() {
        long j2 = this.f7843d;
        if (j2 != 0) {
            long j3 = this.f7842c;
            if (j3 != 0) {
                return j3 - j2;
            }
        }
        return 0L;
    }

    public static long b(n nVar) {
        return nVar.d() - nVar.c();
    }

    private void e(String str, long j2) {
        a(str).f3924e = j2;
    }

    private void b(String str, long j2) {
        a(str).f3921b = j2;
    }

    private void c(String str, long j2) {
        a(str).f3922c = j2;
    }

    private void d(String str, long j2) {
        a(str).f3923d = j2;
    }

    private void b(String str) {
        this.f7845f.remove(str);
    }

    public final void a(int i2, n nVar) {
        if (c(nVar)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i2 != 4) {
            if (i2 != 6) {
                return;
            }
            nVar.o(jCurrentTimeMillis);
        } else {
            if (!d(nVar)) {
                this.f7842c = jCurrentTimeMillis;
            }
            nVar.n(jCurrentTimeMillis);
        }
    }

    public final void a(u uVar, n nVar) {
        if (c(nVar)) {
            return;
        }
        String str = uVar.f4395c;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!str.equals("1004634") || d(nVar)) {
            return;
        }
        this.f7843d = jCurrentTimeMillis;
        this.f7844e.put(nVar.aQ(), Long.valueOf(jCurrentTimeMillis));
    }

    public final long a(n nVar) {
        if (TextUtils.isEmpty(nVar.aQ())) {
            return 0L;
        }
        long jC = nVar.c();
        Long l2 = this.f7844e.get(nVar.aQ());
        if (l2 == null || l2.longValue() == 0 || jC == 0) {
            return 0L;
        }
        return jC - l2.longValue();
    }

    private static String a(x xVar) {
        return xVar.f4486f + "_ " + xVar.f4485e;
    }

    private bj a(String str) {
        bj bjVar = this.f7845f.get(str);
        if (bjVar != null) {
            return bjVar;
        }
        synchronized (this.f7845f) {
            if (bjVar == null) {
                try {
                    bjVar = new bj();
                    this.f7845f.put(str, bjVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return bjVar;
    }

    private void a(String str, long j2) {
        a(str).f3920a = j2;
    }
}
