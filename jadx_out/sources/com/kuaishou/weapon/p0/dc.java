package com.kuaishou.weapon.p0;

import android.content.Context;

/* loaded from: classes4.dex */
public class dc {

    /* renamed from: b, reason: collision with root package name */
    private static volatile dc f31076b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31077a;

    private dc(Context context) {
        this.f31077a = context;
    }

    public static dc a(Context context) {
        if (f31076b == null) {
            synchronized (dc.class) {
                try {
                    if (f31076b == null) {
                        f31076b = new dc(context);
                    }
                } finally {
                }
            }
        }
        return f31076b;
    }

    public void a(final int i2) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.dc.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.a(dc.this.f31077a, "re_po_rt").b(dd.f31081B, 0) == 1) {
                        long jA = dd.a(dc.this.f31077a).a(dd.bn);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (jCurrentTimeMillis - jA >= r1.b(dd.f31084E, 2) * bg.f30873s || i2 == 106) {
                            try {
                                String strA = new cm(dc.this.f31077a).a(ci.f30965i);
                                int iIntValue = Integer.valueOf(ci.f30965i).intValue();
                                if (strA != null && strA.length() > 10) {
                                    new ba(dc.this.f31077a, strA, iIntValue).a(com.sigmob.sdk.base.n.f36446i);
                                }
                            } catch (Throwable unused) {
                            }
                            dd.a(dc.this.f31077a).a(dd.bn, jCurrentTimeMillis);
                        }
                    }
                } catch (Throwable unused2) {
                }
            }
        });
    }
}
