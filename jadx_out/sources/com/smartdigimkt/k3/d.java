package com.smartdigimkt.k3;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.f.b;
import com.anythink.core.common.f.f;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.i;
import com.anythink.core.common.f.k;
import com.anythink.core.common.f.n;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.p;
import com.anythink.core.common.f.s;

/* loaded from: classes5.dex */
public final class d {

    /* renamed from: b, reason: collision with root package name */
    public static d f41368b;

    /* renamed from: a, reason: collision with root package name */
    public final c f41369a;

    public d(Context context) {
        this.f41369a = new c(this, context);
    }

    public final synchronized SQLiteDatabase a() {
        return this.f41369a.getReadableDatabase();
    }

    public final synchronized SQLiteDatabase b() {
        SQLiteDatabase writableDatabase;
        try {
            writableDatabase = this.f41369a.getWritableDatabase();
        } catch (Exception unused) {
            writableDatabase = null;
        }
        return writableDatabase;
    }

    public static d a(Context context) {
        if (f41368b == null) {
            synchronized (d.class) {
                try {
                    if (f41368b == null) {
                        f41368b = new d(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f41368b;
    }

    public static void a(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        while (i2 < i3) {
            if (i2 == 1) {
                sQLiteDatabase.execSQL(f.a.f3246f);
                sQLiteDatabase.execSQL(k.a.f3334i);
                sQLiteDatabase.execSQL(o.a.f3370h);
                sQLiteDatabase.execSQL(p.a.f3383j);
                sQLiteDatabase.execSQL(i.a.f3308h);
                sQLiteDatabase.execSQL(h.a.f3297f);
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS inspect_info(inspect_id TEXT, inspect_result INTEGER, inspect_name TEXT, update_time INTEGER )");
                sQLiteDatabase.execSQL(s.a.f3406h);
                sQLiteDatabase.execSQL(n.b.f3360i);
                sQLiteDatabase.execSQL(f.f41374d);
                sQLiteDatabase.execSQL(b.a.f3234h);
            }
            i2++;
        }
    }
}
