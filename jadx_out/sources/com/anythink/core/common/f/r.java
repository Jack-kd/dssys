package com.anythink.core.common.f;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.u.a.a.a;
import com.anythink.core.common.u.a.a.b;

/* loaded from: classes2.dex */
public class r extends d {

    /* renamed from: a, reason: collision with root package name */
    private static r f3396a;

    private r(Context context) {
        super(context);
    }

    public static r a(Context context) {
        if (f3396a == null) {
            synchronized (r.class) {
                try {
                    if (f3396a == null) {
                        f3396a = new r(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3396a;
    }

    private static void e() {
    }

    private static void f() {
    }

    @Override // com.anythink.core.common.f.d
    public final void b(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // com.anythink.core.common.f.d
    public final String c() {
        return "anythink_upload.db";
    }

    @Override // com.anythink.core.common.f.d
    public final int d() {
        return 2;
    }

    private static void c(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("ALTER TABLE agent_request_info ADD COLUMN create_time INTEGER DEFAULT 0");
            sQLiteDatabase.execSQL("UPDATE agent_request_info SET create_time = rowid");
        } catch (Throwable unused) {
        }
    }

    private void d(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            sQLiteDatabase.execSQL(a.C0081a.f7730f);
            sQLiteDatabase.execSQL(b.a.f7740g);
            a(sQLiteDatabase, 0, 2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.f.d
    public final void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            sQLiteDatabase.execSQL(a.C0081a.f7730f);
            sQLiteDatabase.execSQL(b.a.f7740g);
            a(sQLiteDatabase, 0, 2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.common.f.d
    public final void a(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 < 2) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE agent_request_info ADD COLUMN create_time INTEGER DEFAULT 0");
                sQLiteDatabase.execSQL("UPDATE agent_request_info SET create_time = rowid");
            } catch (Throwable unused) {
            }
        }
    }
}
