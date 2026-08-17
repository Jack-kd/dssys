package com.smartdigimkt.k3;

import com.anythink.core.common.f.k;

/* loaded from: classes5.dex */
public final class j extends b {

    /* renamed from: b, reason: collision with root package name */
    public static j f41378b;

    public j(d dVar) {
        super(dVar);
    }

    public static j a(d dVar) {
        if (f41378b == null) {
            synchronized (j.class) {
                try {
                    if (f41378b == null) {
                        f41378b = new j(dVar);
                    }
                } finally {
                }
            }
        }
        return f41378b;
    }

    public final synchronized void c() {
        if (b() == null) {
            return;
        }
        b().delete(k.a.f3326a, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00af A[Catch: all -> 0x0091, PHI: r1
      0x00af: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:23:0x009b, B:27:0x00a2, B:34:0x00ad] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {, blocks: (B:13:0x008c, B:19:0x0095, B:35:0x00af, B:31:0x00a8, B:32:0x00ab, B:26:0x009f), top: B:43:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.ArrayList d() {
        /*
            r10 = this;
            monitor-enter(r10)
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r10.a()     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> L9e java.lang.Exception -> Lac
            java.lang.String r2 = "request_info"
            java.lang.String r8 = "time"
            r3 = 10
            java.lang.String r9 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> L9e java.lang.Exception -> Lac
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L9a java.lang.OutOfMemoryError -> L9e java.lang.Exception -> Lac
            if (r1 == 0) goto L93
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            if (r2 <= 0) goto L93
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r2.<init>()     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
        L26:
            boolean r3 = r1.moveToNext()     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            if (r3 == 0) goto L89
            com.smartdigimkt.q3.d r3 = new com.smartdigimkt.q3.d     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.<init>()     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "id"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42843a = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "req_type"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            int r4 = r1.getInt(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42844b = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "req_url"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42846d = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "req_head"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42845c = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "req_content"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42847e = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "time"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            long r4 = r1.getLong(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42848f = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = "extra"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r3.f42849g = r4     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r2.add(r3)     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            goto L26
        L89:
            r1.close()     // Catch: java.lang.Throwable -> L9b java.lang.OutOfMemoryError -> L9f java.lang.Exception -> Lad
            r1.close()     // Catch: java.lang.Throwable -> L91
            monitor-exit(r10)
            return r2
        L91:
            r0 = move-exception
            goto Lb3
        L93:
            if (r1 == 0) goto L98
            r1.close()     // Catch: java.lang.Throwable -> L91
        L98:
            monitor-exit(r10)
            return r0
        L9a:
            r1 = r0
        L9b:
            if (r1 == 0) goto Lb5
            goto Laf
        L9e:
            r1 = r0
        L9f:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> La5
            if (r1 == 0) goto Lb5
            goto Laf
        La5:
            r0 = move-exception
            if (r1 == 0) goto Lab
            r1.close()     // Catch: java.lang.Throwable -> L91
        Lab:
            throw r0     // Catch: java.lang.Throwable -> L91
        Lac:
            r1 = r0
        Lad:
            if (r1 == 0) goto Lb5
        Laf:
            r1.close()     // Catch: java.lang.Throwable -> L91
            goto Lb5
        Lb3:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L91
            throw r0
        Lb5:
            monitor-exit(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.j.d():java.util.ArrayList");
    }

    public final synchronized void a(com.smartdigimkt.q3.d dVar) {
        if (b() == null || dVar == null) {
            return;
        }
        try {
            b().delete(k.a.f3326a, "id=?", new String[]{dVar.f42843a});
        } catch (Throwable unused) {
        }
    }
}
