package com.smartdigimkt.k3;

import android.database.Cursor;
import com.anythink.core.common.d.t;
import com.anythink.core.common.f.f;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class e extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile e f41370b;

    public e(d dVar) {
        super(dVar);
    }

    public static e a(d dVar) {
        if (f41370b == null) {
            synchronized (e.class) {
                try {
                    if (f41370b == null) {
                        f41370b = new e(dVar);
                    }
                } finally {
                }
            }
        }
        return f41370b;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x003c A[Catch: all -> 0x0022, PHI: r10
      0x003c: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:14:0x0028, B:18:0x002f, B:25:0x003a] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {, blocks: (B:7:0x001e, B:26:0x003c, B:22:0x0035, B:23:0x0038, B:17:0x002c), top: B:36:0x0002, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.ArrayList b(java.lang.String r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r9.a()     // Catch: java.lang.Throwable -> L27 java.lang.OutOfMemoryError -> L2b java.lang.Exception -> L39
            java.lang.String r2 = "sdkconfig"
            java.lang.String r4 = "key = ? and type = ?"
            java.lang.String r3 = "AP_SY"
            java.lang.String[] r5 = new java.lang.String[]{r10, r3}     // Catch: java.lang.Throwable -> L27 java.lang.OutOfMemoryError -> L2b java.lang.Exception -> L39
            r7 = 0
            r8 = 0
            r3 = 0
            r6 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L27 java.lang.OutOfMemoryError -> L2b java.lang.Exception -> L39
            java.util.ArrayList r0 = r9.a(r10)     // Catch: java.lang.Throwable -> L28 java.lang.OutOfMemoryError -> L2c java.lang.Exception -> L3a
            if (r10 == 0) goto L25
            r10.close()     // Catch: java.lang.Throwable -> L22
            goto L25
        L22:
            r0 = move-exception
            r10 = r0
            goto L40
        L25:
            monitor-exit(r9)
            return r0
        L27:
            r10 = r0
        L28:
            if (r10 == 0) goto L42
            goto L3c
        L2b:
            r10 = r0
        L2c:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L32
            if (r10 == 0) goto L42
            goto L3c
        L32:
            r0 = move-exception
            if (r10 == 0) goto L38
            r10.close()     // Catch: java.lang.Throwable -> L22
        L38:
            throw r0     // Catch: java.lang.Throwable -> L22
        L39:
            r10 = r0
        L3a:
            if (r10 == 0) goto L42
        L3c:
            r10.close()     // Catch: java.lang.Throwable -> L22
            goto L42
        L40:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L22
            throw r10
        L42:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.e.b(java.lang.String):java.util.ArrayList");
    }

    public final synchronized boolean a(String str) {
        Cursor cursorQuery = a().query(f.a.f3241a, new String[]{f.a.f3242b}, "key=? AND type=?", new String[]{str, t.a.f3042k}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized ArrayList a(Cursor cursor) {
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0) {
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        com.smartdigimkt.l3.c cVar = new com.smartdigimkt.l3.c();
                        cursor.getString(cursor.getColumnIndex(f.a.f3242b));
                        cursor.getString(cursor.getColumnIndex("type"));
                        cVar.f41654a = cursor.getString(cursor.getColumnIndex(f.a.f3244d));
                        cVar.f41655b = cursor.getString(cursor.getColumnIndex(f.a.f3245e));
                        arrayList.add(cVar);
                    }
                    cursor.close();
                    return arrayList;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return null;
    }
}
