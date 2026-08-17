package com.anythink.network.meishu;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATSDK;
import com.meishu.sdk.core.ad.banner.IBannerAd;
import com.meishu.sdk.core.ad.draw.IDrawAd;
import com.meishu.sdk.core.ad.interstitial.InterstitialAd;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.core.ad.splash.ISplashAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MsATBiddingNotice implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    Object f9950a;

    public MsATBiddingNotice(Object obj) {
        this.f9950a = obj;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007c  */
    @Override // com.anythink.core.api.ATBiddingNotice
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void notifyBidLoss(java.lang.String r5, double r6, java.util.Map<java.lang.String, java.lang.Object> r8) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.meishu.MsATBiddingNotice.notifyBidLoss(java.lang.String, double, java.util.Map):void");
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        int iRound = (int) Math.round(d2);
        int iRound2 = (int) Math.round(d3);
        ATSDK.isNetworkLogDebug();
        HashMap map2 = new HashMap();
        map2.put("expectCostPrice", Integer.valueOf(iRound));
        map2.put("highestLossPrice", Integer.valueOf(iRound2));
        try {
            if (this.f9950a instanceof ISplashAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((ISplashAd) this.f9950a).getData().getEcpm();
                }
                ((ISplashAd) this.f9950a).sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused) {
        }
        try {
            if (this.f9950a instanceof RewardVideoAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((RewardVideoAd) this.f9950a).getData().getEcpm();
                }
                ((RewardVideoAd) this.f9950a).sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused2) {
        }
        try {
            if (this.f9950a instanceof InterstitialAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((InterstitialAd) this.f9950a).getData().getEcpm();
                }
                ((InterstitialAd) this.f9950a).sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused3) {
        }
        try {
            if (this.f9950a instanceof IBannerAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((IBannerAd) this.f9950a).getData().getEcpm();
                }
                ((IBannerAd) this.f9950a).sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused4) {
        }
        try {
            if (this.f9950a instanceof RecyclerAdData) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((RecyclerAdData) this.f9950a).getData().getEcpm();
                }
                ((RecyclerAdData) this.f9950a).sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused5) {
        }
        try {
            if (this.f9950a instanceof IDrawAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((IDrawAd) this.f9950a).getData().getEcpm();
                }
                ((IDrawAd) this.f9950a).sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused6) {
        }
        this.f9950a = null;
    }
}
