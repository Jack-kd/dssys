package com.smartdigimkt.h3;

import android.content.Context;

/* loaded from: classes5.dex */
public final class c extends d {

    /* renamed from: e, reason: collision with root package name */
    public final boolean f40553e;

    public c(Context context, String str, String str2) {
        super(context, str, str2, 0L);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:25:0x0086
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009c  */
    @Override // com.smartdigimkt.h3.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.smartdigimkt.h3.b a() {
        /*
            r14 = this;
            boolean r0 = r14.f40553e
            long r1 = java.lang.System.currentTimeMillis()
            long r3 = r14.f40557d
            long r1 = r1 - r3
            com.smartdigimkt.h3.m r3 = com.smartdigimkt.h3.m.b()
            long r3 = r3.f40585j
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 <= 0) goto L8c
            android.content.Context r0 = r14.f40555b
            java.lang.String r1 = r14.f40554a
            boolean r0 = com.smartdigimkt.c5.k.b(r0, r1)
            android.content.Context r1 = r14.f40555b
            com.smartdigimkt.k3.d r1 = com.smartdigimkt.k3.d.a(r1)
            com.smartdigimkt.k3.k r1 = com.smartdigimkt.k3.k.a(r1)
            java.lang.String r2 = r14.f40556c
            java.lang.String r3 = r14.f40554a
            monitor-enter(r1)
            android.database.sqlite.SQLiteDatabase r4 = r1.b()     // Catch: java.lang.Throwable -> L78
            r5 = 1
            if (r4 != 0) goto L33
            monitor-exit(r1)
            goto L87
        L33:
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            r4.<init>()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.String r6 = "inspect_id"
            r4.put(r6, r2)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.String r6 = "inspect_name"
            java.lang.String r3 = com.smartdigimkt.c5.d.b(r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            r4.put(r6, r3)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.String r3 = "inspect_result"
            if (r0 == 0) goto L4c
            r6 = r5
            goto L4d
        L4c:
            r6 = 2
        L4d:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            r4.put(r3, r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.String r3 = "update_time"
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            r4.put(r3, r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            boolean r3 = r1.a(r2)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            if (r3 == 0) goto L7a
            java.lang.String r3 = "inspect_id = ? "
            android.database.sqlite.SQLiteDatabase r6 = r1.b()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.String r7 = "inspect_info"
            java.lang.String[] r2 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            r6.update(r7, r4, r3, r2)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            monitor-exit(r1)
            goto L87
        L78:
            r0 = move-exception
            goto L8a
        L7a:
            android.database.sqlite.SQLiteDatabase r2 = r1.b()     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            java.lang.String r3 = "inspect_info"
            r6 = 0
            r2.insert(r3, r6, r4)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L86
            monitor-exit(r1)
            goto L87
        L86:
            monitor-exit(r1)
        L87:
            r12 = r0
            r9 = r5
            goto L8e
        L8a:
            monitor-exit(r1)
            throw r0
        L8c:
            r5 = 0
            goto L87
        L8e:
            com.smartdigimkt.h3.b r6 = new com.smartdigimkt.h3.b
            java.lang.String r7 = r14.f40554a
            java.lang.String r8 = r14.f40556c
            if (r9 == 0) goto L9c
            long r0 = java.lang.System.currentTimeMillis()
        L9a:
            r10 = r0
            goto L9f
        L9c:
            long r0 = r14.f40557d
            goto L9a
        L9f:
            r13 = 0
            r6.<init>(r7, r8, r9, r10, r12, r13)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.h3.c.a():com.smartdigimkt.h3.b");
    }

    @Override // com.smartdigimkt.h3.d
    public final int b() {
        return 2;
    }

    public c(Context context, String str, String str2, long j2, boolean z2) {
        super(context, str, str2, j2);
        this.f40553e = z2;
    }
}
