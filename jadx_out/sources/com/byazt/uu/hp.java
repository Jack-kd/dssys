package com.byazt.uu;

import com.byazt.um.e;

@com.byazt.kj.hp(hp = {0, 1, 2470, 28})
/* loaded from: classes3.dex */
public class hp implements e {
    public static volatile int hp;

    /* renamed from: j, reason: collision with root package name */
    public static volatile int f26435j;
    public static volatile int jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile int f26436l;

    /* renamed from: w, reason: collision with root package name */
    public static Object f26437w = new Object();

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020 A[PHI: r0
      0x0020: PHI (r0v2 long) = (r0v1 long), (r0v6 long) binds: [B:6:0x0013, B:8:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.byazt.um.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execVideoPreload(android.content.Context r12, final com.byazt.um.zy r13, final com.byazt.um.e.hp r14) {
        /*
            r11 = this;
            int r12 = r13.getPreloadSize()
            long r0 = (long) r12
            boolean r12 = r13.isPreloadAll()
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            if (r12 == 0) goto Lf
            r0 = r2
        Lf:
            int r12 = r13.getPitayaCacheSize()
            if (r12 <= 0) goto L20
            long r0 = (long) r12
            long r4 = r13.getVideoSize()
            int r12 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r12 < 0) goto L20
            r7 = r2
            goto L21
        L20:
            r7 = r0
        L21:
            java.lang.String r12 = r13.getFileNameKey()
            java.lang.String r0 = r13.getCacheParentDir()
            com.bykv.vk.component.ttvideo.DataLoaderHelper$DataLoaderCacheInfo r12 = com.bykv.vk.component.ttvideo.TTVideoEngine.getCacheInfoByFilePath(r12, r0)
            r0 = 1
            r1 = 0
            if (r12 == 0) goto L50
            int r2 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r2 != 0) goto L49
            long r2 = r12.mCacheSizeFromZero
            long r4 = r13.getVideoSize()
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 >= 0) goto L47
            long r2 = r12.mCacheSizeFromZero
            long r4 = r12.mMediaSize
            int r12 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r12 < 0) goto L50
        L47:
            r1 = r0
            goto L50
        L49:
            long r2 = r12.mCacheSizeFromZero
            int r12 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r12 < 0) goto L50
            goto L47
        L50:
            r13.setSourceType(r1)
            com.bykv.vk.component.ttvideo.PreloaderURLItem r4 = new com.bykv.vk.component.ttvideo.PreloaderURLItem
            java.lang.String r5 = r13.getFileNameKey()
            java.lang.String r12 = r13.getUrl()
            java.lang.String[] r9 = new java.lang.String[]{r12}
            java.lang.String r10 = r13.getCacheParentDir()
            r6 = 0
            r4.<init>(r5, r6, r7, r9, r10)
            com.byazt.uu.hp$1 r12 = new com.byazt.uu.hp$1
            r12.<init>()
            r4.setCallBackListener(r12)
            r13.getFileNameKey()
            r13.getUrl()
            r13.isH265()
            r13.getPreloadSize()
            r13.getCacheParentDir()
            java.lang.Object r12 = com.byazt.uu.hp.f26437w
            monitor-enter(r12)
            int r14 = com.byazt.uu.hp.hp     // Catch: java.lang.Throwable -> L90
            int r14 = r14 + r0
            com.byazt.uu.hp.hp = r14     // Catch: java.lang.Throwable -> L90
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L90
            com.bykv.vk.component.ttvideo.TTVideoEngine.addTask(r4)
            r13.getFileNameKey()
            return
        L90:
            r0 = move-exception
            r13 = r0
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L90
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.uu.hp.execVideoPreload(android.content.Context, com.byazt.um.zy, com.byazt.um.e$hp):void");
    }
}
