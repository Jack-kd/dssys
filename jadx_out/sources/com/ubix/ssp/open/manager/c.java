package com.ubix.ssp.open.manager;

import android.app.Activity;
import android.content.Context;
import com.sigmob.sdk.mraid.C1315g;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;
import com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener;
import com.ubix.ssp.open.interstitial.UBiXInterstitialManager;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class c implements UBiXInterstitialManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48529a = "c";

    /* renamed from: b, reason: collision with root package name */
    private transient com.ubix.ssp.ad.h.b f48530b;

    public class a implements com.ubix.ssp.ad.g.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXInterstitialAdListener f48531a;

        public a(UBiXInterstitialAdListener uBiXInterstitialAdListener) {
            this.f48531a = uBiXInterstitialAdListener;
        }

        @Override // com.ubix.ssp.ad.g.e
        public void onAdClicked() {
            if (this.f48531a != null) {
                u.e(c.f48529a, "onAdClicked in");
                this.f48531a.onAdClicked();
            }
            u.e(c.f48529a, "onAdClicked out");
        }

        @Override // com.ubix.ssp.ad.g.e
        public void onAdClosed() {
            if (this.f48531a != null) {
                u.e(c.f48529a, "onAdClosed in");
                this.f48531a.onAdClosed();
            }
            u.e(c.f48529a, "onAdClosed out");
        }

        @Override // com.ubix.ssp.ad.g.e
        public void onAdExposeFailed(AdError adError) {
            if (this.f48531a != null) {
                u.c(c.f48529a, "onAdExposeFailed in");
                this.f48531a.onAdExposeFailed(adError);
            }
            u.c(c.f48529a, "onAdExposeFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.e
        public void onAdExposed() {
            if (this.f48531a != null) {
                u.e(c.f48529a, "onAdExposed in");
                this.f48531a.onAdExposed();
            }
            u.e(c.f48529a, "onAdExposed out");
        }

        @Override // com.ubix.ssp.ad.g.e
        public void onAdLoadFailed(AdError adError) {
            if (this.f48531a != null) {
                u.c(c.f48529a, "onAdLoadFailed in");
                this.f48531a.onAdLoadFailed(adError);
            }
            u.c(c.f48529a, "onAdLoadFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.e
        public void onAdLoadSucceed() {
            if (this.f48531a != null) {
                u.e(c.f48529a, "onAdLoadSucceed in");
                this.f48531a.onAdLoadSucceed();
            }
            u.e(c.f48529a, "onAdLoadSucceed out");
        }
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void destroy() {
        com.ubix.ssp.ad.h.b bVar = this.f48530b;
        if (bVar != null) {
            bVar.h();
            u.e(f48529a, C1315g.f37905b);
        }
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public String getBiddingToken() {
        com.ubix.ssp.ad.h.b bVar = this.f48530b;
        if (bVar == null) {
            u.e(f48529a, "getBiddingToken:null");
            return null;
        }
        String strB = bVar.B();
        u.f("getBiddingToken:" + strB);
        return strB;
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public ParamsReview getParamsReview() {
        if (this.f48530b == null) {
            u.e(f48529a, "getParamsReview: return null");
            return null;
        }
        u.e(f48529a, "getParamsReview:" + this.f48530b.C());
        return this.f48530b.C();
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public long getPrice() {
        if (this.f48530b == null) {
            u.e(f48529a, "getPrice: return 0");
            return 0L;
        }
        u.e(f48529a, "getPrice:" + this.f48530b.D());
        return this.f48530b.D();
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public boolean isValid() {
        if (this.f48530b == null) {
            u.e(f48529a, "isValid: return false");
            return false;
        }
        u.e(f48529a, "isValid:" + this.f48530b.H());
        return this.f48530b.H();
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public boolean isVideoAd() {
        if (this.f48530b == null) {
            u.e(f48529a, "isVideoAd: return false");
            return false;
        }
        u.e(f48529a, "isVideoAd:" + this.f48530b.I());
        return this.f48530b.I();
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void loadAd() {
        com.ubix.ssp.ad.h.b bVar = this.f48530b;
        if (bVar != null) {
            bVar.J();
            u.e(f48529a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void loadBiddingAd(String str) {
        if (this.f48530b != null) {
            u.e(f48529a, "loadBiddingAd adm:" + str);
            this.f48530b.h(str);
        }
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void loadInterstitialAd(Context context, String str, UBiXInterstitialAdListener uBiXInterstitialAdListener) {
        if (u.a()) {
            String str2 = f48529a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   listener is null:");
            sb.append(uBiXInterstitialAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        com.ubix.ssp.ad.h.b bVar = new com.ubix.ssp.ad.h.b(context, str);
        this.f48530b = bVar;
        bVar.a((com.ubix.ssp.ad.g.e) new a(uBiXInterstitialAdListener));
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        String str;
        String str2;
        if (uBiXAdLossInfo == null) {
            str = f48529a;
            str2 = "lossInfo is empty";
        } else {
            com.ubix.ssp.ad.h.b bVar = this.f48530b;
            if (bVar == null) {
                return;
            }
            bVar.b(uBiXAdLossInfo.getInfo());
            str = f48529a;
            str2 = "lossNotice";
        }
        u.e(str, str2);
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void setExtraInfo(HashMap<String, String> map) {
        com.ubix.ssp.ad.h.b bVar = this.f48530b;
        if (bVar != null) {
            bVar.a(map);
            u.e(f48529a, "setExtraInfo");
        }
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void showAd(Context context) {
        com.ubix.ssp.ad.h.b bVar = this.f48530b;
        if (bVar != null) {
            bVar.c(context);
            u.e(f48529a, "showAd");
        }
    }

    @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialManager
    public void winNotice(long j2) {
        com.ubix.ssp.ad.h.b bVar = this.f48530b;
        if (bVar != null) {
            bVar.a(j2);
            u.e(f48529a, "winNotice");
        }
    }
}
