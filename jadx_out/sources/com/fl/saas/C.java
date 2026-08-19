package com.fl.saas;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.analytics.pro.bz;

/* loaded from: classes3.dex */
class C extends SQLiteOpenHelper implements X0 {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f29862a = {bz.f48985d, "url", "length", "mime"};

    public C(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        AbstractC1228w0.a(context);
    }

    private ContentValues a(W0 w02) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", w02.f30095a);
        contentValues.put("length", Long.valueOf(w02.f30096b));
        contentValues.put("mime", w02.f30097c);
        return contentValues;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        AbstractC1228w0.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    private W0 a(Cursor cursor) {
        return new W0(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow("length")), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.fl.saas.X0
    public W0 a(String str) throws Throwable {
        AbstractC1228w0.a(str);
        Cursor cursor = null;
        w0A = null;
        W0 w0A = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query("SourceInfo", f29862a, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        w0A = a(cursorQuery);
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
            return w0A;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.fl.saas.X0
    public void a(String str, W0 w02) {
        AbstractC1228w0.a(str, w02);
        boolean z2 = a(str) != null;
        ContentValues contentValuesA = a(w02);
        if (z2) {
            getWritableDatabase().update("SourceInfo", contentValuesA, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert("SourceInfo", null, contentValuesA);
        }
    }
}
