package com.anythink.network.gdt;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATSDK;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.splash.SplashAD;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class GDTATBiddingNotice implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    Object f9659a;

    public GDTATBiddingNotice(Object obj) {
        this.f9659a = obj;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0014  */
    @Override // com.anythink.core.api.ATBiddingNotice
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void notifyBidLoss(java.lang.String r8, double r9, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.gdt.GDTATBiddingNotice.notifyBidLoss(java.lang.String, double, java.util.Map):void");
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        Object obj;
        HashMap map2 = new HashMap(4);
        map2.put("highestLossPrice", Integer.valueOf((int) Math.round(d3)));
        try {
            Object obj2 = this.f9659a;
            if (obj2 instanceof RewardVideoAD) {
                RewardVideoAD rewardVideoAD = (RewardVideoAD) obj2;
                map2.put("expectCostPrice", Integer.valueOf(rewardVideoAD.getECPM()));
                if (ATSDK.isNetworkLogDebug()) {
                    Object obj3 = this.f9659a;
                    if (obj3 != null) {
                        obj3.toString();
                    }
                    map2.toString();
                }
                rewardVideoAD.sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused) {
        }
        try {
            Object obj4 = this.f9659a;
            if (obj4 instanceof UnifiedInterstitialAD) {
                UnifiedInterstitialAD unifiedInterstitialAD = (UnifiedInterstitialAD) obj4;
                map2.put("expectCostPrice", Integer.valueOf(unifiedInterstitialAD.getECPM()));
                if (ATSDK.isNetworkLogDebug()) {
                    Object obj5 = this.f9659a;
                    if (obj5 != null) {
                        obj5.toString();
                    }
                    map2.toString();
                }
                unifiedInterstitialAD.sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused2) {
        }
        try {
            Object obj6 = this.f9659a;
            if (obj6 instanceof SplashAD) {
                SplashAD splashAD = (SplashAD) obj6;
                map2.put("expectCostPrice", Integer.valueOf(splashAD.getECPM()));
                if (ATSDK.isNetworkLogDebug()) {
                    Object obj7 = this.f9659a;
                    if (obj7 != null) {
                        obj7.toString();
                    }
                    map2.toString();
                }
                splashAD.sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused3) {
        }
        try {
            Object obj8 = this.f9659a;
            if (obj8 instanceof UnifiedBannerView) {
                UnifiedBannerView unifiedBannerView = (UnifiedBannerView) obj8;
                map2.put("expectCostPrice", Integer.valueOf(unifiedBannerView.getECPM()));
                if (ATSDK.isNetworkLogDebug()) {
                    Object obj9 = this.f9659a;
                    if (obj9 != null) {
                        obj9.toString();
                    }
                    map2.toString();
                }
                unifiedBannerView.sendWinNotification(map2);
                return;
            }
        } catch (Throwable unused4) {
        }
        try {
            obj = this.f9659a;
        } catch (Throwable unused5) {
        }
        if (obj instanceof GDTATNativeExpressAd) {
            GDTATNativeExpressAd gDTATNativeExpressAd = (GDTATNativeExpressAd) obj;
            map2.put("expectCostPrice", Integer.valueOf(gDTATNativeExpressAd.f9717b.getECPM()));
            if (ATSDK.isNetworkLogDebug()) {
                Object obj10 = this.f9659a;
                if (obj10 != null) {
                    obj10.toString();
                }
                map2.toString();
            }
            gDTATNativeExpressAd.f9717b.sendWinNotification(map2);
            return;
        }
        if (obj instanceof GDTATNativePatchAd) {
            GDTATNativePatchAd gDTATNativePatchAd = (GDTATNativePatchAd) obj;
            map2.put("expectCostPrice", Integer.valueOf(gDTATNativePatchAd.f9701c.getECPM()));
            if (ATSDK.isNetworkLogDebug()) {
                Object obj11 = this.f9659a;
                if (obj11 != null) {
                    obj11.toString();
                }
                map2.toString();
            }
            gDTATNativePatchAd.f9701c.sendWinNotification(map2);
            return;
        }
        if (obj instanceof GDTATNativeAd) {
            GDTATNativeAd gDTATNativeAd = (GDTATNativeAd) obj;
            map2.put("expectCostPrice", Integer.valueOf(gDTATNativeAd.f9701c.getECPM()));
            if (ATSDK.isNetworkLogDebug()) {
                Object obj12 = this.f9659a;
                if (obj12 != null) {
                    obj12.toString();
                }
                map2.toString();
            }
            gDTATNativeAd.f9701c.sendWinNotification(map2);
            return;
        }
        this.f9659a = null;
    }
}
