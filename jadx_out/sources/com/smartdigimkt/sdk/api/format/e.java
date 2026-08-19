package com.smartdigimkt.sdk.api.format;

/* loaded from: classes5.dex */
public final class e implements Runnable {
    final /* synthetic */ SDMBannerView this$0;
    final /* synthetic */ boolean val$currentRefreshStatus;

    public e(SDMBannerView sDMBannerView, boolean z2) {
        this.this$0 = sDMBannerView;
        this.val$currentRefreshStatus = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0081 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x0018, B:10:0x0021, B:13:0x002a, B:15:0x0030, B:21:0x003a, B:33:0x0079, B:35:0x0081, B:36:0x008a, B:24:0x0042, B:25:0x0054, B:27:0x005c, B:29:0x0064, B:31:0x0073, B:38:0x008c, B:39:0x0091), top: B:43:0x0007 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r5 = this;
            com.smartdigimkt.sdk.api.format.SDMBannerView r0 = r5.this$0
            com.smartdigimkt.e5.n r0 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$900(r0)
            monitor-enter(r0)
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            boolean r1 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$800(r1)     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L8c
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.j1.a r1 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$1300(r1)     // Catch: java.lang.Throwable -> L37
            r2 = 1
            if (r1 == 0) goto L54
            com.smartdigimkt.sdk.api.format.SDMBannerView r3 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.j1.a r3 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$600(r3)     // Catch: java.lang.Throwable -> L37
            r4 = 0
            if (r1 != r3) goto L42
            com.smartdigimkt.sdk.api.format.SDMBannerView r3 = r5.this$0     // Catch: java.lang.Throwable -> L37
            boolean r3 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$1000(r3)     // Catch: java.lang.Throwable -> L37
            if (r3 == 0) goto L2a
            goto L42
        L2a:
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            boolean r3 = r1.hasTouchWindow     // Catch: java.lang.Throwable -> L37
            if (r3 == 0) goto L39
            boolean r1 = r1.isShown()     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L39
            goto L3a
        L37:
            r1 = move-exception
            goto L93
        L39:
            r2 = r4
        L3a:
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.format.SDMBannerView.access$1500(r1)     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L8a
            goto L79
        L42:
            com.smartdigimkt.sdk.api.format.SDMBannerView r2 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.format.SDMBannerView.access$802(r2, r4)     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.b4.e r2 = com.smartdigimkt.b4.e.a()     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.format.d r3 = new com.smartdigimkt.sdk.api.format.d     // Catch: java.lang.Throwable -> L37
            r3.<init>(r5, r1)     // Catch: java.lang.Throwable -> L37
            r2.a(r3)     // Catch: java.lang.Throwable -> L37
            goto L8a
        L54:
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            boolean r1 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$1600(r1)     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L8a
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.e5.n r1 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$900(r1)     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L8a
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.SDMAdRequest r3 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$1700(r1)     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.format.SDMBannerView.access$1800(r1, r2, r3)     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            boolean r2 = r1.hasTouchWindow     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L8a
            boolean r1 = r1.isShown()     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L8a
        L79:
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.e5.f r1 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$1100(r1)     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L8a
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.e5.f r1 = com.smartdigimkt.sdk.api.format.SDMBannerView.access$1100(r1)     // Catch: java.lang.Throwable -> L37
            r1.b()     // Catch: java.lang.Throwable -> L37
        L8a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
            return
        L8c:
            com.smartdigimkt.sdk.api.format.SDMBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L37
            com.smartdigimkt.sdk.api.format.SDMBannerView.access$1500(r1)     // Catch: java.lang.Throwable -> L37
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
            return
        L93:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.api.format.e.run():void");
    }
}
