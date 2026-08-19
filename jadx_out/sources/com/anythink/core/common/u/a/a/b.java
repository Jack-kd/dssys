package com.anythink.core.common.u.a.a;

import android.content.ContentValues;
import com.anythink.core.common.f.c;
import com.anythink.core.common.f.d;
import java.util.List;

/* loaded from: classes2.dex */
public class b extends c<com.anythink.core.common.u.a.b.a.a.c> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7731a = "com.anythink.core.common.u.a.a.b";

    /* renamed from: b, reason: collision with root package name */
    private static b f7732b;

    /* renamed from: c, reason: collision with root package name */
    private int f7733c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f7734a = "track_request_info";

        /* renamed from: b, reason: collision with root package name */
        public static final String f7735b = "id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f7736c = "req_content";

        /* renamed from: d, reason: collision with root package name */
        public static final String f7737d = "is_read";

        /* renamed from: e, reason: collision with root package name */
        public static final String f7738e = "is_ofl";

        /* renamed from: f, reason: collision with root package name */
        public static final String f7739f = "create_time";

        /* renamed from: g, reason: collision with root package name */
        public static final String f7740g = "CREATE TABLE IF NOT EXISTS track_request_info(id TEXT, req_content TEXT, is_read INTEGER DEFAULT 0,is_ofl INTEGER DEFAULT 0,create_time INTEGER NOT NULL)";
    }

    private b(d dVar) {
        super(dVar);
        this.f7733c = 1000;
        b();
    }

    public static b a(d dVar) {
        if (f7732b == null) {
            synchronized (b.class) {
                try {
                    if (f7732b == null) {
                        f7732b = new b(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7732b;
    }

    private synchronized int b() {
        if (d() == null) {
            return -1;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_read", (Integer) 0);
            d().beginTransaction();
            try {
                int iUpdate = d().update(a.f7734a, contentValues, null, null);
                d().setTransactionSuccessful();
                return iUpdate;
            } finally {
                d().endTransaction();
            }
        } catch (Throwable unused) {
            return -1;
        }
    }

    private synchronized void a() {
        try {
            if (d() == null) {
                return;
            }
            d().delete(a.f7734a, null, null);
        } catch (Exception unused) {
        }
    }

    private synchronized int b(com.anythink.core.common.u.a.b.a.a.c cVar) {
        if (d() == null || cVar == null) {
            return -1;
        }
        try {
            return d().delete(a.f7734a, "id=?", new String[]{cVar.f7758a});
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:8|(2:45|9)|(5:(3:47|10|(1:12))|43|28|29|30)|39|16) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized long a(com.anythink.core.common.u.a.b.a.a.c r13) {
        /*
            r12 = this;
            monitor-enter(r12)
            android.database.sqlite.SQLiteDatabase r0 = r12.d()     // Catch: java.lang.Throwable -> L30
            r1 = -1
            if (r0 != 0) goto Lb
            monitor-exit(r12)
            return r1
        Lb:
            r3 = 0
            android.database.sqlite.SQLiteDatabase r4 = r12.c()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3b
            java.lang.String r5 = "track_request_info"
            r10 = 0
            r11 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r4 = r4.query(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3b
            int r0 = r4.getCount()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
            int r5 = r12.f7733c     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
            if (r0 < r5) goto L2c
            r12.a()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
            goto L2c
        L28:
            r0 = move-exception
            r13 = r0
            r3 = r4
            goto L35
        L2c:
            r4.close()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L3f
            goto L3f
        L30:
            r0 = move-exception
            r13 = r0
            goto L77
        L33:
            r0 = move-exception
            r13 = r0
        L35:
            if (r3 == 0) goto L3a
            r3.close()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L3a
        L3a:
            throw r13     // Catch: java.lang.Throwable -> L30
        L3b:
            r4 = r3
        L3c:
            if (r4 == 0) goto L3f
            goto L2c
        L3f:
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            r0.<init>()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            java.lang.String r4 = "id"
            java.lang.String r5 = r13.f7758a     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            java.lang.String r4 = "req_content"
            java.lang.String r13 = r13.f7762e     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            r0.put(r4, r13)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            java.lang.String r13 = "is_read"
            r4 = 0
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            r0.put(r13, r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            java.lang.String r13 = "create_time"
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            java.lang.Long r4 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            r0.put(r13, r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            android.database.sqlite.SQLiteDatabase r13 = r12.d()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            java.lang.String r4 = "track_request_info"
            long r0 = r13.insert(r4, r3, r0)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L75
            monitor-exit(r12)
            return r0
        L75:
            monitor-exit(r12)
            return r1
        L77:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L30
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.a.a.b.a(com.anythink.core.common.u.a.b.a.a.c):long");
    }

    public final synchronized int b(List<com.anythink.core.common.u.a.b.a.a.c> list) {
        if (d() != null && list != null) {
            if (!list.isEmpty()) {
                try {
                    StringBuilder sb = new StringBuilder();
                    String[] strArr = new String[list.size()];
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (i2 > 0) {
                            sb.append(",");
                        }
                        sb.append("?");
                        strArr[i2] = list.get(i2).f7758a;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("is_read", (Integer) 0);
                    contentValues.put(a.f7738e, (Integer) 1);
                    return d().update(a.f7734a, contentValues, "id IN (" + sb.toString() + ")", strArr);
                } catch (Throwable unused) {
                    return -1;
                }
            }
        }
        return -1;
    }

    public final synchronized int a(List<com.anythink.core.common.u.a.b.a.a.c> list) {
        if (d() != null && list != null) {
            if (!list.isEmpty()) {
                try {
                    StringBuilder sb = new StringBuilder();
                    String[] strArr = new String[list.size()];
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (i2 > 0) {
                            sb.append(",");
                        }
                        sb.append("?");
                        strArr[i2] = list.get(i2).f7758a;
                    }
                    return d().delete(a.f7734a, "id IN (" + sb.toString() + ")", strArr);
                } catch (Throwable unused) {
                    return -1;
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00f8 A[Catch: all -> 0x00f0, PHI: r12
      0x00f8: PHI (r12v7 android.database.Cursor) = (r12v5 android.database.Cursor), (r12v6 android.database.Cursor), (r12v8 android.database.Cursor) binds: [B:33:0x00f6, B:38:0x0100, B:47:0x010e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:26:0x00ec, B:34:0x00f8, B:43:0x0107, B:44:0x010a, B:37:0x00fd), top: B:55:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.anythink.core.common.u.a.b.a.a.c> a(long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.a.a.b.a(long, boolean):java.util.List");
    }

    private synchronized List<com.anythink.core.common.u.a.b.a.a.c> a(long j2) {
        return a(j2, true);
    }
}
