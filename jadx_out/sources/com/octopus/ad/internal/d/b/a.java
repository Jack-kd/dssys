package com.octopus.ad.internal.d.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.octopus.ad.internal.d.n;
import com.octopus.ad.internal.d.s;
import com.umeng.analytics.pro.bz;

/* loaded from: classes4.dex */
class a extends SQLiteOpenHelper implements c {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f34654a = {bz.f48985d, "url", "length", "mime"};

    public a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        n.a(context);
    }

    @Override // com.octopus.ad.internal.d.b.c
    public s a(String str) throws Throwable {
        n.a(str);
        Cursor cursor = null;
        sVarA = null;
        s sVarA = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query("SourceInfo", f34654a, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        sVarA = a(cursorQuery);
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
            return sVarA;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        n.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    @Override // com.octopus.ad.internal.d.b.c
    public void a(String str, s sVar) {
        n.a(str, sVar);
        boolean z2 = a(str) != null;
        ContentValues contentValuesA = a(sVar);
        if (z2) {
            getWritableDatabase().update("SourceInfo", contentValuesA, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert("SourceInfo", null, contentValuesA);
        }
    }

    private s a(Cursor cursor) {
        return new s(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow("length")), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    private ContentValues a(s sVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", sVar.f34716a);
        contentValues.put("length", Long.valueOf(sVar.f34717b));
        contentValues.put("mime", sVar.f34718c);
        return contentValues;
    }
}
