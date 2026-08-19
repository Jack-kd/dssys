package com.anythink.core.common.f;

import com.anythink.core.common.h.ar;

/* loaded from: classes2.dex */
public class k extends c<ar> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3323a = "com.anythink.core.common.f.k";

    /* renamed from: b, reason: collision with root package name */
    private static k f3324b;

    /* renamed from: c, reason: collision with root package name */
    private int f3325c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f3326a = "request_info";

        /* renamed from: b, reason: collision with root package name */
        public static final String f3327b = "id";

        /* renamed from: c, reason: collision with root package name */
        public static final String f3328c = "req_type";

        /* renamed from: d, reason: collision with root package name */
        public static final String f3329d = "req_url";

        /* renamed from: e, reason: collision with root package name */
        public static final String f3330e = "req_head";

        /* renamed from: f, reason: collision with root package name */
        public static final String f3331f = "req_content";

        /* renamed from: g, reason: collision with root package name */
        public static final String f3332g = "time";

        /* renamed from: h, reason: collision with root package name */
        public static final String f3333h = "extra";

        /* renamed from: i, reason: collision with root package name */
        public static final String f3334i = "CREATE TABLE IF NOT EXISTS request_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, req_content TEXT, time INTEGER, extra TEXT )";
    }

    private k(d dVar) {
        super(dVar);
        this.f3325c = 1000;
    }

    private static k a(d dVar) {
        if (f3324b == null) {
            synchronized (k.class) {
                try {
                    if (f3324b == null) {
                        f3324b = new k(dVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3324b;
    }

    private synchronized int b(ar arVar) {
        if (d() == null || arVar == null) {
            return -1;
        }
        try {
            return d().delete(a.f3326a, "id=?", new String[]{arVar.f3802a});
        } catch (Throwable unused) {
            return -1;
        }
    }

    private synchronized void a() {
        try {
            if (d() == null) {
                return;
            }
            d().delete(a.f3326a, null, null);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:8|(2:45|9)|(5:(3:47|10|(1:12))|43|28|29|30)|39|16) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized long a(com.anythink.core.common.h.ar r13) {
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
            java.lang.String r5 = "request_info"
            r10 = 0
            r11 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r4 = r4.query(r5, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L3b
            int r0 = r4.getCount()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
            int r5 = r12.f3325c     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L3c
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
            goto L8b
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
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.<init>()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "id"
            java.lang.String r5 = r13.f3802a     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "req_type"
            int r5 = r13.f3803b     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "req_url"
            java.lang.String r5 = r13.f3805d     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "req_head"
            java.lang.String r5 = r13.f3804c     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "req_content"
            java.lang.String r5 = r13.f3806e     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "time"
            long r5 = r13.f3807f     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "extra"
            java.lang.String r13 = r13.f3808g     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            r0.put(r4, r13)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            android.database.sqlite.SQLiteDatabase r13 = r12.d()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            java.lang.String r4 = "request_info"
            long r0 = r13.insert(r4, r3, r0)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L89
            monitor-exit(r12)
            return r0
        L89:
            monitor-exit(r12)
            return r1
        L8b:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L30
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.k.a(com.anythink.core.common.h.ar):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009c A[Catch: all -> 0x008f, PHI: r11
      0x009c: PHI (r11v7 android.database.Cursor) = (r11v5 android.database.Cursor), (r11v6 android.database.Cursor), (r11v8 android.database.Cursor) binds: [B:23:0x009a, B:28:0x00a4, B:36:0x00b1] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #7 {, blocks: (B:13:0x008a, B:19:0x0094, B:24:0x009c, B:32:0x00aa, B:33:0x00ad, B:27:0x00a1), top: B:46:0x0002, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized java.util.List<com.anythink.core.common.h.ar> a(int r11) {
        /*
            r10 = this;
            monitor-enter(r10)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r10.c()     // Catch: java.lang.Throwable -> L99 java.lang.OutOfMemoryError -> La0 java.lang.Exception -> Lae
            java.lang.String r2 = "request_info"
            java.lang.String r8 = "time"
            java.lang.String r9 = java.lang.String.valueOf(r11)     // Catch: java.lang.Throwable -> L99 java.lang.OutOfMemoryError -> La0 java.lang.Exception -> Lae
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r11 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L99 java.lang.OutOfMemoryError -> La0 java.lang.Exception -> Lae
            if (r11 == 0) goto L92
            int r1 = r11.getCount()     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            if (r1 <= 0) goto L92
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r1.<init>()     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
        L24:
            boolean r2 = r11.moveToNext()     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            if (r2 == 0) goto L87
            com.anythink.core.common.h.ar r2 = new com.anythink.core.common.h.ar     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.<init>()     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "id"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = r11.getString(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3802a = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "req_type"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            int r3 = r11.getInt(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3803b = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "req_url"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = r11.getString(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3805d = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "req_head"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = r11.getString(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3804c = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "req_content"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = r11.getString(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3806e = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "time"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            long r3 = r11.getLong(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3807f = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = "extra"
            int r3 = r11.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            java.lang.String r3 = r11.getString(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r2.f3808g = r3     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r1.add(r2)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            goto L24
        L87:
            r11.close()     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> La1 java.lang.Exception -> Laf
            r11.close()     // Catch: java.lang.Throwable -> L8f
            monitor-exit(r10)
            return r1
        L8f:
            r0 = move-exception
            r11 = r0
            goto Lb2
        L92:
            if (r11 == 0) goto L97
            r11.close()     // Catch: java.lang.Throwable -> L8f
        L97:
            monitor-exit(r10)
            return r0
        L99:
            r11 = r0
        L9a:
            if (r11 == 0) goto Lb4
        L9c:
            r11.close()     // Catch: java.lang.Throwable -> L8f
            goto Lb4
        La0:
            r11 = r0
        La1:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> La7
            if (r11 == 0) goto Lb4
            goto L9c
        La7:
            r0 = move-exception
            if (r11 == 0) goto Lad
            r11.close()     // Catch: java.lang.Throwable -> L8f
        Lad:
            throw r0     // Catch: java.lang.Throwable -> L8f
        Lae:
            r11 = r0
        Laf:
            if (r11 == 0) goto Lb4
            goto L9c
        Lb2:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L8f
            throw r11
        Lb4:
            monitor-exit(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.f.k.a(int):java.util.List");
    }
}
