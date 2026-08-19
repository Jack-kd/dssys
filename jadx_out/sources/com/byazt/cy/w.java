package com.byazt.cy;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.cy.jx;
import com.byazt.fu.DownloadInfo;
import com.byazt.rc.q;
import com.byazt.yk.sz;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 1052, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends jx.hp implements sz {

    /* renamed from: l, reason: collision with root package name */
    public static volatile SQLiteDatabase f19042l;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f19043a;
    public l hp;

    /* renamed from: j, reason: collision with root package name */
    public eb f19044j;
    public eb jx;

    /* renamed from: w, reason: collision with root package name */
    public eb f19045w;

    public w() {
        this(false);
    }

    private void e() {
        try {
            if (f19042l == null || !f19042l.inTransaction()) {
                return;
            }
            f19042l.endTransaction();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void gu() {
        try {
            q();
            f19042l.delete("downloader", null, null);
            f19042l.delete("downloadChunk", null, null);
            f19042l.setTransactionSuccessful();
            e();
        } catch (Throwable unused) {
            e();
        }
    }

    private void q() {
        f19042l.beginTransaction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (f19042l == null) {
            synchronized (w.class) {
                if (f19042l == null) {
                    try {
                        f19042l = hp.hp().getWritableDatabase();
                        this.jx = new eb(f19042l, "downloader", com.byazt.oy.jx.hp, com.byazt.oy.jx.f24263l);
                        this.f19044j = new eb(f19042l, "downloadChunk", com.byazt.oy.jx.jx, com.byazt.oy.jx.f24262j);
                        this.f19045w = new eb(f19042l, "segments", com.byazt.oy.jx.f24264w, com.byazt.oy.jx.f24261a);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private void update(final int i2, final ContentValues contentValues) {
        s();
        if (f19042l == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.3
            @Override // java.lang.Runnable
            public void run() {
                w.this.hp(i2, contentValues);
            }
        });
    }

    @Override // com.byazt.cy.jx
    public boolean a(final int i2) {
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.11
            @Override // java.lang.Runnable
            public void run() {
                w.this.w(i2);
                w.this.j(i2);
                w.this.zy(i2);
            }
        });
        return true;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo eb(int i2) {
        return null;
    }

    @Override // com.byazt.cy.jx
    public void hp(int i2, List<com.byazt.fu.l> list) {
    }

    @Override // com.byazt.cy.jx
    public List<DownloadInfo> j(String str) {
        return null;
    }

    @Override // com.byazt.yk.e
    public Map<Long, q> jl(int i2) {
        Cursor cursorRawQuery;
        s();
        if (f19042l != null) {
            try {
                cursorRawQuery = f19042l.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "segments", bz.f48985d), new String[]{Integer.toString(i2)});
            } catch (Throwable unused) {
                cursorRawQuery = null;
            }
            try {
                if (cursorRawQuery.moveToNext()) {
                    int columnIndex = cursorRawQuery.getColumnIndex("info");
                    String string = columnIndex >= 0 ? cursorRawQuery.getString(columnIndex) : null;
                    HashMap map = new HashMap();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        q qVar = new q(jSONArray.getJSONObject(i3));
                        map.put(Long.valueOf(qVar.jx()), qVar);
                    }
                    com.byazt.xq.a.hp(cursorRawQuery);
                    return map;
                }
                com.byazt.xq.a.hp(cursorRawQuery);
            } catch (Throwable unused2) {
                com.byazt.xq.a.hp(cursorRawQuery);
                return null;
            }
        }
        return null;
    }

    @Override // com.byazt.cy.jx
    public List<DownloadInfo> jx(String str) {
        return null;
    }

    @Override // com.byazt.cy.jx
    public List<DownloadInfo> l() {
        return null;
    }

    @Override // com.byazt.cy.jx
    public boolean w() {
        return false;
    }

    @Override // com.byazt.yk.e
    public void zy(int i2) {
        s();
        if (f19042l == null) {
            return;
        }
        try {
            hp(i2, this.f19045w.l());
        } catch (Throwable unused) {
        }
    }

    public w(boolean z2) {
        this.hp = null;
        if (z2) {
            this.f19043a = false;
            hp();
        }
    }

    @Override // com.byazt.cy.jx
    public List<DownloadInfo> l(String str) {
        return null;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo q(int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 1);
        update(i2, contentValues);
        return null;
    }

    @Override // com.byazt.cy.jx
    public boolean w(int i2) {
        eb ebVar;
        s();
        if (f19042l != null && (ebVar = this.jx) != null) {
            try {
                hp(i2, ebVar.l());
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo e(int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-7));
        update(i2, contentValues);
        return null;
    }

    @Override // com.byazt.cy.jx
    public void j(final int i2) {
        s();
        if (f19042l == null || this.f19044j == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.hp(i2, w.this.f19044j.l());
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.cy.jx
    public List<com.byazt.fu.l> jx(int i2) {
        Cursor cursorRawQuery;
        ArrayList arrayList = new ArrayList();
        s();
        if (f19042l != null) {
            try {
                cursorRawQuery = f19042l.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloadChunk", bz.f48985d), new String[]{Integer.toString(i2)});
                while (cursorRawQuery.moveToNext()) {
                    try {
                        arrayList.add(new com.byazt.fu.l(cursorRawQuery));
                    } catch (Throwable unused) {
                        com.byazt.xq.a.hp(cursorRawQuery);
                        return arrayList;
                    }
                }
                com.byazt.xq.a.hp(cursorRawQuery);
                return arrayList;
            } catch (Throwable unused2) {
                cursorRawQuery = null;
            }
        }
        return arrayList;
    }

    @Override // com.byazt.cy.jx
    public void l(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo l(int i2) {
        Cursor cursorRawQuery;
        s();
        if (f19042l != null) {
            try {
                cursorRawQuery = f19042l.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloader", bz.f48985d), new String[]{Integer.toString(i2)});
            } catch (Throwable unused) {
                cursorRawQuery = null;
            }
            try {
                if (cursorRawQuery.moveToNext()) {
                    DownloadInfo downloadInfo = new DownloadInfo(cursorRawQuery);
                    com.byazt.xq.a.hp(cursorRawQuery);
                    return downloadInfo;
                }
                com.byazt.xq.a.hp(cursorRawQuery);
            } catch (Throwable unused2) {
                com.byazt.xq.a.hp(cursorRawQuery);
                return null;
            }
        }
        return null;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo w(int i2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-4));
        contentValues.put("curBytes", Long.valueOf(j2));
        update(i2, contentValues);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        try {
            if (!hp(downloadInfo.getId())) {
                jx(downloadInfo);
                return;
            }
            eb ebVar = this.jx;
            if (ebVar == null) {
                return;
            }
            try {
                l(downloadInfo, ebVar.jx());
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // com.byazt.yk.e
    /* renamed from: gu, reason: merged with bridge method [inline-methods] */
    public ArrayList<q> k(int i2) {
        Map<Long, q> mapJl = jl(i2);
        if (mapJl == null || mapJl.isEmpty()) {
            return null;
        }
        return new ArrayList<>(mapJl.values());
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo s(int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 5);
        contentValues.put("isFirstDownload", (Integer) 0);
        update(i2, contentValues);
        return null;
    }

    private void jx(final DownloadInfo downloadInfo) {
        s();
        if (f19042l == null || this.jx == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w wVar = w.this;
                    wVar.hp(downloadInfo, wVar.jx.hp());
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.cy.jx
    public void l(com.byazt.fu.l lVar) {
        hp(lVar);
    }

    private void l(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.bindLong(downloadInfo.getBindValueCount() + 1, downloadInfo.getId());
                sQLiteStatement.execute();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public void hp() {
        hp(new SparseArray<>(), new SparseArray<>(), (j) null);
    }

    @Override // com.byazt.yk.sz
    public void hp(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.byazt.fu.l>> sparseArray2, final j jVar) {
        try {
            Runnable runnable = new Runnable() { // from class: com.byazt.cy.w.1
                /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 609
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.byazt.cy.w.AnonymousClass1.run():void");
                }
            };
            ExecutorService executorServiceVv = com.byazt.yk.jx.vv();
            if (executorServiceVv != null) {
                executorServiceVv.execute(runnable);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo j(int i2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-2));
        contentValues.put("curBytes", Long.valueOf(j2));
        update(i2, contentValues);
        return null;
    }

    @Override // com.byazt.cy.jx
    public void jx() {
        s();
        if (f19042l == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.2
            @Override // java.lang.Runnable
            public void run() {
                w.this.gu();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(List<DownloadInfo> list) {
        if (list == null) {
            return;
        }
        try {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                    com.byazt.xq.a.l(downloadInfo);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public boolean j() {
        return this.f19043a;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo jx(int i2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-3));
        contentValues.put("curBytes", Long.valueOf(j2));
        contentValues.put("isFirstDownload", (Integer) 0);
        contentValues.put("isFirstSuccess", (Integer) 0);
        update(i2, contentValues);
        return null;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo l(int i2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-1));
        contentValues.put("curBytes", Long.valueOf(j2));
        if (j2 > 0) {
            contentValues.put("isFirstDownload", (Integer) 0);
        }
        update(i2, contentValues);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(List<DownloadInfo> list, List<Integer> list2, SparseArray<DownloadInfo> sparseArray, SparseArray<DownloadInfo> sparseArray2, SparseArray<List<com.byazt.fu.l>> sparseArray3) {
        int size = sparseArray.size();
        if (size < 0 || f19042l == null) {
            return;
        }
        synchronized (f19042l) {
            try {
                q();
                if (!list.isEmpty()) {
                    if (com.byazt.jb.hp.jx().hp("clear_invalid_task_error")) {
                        String[] strArr = new String[list.size()];
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            strArr[i2] = String.valueOf(list.get(i2));
                        }
                        String str = "CAST(_id AS TEXT) IN (" + new String(new char[list.size() - 1]).replace(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, "?,") + "?)";
                        f19042l.delete("downloader", str, strArr);
                        f19042l.delete("downloadChunk", str, strArr);
                    } else {
                        String strJoin = TextUtils.join(", ", list2);
                        f19042l.delete("downloader", "_id IN (?)", new String[]{strJoin});
                        f19042l.delete("downloadChunk", "_id IN (?)", new String[]{strJoin});
                    }
                }
                for (int i3 = 0; i3 < size; i3++) {
                    int iKeyAt = sparseArray.keyAt(i3);
                    DownloadInfo downloadInfo = sparseArray.get(iKeyAt);
                    f19042l.delete("downloader", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                    f19042l.insert("downloader", null, downloadInfo.toContentValues());
                    if (downloadInfo.getChunkCount() > 1) {
                        List<com.byazt.fu.l> listJx = jx(iKeyAt);
                        if (listJx.size() > 0) {
                            f19042l.delete("downloadChunk", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                            for (com.byazt.fu.l lVar : listJx) {
                                lVar.l(downloadInfo.getId());
                                f19042l.insert("downloadChunk", null, lVar.hp());
                            }
                        }
                    }
                }
                if (sparseArray2 != null && sparseArray3 != null) {
                    int size2 = sparseArray2.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        int id = sparseArray2.valueAt(i4).getId();
                        List<com.byazt.fu.l> listHp = com.byazt.xq.a.hp(jx(id));
                        if (listHp != null && listHp.size() > 0) {
                            sparseArray3.put(id, listHp);
                        }
                    }
                }
                f19042l.setTransactionSuccessful();
            } catch (Throwable unused) {
            }
            try {
                e();
            } finally {
            }
        }
    }

    @Override // com.byazt.cy.jx
    public void l(int i2, List<com.byazt.fu.l> list) {
        try {
            j(i2);
            if (list != null) {
                for (com.byazt.fu.l lVar : list) {
                    if (lVar != null) {
                        hp(lVar);
                        if (lVar.a()) {
                            Iterator<com.byazt.fu.l> it = lVar.eb().iterator();
                            while (it.hasNext()) {
                                hp(it.next());
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public boolean hp(int i2) {
        return l(i2) != null;
    }

    @Override // com.byazt.cy.jx
    public List<DownloadInfo> hp(String str) {
        Cursor cursorRawQuery;
        s();
        ArrayList arrayList = new ArrayList();
        if (f19042l != null) {
            try {
                cursorRawQuery = f19042l.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloader", "url"), new String[]{str});
            } catch (Throwable unused) {
                cursorRawQuery = null;
            }
            try {
                if (cursorRawQuery.moveToNext()) {
                    arrayList.add(new DownloadInfo(cursorRawQuery));
                }
                com.byazt.xq.a.hp(cursorRawQuery);
                return arrayList;
            } catch (Throwable unused2) {
                com.byazt.xq.a.hp(cursorRawQuery);
                return arrayList;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                sQLiteStatement.bindLong(1, i2);
                sQLiteStatement.execute();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public void hp(final com.byazt.fu.l lVar) {
        s();
        if (f19042l == null || this.f19044j == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.hp(lVar, w.this.f19044j.hp());
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.fu.l lVar, SQLiteStatement sQLiteStatement) {
        if (lVar == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                lVar.hp(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public void hp(final int i2, final int i3, final long j2) {
        s();
        if (i2 == 0 || i3 < 0 || j2 < 0 || f19042l == null || this.f19044j == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.hp(i2, i3, j2, w.this.f19044j.jx());
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.cy.jx
    public void hp(final int i2, final int i3, final int i4, final long j2) {
        s();
        if (i2 == 0 || i3 < 0 || i4 < 0 || j2 < 0 || f19042l == null || this.f19044j == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.hp(i2, i3, i4, j2, w.this.f19044j.jx());
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.cy.jx
    public void hp(final int i2, final int i3, final int i4, final int i5) {
        s();
        if (i2 == 0 || i4 < 0 || i5 == i3 || i5 < 0 || f19042l == null || this.f19044j == null) {
            return;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    w.this.hp(i2, i3, i4, i5, w.this.f19044j.jx());
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, int i4, int i5, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chunkIndex", Integer.valueOf(i5));
                f19042l.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i3), Integer.toString(i4)});
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, long j2, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j2));
                f19042l.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i3)});
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3, int i4, long j2, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j2));
                f19042l.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i2), Integer.toString(i3), Integer.toString(i4)});
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo hp(int i2, int i3) {
        s();
        if (f19042l == null) {
            return null;
        }
        int i4 = 10;
        while (f19042l.isDbLockedByCurrentThread() && i4 - 1 >= 0) {
            try {
                try {
                    Thread.sleep(5L);
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("chunkCount", Integer.valueOf(i3));
        f19042l.update("downloader", contentValues, "_id = ? ", new String[]{Integer.toString(i2)});
        return null;
    }

    @Override // com.byazt.cy.jx
    public boolean hp(final DownloadInfo downloadInfo) {
        s();
        if (downloadInfo == null || f19042l == null) {
            return false;
        }
        com.byazt.yk.jx.jx(new Runnable() { // from class: com.byazt.cy.w.10
            @Override // java.lang.Runnable
            public void run() {
                w.this.j(downloadInfo);
            }
        });
        return true;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo hp(int i2, long j2, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 3);
        contentValues.put("totalBytes", Long.valueOf(j2));
        contentValues.put("eTag", str);
        if (!TextUtils.isEmpty(str2)) {
            contentValues.put("name", str2);
        }
        update(i2, contentValues);
        return null;
    }

    @Override // com.byazt.cy.jx
    public DownloadInfo hp(int i2, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 4);
        contentValues.put("curBytes", Long.valueOf(j2));
        update(i2, contentValues);
        return null;
    }

    @Override // com.byazt.yk.e
    public boolean hp(int i2, Map<Long, q> map) throws SQLException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        s();
        if (f19042l == null) {
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Long l2 : map.keySet()) {
                l2.longValue();
                jSONArray.put(map.get(l2).gu());
            }
        } catch (Throwable unused) {
        }
        SQLiteStatement sQLiteStatementJ = this.f19045w.j();
        synchronized (sQLiteStatementJ) {
            sQLiteStatementJ.clearBindings();
            sQLiteStatementJ.bindLong(1, i2);
            sQLiteStatementJ.bindString(2, jSONArray.toString());
            sQLiteStatementJ.execute();
        }
        com.byazt.nu.hp.l("SqlDownloadCache", "updateSegments cost=" + com.byazt.xq.a.jx(jCurrentTimeMillis));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, ContentValues contentValues) {
        int i3 = 10;
        while (f19042l.isDbLockedByCurrentThread() && i3 - 1 >= 0) {
            try {
                try {
                    Thread.sleep(5L);
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                return;
            }
        }
        f19042l.update("downloader", contentValues, "_id = ? ", new String[]{String.valueOf(i2)});
    }

    @Override // com.byazt.cy.jx
    public void hp(l lVar) {
        this.hp = lVar;
    }

    public void hp(SparseArray<DownloadInfo> sparseArray, SparseArray<List<com.byazt.fu.l>> sparseArray2) {
        try {
            HashMap mapHp = com.byazt.xq.a.hp(sparseArray);
            HashMap mapHp2 = com.byazt.xq.a.hp(sparseArray2);
            l lVar = this.hp;
            if (lVar != null) {
                lVar.hp(mapHp, mapHp2);
            }
        } catch (Throwable unused) {
        }
    }
}
