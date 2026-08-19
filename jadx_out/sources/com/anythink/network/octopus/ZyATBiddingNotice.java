package com.anythink.network.octopus;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATSDK;
import com.octopus.ad.ADBidEvent;
import com.octopus.ad.IBidding;
import java.util.Map;

/* loaded from: classes2.dex */
public class ZyATBiddingNotice implements ATBiddingNotice {

    /* renamed from: b, reason: collision with root package name */
    private static final String f10094b = "ZyATBiddingNotice";

    /* renamed from: a, reason: collision with root package name */
    private IBidding f10095a;

    public ZyATBiddingNotice(IBidding iBidding) {
        this.f10095a = iBidding;
    }

    private String a(int i2) {
        return i2 != 15 ? i2 != 22 ? i2 != 39 ? i2 != 49 ? i2 != 72 ? i2 != 74 ? i2 != 96 ? i2 != 28 ? i2 != 29 ? i2 != 79 ? i2 != 80 ? ADBidEvent.OTHER : "OPPO" : ADBidEvent.VIVO : ADBidEvent.SIGMOB : ADBidEvent.KUAISHOU : ADBidEvent.OCTOPUS : ADBidEvent.QUMENG : ADBidEvent.JINGDONG : ADBidEvent.XIAOMI : ADBidEvent.HUAWEI : "BAIDU" : "CSJ";
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0064 A[Catch: all -> 0x001e, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x0001, B:5:0x0018, B:12:0x0027, B:16:0x0039, B:44:0x0084, B:46:0x008b, B:18:0x003d, B:21:0x0047, B:24:0x0051, B:27:0x005b, B:30:0x0064), top: B:56:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008b A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #1 {all -> 0x001e, blocks: (B:3:0x0001, B:5:0x0018, B:12:0x0027, B:16:0x0039, B:44:0x0084, B:46:0x008b, B:18:0x003d, B:21:0x0047, B:24:0x0051, B:27:0x005b, B:30:0x0064), top: B:56:0x0001 }] */
    @Override // com.anythink.core.api.ATBiddingNotice
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void notifyBidLoss(java.lang.String r9, double r10, java.util.Map<java.lang.String, java.lang.Object> r12) {
        /*
            r8 = this;
            monitor-enter(r8)
            java.lang.Math.round(r10)     // Catch: java.lang.Throwable -> L1e
            com.anythink.core.api.ATSDK.isNetworkLogDebug()     // Catch: java.lang.Throwable -> L1e
            java.lang.String r0 = "adn_id"
            int r0 = com.anythink.core.api.ATInitMediation.getIntFromMap(r12, r0)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r1 = "OTHER"
            java.lang.String r2 = "adn_extra_nw_firm_id"
            r3 = 0
            int r12 = com.anythink.core.api.ATInitMediation.getIntFromMap(r12, r2, r3)     // Catch: java.lang.Throwable -> L1e
            if (r12 <= 0) goto L21
            java.lang.String r12 = r8.a(r12)     // Catch: java.lang.Throwable -> L1e
        L1c:
            r1 = r12
            goto L27
        L1e:
            r9 = move-exception
            goto L93
        L21:
            r12 = 5
            if (r0 != r12) goto L27
            java.lang.String r12 = "OCTOPUS"
            goto L1c
        L27:
            java.lang.String r12 = "1006"
            int r0 = r9.hashCode()     // Catch: java.lang.Throwable -> L1e
            r2 = 50
            r4 = 1
            r5 = 3
            r6 = 4
            r7 = 2
            if (r0 == r2) goto L64
            r2 = 53
            if (r0 == r2) goto L5b
            switch(r0) {
                case 48627: goto L51;
                case 48628: goto L47;
                case 48629: goto L3d;
                default: goto L3c;
            }     // Catch: java.lang.Throwable -> L1e
        L3c:
            goto L6e
        L3d:
            java.lang.String r0 = "104"
            boolean r9 = r9.equals(r0)     // Catch: java.lang.Throwable -> L1e
            if (r9 == 0) goto L6e
            r3 = r7
            goto L6f
        L47:
            java.lang.String r0 = "103"
            boolean r9 = r9.equals(r0)     // Catch: java.lang.Throwable -> L1e
            if (r9 == 0) goto L6e
            r3 = r6
            goto L6f
        L51:
            java.lang.String r0 = "102"
            boolean r9 = r9.equals(r0)     // Catch: java.lang.Throwable -> L1e
            if (r9 == 0) goto L6e
            r3 = r5
            goto L6f
        L5b:
            java.lang.String r0 = "5"
            boolean r9 = r9.equals(r0)     // Catch: java.lang.Throwable -> L1e
            if (r9 == 0) goto L6e
            goto L6f
        L64:
            java.lang.String r0 = "2"
            boolean r9 = r9.equals(r0)     // Catch: java.lang.Throwable -> L1e
            if (r9 == 0) goto L6e
            r3 = r4
            goto L6f
        L6e:
            r3 = -1
        L6f:
            if (r3 == 0) goto L81
            if (r3 == r4) goto L81
            if (r3 == r7) goto L7e
            if (r3 == r5) goto L7a
            if (r3 == r6) goto L7a
            goto L84
        L7a:
            java.lang.String r9 = "1002"
        L7c:
            r12 = r9
            goto L84
        L7e:
            java.lang.String r9 = "1001"
            goto L7c
        L81:
            java.lang.String r9 = "1005"
            goto L7c
        L84:
            com.anythink.core.api.ATSDK.isNetworkLogDebug()     // Catch: java.lang.Throwable -> L1e
            com.octopus.ad.IBidding r9 = r8.f10095a     // Catch: java.lang.Throwable -> L1e
            if (r9 == 0) goto L96
            int r10 = (int) r10     // Catch: java.lang.Throwable -> L1e
            r9.sendLossNotice(r10, r12, r1)     // Catch: java.lang.Throwable -> L1e
            r9 = 0
            r8.f10095a = r9     // Catch: java.lang.Throwable -> L1e
            goto L96
        L93:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L98
        L96:
            monitor-exit(r8)
            return
        L98:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L98
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.octopus.ZyATBiddingNotice.notifyBidLoss(java.lang.String, double, java.util.Map):void");
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        try {
            Math.round(d2);
            int iRound = (int) Math.round(d3);
            ATSDK.isNetworkLogDebug();
            IBidding iBidding = this.f10095a;
            if (iBidding != null) {
                iBidding.sendWinNotice(iRound);
                this.f10095a = null;
            }
        } finally {
        }
    }
}
