package com.sigmob.sdk.downloader.core.breakpoint;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class e extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    static final String f37305a = "taskFileDirty";

    /* renamed from: b, reason: collision with root package name */
    private static final String f37306b = "sig_breakpoint.db";

    /* renamed from: c, reason: collision with root package name */
    private static final int f37307c = 3;

    /* renamed from: d, reason: collision with root package name */
    private static final String f37308d = "FileDownloadResponseFilename";

    /* renamed from: e, reason: collision with root package name */
    private static final String f37309e = "breakpoint";

    /* renamed from: f, reason: collision with root package name */
    private static final String f37310f = "block";

    public interface a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f37311a = "CREATE TABLE IF NOT EXISTS breakpoint( id INTEGER PRIMARY KEY, url VARCHAR NOT NULL, etag VARCHAR, parent_path VARCHAR NOT NULL, filename VARCHAR, task_only_parent_path TINYINT(1) DEFAULT 0, chunked TINYINT(1) DEFAULT 0)";

        /* renamed from: b, reason: collision with root package name */
        public static final String f37312b = "CREATE TABLE IF NOT EXISTS block( id INTEGER PRIMARY KEY AUTOINCREMENT, breakpoint_id INTEGER, block_index INTEGER, start_offset INTEGER, content_length INTEGER, current_offset INTEGER)";

        /* renamed from: c, reason: collision with root package name */
        public static final String f37313c = "CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)";

        /* renamed from: d, reason: collision with root package name */
        public static final String f37314d = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)";
    }

    public interface b {

        /* renamed from: a, reason: collision with root package name */
        public static final String f37315a = "CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)";

        /* renamed from: b, reason: collision with root package name */
        public static final String f37316b = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)";
    }

    public interface c {

        /* renamed from: a, reason: collision with root package name */
        public static final String f37317a = "SELECT * FROM taskFileDirty";

        /* renamed from: b, reason: collision with root package name */
        public static final String f37318b = "SELECT * FROM breakpoint";

        /* renamed from: c, reason: collision with root package name */
        public static final String f37319c = "SELECT * FROM block";

        /* renamed from: d, reason: collision with root package name */
        public static final String f37320d = "SELECT * FROM FileDownloadResponseFilename";

        /* renamed from: e, reason: collision with root package name */
        public static final String f37321e = "SELECT filename FROM FileDownloadResponseFilename WHERE url = ?";

        /* renamed from: f, reason: collision with root package name */
        public static final String f37322f = "SELECT id FROM breakpoint WHERE id = ? LIMIT 1";
    }

    public e(Context context) {
        super(context, f37306b, (SQLiteDatabase.CursorFactory) null, 3);
    }

    private static ContentValues a(int i2, int i3, com.sigmob.sdk.downloader.core.breakpoint.a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f.f37330h, Integer.valueOf(i2));
        contentValues.put(f.f37331i, Integer.valueOf(i3));
        contentValues.put(f.f37332j, Long.valueOf(aVar.b()));
        contentValues.put(f.f37333k, Long.valueOf(aVar.d()));
        contentValues.put(f.f37334l, Long.valueOf(aVar.a()));
        return contentValues;
    }

    private static ContentValues c(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(cVar.f37289a));
        contentValues.put("url", cVar.l());
        contentValues.put(f.f37325c, cVar.k());
        contentValues.put(f.f37326d, cVar.f37290b.getAbsolutePath());
        contentValues.put(f.f37327e, cVar.m());
        contentValues.put(f.f37328f, Integer.valueOf(cVar.d() ? 1 : 0));
        contentValues.put("chunked", Integer.valueOf(cVar.b() ? 1 : 0));
        return contentValues;
    }

    public SparseArray<com.sigmob.sdk.downloader.core.breakpoint.c> b() throws Throwable {
        Cursor cursor;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            Cursor cursorRawQuery2 = writableDatabase.rawQuery(c.f37318b, null);
            while (cursorRawQuery2.moveToNext()) {
                try {
                    arrayList.add(new d(cursorRawQuery2));
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    cursorRawQuery = cursorRawQuery2;
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            cursorRawQuery = writableDatabase.rawQuery(c.f37319c, null);
            while (cursorRawQuery.moveToNext()) {
                arrayList2.add(new com.sigmob.sdk.downloader.core.breakpoint.b(cursorRawQuery));
            }
            cursorRawQuery2.close();
            cursorRawQuery.close();
            SparseArray<com.sigmob.sdk.downloader.core.breakpoint.c> sparseArray = new SparseArray<>();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                com.sigmob.sdk.downloader.core.breakpoint.c cVarH = ((d) obj).h();
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    com.sigmob.sdk.downloader.core.breakpoint.b bVar = (com.sigmob.sdk.downloader.core.breakpoint.b) it.next();
                    if (bVar.a() == cVarH.f37289a) {
                        cVarH.a(bVar.e());
                        it.remove();
                    }
                }
                sparseArray.put(cVarH.f37289a, cVarH);
            }
            return sparseArray;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public void d(int i2) {
        getWritableDatabase().delete(f37310f, "breakpoint_id = ?", new String[]{String.valueOf(i2)});
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(a.f37311a);
        sQLiteDatabase.execSQL(a.f37312b);
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        setWriteAheadLoggingEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) throws SQLException {
        if (i2 == 1 && i3 == 2) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)");
        }
        if (i2 <= 2) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)");
        }
    }

    public List<Integer> a() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = getWritableDatabase().rawQuery(c.f37317a, null);
        while (cursorRawQuery.moveToNext()) {
            try {
                arrayList.add(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id"))));
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public void b(int i2) {
        getWritableDatabase().delete(f37305a, "id = ?", new String[]{String.valueOf(i2)});
    }

    public HashMap<String, String> c() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        HashMap<String, String> map = new HashMap<>();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = writableDatabase.rawQuery(c.f37320d, null);
            while (cursorRawQuery.moveToNext()) {
                int columnIndex = cursorRawQuery.getColumnIndex("url");
                String string = "";
                String string2 = columnIndex >= 0 ? cursorRawQuery.getString(columnIndex) : "";
                int columnIndex2 = cursorRawQuery.getColumnIndex(f.f37327e);
                if (columnIndex2 >= 0) {
                    string = cursorRawQuery.getString(columnIndex2);
                }
                map.put(string2, string);
            }
            cursorRawQuery.close();
            return map;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public void a(int i2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("id", Integer.valueOf(i2));
        writableDatabase.insert(f37305a, null, contentValues);
    }

    public void b(com.sigmob.sdk.downloader.core.breakpoint.c cVar) throws IOException {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery(c.f37322f, new String[]{Integer.toString(cVar.f37289a)});
            try {
                if (!cursorRawQuery.moveToNext()) {
                    cursorRawQuery.close();
                    return;
                }
                c(cVar.f37289a);
                a(cVar);
                writableDatabase.setTransactionSuccessful();
                cursorRawQuery.close();
            } finally {
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void c(int i2) {
        getWritableDatabase().delete(f37309e, "id = ?", new String[]{String.valueOf(i2)});
        d(i2);
    }

    public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar) throws IOException {
        int iG = cVar.g();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        for (int i2 = 0; i2 < iG; i2++) {
            com.sigmob.sdk.downloader.core.breakpoint.a aVarB = cVar.b(i2);
            if (writableDatabase.insert(f37310f, null, a(cVar.f37289a, i2, aVarB)) == -1) {
                throw new com.sigmob.sdk.downloader.core.exception.h("insert block " + aVarB + " failed!");
            }
        }
        if (writableDatabase.insert(f37309e, null, c(cVar)) != -1) {
            return;
        }
        throw new com.sigmob.sdk.downloader.core.exception.h("insert info " + cVar + " failed!");
    }

    public void a(com.sigmob.sdk.downloader.core.breakpoint.c cVar, int i2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f.f37334l, Long.valueOf(j2));
        getWritableDatabase().update(f37310f, contentValues, "breakpoint_id = ? AND block_index = ?", new String[]{Integer.toString(cVar.f37289a), Integer.toString(i2)});
    }

    public void a(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues(2);
        contentValues.put("url", str);
        contentValues.put(f.f37327e, str2);
        synchronized (str.intern()) {
            Cursor cursor = null;
            try {
                try {
                    Cursor cursorRawQuery = writableDatabase.rawQuery(c.f37321e, new String[]{str});
                    try {
                        if (!cursorRawQuery.moveToFirst()) {
                            writableDatabase.insert(f37308d, null, contentValues);
                        } else if (!str2.equals(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(f.f37327e)))) {
                            writableDatabase.replace(f37308d, null, contentValues);
                        }
                        cursorRawQuery.close();
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } finally {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
