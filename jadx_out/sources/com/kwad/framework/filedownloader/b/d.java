package com.kwad.framework.filedownloader.b;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.kwad.framework.filedownloader.b.a;
import com.kwad.framework.filedownloader.f.f;
import com.umeng.analytics.pro.bz;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public final class d implements com.kwad.framework.filedownloader.b.a {
    private static boolean aAF = false;
    private final e aAG = new e(com.kwad.framework.filedownloader.f.c.Dx());
    private SQLiteDatabase aAH;

    public class a implements a.InterfaceC0581a {
        private final SparseArray<com.kwad.framework.filedownloader.d.c> aAI = new SparseArray<>();
        private b aAJ;
        private final SparseArray<com.kwad.framework.filedownloader.d.c> aAv;
        private final SparseArray<List<com.kwad.framework.filedownloader.d.a>> aAw;

        public a(SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray, SparseArray<List<com.kwad.framework.filedownloader.d.a>> sparseArray2) {
            this.aAv = sparseArray;
            this.aAw = sparseArray2;
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0581a
        public final void BS() throws SQLException {
            b bVar = this.aAJ;
            if (bVar != null) {
                bVar.BS();
            }
            try {
                SQLiteDatabase sQLiteDatabaseBT = d.this.BT();
                if (sQLiteDatabaseBT == null) {
                    return;
                }
                int size = this.aAI.size();
                try {
                    try {
                        if (size < 0) {
                            return;
                        }
                        try {
                            sQLiteDatabaseBT.beginTransaction();
                            for (int i2 = 0; i2 < size; i2++) {
                                int iKeyAt = this.aAI.keyAt(i2);
                                com.kwad.framework.filedownloader.d.c cVar = this.aAI.get(iKeyAt);
                                sQLiteDatabaseBT.delete("ksad_file_download", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                                sQLiteDatabaseBT.insert("ksad_file_download", null, cVar.CV());
                                if (cVar.Da() > 1) {
                                    List<com.kwad.framework.filedownloader.d.a> listCD = d.this.cD(iKeyAt);
                                    if (listCD.size() > 0) {
                                        sQLiteDatabaseBT.delete("ksad_file_download_connection", "id = ?", new String[]{String.valueOf(iKeyAt)});
                                        for (com.kwad.framework.filedownloader.d.a aVar : listCD) {
                                            aVar.setId(cVar.getId());
                                            sQLiteDatabaseBT.insert("ksad_file_download_connection", null, aVar.CV());
                                        }
                                    }
                                }
                            }
                            SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray = this.aAv;
                            if (sparseArray != null && this.aAw != null) {
                                synchronized (sparseArray) {
                                    try {
                                        int size2 = this.aAv.size();
                                        for (int i3 = 0; i3 < size2; i3++) {
                                            int id = this.aAv.valueAt(i3).getId();
                                            List<com.kwad.framework.filedownloader.d.a> listCD2 = d.this.cD(id);
                                            if (listCD2 != null && listCD2.size() > 0) {
                                                synchronized (this.aAw) {
                                                    this.aAw.put(id, listCD2);
                                                }
                                            }
                                        }
                                    } finally {
                                    }
                                }
                            }
                            sQLiteDatabaseBT.setTransactionSuccessful();
                            sQLiteDatabaseBT.endTransaction();
                        } catch (SQLiteException e2) {
                            d.this.a(e2);
                            sQLiteDatabaseBT.endTransaction();
                        } catch (Exception e3) {
                            d.printStackTrace(e3);
                            sQLiteDatabaseBT.endTransaction();
                        }
                    } catch (Exception e4) {
                        d.printStackTrace(e4);
                    }
                } finally {
                    try {
                        sQLiteDatabaseBT.endTransaction();
                    } catch (Exception e5) {
                        d.printStackTrace(e5);
                    }
                }
            } catch (Throwable unused) {
            }
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0581a
        public final void a(int i2, com.kwad.framework.filedownloader.d.c cVar) {
            this.aAI.put(i2, cVar);
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0581a
        public final void c(com.kwad.framework.filedownloader.d.c cVar) {
            SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray = this.aAv;
            if (sparseArray != null) {
                synchronized (sparseArray) {
                    this.aAv.put(cVar.getId(), cVar);
                }
            }
        }

        @Override // java.lang.Iterable
        public final Iterator<com.kwad.framework.filedownloader.d.c> iterator() {
            b bVar = d.this.new b();
            this.aAJ = bVar;
            return bVar;
        }
    }

    public class b implements Iterator<com.kwad.framework.filedownloader.d.c> {
        private Cursor aAL;
        private final List<Integer> aAM = new ArrayList();
        private int aAN;

        public b() throws SQLException {
            try {
                this.aAL = d.this.BT().query("ksad_file_download", null, null, null, null, null, null);
            } catch (SQLiteException e2) {
                d.this.a(e2);
            } catch (Exception e3) {
                d.printStackTrace(e3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.Iterator
        /* renamed from: BU, reason: merged with bridge method [inline-methods] */
        public com.kwad.framework.filedownloader.d.c next() {
            com.kwad.framework.filedownloader.d.c cVarD = d.d(this.aAL);
            this.aAN = cVarD.getId();
            return cVarD;
        }

        public final void BS() throws SQLException {
            Cursor cursor = this.aAL;
            if (cursor == null) {
                return;
            }
            cursor.close();
            if (this.aAM.isEmpty()) {
                return;
            }
            String strJoin = TextUtils.join(", ", this.aAM);
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "delete %s", strJoin);
            }
            try {
                SQLiteDatabase sQLiteDatabaseBT = d.this.BT();
                sQLiteDatabaseBT.execSQL(f.c("DELETE FROM %s WHERE %s IN (%s);", "ksad_file_download", bz.f48985d, strJoin));
                sQLiteDatabaseBT.execSQL(f.c("DELETE FROM %s WHERE %s IN (%s);", "ksad_file_download_connection", "id", strJoin));
            } catch (SQLiteException e2) {
                d.this.a(e2);
            } catch (Exception e3) {
                d.printStackTrace(e3);
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            try {
                Cursor cursor = this.aAL;
                if (cursor != null) {
                    return cursor.moveToNext();
                }
                return false;
            } catch (Throwable th) {
                d.printStackTrace(th);
                return false;
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.aAM.add(Integer.valueOf(this.aAN));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SQLiteDatabase BT() {
        if (this.aAH == null) {
            this.aAH = this.aAG.getWritableDatabase();
        }
        return this.aAH;
    }

    private void d(com.kwad.framework.filedownloader.d.c cVar) throws SQLException {
        try {
            BT().insert("ksad_file_download", null, cVar.CV());
        } catch (SQLiteException e2) {
            cVar.ch(e2.toString());
            cVar.d((byte) -1);
            a(cVar.getId(), e2);
        } catch (Exception e3) {
            printStackTrace(e3);
        }
    }

    private static void o(Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printStackTrace(Throwable th) {
        o(th);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final a.InterfaceC0581a BR() {
        return new a(null, null);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(com.kwad.framework.filedownloader.d.c cVar) throws SQLException {
        if (cVar == null) {
            com.kwad.framework.filedownloader.f.d.d(this, "update but model == null!", new Object[0]);
            return;
        }
        if (cC(cVar.getId()) == null) {
            d(cVar);
            return;
        }
        try {
            BT().update("ksad_file_download", cVar.CV(), "_id = ? ", new String[]{String.valueOf(cVar.getId())});
        } catch (SQLiteException e2) {
            cVar.ch(e2.toString());
            cVar.d((byte) -1);
            a(cVar.getId(), e2);
        } catch (Exception e3) {
            printStackTrace(e3);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void c(int i2, long j2) {
        cF(i2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cB(int i2) {
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x002e: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]) (LINE:47), block:B:10:0x002e */
    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.d.c cC(int i2) throws Throwable {
        Cursor cursorRawQuery;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                cursorRawQuery = BT().rawQuery(f.c("SELECT * FROM %s WHERE %s = ?", "ksad_file_download", bz.f48985d), new String[]{Integer.toString(i2)});
                try {
                    if (cursorRawQuery.moveToNext()) {
                        com.kwad.framework.filedownloader.d.c cVarD = d(cursorRawQuery);
                        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                        return cVarD;
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    a(i2, e);
                    com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                    return null;
                } catch (Exception e3) {
                    e = e3;
                    printStackTrace(e);
                    com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursorRawQuery = null;
        } catch (Exception e5) {
            e = e5;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
            throw th;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
        return null;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    @SuppressLint({com.sigmob.sdk.downloader.core.c.f37363b})
    public final List<com.kwad.framework.filedownloader.d.a> cD(int i2) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = BT().rawQuery(f.c("SELECT * FROM %s WHERE %s = ?", "ksad_file_download_connection", "id"), new String[]{Integer.toString(i2)});
                while (cursorRawQuery.moveToNext()) {
                    com.kwad.framework.filedownloader.d.a aVar = new com.kwad.framework.filedownloader.d.a();
                    aVar.setId(i2);
                    aVar.setIndex(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("connectionIndex")));
                    aVar.setStartOffset(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("startOffset")));
                    aVar.ad(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("currentOffset")));
                    aVar.ae(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("endOffset")));
                    arrayList.add(aVar);
                }
                return arrayList;
            } catch (SQLiteException e2) {
                a(i2, e2);
                return arrayList;
            } catch (Exception e3) {
                printStackTrace(e3);
                return arrayList;
            }
        } finally {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cE(int i2) throws SQLException {
        try {
            BT().execSQL("DELETE FROM ksad_file_download_connection WHERE id = " + i2);
        } catch (SQLiteException e2) {
            printStackTrace(e2);
        } catch (Exception e3) {
            printStackTrace(e3);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final boolean cF(int i2) {
        try {
            return BT().delete("ksad_file_download", "_id = ?", new String[]{String.valueOf(i2)}) != 0;
        } catch (SQLiteException e2) {
            printStackTrace(e2);
            return false;
        } catch (Exception e3) {
            printStackTrace(e3);
            return false;
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cG(int i2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void clear() throws SQLException {
        try {
            BT().delete("ksad_file_download", null, null);
        } catch (SQLiteException e2) {
            a(e2);
        }
        try {
            BT().delete("ksad_file_download_connection", null, null);
        } catch (SQLiteException e3) {
            a(e3);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void w(int i2, int i3) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("connectionCount", Integer.valueOf(i3));
        try {
            BT().update("ksad_file_download", contentValues, "_id = ? ", new String[]{Integer.toString(i2)});
        } catch (SQLiteException e2) {
            a(i2, e2);
        } catch (Exception e3) {
            printStackTrace(e3);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(com.kwad.framework.filedownloader.d.a aVar) throws SQLException {
        if (aVar != null) {
            try {
                BT().insert("ksad_file_download_connection", null, aVar.CV());
            } catch (SQLiteException e2) {
                a(aVar.getId(), e2);
            } catch (Exception e3) {
                printStackTrace(e3);
            }
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, int i3, long j2) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currentOffset", Long.valueOf(j2));
        try {
            BT().update("ksad_file_download_connection", contentValues, "id = ? AND connectionIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i3)});
        } catch (SQLiteException e2) {
            a(i2, e2);
        } catch (Exception e3) {
            printStackTrace(e3);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void d(int i2, long j2) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) -2);
        contentValues.put("sofar", Long.valueOf(j2));
        a(i2, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({com.sigmob.sdk.downloader.core.c.f37363b})
    public static com.kwad.framework.filedownloader.d.c d(Cursor cursor) {
        com.kwad.framework.filedownloader.d.c cVar = new com.kwad.framework.filedownloader.d.c();
        if (cursor == null) {
            return cVar;
        }
        cVar.setId(cursor.getInt(cursor.getColumnIndex(bz.f48985d)));
        cVar.setUrl(cursor.getString(cursor.getColumnIndex("url")));
        cVar.d(cursor.getString(cursor.getColumnIndex("path")), cursor.getShort(cursor.getColumnIndex("pathAsDirectory")) == 1);
        cVar.d((byte) cursor.getShort(cursor.getColumnIndex("status")));
        cVar.af(cursor.getLong(cursor.getColumnIndex("sofar")));
        cVar.ah(cursor.getLong(cursor.getColumnIndex("total")));
        cVar.ch(cursor.getString(cursor.getColumnIndex("errMsg")));
        cVar.cg(cursor.getString(cursor.getColumnIndex(com.sigmob.sdk.downloader.core.breakpoint.f.f37325c)));
        cVar.ci(cursor.getString(cursor.getColumnIndex(com.sigmob.sdk.downloader.core.breakpoint.f.f37327e)));
        cVar.cV(cursor.getInt(cursor.getColumnIndex("connectionCount")));
        return cVar;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(int i2, long j2) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 3);
        contentValues.put("sofar", Long.valueOf(j2));
        a(i2, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, String str, long j2, long j3, int i3) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sofar", Long.valueOf(j2));
        contentValues.put("total", Long.valueOf(j3));
        contentValues.put(com.sigmob.sdk.downloader.core.breakpoint.f.f37325c, str);
        contentValues.put("connectionCount", Integer.valueOf(i3));
        a(i2, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, long j2, String str, String str2) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 2);
        contentValues.put("total", Long.valueOf(j2));
        contentValues.put(com.sigmob.sdk.downloader.core.breakpoint.f.f37325c, str);
        contentValues.put(com.sigmob.sdk.downloader.core.breakpoint.f.f37327e, str2);
        a(i2, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, Throwable th, long j2) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) -1);
        contentValues.put("sofar", Long.valueOf(j2));
        a(i2, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i2, Throwable th) throws SQLException {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) 5);
        a(i2, contentValues);
    }

    public final a.InterfaceC0581a a(SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray, SparseArray<List<com.kwad.framework.filedownloader.d.a>> sparseArray2) {
        return new a(sparseArray, sparseArray2);
    }

    private void a(int i2, ContentValues contentValues) throws SQLException {
        try {
            BT().update("ksad_file_download", contentValues, "_id = ? ", new String[]{String.valueOf(i2)});
        } catch (SQLiteException e2) {
            a(i2, e2);
        } catch (Exception e3) {
            printStackTrace(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteException sQLiteException) throws SQLException {
        a(-1, sQLiteException);
    }

    private void a(int i2, @Nullable SQLiteException sQLiteException) throws SQLException {
        if (sQLiteException instanceof SQLiteFullException) {
            if (i2 != -1) {
                cF(i2);
                cE(i2);
            }
            o(sQLiteException);
            aAF = true;
            return;
        }
        printStackTrace(sQLiteException);
    }
}
