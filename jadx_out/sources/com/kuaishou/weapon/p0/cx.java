package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class cx {

    /* renamed from: b, reason: collision with root package name */
    private static volatile cx f31048b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31049a;

    private cx(Context context) {
        this.f31049a = context;
    }

    public static cx a(Context context) {
        if (f31048b == null) {
            synchronized (cx.class) {
                try {
                    if (f31048b == null) {
                        f31048b = new cx(context);
                    }
                } finally {
                }
            }
        }
        return f31048b;
    }

    public void a(final int i2) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cx.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.a(cx.this.f31049a, "re_po_rt").b(dd.f31086G, 1) == 1) {
                        long jA = dd.a(cx.this.f31049a).a(dd.bm);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = r0.b(dd.f31088I, 12) * bg.f30873s;
                        if (jA > 0 && jCurrentTimeMillis - jA < WeaponHI.ii * bg.f30873s && WeaponHI.isList != null) {
                            int hours = new Date(jCurrentTimeMillis).getHours();
                            List<Integer> list = WeaponHI.isList;
                            StringBuilder sb = new StringBuilder();
                            sb.append(hours);
                            if (list.contains(sb.toString())) {
                                return;
                            }
                        }
                        if (jCurrentTimeMillis - jA >= jB || i2 == 106) {
                            cn.a(cx.this.f31049a, new ch(cx.this.f31049a).a(ci.f30964h), ci.f30964h, true, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
