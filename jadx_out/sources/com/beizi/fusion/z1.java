package com.beizi.fusion;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* loaded from: classes2.dex */
public class z1 extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    private static volatile z1 f17771a;

    private z1(Context context) {
        super(context, "beizi_ad.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    public static z1 a(Context context) {
        if (f17771a == null) {
            synchronized (z1.class) {
                try {
                    if (f17771a == null) {
                        f17771a = new z1(context.getApplicationContext());
                    }
                } finally {
                }
            }
        }
        return f17771a;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i3 > i2) {
            Cursor cursorQuery = null;
            try {
                cursorQuery = sQLiteDatabase.query("Sqlite_master", new String[]{"name"}, "type=?", new String[]{"table"}, null, null, null);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    if (string != null && string.startsWith("T_")) {
                        mh.b("BeiZis", "before alter table ");
                        sQLiteDatabase.execSQL("alter table " + string + " add column space_id");
                    }
                }
                cursorQuery.close();
            } catch (Exception unused) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                if (cursorQuery == null) {
                    throw th;
                }
                cursorQuery.close();
                throw th;
            }
        }
    }
}
