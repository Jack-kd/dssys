package com.anythink.network.beizi;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.beizi.fusion.BeiZiBiddingConstant;
import com.beizi.fusion.InterstitialAd;
import com.beizi.fusion.NativeAd;
import com.beizi.fusion.NativeUnifiedAd;
import com.beizi.fusion.RewardedVideoAd;
import com.beizi.fusion.SplashAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class BzATBiddingNotice implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    private String f9470a = BzATBiddingNotice.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    Object f9471b;

    public BzATBiddingNotice(Object obj) {
        this.f9471b = obj;
    }

    private String a(int i2) {
        return i2 != 15 ? i2 != 22 ? i2 != 28 ? i2 != 39 ? i2 != 46 ? i2 != 72 ? i2 != 74 ? i2 != 95 ? "9999" : BeiZiBiddingConstant.Adn.ADN_BZ : BeiZiBiddingConstant.Adn.ADN_QM : BeiZiBiddingConstant.Adn.ADN_JD : BeiZiBiddingConstant.Adn.ADN_GM : BeiZiBiddingConstant.Adn.ADN_HW : BeiZiBiddingConstant.Adn.ADN_KS : BeiZiBiddingConstant.Adn.ADN_BD : BeiZiBiddingConstant.Adn.ADN_CSJ;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidLoss(String str, double d2, Map<String, Object> map) {
        try {
            HashMap map2 = new HashMap();
            map2.put("winPrice", Integer.valueOf((int) Math.round(d2)));
            int intFromMap = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID);
            String strA = "9999";
            char c2 = 0;
            int intFromMap2 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, 0);
            if (intFromMap2 > 0) {
                strA = a(intFromMap2);
            } else if (intFromMap == 5) {
                strA = BeiZiBiddingConstant.Adn.ADN_BZ;
            }
            map2.put("adnId", strA);
            String str2 = BeiZiBiddingConstant.LossReason.OTHER;
            str.getClass();
            int iHashCode = str.hashCode();
            if (iHashCode != 50) {
                if (iHashCode != 53) {
                    switch (iHashCode) {
                        case 48627:
                            if (!str.equals("102")) {
                                break;
                            } else {
                                c2 = 2;
                                break;
                            }
                        case 48628:
                            if (!str.equals("103")) {
                                break;
                            } else {
                                c2 = 3;
                                break;
                            }
                        case 48629:
                            if (!str.equals("104")) {
                                break;
                            } else {
                                c2 = 4;
                                break;
                            }
                        default:
                            break;
                    }
                } else {
                    c2 = !str.equals("5") ? (char) 65535 : (char) 1;
                }
            } else if (!str.equals("2")) {
            }
            if (c2 == 0 || c2 == 1) {
                str2 = "2";
            } else if (c2 == 2 || c2 == 3 || c2 == 4) {
                str2 = "1";
            }
            map2.put("lossReason", str2);
            ATSDK.isNetworkLogDebug();
            try {
                if (this.f9471b instanceof SplashAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((SplashAd) this.f9471b).getECPM();
                    }
                    ((SplashAd) this.f9471b).sendLossNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused) {
            }
            try {
                if (this.f9471b instanceof RewardedVideoAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((RewardedVideoAd) this.f9471b).getECPM();
                    }
                    ((RewardedVideoAd) this.f9471b).sendLossNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused2) {
            }
            try {
                if (this.f9471b instanceof InterstitialAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((InterstitialAd) this.f9471b).getECPM();
                    }
                    ((InterstitialAd) this.f9471b).sendLossNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused3) {
            }
            try {
                if (this.f9471b instanceof NativeAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((NativeAd) this.f9471b).getECPM();
                    }
                    ((NativeAd) this.f9471b).sendLossNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused4) {
            }
            try {
                if (this.f9471b instanceof NativeUnifiedAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((NativeUnifiedAd) this.f9471b).getECPM();
                    }
                    ((NativeUnifiedAd) this.f9471b).sendLossNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused5) {
            }
            this.f9471b = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        try {
            int iRound = (int) Math.round(d2);
            int iRound2 = (int) Math.round(d3);
            ATSDK.isNetworkLogDebug();
            int intFromMap = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID);
            String strA = "9999";
            int intFromMap2 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, 0);
            if (intFromMap2 > 0) {
                strA = a(intFromMap2);
            } else if (intFromMap == 5) {
                strA = BeiZiBiddingConstant.Adn.ADN_BZ;
            }
            HashMap map2 = new HashMap();
            map2.put("winPrice", String.valueOf(iRound));
            map2.put("highestLossPrice", String.valueOf(iRound2));
            map2.put("adnId", strA);
            try {
                if (this.f9471b instanceof SplashAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((SplashAd) this.f9471b).getECPM();
                    }
                    ((SplashAd) this.f9471b).sendWinNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused) {
            }
            try {
                if (this.f9471b instanceof RewardedVideoAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((RewardedVideoAd) this.f9471b).getECPM();
                    }
                    ((RewardedVideoAd) this.f9471b).sendWinNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused2) {
            }
            try {
                if (this.f9471b instanceof InterstitialAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((InterstitialAd) this.f9471b).getECPM();
                    }
                    ((InterstitialAd) this.f9471b).sendWinNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused3) {
            }
            try {
                if (this.f9471b instanceof NativeAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((NativeAd) this.f9471b).getECPM();
                    }
                    ((NativeAd) this.f9471b).sendWinNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused4) {
            }
            try {
                if (this.f9471b instanceof NativeUnifiedAd) {
                    if (ATSDK.isNetworkLogDebug()) {
                        ((NativeUnifiedAd) this.f9471b).getECPM();
                    }
                    ((NativeUnifiedAd) this.f9471b).sendWinNotificationWithInfo(map2);
                    return;
                }
            } catch (Throwable unused5) {
            }
            this.f9471b = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
