package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class cw {

    /* renamed from: b, reason: collision with root package name */
    private static volatile cw f31042b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31043a;

    private cw(Context context) {
        this.f31043a = context;
    }

    public static cw a(Context context) {
        if (f31042b == null) {
            synchronized (cw.class) {
                try {
                    if (f31042b == null) {
                        f31042b = new cw(context);
                    }
                } finally {
                }
            }
        }
        return f31042b;
    }

    public void a(final int i2) {
        try {
            h hVarA = h.a(this.f31043a, "re_po_rt");
            final boolean zE = hVarA.e("a1_p_s_p_s");
            final boolean zE2 = hVarA.e("a1_p_s_p_s_c_b");
            if ((zE || zE2) && WeaponHI.as) {
                n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cw.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i3;
                        try {
                            h hVarA2 = h.a(cw.this.f31043a, "re_po_rt");
                            if (hVarA2.b(dd.f31120o, 0) == 1) {
                                if (zE || zE2) {
                                    long jA = dd.a(cw.this.f31043a).a(dd.bi);
                                    long jCurrentTimeMillis = System.currentTimeMillis();
                                    long jB = hVarA2.b(dd.f31121p, 8) * bg.f30873s;
                                    int iB = hVarA2.b(dd.f31122q, 0);
                                    if (jA > 0 && jCurrentTimeMillis - jA < WeaponHI.ii * bg.f30873s && WeaponHI.isList != null) {
                                        int hours = new Date(jCurrentTimeMillis).getHours();
                                        List<Integer> list = WeaponHI.isList;
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(hours);
                                        if (list.contains(sb.toString())) {
                                            return;
                                        }
                                    }
                                    if (jCurrentTimeMillis - jA >= jB || (((i3 = i2) == 100 && iB == 1) || i3 == 106)) {
                                        cn.a(cw.this.f31043a, new cg(cw.this.f31043a, i2).a(ci.f30961e), ci.f30961e, true, true);
                                    }
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }
}
