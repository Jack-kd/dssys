package com.anythink.core.basead.a;

import android.util.Log;
import com.anythink.core.basead.adx.api.IATAdxHandler;
import com.anythink.core.common.f;
import com.anythink.core.common.h.ad;
import com.anythink.core.common.h.by;
import com.anythink.core.common.h.n;

/* loaded from: classes.dex */
public final class b implements IATAdxHandler {

    /* renamed from: a, reason: collision with root package name */
    public static String f1599a = "anythink_adx_handler";

    /* renamed from: b, reason: collision with root package name */
    private ad f1600b;

    /* renamed from: c, reason: collision with root package name */
    private by f1601c;

    /* renamed from: d, reason: collision with root package name */
    private n f1602d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f1603e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1604f;

    /* renamed from: com.anythink.core.basead.a.b$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1605a;

        static {
            int[] iArr = new int[IATAdxHandler.LOSS_REASON.values().length];
            f1605a = iArr;
            try {
                iArr[IATAdxHandler.LOSS_REASON.LOSS_TO_AUCTION_FLOOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1605a[IATAdxHandler.LOSS_REASON.LOSS_TO_HIGHER_BID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1605a[IATAdxHandler.LOSS_REASON.LOSS_TO_NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b(ad adVar, by byVar, n nVar) {
        this.f1600b = adVar;
        this.f1601c = byVar;
        this.f1602d = nVar;
    }

    @Override // com.anythink.core.basead.adx.api.IATAdxHandler
    public final synchronized void destroy() {
        f commonAdManager;
        if (this.f1604f) {
            Log.e(f1599a, "destroy: has call destroy(), do nothing");
            return;
        }
        this.f1604f = true;
        this.f1602d.aQ();
        this.f1601c.G();
        try {
            ad adVar = this.f1600b;
            if (adVar != null && (commonAdManager = adVar.getCommonAdManager()) != null && commonAdManager.e() != null) {
                commonAdManager.e().a(this.f1602d.aQ(), this.f1601c, this.f1602d.aR());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7 A[Catch: all -> 0x0054, PHI: r2
      0x00a7: PHI (r2v5 java.lang.String) = (r2v4 java.lang.String), (r2v3 java.lang.String), (r2v6 java.lang.String), (r2v6 java.lang.String) binds: [B:45:0x00a4, B:39:0x0093, B:41:0x009d, B:42:0x009f] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {all -> 0x0054, blocks: (B:22:0x0044, B:30:0x005b, B:32:0x006a, B:34:0x0074, B:35:0x0078, B:37:0x0082, B:46:0x00a7, B:45:0x00a4, B:38:0x0091, B:40:0x0095, B:42:0x009f), top: B:58:0x0044, outer: #2, inners: #0 }] */
    @Override // com.anythink.core.basead.adx.api.IATAdxHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void notifyLose(com.anythink.core.basead.adx.api.IATAdxHandler.LOSS_REASON r7, double r8, java.util.Map<java.lang.String, java.lang.Object> r10) {
        /*
            r6 = this;
            monitor-enter(r6)
            boolean r0 = r6.f1603e     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L11
            java.lang.String r7 = com.anythink.core.basead.a.b.f1599a     // Catch: java.lang.Throwable -> Le
            java.lang.String r8 = "notifyWin: win or loss has been sent, do anything"
            android.util.Log.e(r7, r8)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r6)
            return
        Le:
            r7 = move-exception
            goto Lb9
        L11:
            r0 = 1
            r6.f1603e = r0     // Catch: java.lang.Throwable -> Le
            com.anythink.core.common.h.ad r1 = r6.f1600b     // Catch: java.lang.Throwable -> Le
            if (r1 == 0) goto Lb7
            com.anythink.core.common.h.by r1 = r6.f1601c     // Catch: java.lang.Throwable -> Le
            if (r1 != 0) goto L1e
            goto Lb7
        L1e:
            r1 = 0
            int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r1 > 0) goto L3e
            java.lang.String r7 = com.anythink.core.basead.a.b.f1599a     // Catch: java.lang.Throwable -> Le
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = "notifyLose, winnerPrice: "
            r10.<init>(r0)     // Catch: java.lang.Throwable -> Le
            r10.append(r8)     // Catch: java.lang.Throwable -> Le
            java.lang.String r8 = " <= 0, do nothing"
            r10.append(r8)     // Catch: java.lang.Throwable -> Le
            java.lang.String r8 = r10.toString()     // Catch: java.lang.Throwable -> Le
            android.util.Log.e(r7, r8)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r6)
            return
        L3e:
            java.util.Objects.toString(r7)     // Catch: java.lang.Throwable -> Le
            java.util.Objects.toString(r10)     // Catch: java.lang.Throwable -> Le
            int[] r1 = com.anythink.core.basead.a.b.AnonymousClass1.f1605a     // Catch: java.lang.Throwable -> L54
            int r2 = r7.ordinal()     // Catch: java.lang.Throwable -> L54
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L54
            r2 = 2
            if (r1 == r0) goto L59
            if (r1 == r2) goto L56
            java.lang.String r0 = "103"
            goto L5b
        L54:
            r7 = move-exception
            goto Lb2
        L56:
            java.lang.String r0 = "102"
            goto L5b
        L59:
            java.lang.String r0 = "100"
        L5b:
            com.anythink.core.common.h.ad r1 = r6.f1600b     // Catch: java.lang.Throwable -> L54
            com.anythink.core.common.h.by r3 = r6.f1601c     // Catch: java.lang.Throwable -> L54
            com.anythink.core.common.h.n r4 = r6.f1602d     // Catch: java.lang.Throwable -> L54
            com.anythink.core.common.h.ay r5 = new com.anythink.core.common.h.ay     // Catch: java.lang.Throwable -> L54
            r5.<init>(r2, r3, r4)     // Catch: java.lang.Throwable -> L54
            java.lang.String r2 = ""
            if (r10 == 0) goto L91
            java.lang.String r3 = "bidding_name"
            java.lang.Object r3 = r10.get(r3)     // Catch: java.lang.Throwable -> L54
            boolean r4 = r3 instanceof java.lang.String     // Catch: java.lang.Throwable -> L54
            if (r4 == 0) goto L78
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L54
        L78:
            java.lang.String r3 = "waterfall_info"
            java.lang.Object r10 = r10.get(r3)     // Catch: java.lang.Throwable -> L54
            boolean r3 = r10 instanceof java.lang.String     // Catch: java.lang.Throwable -> L54
            if (r3 == 0) goto L91
            com.anythink.core.common.d r3 = com.anythink.core.common.d.a()     // Catch: java.lang.Throwable -> L54
            com.anythink.core.common.h.n r4 = r6.f1602d     // Catch: java.lang.Throwable -> L54
            java.lang.String r4 = r4.aQ()     // Catch: java.lang.Throwable -> L54
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L54
            r3.a(r4, r10)     // Catch: java.lang.Throwable -> L54
        L91:
            com.anythink.core.basead.adx.api.IATAdxHandler$LOSS_REASON r10 = com.anythink.core.basead.adx.api.IATAdxHandler.LOSS_REASON.LOSS_TO_AUCTION_FLOOR     // Catch: java.lang.Throwable -> La3
            if (r7 != r10) goto La7
            java.lang.String r2 = ""
            com.anythink.core.common.h.n r7 = r6.f1602d     // Catch: java.lang.Throwable -> La3
            com.anythink.core.common.f r7 = r7.a()     // Catch: java.lang.Throwable -> La3
            if (r7 == 0) goto La7
            r7.i()     // Catch: java.lang.Throwable -> La3
            goto La7
        La3:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L54
        La7:
            r5.a(r8, r2, r0)     // Catch: java.lang.Throwable -> L54
            r7 = 0
            r8 = 28
            com.anythink.core.c.d.c.a(r1, r5, r7, r8)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r6)
            return
        Lb2:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Le
            monitor-exit(r6)
            return
        Lb7:
            monitor-exit(r6)
            return
        Lb9:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Le
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.basead.a.b.notifyLose(com.anythink.core.basead.adx.api.IATAdxHandler$LOSS_REASON, double, java.util.Map):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0075 A[Catch: all -> 0x004a, TryCatch #1 {all -> 0x004a, blocks: (B:17:0x0027, B:19:0x0030, B:27:0x004c, B:29:0x0056, B:30:0x005a, B:32:0x0064, B:24:0x0046, B:34:0x0075, B:35:0x007f, B:37:0x0083, B:38:0x0086, B:21:0x0038), top: B:50:0x0027, outer: #2, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083 A[Catch: all -> 0x004a, TryCatch #1 {all -> 0x004a, blocks: (B:17:0x0027, B:19:0x0030, B:27:0x004c, B:29:0x0056, B:30:0x005a, B:32:0x0064, B:24:0x0046, B:34:0x0075, B:35:0x007f, B:37:0x0083, B:38:0x0086, B:21:0x0038), top: B:50:0x0027, outer: #2, inners: #0 }] */
    @Override // com.anythink.core.basead.adx.api.IATAdxHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void notifyWin(java.util.Map<java.lang.String, java.lang.Object> r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            boolean r0 = r6.f1603e     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L11
            java.lang.String r7 = com.anythink.core.basead.a.b.f1599a     // Catch: java.lang.Throwable -> Le
            java.lang.String r0 = "notifyWin: win or loss has been sent, do anything"
            android.util.Log.e(r7, r0)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r6)
            return
        Le:
            r7 = move-exception
            goto L93
        L11:
            r0 = 1
            r6.f1603e = r0     // Catch: java.lang.Throwable -> Le
            com.anythink.core.common.h.ad r0 = r6.f1600b     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L91
            com.anythink.core.common.h.by r0 = r6.f1601c     // Catch: java.lang.Throwable -> Le
            if (r0 != 0) goto L1e
            goto L91
        L1e:
            java.lang.String r0 = "notifyWin, extraMap: "
            java.lang.String r1 = java.lang.String.valueOf(r7)     // Catch: java.lang.Throwable -> Le
            r0.concat(r1)     // Catch: java.lang.Throwable -> Le
            com.anythink.core.common.h.ad r0 = r6.f1600b     // Catch: java.lang.Throwable -> L4a
            com.anythink.core.common.h.by r1 = r6.f1601c     // Catch: java.lang.Throwable -> L4a
            java.lang.String r2 = ""
            r3 = 0
            if (r7 == 0) goto L73
            java.lang.String r4 = "second_price"
            java.lang.Object r4 = r7.get(r4)     // Catch: java.lang.Throwable -> L4a
            if (r4 == 0) goto L4c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L45
            double r4 = java.lang.Double.parseDouble(r4)     // Catch: java.lang.Throwable -> L45
            java.lang.Double r3 = java.lang.Double.valueOf(r4)     // Catch: java.lang.Throwable -> L45
            goto L4c
        L45:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L4a
            goto L4c
        L4a:
            r7 = move-exception
            goto L8c
        L4c:
            java.lang.String r4 = "bidding_name"
            java.lang.Object r4 = r7.get(r4)     // Catch: java.lang.Throwable -> L4a
            boolean r5 = r4 instanceof java.lang.String     // Catch: java.lang.Throwable -> L4a
            if (r5 == 0) goto L5a
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Throwable -> L4a
        L5a:
            java.lang.String r4 = "waterfall_info"
            java.lang.Object r7 = r7.get(r4)     // Catch: java.lang.Throwable -> L4a
            boolean r4 = r7 instanceof java.lang.String     // Catch: java.lang.Throwable -> L4a
            if (r4 == 0) goto L73
            com.anythink.core.common.d r4 = com.anythink.core.common.d.a()     // Catch: java.lang.Throwable -> L4a
            com.anythink.core.common.h.n r5 = r6.f1602d     // Catch: java.lang.Throwable -> L4a
            java.lang.String r5 = r5.aQ()     // Catch: java.lang.Throwable -> L4a
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> L4a
            r4.a(r5, r7)     // Catch: java.lang.Throwable -> L4a
        L73:
            if (r3 != 0) goto L7f
            double r2 = com.anythink.core.common.v.o.a(r1)     // Catch: java.lang.Throwable -> L4a
            java.lang.Double r3 = java.lang.Double.valueOf(r2)     // Catch: java.lang.Throwable -> L4a
            java.lang.String r2 = "TopOn"
        L7f:
            com.anythink.core.common.h.cg r7 = r0.f3689v     // Catch: java.lang.Throwable -> L4a
            if (r7 == 0) goto L86
            r7.a(r3, r2)     // Catch: java.lang.Throwable -> L4a
        L86:
            r7 = 4
            com.anythink.core.c.d.c.a(r0, r1, r7)     // Catch: java.lang.Throwable -> L4a
            monitor-exit(r6)
            return
        L8c:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Le
            monitor-exit(r6)
            return
        L91:
            monitor-exit(r6)
            return
        L93:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Le
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.basead.a.b.notifyWin(java.util.Map):void");
    }
}
