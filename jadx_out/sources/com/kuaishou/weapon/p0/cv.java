package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class cv {

    /* renamed from: b, reason: collision with root package name */
    private static volatile cv f31038b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31039a;

    private cv(Context context) {
        this.f31039a = context;
    }

    public static cv a(Context context) {
        if (f31038b == null) {
            synchronized (cv.class) {
                try {
                    if (f31038b == null) {
                        f31038b = new cv(context);
                    }
                } finally {
                }
            }
        }
        return f31038b;
    }

    public void a(final int i2) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.cv.1
            @Override // java.lang.Runnable
            public void run() {
                int i3;
                try {
                    h hVarA = h.a(cv.this.f31039a, "re_po_rt");
                    if (hVarA.b(dd.f31130y, 0) == 1) {
                        long jA = dd.a(cv.this.f31039a).a(dd.bh);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = hVarA.b(dd.f31131z, 8) * bg.f30873s;
                        int iB = hVarA.b(dd.f31122q, 0);
                        if (jA > 0 && jCurrentTimeMillis - jA < WeaponHI.ii * bg.f30873s && WeaponHI.isList != null) {
                            int hours = new Date(jCurrentTimeMillis).getHours();
                            List<Integer> list = WeaponHI.isList;
                            StringBuilder sb = new StringBuilder();
                            sb.append(hours);
                            if (list.contains(sb.toString())) {
                                return;
                            }
                        }
                        if (jCurrentTimeMillis - jA >= jB || (i3 = i2) == 106 || (i3 == 100 && iB == 1)) {
                            cn.a(cv.this.f31039a, new cf(cv.this.f31039a, i2).a(ci.f30957a), ci.f30957a, false, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
