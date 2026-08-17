package com.umeng.analytics.pro;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.umeng.analytics.pro.h;

/* loaded from: classes5.dex */
class i extends SQLiteOpenHelper {

    /* renamed from: b, reason: collision with root package name */
    private static Context f49433b;

    /* renamed from: a, reason: collision with root package name */
    private String f49434a;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final i f49435a = new i(i.f49433b, k.b(i.f49433b), h.f49367b, null, 2);

        private a() {
        }
    }

    public static i a(Context context) {
        if (f49433b == null) {
            f49433b = context.getApplicationContext();
        }
        return a.f49435a;
    }

    private void c(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            this.f49434a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void d(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            this.f49434a = "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase) throws SQLException {
        if (!k.a(sQLiteDatabase, h.d.f49408a, "__av")) {
            k.a(sQLiteDatabase, h.d.f49408a, "__sp", "TEXT");
            k.a(sQLiteDatabase, h.d.f49408a, "__pp", "TEXT");
            k.a(sQLiteDatabase, h.d.f49408a, "__av", "TEXT");
            k.a(sQLiteDatabase, h.d.f49408a, "__vc", "TEXT");
        }
        if (!k.a(sQLiteDatabase, h.b.f49382a, "__av")) {
            k.a(sQLiteDatabase, h.b.f49382a, "__av", "TEXT");
            k.a(sQLiteDatabase, h.b.f49382a, "__vc", "TEXT");
        }
        if (k.a(sQLiteDatabase, h.a.f49371a, "__av")) {
            return;
        }
        k.a(sQLiteDatabase, h.a.f49371a, "__av", "TEXT");
        k.a(sQLiteDatabase, h.a.f49371a, "__vc", "TEXT");
    }

    private void f(SQLiteDatabase sQLiteDatabase) throws SQLException {
        a(sQLiteDatabase, h.d.f49408a);
        a(sQLiteDatabase, h.b.f49382a);
        a(sQLiteDatabase, h.a.f49371a);
        a();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    c(sQLiteDatabase);
                    d(sQLiteDatabase);
                    b(sQLiteDatabase);
                    a(sQLiteDatabase);
                    sQLiteDatabase.setTransactionSuccessful();
                    sQLiteDatabase.endTransaction();
                } catch (Throwable unused) {
                }
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused2) {
                    }
                }
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException unused3) {
            k.a(f49433b);
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        } catch (Throwable unused4) {
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        if (i3 <= i2 || i2 != 1) {
            return;
        }
        try {
            try {
                e(sQLiteDatabase);
            } catch (Exception unused) {
                f(sQLiteDatabase);
            }
        } catch (Exception unused2) {
            e(sQLiteDatabase);
        }
    }

    private i(Context context, String str, String str2, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        this(new f(context, str), str2, cursorFactory, i2);
    }

    private void b(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            this.f49434a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private i(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i2) {
        super(context, TextUtils.isEmpty(str) ? h.f49367b : str, cursorFactory, i2);
        this.f49434a = null;
        a();
    }

    public void a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!k.a(h.d.f49408a, writableDatabase)) {
                c(writableDatabase);
            }
            if (!k.a(h.c.f49395a, writableDatabase)) {
                d(writableDatabase);
            }
            if (!k.a(h.b.f49382a, writableDatabase)) {
                b(writableDatabase);
            }
            if (k.a(h.a.f49371a, writableDatabase)) {
                return;
            }
            a(writableDatabase);
        } catch (Exception unused) {
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase) throws SQLException {
        try {
            this.f49434a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str) throws SQLException {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        } catch (SQLException unused) {
        }
    }
}
