package com.anythink.core.common.u.a.a;

import android.content.ContentValues;
import com.anythink.core.common.f.c;
import com.anythink.core.common.f.d;
import java.util.List;

/* loaded from: classes2.dex */
public class a extends c<com.anythink.core.common.u.a.b.a.a.a> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7719a = "com.anythink.core.common.u.a.a.a";

    /* renamed from: b, reason: collision with root package name */
    private static a f7720b;

    /* renamed from: c, reason: collision with root package name */
    private int f7721c;

    /* renamed from: com.anythink.core.common.u.a.a.a$a, reason: collision with other inner class name */
    public static class C0081a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f7725a = "agent_request_info";

        /* renamed from: b, reason: collision with root package name */
        public static final String f7726b = "id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f7727c = "req_content";

        /* renamed from: d, reason: collision with root package name */
        public static final String f7728d = "is_read";

        /* renamed from: e, reason: collision with root package name */
        public static final String f7729e = "create_time";

        /* renamed from: f, reason: collision with root package name */
        public static final String f7730f = "CREATE TABLE IF NOT EXISTS agent_request_info(id TEXT, req_content TEXT, is_read INTEGER DEFAULT 0,create_time INTEGER DEFAULT 0)";
    }

    private a(d dVar) {
        super(dVar);
        this.f7721c = 1000;
        b();
    }

    public static a a(d dVar) {
        if (f7720b == null) {
            synchronized (a.class) {
                try {
                    if (f7720b == null) {
                        f7720b = new a(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7720b;
    }

    private synchronized int b() {
        if (d() == null) {
            return -1;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_read", (Integer) 0);
            return d().update(C0081a.f7725a, contentValues, null, null);
        } catch (Throwable unused) {
            return -1;
        }
    }

    private synchronized void a() {
        try {
            if (d() == null) {
                return;
            }
            d().delete(C0081a.f7725a, null, null);
        } catch (Exception unused) {
        }
    }

    private synchronized int b(com.anythink.core.common.u.a.b.a.a.a aVar) {
        if (d() == null || aVar == null) {
            return -1;
        }
        try {
            return d().delete(C0081a.f7725a, "id=?", new String[]{aVar.f7758a});
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final synchronized int b(List<com.anythink.core.common.u.a.b.a.a.a> list) {
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
                    return d().update(C0081a.f7725a, contentValues, "id IN (" + sb.toString() + ")", strArr);
                } catch (Throwable unused) {
                    return -1;
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:8|(2:45|9)|(5:(3:47|10|(1:12))|43|28|29|30)|39|16) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized long a(com.anythink.core.common.u.a.b.a.a.a r13) {
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
            java.lang.String r5 = "agent_request_info"
            r10 = 0
            r11 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r4 = r4.query(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3b
            int r0 = r4.getCount()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
            int r5 = r12.f7721c     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
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
            java.lang.String r4 = "agent_request_info"
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
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.a.a.a.a(com.anythink.core.common.u.a.b.a.a.a):long");
    }

    private synchronized boolean a(String str) {
        if (d() == null || str == null) {
            return false;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_read", (Integer) 1);
            return d().update(C0081a.f7725a, contentValues, "id=?", new String[]{str}) > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public final synchronized int a(List<com.anythink.core.common.u.a.b.a.a.a> list) {
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
                    return d().delete(C0081a.f7725a, "id IN (" + sb.toString() + ")", strArr);
                } catch (Throwable unused) {
                    return -1;
                }
            }
        }
        return -1;
    }

    private synchronized List<com.anythink.core.common.u.a.b.a.a.a> a(long j2) {
        return a(j2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00da A[Catch: all -> 0x00d2, PHI: r12
      0x00da: PHI (r12v7 android.database.Cursor) = (r12v5 android.database.Cursor), (r12v6 android.database.Cursor), (r12v8 android.database.Cursor) binds: [B:34:0x00d8, B:39:0x00e2, B:48:0x00f0] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:27:0x00ce, B:35:0x00da, B:44:0x00e9, B:45:0x00ec, B:38:0x00df), top: B:56:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.anythink.core.common.u.a.b.a.a.a> a(long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.u.a.a.a.a(long, boolean):java.util.List");
    }
}
