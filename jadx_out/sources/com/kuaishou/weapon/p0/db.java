package com.kuaishou.weapon.p0;

import android.content.Context;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public class db {

    /* renamed from: b, reason: collision with root package name */
    private static volatile db f31072b;

    /* renamed from: a, reason: collision with root package name */
    private Context f31073a;

    private db(Context context) {
        this.f31073a = context;
    }

    public static db a(Context context) {
        if (f31072b == null) {
            synchronized (db.class) {
                try {
                    if (f31072b == null) {
                        f31072b = new db(context);
                    }
                } finally {
                }
            }
        }
        return f31072b;
    }

    public void a(final int i2) {
        n.a().a(new Runnable() { // from class: com.kuaishou.weapon.p0.db.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (h.a(db.this.f31073a, "re_po_rt").b(dd.aC, 1) == 1) {
                        long jA = dd.a(db.this.f31073a).a();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jB = r0.b(dd.aE, 8) * bg.f30873s;
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
                            cn.a(db.this.f31073a, new cl(db.this.f31073a, i2).a(ci.f30959c), ci.f30959c, true, true);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
