package com.smartdigimkt.k3;

/* loaded from: classes5.dex */
public final class q extends b {

    /* renamed from: b, reason: collision with root package name */
    public static volatile q f41391b;

    public q(d dVar) {
        super(dVar);
    }

    public static q a(d dVar) {
        if (f41391b == null) {
            synchronized (q.class) {
                try {
                    if (f41391b == null) {
                        f41391b = new q(dVar);
                    }
                } finally {
                }
            }
        }
        return f41391b;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034 A[Catch: all -> 0x002b, PHI: r9
      0x0034: PHI (r9v4 android.database.Cursor) = (r9v3 android.database.Cursor), (r9v6 android.database.Cursor) binds: [B:17:0x0032, B:14:0x002e] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {, blocks: (B:8:0x0025, B:18:0x0034), top: B:29:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean a(java.lang.String r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            android.database.sqlite.SQLiteDatabase r0 = r8.a()     // Catch: java.lang.Throwable -> L31
            java.lang.String r1 = "offer_data_cache"
            java.lang.String r2 = "placement_id"
            java.lang.String[] r2 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L31
            java.lang.String r3 = "bid_id=?"
            java.lang.String[] r4 = new java.lang.String[]{r9}     // Catch: java.lang.Throwable -> L31
            r6 = 0
            r7 = 0
            r5 = 0
            android.database.Cursor r9 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L31
            if (r9 == 0) goto L2e
            int r0 = r9.getCount()     // Catch: java.lang.Throwable -> L32
            if (r0 <= 0) goto L2e
            r9.close()     // Catch: java.lang.Throwable -> L32
            r9.close()     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r8)
            r9 = 1
            return r9
        L2b:
            r0 = move-exception
            r9 = r0
            goto L38
        L2e:
            if (r9 == 0) goto L3a
            goto L34
        L31:
            r9 = 0
        L32:
            if (r9 == 0) goto L3a
        L34:
            r9.close()     // Catch: java.lang.Throwable -> L2b
            goto L3a
        L38:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L2b
            throw r9
        L3a:
            monitor-exit(r8)
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k3.q.a(java.lang.String):boolean");
    }
}
