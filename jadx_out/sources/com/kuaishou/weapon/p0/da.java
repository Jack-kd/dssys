package com.kuaishou.weapon.p0;

import android.content.Context;

/* loaded from: classes4.dex */
public class da {

    /* renamed from: b, reason: collision with root package name */
    private static volatile da f31068b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31069a;

    private da(Context context) {
        this.f31069a = context;
    }

    public static da a(Context context) {
        if (f31068b == null) {
            synchronized (da.class) {
                try {
                    if (f31068b == null) {
                        f31068b = new da(context);
                    }
                } finally {
                }
            }
        }
        return f31068b;
    }

    public void a(final int i2) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.da.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    h hVarA = h.a(da.this.f31069a, "re_po_rt");
                    if (hVarA.b(dd.ap, 1) == 1) {
                        long jA = dd.a(da.this.f31069a).a(dd.bl);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        int iB = hVarA.b(dd.as, 0);
                        long j2 = jCurrentTimeMillis - jA;
                        if (j2 >= hVarA.b(dd.ar, 6) * bg.f30873s || (i2 == 100 && iB == 1 && j2 >= 14400000)) {
                            ce.a(da.this.f31069a, new bu(da.this.f31069a, i2, false).a(ci.f30962f), ci.f30962f, true);
                            dd.a(da.this.f31069a).a(dd.bl, jCurrentTimeMillis);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
