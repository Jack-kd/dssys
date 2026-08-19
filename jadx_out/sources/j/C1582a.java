package j;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.anythink.network.sigmob.SigmobATInitManager;
import com.sigmob.windad.Splash.WindSplashAD;
import com.sigmob.windad.WindAdBiddingLossReason;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.interstitial.WindInterstitialAd;
import com.sigmob.windad.natives.WindNativeUnifiedAd;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAd;
import com.sigmob.windad.rewardVideo.WindRewardVideoAd;
import java.util.HashMap;
import java.util.Map;

/* renamed from: j.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1582a implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    public Object f51244a;

    public C1582a(Object obj) {
        this.f51244a = obj;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidLoss(String str, double d2, Map map) {
        WindAdBiddingLossReason windAdBiddingLossReason = WindAdBiddingLossReason.LOSS_REASON_LOW_PRICE;
        if ("2".equals(str)) {
            windAdBiddingLossReason = WindAdBiddingLossReason.LOSS_REASON_RETURN_TIMEOUT;
        }
        int iRound = (int) Math.round(d2);
        HashMap map2 = new HashMap();
        map2.put(WindAds.AUCTION_PRICE, Integer.valueOf(Math.round(iRound)));
        map2.put(WindAds.CURRENCY, "CNY");
        map2.put(WindAds.LOSS_REASON, Integer.valueOf(windAdBiddingLossReason.getCode()));
        int intFromMap = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID, 10001);
        String.valueOf(intFromMap);
        map2.put(WindAds.ADN_ID, (intFromMap == 1 || intFromMap == 2) ? "1" : "10001");
        if (ATSDK.isNetworkLogDebug()) {
            windAdBiddingLossReason.getCode();
            map2.toString();
        }
        try {
            Object obj = this.f51244a;
            if (obj instanceof WindNativeUnifiedAd) {
                ((WindNativeUnifiedAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindRewardVideoAd) {
                ((WindRewardVideoAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindInterstitialAd) {
                ((WindInterstitialAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindNewInterstitialAd) {
                ((WindNewInterstitialAd) obj).sendLossNotificationWithInfo(map2);
            } else if (obj instanceof WindSplashAD) {
                ((WindSplashAD) obj).sendLossNotificationWithInfo(map2);
            }
        } catch (Exception unused) {
        }
        this.f51244a = null;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidWin(double d2, double d3, Map map) {
        HashMap map2 = new HashMap();
        map2.put(WindAds.AUCTION_PRICE, Integer.valueOf(SigmobATInitManager.getEcpmInt(this.f51244a)));
        map2.put(WindAds.HIGHEST_LOSS_PRICE, Integer.valueOf((int) Math.round(d3)));
        map2.put(WindAds.CURRENCY, "CNY");
        if (ATSDK.isNetworkLogDebug()) {
            "notifyBidWin() >>> ".concat(String.valueOf(map2));
        }
        try {
            Object obj = this.f51244a;
            if (obj instanceof WindNativeUnifiedAd) {
                ((WindNativeUnifiedAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindRewardVideoAd) {
                ((WindRewardVideoAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindInterstitialAd) {
                ((WindInterstitialAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindNewInterstitialAd) {
                ((WindNewInterstitialAd) obj).sendWinNotificationWithInfo(map2);
            } else if (obj instanceof WindSplashAD) {
                ((WindSplashAD) obj).sendWinNotificationWithInfo(map2);
            }
        } catch (Exception unused) {
        }
        this.f51244a = null;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }
}
