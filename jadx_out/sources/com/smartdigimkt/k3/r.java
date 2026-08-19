package com.smartdigimkt.k3;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.anythink.core.common.f.s;
import com.smartdigimkt.f3.w;

/* loaded from: classes5.dex */
public final class r extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile r f41392b;

    public r(d dVar) {
        super(dVar);
    }

    public final w a(String str) {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabaseA;
        try {
            synchronized (this) {
                sQLiteDatabaseA = this.f41366a.a();
            }
            cursorQuery = sQLiteDatabaseA.query(s.a.f3399a, null, "video_url=?", new String[]{str}, null, null, null);
        } catch (Throwable unused) {
            cursorQuery = null;
        }
        try {
            if (cursorQuery.moveToNext()) {
                w wVar = new w();
                wVar.f40258a = str;
                wVar.f40259b = cursorQuery.getString(cursorQuery.getColumnIndex("file_path"));
                wVar.f40260c = cursorQuery.getInt(cursorQuery.getColumnIndex(s.a.f3402d));
                wVar.f40262e = cursorQuery.getLong(cursorQuery.getColumnIndex(s.a.f3403e));
                wVar.f40261d = cursorQuery.getLong(cursorQuery.getColumnIndex(s.a.f3404f));
                cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                cursorQuery.close();
                cursorQuery.close();
                return wVar;
            }
        } catch (Throwable unused2) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }
        cursorQuery.close();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003f A[PHI: r11
      0x003f: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v5 android.database.Cursor) binds: [B:22:0x003d, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(java.lang.String r11) {
        /*
            r10 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r11)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L3c
            com.smartdigimkt.k3.d r0 = r10.f41366a     // Catch: java.lang.Throwable -> L38
            android.database.sqlite.SQLiteDatabase r2 = r0.a()     // Catch: java.lang.Throwable -> L38
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L3c
            java.lang.String r3 = "video_res_cache_info"
            java.lang.String r0 = "video_url"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L3c
            java.lang.String r5 = "video_url=?"
            java.lang.String[] r6 = new java.lang.String[]{r11}     // Catch: java.lang.Throwable -> L3c
            r8 = 0
            r9 = 0
            r7 = 0
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L3c
            if (r11 == 0) goto L35
            int r0 = r11.getCount()     // Catch: java.lang.Throwable -> L3d
            if (r0 <= 0) goto L35
            r11.close()     // Catch: java.lang.Throwable -> L3d
            r11.close()
            r11 = 1
            return r11
        L35:
            if (r11 == 0) goto L42
            goto L3f
        L38:
            r0 = move-exception
            r11 = r0
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L3c
            throw r11     // Catch: java.lang.Throwable -> L3c
        L3c:
            r11 = 0
        L3d:
            if (r11 == 0) goto L42
        L3f:
            r11.close()
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.r.b(java.lang.String):boolean");
    }

    public final void c(String str) {
        SQLiteDatabase sQLiteDatabaseB;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
            synchronized (this) {
                sQLiteDatabaseB = this.f41366a.b();
            }
            sQLiteDatabaseB.update(s.a.f3399a, contentValues, "video_url = ? ", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ab, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ac, code lost:
    
        r0.getMessage();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList d() {
        /*
            r11 = this;
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r2 = 0
            monitor-enter(r11)     // Catch: java.lang.Throwable -> Lb0
            com.smartdigimkt.k3.d r0 = r11.f41366a     // Catch: java.lang.Throwable -> Lb2
            android.database.sqlite.SQLiteDatabase r3 = r0.a()     // Catch: java.lang.Throwable -> Lb2
            monitor-exit(r11)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r4 = "video_res_cache_info"
            java.lang.String r10 = "update_time DESC"
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lb0
            int r0 = r2.getCount()     // Catch: java.lang.Throwable -> Lb0
            if (r0 <= 0) goto Lba
            int r0 = r2.getCount()     // Catch: java.lang.Throwable -> Lb0
            double r3 = (double) r0     // Catch: java.lang.Throwable -> Lb0
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 * r5
            double r3 = r3 + r5
            r5 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r3 = r3 / r5
            long r3 = java.lang.Math.round(r3)     // Catch: java.lang.Throwable -> Lb0
            int r0 = (int) r3     // Catch: java.lang.Throwable -> Lb0
            int r0 = r0 + (-1)
            boolean r0 = r2.moveToPosition(r0)     // Catch: java.lang.Throwable -> Lb0
            if (r0 == 0) goto Lba
            java.lang.String r0 = "update_time"
            int r0 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> Lb0
            long r3 = r2.getLong(r0)     // Catch: java.lang.Throwable -> Lb0
        L44:
            com.smartdigimkt.f3.w r0 = new com.smartdigimkt.f3.w     // Catch: java.lang.Throwable -> Lb0
            r0.<init>()     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "video_url"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Throwable -> Lb0
            r0.f40258a = r5     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "file_path"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = r2.getString(r5)     // Catch: java.lang.Throwable -> Lb0
            r0.f40259b = r5     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "ready_rate"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Throwable -> Lb0
            int r5 = r2.getInt(r5)     // Catch: java.lang.Throwable -> Lb0
            r0.f40260c = r5     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "download_size"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Throwable -> Lb0
            long r5 = r2.getLong(r5)     // Catch: java.lang.Throwable -> Lb0
            r0.f40262e = r5     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "total_size"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Throwable -> Lb0
            long r5 = r2.getLong(r5)     // Catch: java.lang.Throwable -> Lb0
            r0.f40261d = r5     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "update_time"
            int r5 = r2.getColumnIndex(r5)     // Catch: java.lang.Throwable -> Lb0
            r2.getLong(r5)     // Catch: java.lang.Throwable -> Lb0
            r1.add(r0)     // Catch: java.lang.Throwable -> Lb0
            boolean r0 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lb0
            if (r0 != 0) goto L44
            android.database.sqlite.SQLiteDatabase r0 = r11.b()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r5 = "video_res_cache_info"
            java.lang.String r6 = "update_time<=?"
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> Lab
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> Lab
            r0.delete(r5, r6, r3)     // Catch: java.lang.Throwable -> Lab
            goto Lba
        Lab:
            r0 = move-exception
            r0.getMessage()     // Catch: java.lang.Throwable -> Lb0
            goto Lba
        Lb0:
            r0 = move-exception
            goto Lb5
        Lb2:
            r0 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> Lb0
            throw r0     // Catch: java.lang.Throwable -> Lb0
        Lb5:
            r0.getMessage()     // Catch: java.lang.Throwable -> Lbe
            if (r2 == 0) goto Lbd
        Lba:
            r2.close()
        Lbd:
            return r1
        Lbe:
            r0 = move-exception
            if (r2 == 0) goto Lc4
            r2.close()
        Lc4:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.r.d():java.util.ArrayList");
    }

    public final long c() {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorQuery = null;
        try {
            synchronized (this) {
                sQLiteDatabaseA = this.f41366a.a();
            }
            cursorQuery = sQLiteDatabaseA.query(s.a.f3399a, new String[]{"sum(download_size)"}, null, null, null, null, null);
            if (cursorQuery.moveToNext()) {
                long j2 = cursorQuery.getLong(0);
                cursorQuery.close();
                cursorQuery.close();
                return j2;
            }
        } catch (Throwable th) {
            try {
                th.getMessage();
                if (cursorQuery == null) {
                    return 0L;
                }
            } finally {
                if (0 != 0) {
                    cursorQuery.close();
                }
            }
        }
        return 0L;
    }
}
