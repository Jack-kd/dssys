package com.smartdigimkt.k3;

import android.database.Cursor;
import com.anythink.core.common.f.l;

/* loaded from: classes5.dex */
public final class k extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile k f41379b;

    public k(d dVar) {
        super(dVar);
    }

    public static k a(d dVar) {
        if (f41379b == null) {
            synchronized (k.class) {
                try {
                    if (f41379b == null) {
                        f41379b = new k(dVar);
                    }
                } finally {
                }
            }
        }
        return f41379b;
    }

    public final synchronized void c() {
        Cursor cursorQuery = null;
        long j2 = -1;
        try {
            try {
                cursorQuery = a().query(l.a.f3339a, null, null, null, null, null, "update_time DESC", String.valueOf(500));
                if (cursorQuery != null && cursorQuery.getCount() >= 500) {
                    cursorQuery.moveToLast();
                    j2 = cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                    cursorQuery.close();
                }
            } catch (Exception unused) {
                if (cursorQuery != null) {
                }
            } catch (OutOfMemoryError unused2) {
                long j3 = j2;
                Cursor cursor = cursorQuery;
                try {
                    System.gc();
                    if (cursor != null) {
                        cursorQuery = cursor;
                        j2 = j3;
                    } else {
                        j2 = j3;
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable unused3) {
                if (cursorQuery != null) {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - (-1627869184);
            if (j2 == 0 || j2 > jCurrentTimeMillis) {
                j2 = jCurrentTimeMillis;
            }
            if (j2 > 0) {
                try {
                    b().delete(l.a.f3339a, "update_time<?", new String[]{String.valueOf(j2)});
                } catch (Throwable unused4) {
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0088 A[Catch: all -> 0x006e, PHI: r1
      0x0088: PHI (r1v6 android.database.Cursor) = 
      (r1v3 android.database.Cursor)
      (r1v4 android.database.Cursor)
      (r1v5 android.database.Cursor)
      (r1v8 android.database.Cursor)
     binds: [B:25:0x0074, B:29:0x007b, B:36:0x0086, B:22:0x0070] A[DONT_GENERATE, DONT_INLINE], TryCatch #8 {, blocks: (B:17:0x0069, B:37:0x0088, B:33:0x0081, B:34:0x0084, B:28:0x0078), top: B:50:0x0002, inners: #7 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.ArrayList d() {
        /*
            r10 = this;
            monitor-enter(r10)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r10.a()     // Catch: java.lang.Throwable -> L73 java.lang.OutOfMemoryError -> L77 java.lang.Exception -> L85
            java.lang.String r2 = "inspect_info"
            r8 = 0
            r9 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L73 java.lang.OutOfMemoryError -> L77 java.lang.Exception -> L85
            if (r1 == 0) goto L70
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L74 java.lang.OutOfMemoryError -> L78 java.lang.Exception -> L86
            if (r2 <= 0) goto L70
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L74 java.lang.OutOfMemoryError -> L78 java.lang.Exception -> L86
            r2.<init>()     // Catch: java.lang.Throwable -> L74 java.lang.OutOfMemoryError -> L78 java.lang.Exception -> L86
        L20:
            boolean r3 = r1.moveToNext()     // Catch: java.lang.Throwable -> L74 java.lang.OutOfMemoryError -> L78 java.lang.Exception -> L86
            if (r3 == 0) goto L66
            com.smartdigimkt.l3.b r3 = new com.smartdigimkt.l3.b     // Catch: java.lang.Throwable -> L20
            r3.<init>()     // Catch: java.lang.Throwable -> L20
            java.lang.String r4 = "inspect_id"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L20
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L20
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L20
            if (r5 == 0) goto L3c
            goto L20
        L3c:
            java.lang.String r5 = "inspect_result"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L20
            int r5 = r1.getInt(r5)     // Catch: java.lang.Throwable -> L20
            java.lang.String r6 = "inspect_name"
            int r6 = r1.getColumnIndex(r6)     // Catch: java.lang.Throwable -> L20
            java.lang.String r6 = r1.getString(r6)     // Catch: java.lang.Throwable -> L20
            java.lang.String r7 = "update_time"
            int r7 = r1.getColumnIndex(r7)     // Catch: java.lang.Throwable -> L20
            long r7 = r1.getLong(r7)     // Catch: java.lang.Throwable -> L20
            r3.f41650a = r4     // Catch: java.lang.Throwable -> L20
            r3.f41652c = r5     // Catch: java.lang.Throwable -> L20
            r3.f41651b = r6     // Catch: java.lang.Throwable -> L20
            r3.f41653d = r7     // Catch: java.lang.Throwable -> L20
            r2.add(r3)     // Catch: java.lang.Throwable -> L20
            goto L20
        L66:
            r1.close()     // Catch: java.lang.Throwable -> L74 java.lang.OutOfMemoryError -> L78 java.lang.Exception -> L86
            r1.close()     // Catch: java.lang.Throwable -> L6e
            monitor-exit(r10)
            return r2
        L6e:
            r0 = move-exception
            goto L8c
        L70:
            if (r1 == 0) goto L8e
            goto L88
        L73:
            r1 = r0
        L74:
            if (r1 == 0) goto L8e
            goto L88
        L77:
            r1 = r0
        L78:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L7e
            if (r1 == 0) goto L8e
            goto L88
        L7e:
            r0 = move-exception
            if (r1 == 0) goto L84
            r1.close()     // Catch: java.lang.Throwable -> L6e
        L84:
            throw r0     // Catch: java.lang.Throwable -> L6e
        L85:
            r1 = r0
        L86:
            if (r1 == 0) goto L8e
        L88:
            r1.close()     // Catch: java.lang.Throwable -> L6e
            goto L8e
        L8c:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L6e
            throw r0
        L8e:
            monitor-exit(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.k.d():java.util.ArrayList");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0039 A[Catch: all -> 0x0030, PHI: r10
      0x0039: PHI (r10v4 android.database.Cursor) = (r10v3 android.database.Cursor), (r10v5 android.database.Cursor) binds: [B:21:0x0037, B:18:0x0033] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {, blocks: (B:12:0x002a, B:22:0x0039), top: B:28:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean a(java.lang.String r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            if (r10 != 0) goto L6
            monitor-exit(r9)
            return r0
        L6:
            android.database.sqlite.SQLiteDatabase r1 = r9.a()     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = "inspect_info"
            java.lang.String r3 = "inspect_id"
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L36
            java.lang.String r4 = "inspect_id=?"
            java.lang.String[] r5 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> L36
            r7 = 0
            r8 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L36
            if (r10 == 0) goto L33
            int r1 = r10.getCount()     // Catch: java.lang.Throwable -> L37
            if (r1 <= 0) goto L33
            r10.close()     // Catch: java.lang.Throwable -> L37
            r10.close()     // Catch: java.lang.Throwable -> L30
            monitor-exit(r9)
            r10 = 1
            return r10
        L30:
            r0 = move-exception
            r10 = r0
            goto L3d
        L33:
            if (r10 == 0) goto L3f
            goto L39
        L36:
            r10 = 0
        L37:
            if (r10 == 0) goto L3f
        L39:
            r10.close()     // Catch: java.lang.Throwable -> L30
            goto L3f
        L3d:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L30
            throw r10
        L3f:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.k.a(java.lang.String):boolean");
    }
}
