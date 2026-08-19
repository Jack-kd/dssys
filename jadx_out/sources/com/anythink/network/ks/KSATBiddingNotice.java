package com.anythink.network.ks;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDK;
import com.kwad.sdk.api.KsBannerAd;
import com.kwad.sdk.api.KsDrawAd;
import com.kwad.sdk.api.KsFeedAd;
import com.kwad.sdk.api.KsFullScreenVideoAd;
import com.kwad.sdk.api.KsInterstitialAd;
import com.kwad.sdk.api.KsNativeAd;
import com.kwad.sdk.api.KsRewardVideoAd;
import com.kwad.sdk.api.KsSplashScreenAd;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATBiddingNotice implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    Object f9807a;

    public KSATBiddingNotice(Object obj) {
        this.f9807a = obj;
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
            char c2 = 65535;
            int intFromMap = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_ID, -1);
            int i2 = 3;
            int i3 = (intFromMap == 1 || intFromMap == 2) ? 1 : (intFromMap == 3 || intFromMap == 4) ? 2 : 3;
            String str2 = "other";
            int intFromMap2 = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_EXTRA_NW_FIRM_ID, 0);
            if (intFromMap2 > 0) {
                if (intFromMap2 == 15) {
                    str2 = "chuanshanjia";
                } else if (intFromMap2 == 22) {
                    str2 = "baidu";
                }
            }
            int iRound = (int) Math.round(d2);
            AdExposureFailedReason adExposureFailedReason = new AdExposureFailedReason();
            adExposureFailedReason.winEcpm = iRound;
            adExposureFailedReason.adnType = i3;
            adExposureFailedReason.adnName = str2;
            int iHashCode = str.hashCode();
            if (iHashCode != 50) {
                if (iHashCode != 53) {
                    switch (iHashCode) {
                        case 48627:
                            if (str.equals("102")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 48628:
                            if (str.equals("103")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 48629:
                            if (str.equals("104")) {
                                c2 = 0;
                                break;
                            }
                            break;
                    }
                } else if (str.equals("5")) {
                    c2 = 3;
                }
            } else if (str.equals("2")) {
                c2 = 4;
            }
            if (c2 == 0) {
                i2 = 1;
            } else if (c2 == 1 || c2 == 2) {
                i2 = 2;
            } else if (c2 != 3) {
                i2 = 0;
            }
            String stringFromMap = "";
            String stringFromMap2 = "";
            Object obj = map.get(ATBiddingNotice.ADN_EXTRA_NATIVE_MATERIAL_INFO);
            if (obj != null) {
                try {
                    stringFromMap = ATInitMediation.getStringFromMap((Map) obj, "native_material_tittle", "");
                    stringFromMap2 = ATInitMediation.getStringFromMap((Map) obj, "native_material_publisher_name", "");
                } catch (Throwable unused) {
                }
            }
            adExposureFailedReason.adTitle = stringFromMap;
            adExposureFailedReason.adUserName = stringFromMap2;
            adExposureFailedReason.adRequestId = ATInitMediation.getStringFromMap(map, ATBiddingNotice.ADN_REQUEST_ID, "");
            adExposureFailedReason.isShow = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_REQUEST_IS_SHOW, 2);
            adExposureFailedReason.isClick = ATInitMediation.getIntFromMap(map, ATBiddingNotice.ADN_REQUEST_IS_CLICK, 2);
            ATSDK.isNetworkLogDebug();
            try {
                Object obj2 = this.f9807a;
                if (obj2 instanceof KsRewardVideoAd) {
                    ((KsRewardVideoAd) obj2).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused2) {
            }
            try {
                Object obj3 = this.f9807a;
                if (obj3 instanceof KsInterstitialAd) {
                    ((KsInterstitialAd) obj3).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused3) {
            }
            try {
                Object obj4 = this.f9807a;
                if (obj4 instanceof KsFullScreenVideoAd) {
                    ((KsFullScreenVideoAd) obj4).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused4) {
            }
            try {
                Object obj5 = this.f9807a;
                if (obj5 instanceof KsDrawAd) {
                    ((KsDrawAd) obj5).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused5) {
            }
            try {
                Object obj6 = this.f9807a;
                if (obj6 instanceof KsFeedAd) {
                    ((KsFeedAd) obj6).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused6) {
            }
            try {
                Object obj7 = this.f9807a;
                if (obj7 instanceof KsNativeAd) {
                    ((KsNativeAd) obj7).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused7) {
            }
            try {
                Object obj8 = this.f9807a;
                if (obj8 instanceof KsSplashScreenAd) {
                    ((KsSplashScreenAd) obj8).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused8) {
            }
            try {
                Object obj9 = this.f9807a;
                if (obj9 instanceof KsBannerAd) {
                    ((KsBannerAd) obj9).reportAdExposureFailed(i2, adExposureFailedReason);
                    return;
                }
            } catch (Throwable unused9) {
            }
            this.f9807a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        int iRound = (int) Math.round(d2);
        int iRound2 = (int) Math.round(d3);
        ATSDK.isNetworkLogDebug();
        try {
            if (this.f9807a instanceof KsRewardVideoAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsRewardVideoAd) this.f9807a).getECPM();
                }
                ((KsRewardVideoAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused) {
        }
        try {
            if (this.f9807a instanceof KsInterstitialAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsInterstitialAd) this.f9807a).getECPM();
                }
                ((KsInterstitialAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused2) {
        }
        try {
            if (this.f9807a instanceof KsFullScreenVideoAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsFullScreenVideoAd) this.f9807a).getECPM();
                }
                ((KsFullScreenVideoAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused3) {
        }
        try {
            if (this.f9807a instanceof KsDrawAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsDrawAd) this.f9807a).getECPM();
                }
                ((KsDrawAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused4) {
        }
        try {
            if (this.f9807a instanceof KsFeedAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsFeedAd) this.f9807a).getECPM();
                }
                ((KsFeedAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused5) {
        }
        try {
            if (this.f9807a instanceof KsNativeAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsNativeAd) this.f9807a).getECPM();
                }
                ((KsNativeAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused6) {
        }
        try {
            if (this.f9807a instanceof KsSplashScreenAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsSplashScreenAd) this.f9807a).getECPM();
                }
                ((KsSplashScreenAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused7) {
        }
        try {
            if (this.f9807a instanceof KsBannerAd) {
                if (ATSDK.isNetworkLogDebug()) {
                    ((KsBannerAd) this.f9807a).getECPM();
                }
                ((KsBannerAd) this.f9807a).setBidEcpm(iRound, iRound2);
                return;
            }
        } catch (Throwable unused8) {
        }
        this.f9807a = null;
    }
}
