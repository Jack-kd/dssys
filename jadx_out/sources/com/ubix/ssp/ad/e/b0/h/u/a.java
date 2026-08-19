package com.ubix.ssp.ad.e.b0.h.u;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ubix.ssp.ad.e.b0.h.l;
import com.ubix.ssp.ad.e.b0.h.q;
import com.umeng.analytics.pro.bz;

/* loaded from: classes5.dex */
class a extends SQLiteOpenHelper implements c {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f46758a = {bz.f48985d, "url", "length", "mime"};

    public a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        l.a(context);
    }

    private ContentValues a(q qVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", qVar.f46747a);
        contentValues.put("length", Long.valueOf(qVar.f46748b));
        contentValues.put("mime", qVar.f46749c);
        return contentValues;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        l.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    private q a(Cursor cursor) {
        return new q(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow("length")), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.ubix.ssp.ad.e.b0.h.u.c
    public q a(String str) throws Throwable {
        l.a(str);
        Cursor cursor = null;
        qVarA = null;
        q qVarA = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query("SourceInfo", f46758a, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        qVarA = a(cursorQuery);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return qVarA;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.h.u.c
    public void a(String str, q qVar) {
        l.a(str, qVar);
        boolean z2 = a(str) != null;
        ContentValues contentValuesA = a(qVar);
        if (z2) {
            getWritableDatabase().update("SourceInfo", contentValuesA, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert("SourceInfo", null, contentValuesA);
        }
    }
}
