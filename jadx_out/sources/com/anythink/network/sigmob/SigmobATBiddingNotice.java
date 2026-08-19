package com.anythink.network.sigmob;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.sigmob.windad.Splash.WindSplashAD;
import com.sigmob.windad.WindAdBiddingLossReason;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAd;
import com.sigmob.windad.rewardVideo.WindRewardVideoAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SigmobATBiddingNotice implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    private Object f10174a;

    public SigmobATBiddingNotice(Object obj) {
        this.f10174a = obj;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.USD;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidLoss(String str, double d2, Map<String, Object> map) {
        WindAdBiddingLossReason windAdBiddingLossReason = WindAdBiddingLossReason.LOSS_REASON_LOW_PRICE;
        if ("2".equals(str)) {
            windAdBiddingLossReason = WindAdBiddingLossReason.LOSS_REASON_RETURN_TIMEOUT;
        }
        int iRound = (int) Math.round(d2 * 100.0d);
        HashMap map2 = new HashMap();
        map2.put(WindAds.AUCTION_PRICE, Integer.valueOf(iRound));
        map2.put(WindAds.CURRENCY, SigmobATInitManager.getEcpmCurrency(this.f10174a));
        map2.put(WindAds.LOSS_REASON, Integer.valueOf(windAdBiddingLossReason.getCode()));
        int intFromMap = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID, 10001);
        String.valueOf(intFromMap);
        map2.put(WindAds.ADN_ID, (intFromMap == 1 || intFromMap == 2) ? "1" : "10001");
        if (ATSDK.isNetworkLogDebug()) {
            windAdBiddingLossReason.getCode();
            map2.toString();
        }
        try {
            Object obj = this.f10174a;
            if (obj instanceof WindNativeUnifiedAd) {
                ((WindNativeUnifiedAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindRewardVideoAd) {
                ((WindRewardVideoAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindNewInterstitialAd) {
                ((WindNewInterstitialAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindSplashAD) {
                ((WindSplashAD) obj).sendLossNotificationWithInfo(map2);
            }
        } catch (Exception unused) {
        }
        this.f10174a = null;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        HashMap map2 = new HashMap();
        map2.put(WindAds.AUCTION_PRICE, Integer.valueOf(SigmobATInitManager.getEcpmInt(this.f10174a)));
        map2.put(WindAds.HIGHEST_LOSS_PRICE, Double.valueOf(d3 * 100.0d));
        map2.put(WindAds.CURRENCY, SigmobATInitManager.getEcpmCurrency(this.f10174a));
        if (ATSDK.isNetworkLogDebug()) {
            map2.toString();
        }
        try {
            Object obj = this.f10174a;
            if (obj instanceof WindNativeUnifiedAd) {
                ((WindNativeUnifiedAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindRewardVideoAd) {
                ((WindRewardVideoAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindNewInterstitialAd) {
                ((WindNewInterstitialAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindSplashAD) {
                ((WindSplashAD) obj).sendWinNotificationWithInfo(map2);
            }
        } catch (Exception unused) {
        }
        this.f10174a = null;
    }
}
