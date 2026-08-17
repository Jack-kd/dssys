package com.smartdigimkt.sdk.api.format.myoffer;

/* loaded from: classes5.dex */
public final class e implements Runnable {
    final /* synthetic */ SDMMyOfferBannerView this$0;
    final /* synthetic */ boolean val$currentRefreshStatus;

    public e(SDMMyOfferBannerView sDMMyOfferBannerView, boolean z2) {
        this.this$0 = sDMMyOfferBannerView;
        this.val$currentRefreshStatus = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0078 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x0018, B:10:0x0021, B:33:0x0081, B:13:0x0035, B:15:0x003b, B:19:0x0043, B:30:0x0070, B:32:0x0078, B:22:0x004b, B:24:0x0053, B:26:0x005b, B:28:0x006a, B:35:0x0083, B:36:0x0088), top: B:40:0x0007 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r5 = this;
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r0 = r5.this$0
            com.smartdigimkt.e5.r r0 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$600(r0)
            monitor-enter(r0)
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            boolean r1 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$500(r1)     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L83
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.r1.a r1 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$1000(r1)     // Catch: java.lang.Throwable -> L33
            r2 = 1
            if (r1 == 0) goto L4b
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r3 = r5.this$0     // Catch: java.lang.Throwable -> L33
            boolean r3 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$700(r3)     // Catch: java.lang.Throwable -> L33
            r4 = 0
            if (r3 == 0) goto L35
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r2 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$502(r2, r4)     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.b4.e r2 = com.smartdigimkt.b4.e.a()     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.format.myoffer.d r3 = new com.smartdigimkt.sdk.api.format.myoffer.d     // Catch: java.lang.Throwable -> L33
            r3.<init>(r5, r1)     // Catch: java.lang.Throwable -> L33
            r2.a(r3)     // Catch: java.lang.Throwable -> L33
            goto L81
        L33:
            r1 = move-exception
            goto L8a
        L35:
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            boolean r3 = r1.hasTouchWindow     // Catch: java.lang.Throwable -> L33
            if (r3 == 0) goto L42
            boolean r1 = r1.isShown()     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L42
            goto L43
        L42:
            r2 = r4
        L43:
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$1200(r1)     // Catch: java.lang.Throwable -> L33
            if (r2 == 0) goto L81
            goto L70
        L4b:
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            boolean r1 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$1300(r1)     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L81
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.e5.r r1 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$600(r1)     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L81
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.SDMAdRequest r3 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$1400(r1)     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$1500(r1, r2, r3)     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            boolean r2 = r1.hasTouchWindow     // Catch: java.lang.Throwable -> L33
            if (r2 == 0) goto L81
            boolean r1 = r1.isShown()     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L81
        L70:
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.e5.f r1 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$800(r1)     // Catch: java.lang.Throwable -> L33
            if (r1 == 0) goto L81
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.e5.f r1 = com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$800(r1)     // Catch: java.lang.Throwable -> L33
            r1.b()     // Catch: java.lang.Throwable -> L33
        L81:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L33
            return
        L83:
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView r1 = r5.this$0     // Catch: java.lang.Throwable -> L33
            com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferBannerView.access$1200(r1)     // Catch: java.lang.Throwable -> L33
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L33
            return
        L8a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L33
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.sdk.api.format.myoffer.e.run():void");
    }
}
