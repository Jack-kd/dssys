package com.anythink.network.funlink;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATInitMediation;
import com.fl.saas.adx.api.FLBanner;
import com.fl.saas.adx.api.FLInterstitial;
import com.fl.saas.adx.api.FLSpread;
import com.fl.saas.adx.api.FLVideo;
import com.fl.saas.adx.api.mixNative.NativeAd;
import java.util.Map;

/* loaded from: classes2.dex */
public class FunlinkATBiddingNotice implements ATBiddingNotice {

    /* renamed from: a, reason: collision with root package name */
    Object f9567a;

    /* renamed from: b, reason: collision with root package name */
    private String f9568b = FunlinkATBiddingNotice.class.getSimpleName();

    public FunlinkATBiddingNotice(Object obj) {
        this.f9567a = obj;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public ATAdConst.CURRENCY getNoticePriceCurrency() {
        return ATAdConst.CURRENCY.RMB_CENT;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public void notifyBidDisplay(boolean z2, double d2) {
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidLoss(String str, double d2, Map<String, Object> map) {
        int iRound = (int) Math.round(d2);
        int iRound2 = (int) Math.round(ATInitMediation.getDoubleFromMap(map, ATBiddingNotice.ADN_BID_SECOND_PRICE, 0.0d));
        try {
            Object obj = this.f9567a;
            if (obj instanceof FLInterstitial) {
                FLInterstitial fLInterstitial = (FLInterstitial) obj;
                fLInterstitial.getECPM();
                fLInterstitial.biddingResultUpload(false, iRound, iRound2);
            } else if (obj instanceof FLVideo) {
                FLVideo fLVideo = (FLVideo) obj;
                fLVideo.getECPM();
                fLVideo.biddingResultUpload(false, iRound, iRound2);
            } else if (obj instanceof FLBanner) {
                FLBanner fLBanner = (FLBanner) obj;
                fLBanner.getECPM();
                fLBanner.biddingResultUpload(false, iRound, iRound2);
            } else if (obj instanceof FLSpread) {
                FLSpread fLSpread = (FLSpread) obj;
                fLSpread.getECPM();
                fLSpread.biddingResultUpload(false, iRound, iRound2);
            } else if (obj instanceof NativeAd) {
                NativeAd nativeAd = (NativeAd) obj;
                nativeAd.getECPM();
                nativeAd.biddingResultUpload(false, iRound, iRound2);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        this.f9567a = null;
    }

    @Override // com.anythink.core.api.ATBiddingNotice
    public synchronized void notifyBidWin(double d2, double d3, Map<String, Object> map) {
        Object obj;
        int iRound = (int) Math.round(d2);
        int iRound2 = (int) Math.round(d3);
        try {
            obj = this.f9567a;
        } catch (Throwable th) {
            th.getMessage();
        }
        if (obj instanceof FLInterstitial) {
            ((FLInterstitial) obj).biddingResultUpload(true, iRound, iRound2);
            return;
        }
        if (obj instanceof FLVideo) {
            ((FLVideo) obj).biddingResultUpload(true, iRound, iRound2);
            return;
        }
        if (obj instanceof FLBanner) {
            ((FLBanner) obj).biddingResultUpload(true, iRound, iRound2);
            return;
        }
        if (obj instanceof FLSpread) {
            ((FLSpread) obj).biddingResultUpload(true, iRound, iRound2);
            return;
        }
        if (obj instanceof NativeAd) {
            ((NativeAd) obj).biddingResultUpload(true, iRound, iRound2);
            return;
        }
        this.f9567a = null;
    }
}
