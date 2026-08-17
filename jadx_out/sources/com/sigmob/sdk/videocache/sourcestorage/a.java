package com.sigmob.sdk.videocache.sourcestorage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.sigmob.sdk.videocache.n;
import com.sigmob.sdk.videocache.u;

/* loaded from: classes4.dex */
class a extends SQLiteOpenHelper implements c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f38961a = "SourceInfo";

    /* renamed from: b, reason: collision with root package name */
    private static final String f38962b = "_id";

    /* renamed from: c, reason: collision with root package name */
    private static final String f38963c = "url";

    /* renamed from: d, reason: collision with root package name */
    private static final String f38964d = "length";

    /* renamed from: e, reason: collision with root package name */
    private static final String f38965e = "mime";

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f38966f = {"_id", "url", f38964d, f38965e};

    /* renamed from: g, reason: collision with root package name */
    private static final String f38967g = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);";

    public a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        n.a(context);
    }

    private ContentValues a(u uVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", uVar.f38968a);
        contentValues.put(f38964d, Long.valueOf(uVar.f38969b));
        contentValues.put(f38965e, uVar.f38970c);
        return contentValues;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        n.a(sQLiteDatabase);
        sQLiteDatabase.execSQL(f38967g);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    private u a(Cursor cursor) {
        return new u(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow(f38964d)), cursor.getString(cursor.getColumnIndexOrThrow(f38965e)));
    }

    @Override // com.sigmob.sdk.videocache.sourcestorage.c
    public u a(String str) throws Throwable {
        n.a(str);
        Cursor cursor = null;
        uVarA = null;
        u uVarA = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query(f38961a, f38966f, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        uVarA = a(cursorQuery);
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
            return uVarA;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.sigmob.sdk.videocache.sourcestorage.c
    public void a() {
        close();
    }

    @Override // com.sigmob.sdk.videocache.sourcestorage.c
    public void a(String str, u uVar) {
        n.a(str, uVar);
        boolean z2 = a(str) != null;
        ContentValues contentValuesA = a(uVar);
        if (z2) {
            getWritableDatabase().update(f38961a, contentValuesA, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert(f38961a, null, contentValuesA);
        }
    }
}
