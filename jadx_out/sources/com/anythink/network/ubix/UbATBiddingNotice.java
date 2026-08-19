package com.anythink.network.ubix;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATSDK;
import com.ubix.ssp.open.UBiXWinPlatform;
import com.ubix.ssp.open.banner.UBiXBannerManager;
import com.ubix.ssp.open.interstitial.UBiXInterstitialManager;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.express.NativeExpressAd;
import com.ubix.ssp.open.splash.UBiXSplashManager;
import com.ubix.ssp.open.video.UBiXRewardVideoManager;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATBiddingNotice implements ATBiddingNotice {

    /* renamed from: b, reason: collision with root package name */
    private static final String f10474b = "UbATBiddingNotice";

    /* renamed from: a, reason: collision with root package name */
    private Object f10475a;

    public UbATBiddingNotice(Object obj) {
        this.f10475a = obj;
    }

    private String a(int i2) {
        return i2 != 8 ? i2 != 15 ? i2 != 22 ? i2 != 28 ? i2 != 46 ? i2 != 72 ? i2 != 74 ? i2 != 106 ? "other" : UBiXWinPlatform.PLATFORM_UBIX : UBiXWinPlatform.PLATFORM_QM : UBiXWinPlatform.PLATFORM_JD : UBiXWinPlatform.PLATFORM_GM : UBiXWinPlatform.PLATFORM_KS : UBiXWinPlatform.PLATFORM_BD : "chuanshanjia" : UBiXWinPlatform.PLATFORM_GDT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0054 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0077 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0001, B:7:0x0018, B:37:0x0067, B:39:0x0077, B:44:0x0083, B:46:0x0097, B:47:0x009d, B:49:0x00a1, B:50:0x00a7, B:52:0x00ab, B:53:0x00b1, B:55:0x00b5, B:56:0x00bb, B:58:0x00bf, B:59:0x00c5, B:61:0x00c9, B:9:0x001c, B:14:0x0029, B:17:0x0033, B:20:0x003d, B:23:0x0047), top: B:70:0x0001, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0097 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0001, B:7:0x0018, B:37:0x0067, B:39:0x0077, B:44:0x0083, B:46:0x0097, B:47:0x009d, B:49:0x00a1, B:50:0x00a7, B:52:0x00ab, B:53:0x00b1, B:55:0x00b5, B:56:0x00bb, B:58:0x00bf, B:59:0x00c5, B:61:0x00c9, B:9:0x001c, B:14:0x0029, B:17:0x0033, B:20:0x003d, B:23:0x0047), top: B:70:0x0001, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009d A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0001, B:7:0x0018, B:37:0x0067, B:39:0x0077, B:44:0x0083, B:46:0x0097, B:47:0x009d, B:49:0x00a1, B:50:0x00a7, B:52:0x00ab, B:53:0x00b1, B:55:0x00b5, B:56:0x00bb, B:58:0x00bf, B:59:0x00c5, B:61:0x00c9, B:9:0x001c, B:14:0x0029, B:17:0x0033, B:20:0x003d, B:23:0x0047), top: B:70:0x0001, outer: #1 }] */
    @Override // com.anythink.core.api.ATBiddingNotice
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void notifyBidLoss(java.lang.String r9, double r10, java.util.Map<java.lang.String, java.lang.Object> r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.ubix.UbATBiddingNotice.notifyBidLoss(java.lang.String, double, java.util.Map):void");
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        try {
            long jRound = Math.round(d2);
            if (ATSDK.isNetworkLogDebug()) {
                Math.round(d3);
            }
            Object obj = this.f10475a;
            if (obj instanceof UBiXSplashManager) {
                ((UBiXSplashManager) obj).winNotice(jRound);
            } else if (obj instanceof UBiXRewardVideoManager) {
                ((UBiXRewardVideoManager) obj).winNotice(jRound);
            } else if (obj instanceof UBiXInterstitialManager) {
                ((UBiXInterstitialManager) obj).winNotice(jRound);
            } else if (obj instanceof UBiXBannerManager) {
                ((UBiXBannerManager) obj).winNotice(jRound);
            } else if (obj instanceof NativeAd) {
                ((NativeAd) obj).winNotice(jRound);
            } else if (obj instanceof NativeExpressAd) {
                ((NativeExpressAd) obj).winNotice(jRound);
            }
        } finally {
            this.f10475a = null;
        }
        this.f10475a = null;
    }
}
