package k1;

/* renamed from: k1.A, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class RunnableC1593A implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f51263b;

    public RunnableC1593A(w wVar) {
        this.f51263b = wVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005d A[Catch: all -> 0x001f, TryCatch #0 {all -> 0x001f, blocks: (B:3:0x0003, B:5:0x000d, B:7:0x0013, B:12:0x0025, B:13:0x0029, B:15:0x003f, B:17:0x004a, B:19:0x0050, B:21:0x0053, B:23:0x0062, B:25:0x0069, B:29:0x008d, B:31:0x00a4, B:22:0x005d), top: B:36:0x0003 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r14 = this;
            java.lang.String r0 = "x"
            r1 = 0
            k1.w r2 = r14.f51263b     // Catch: java.lang.Throwable -> L1f
            java.lang.String r2 = r2.f51314b     // Catch: java.lang.Throwable -> L1f
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L1f
            if (r3 == 0) goto L29
            k1.w r3 = r14.f51263b     // Catch: java.lang.Throwable -> L1f
            android.content.Context r3 = r3.f51313a     // Catch: java.lang.Throwable -> L1f
            if (r3 == 0) goto L22
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L1f
            java.io.File r3 = r3.getCacheDir()     // Catch: java.lang.Throwable -> L1f
            java.lang.String r5 = "tktp_anr"
            r4.<init>(r3, r5)     // Catch: java.lang.Throwable -> L1f
            goto L23
        L1f:
            r2 = move-exception
            goto La9
        L22:
            r4 = 0
        L23:
            if (r4 == 0) goto L29
            java.lang.String r2 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> L1f
        L29:
            java.lang.String r3 = "handleStackFiles() >>> stackCacheDir: %s, stackValidTime: %s"
            r4 = 604800000(0x240c8400, double:2.988109026E-315)
            java.lang.Long r6 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L1f
            java.lang.Object[] r6 = new java.lang.Object[]{r2, r6}     // Catch: java.lang.Throwable -> L1f
            k1.s.c(r0, r3, r6)     // Catch: java.lang.Throwable -> L1f
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L1f
            if (r3 != 0) goto L5d
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L1f
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L1f
            boolean r2 = r3.isDirectory()     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L5d
            java.io.File[] r2 = r3.listFiles()     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L5d
            int r3 = r2.length     // Catch: java.lang.Throwable -> L1f
            if (r3 <= 0) goto L5d
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L1f
            java.util.List r2 = java.util.Arrays.asList(r2)     // Catch: java.lang.Throwable -> L1f
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L1f
            goto L62
        L5d:
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L1f
            r3.<init>()     // Catch: java.lang.Throwable -> L1f
        L62:
            int r2 = r3.size()     // Catch: java.lang.Throwable -> L1f
            r6 = r1
        L67:
            if (r6 >= r2) goto La8
            java.lang.Object r7 = r3.get(r6)     // Catch: java.lang.Throwable -> L1f
            int r6 = r6 + 1
            java.io.File r7 = (java.io.File) r7     // Catch: java.lang.Throwable -> L1f
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Throwable -> L1f
            java.lang.String r9 = "\\."
            java.lang.String[] r8 = r8.split(r9)     // Catch: java.lang.Throwable -> L1f
            r8 = r8[r1]     // Catch: java.lang.Throwable -> L1f
            long r9 = java.lang.Long.parseLong(r8)     // Catch: java.lang.Throwable -> L1f
            long r11 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1f
            long r11 = r11 - r9
            int r9 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r9 < 0) goto L8c
            r9 = 1
            goto L8d
        L8c:
            r9 = r1
        L8d:
            java.lang.String r10 = "handleStackFiles() >>> file name: %s, isExpired: %s, currentTimeStamp: %s"
            java.lang.Boolean r11 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Throwable -> L1f
            long r12 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L1f
            java.lang.Long r12 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Throwable -> L1f
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r11, r12}     // Catch: java.lang.Throwable -> L1f
            k1.s.c(r0, r10, r8)     // Catch: java.lang.Throwable -> L1f
            if (r9 == 0) goto L67
            r7.delete()     // Catch: java.lang.Throwable -> L1f
            goto L67
        La8:
            return
        La9:
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.String r3 = "handleStackFiles() >>> "
            k1.s.b(r0, r3, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k1.RunnableC1593A.run():void");
    }
}
