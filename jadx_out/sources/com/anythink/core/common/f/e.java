package com.anythink.core.common.f;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.a;
import com.anythink.core.common.f.b;
import com.anythink.core.common.f.f;
import com.anythink.core.common.f.g;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.i;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.k;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.n;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.p;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.s;
import com.anythink.core.d.b.e;

/* loaded from: classes2.dex */
public class e extends d {

    /* renamed from: a, reason: collision with root package name */
    private static e f3238a;

    private e(Context context) {
        super(context);
    }

    public static e a(Context context) {
        if (f3238a == null) {
            synchronized (e.class) {
                try {
                    if (f3238a == null) {
                        f3238a = new e(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3238a;
    }

    private void e(SQLiteDatabase sQLiteDatabase) throws SQLException {
        d(sQLiteDatabase);
        c(sQLiteDatabase);
    }

    @Override // com.anythink.core.common.f.d
    public final void b(SQLiteDatabase sQLiteDatabase) throws SQLException {
        d(sQLiteDatabase);
        c(sQLiteDatabase);
    }

    @Override // com.anythink.core.common.f.d
    public final String c() {
        return "anythink.db";
    }

    @Override // com.anythink.core.common.f.d
    public final int d() {
        return 20;
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL(f.a.f3246f);
            a(sQLiteDatabase, 3, 20);
            com.anythink.core.common.d.s.b().g();
            String str = com.anythink.core.common.d.i.f2497a;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void d(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'sdkconfig'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'request_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'placement_ad_impression'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'offer_action_record'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'offer_data_cache'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'dsp_offer_show_record'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'dsp_offer_install_record'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'inspect_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'video_res_cache_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'notice_url_fail_info'");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'user_value_placement'");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.f.d
    public final void a(SQLiteDatabase sQLiteDatabase) {
        c(sQLiteDatabase);
    }

    @Override // com.anythink.core.common.f.d
    public final void a(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        for (int i4 = i2; i4 < i3; i4++) {
            switch (i4) {
                case 1:
                case 2:
                    d(sQLiteDatabase);
                    c(sQLiteDatabase);
                    break;
                case 3:
                    sQLiteDatabase.execSQL(q.a.f3395j);
                    break;
                case 4:
                    sQLiteDatabase.execSQL(o.a.f3370h);
                    sQLiteDatabase.execSQL(p.a.f3383j);
                    break;
                case 5:
                    sQLiteDatabase.execSQL(i.a.f3308h);
                    sQLiteDatabase.execSQL(h.a.f3297f);
                    break;
                case 6:
                    sQLiteDatabase.execSQL(l.a.f3345g);
                    break;
                case 7:
                    sQLiteDatabase.execSQL(s.a.f3406h);
                    break;
                case 8:
                    sQLiteDatabase.execSQL(n.b.f3360i);
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'request_info'");
                    sQLiteDatabase.execSQL(k.a.f3334i);
                    break;
                case 9:
                    sQLiteDatabase.execSQL(e.a.f8610l);
                    break;
                case 10:
                    try {
                        sQLiteDatabase.execSQL(e.a.f8610l);
                    } catch (Throwable unused) {
                    }
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'offer_data_cache'");
                    sQLiteDatabase.execSQL(p.a.f3383j);
                    break;
                case 11:
                    sQLiteDatabase.execSQL(e.a.f8611m);
                    sQLiteDatabase.execSQL(e.a.f8612n);
                    break;
                case 12:
                    sQLiteDatabase.execSQL(g.a.f3263O);
                    break;
                case 13:
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'offer_data_cache'");
                    sQLiteDatabase.execSQL(p.a.f3383j);
                    break;
                case 14:
                    sQLiteDatabase.execSQL(l.a.f3346h);
                    break;
                case 15:
                    if (i2 == 15) {
                        sQLiteDatabase.execSQL(l.a.f3347i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    sQLiteDatabase.execSQL(j.a.f3317g);
                    sQLiteDatabase.execSQL(j.a.f3318h);
                    sQLiteDatabase.execSQL(j.a.f3319i);
                    sQLiteDatabase.execSQL(j.a.f3320j);
                    sQLiteDatabase.execSQL(j.a.f3321k);
                    sQLiteDatabase.execSQL(j.a.f3322l);
                    break;
                case 17:
                    sQLiteDatabase.execSQL(b.a.f3234h);
                    break;
                case 18:
                    sQLiteDatabase.execSQL(a.C0051a.f3221r);
                    break;
                case 19:
                    try {
                        sQLiteDatabase.execSQL(a.C0051a.f3222s);
                        sQLiteDatabase.execSQL(a.C0051a.f3223t);
                        sQLiteDatabase.execSQL(a.C0051a.f3224u);
                        break;
                    } catch (Throwable unused2) {
                        break;
                    }
            }
        }
    }
}
