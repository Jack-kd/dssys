package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class cz {

    /* renamed from: b, reason: collision with root package name */
    private static volatile cz f31061b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31062a;

    private cz(Context context) {
        this.f31062a = context;
    }

    public static cz a(Context context) {
        if (f31061b == null) {
            synchronized (cz.class) {
                try {
                    if (f31061b == null) {
                        f31061b = new cz(context);
                    }
                } finally {
                }
            }
        }
        return f31061b;
    }

    public void a(final int i2, final int i3) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cz.1
            @Override // java.lang.Runnable
            public void run() {
                int i4;
                try {
                    h hVarA = h.a(cz.this.f31062a, "re_po_rt");
                    if (hVarA.b(dd.f31095P, 1) == 1) {
                        long jA = dd.a(cz.this.f31062a).a(dd.bj);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = hVarA.b(dd.f31097R, 1) * bg.f30873s;
                        long jB2 = hVarA.b(dd.f31098S, 5) * 60000;
                        int iB = hVarA.b(dd.f31099T, 0);
                        if (jA > 0 && jCurrentTimeMillis - jA < WeaponHI.ii * bg.f30873s && WeaponHI.isList != null) {
                            int hours = new Date(jCurrentTimeMillis).getHours();
                            List<Integer> list = WeaponHI.isList;
                            StringBuilder sb = new StringBuilder();
                            sb.append(hours);
                            if (list.contains(sb.toString())) {
                                return;
                            }
                        }
                        long j2 = jCurrentTimeMillis - jA;
                        if (j2 >= jB || (((i4 = i2) == 100 && iB == 1) || i4 == 106 || (i4 != 100 && i4 > 0 && j2 >= jB2))) {
                            cn.a(cz.this.f31062a, new cj(cz.this.f31062a, i2, i3).a(ci.f30960d), ci.f30960d, true, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
