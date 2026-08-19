package com.ubix.ssp.open.manager;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.sigmob.sdk.mraid.C1315g;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.g.i;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;
import com.ubix.ssp.open.splash.UBiXSplashAdListener;
import com.ubix.ssp.open.splash.UBiXSplashManager;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class g implements UBiXSplashManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48555a = "g";

    /* renamed from: b, reason: collision with root package name */
    private transient com.ubix.ssp.ad.j.b f48556b;

    public class a implements i {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXSplashAdListener f48557a;

        public a(UBiXSplashAdListener uBiXSplashAdListener) {
            this.f48557a = uBiXSplashAdListener;
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdClicked(View view) {
            if (this.f48557a != null) {
                u.e(g.f48555a, "onAdClicked in");
                this.f48557a.onAdClicked();
            }
            u.e(g.f48555a, "onAdClicked out");
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdClosed() {
            if (this.f48557a != null) {
                u.e(g.f48555a, "onAdClosed in");
                this.f48557a.onAdClosed();
            }
            u.e(g.f48555a, "onAdClosed out");
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdExposeFailed(AdError adError) {
            if (this.f48557a != null) {
                u.c(g.f48555a, "onAdExposeFailed in");
                this.f48557a.onAdExposeFailed(adError);
            }
            u.c(g.f48555a, "onAdExposeFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdExposed() {
            if (this.f48557a != null) {
                u.e(g.f48555a, "onAdExposed in");
                this.f48557a.onAdExposed();
            }
            u.e(g.f48555a, "onAdExposed out");
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdLoadFailed(AdError adError) {
            if (this.f48557a != null) {
                u.c(g.f48555a, "onAdLoadFailed in");
                this.f48557a.onAdLoadFailed(adError);
            }
            u.c(g.f48555a, "onAdLoadFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdLoadSucceed() {
            if (this.f48557a != null) {
                u.e(g.f48555a, "onAdLoadSucceed in");
                this.f48557a.onAdLoadSucceed();
            }
            u.e(g.f48555a, "onAdLoadSucceed out");
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdResponseSucceed() {
            if (this.f48557a != null) {
                u.e(g.f48555a, "onAdResponseSucceed in");
                this.f48557a.onAdResponseSucceed();
            }
            u.e(g.f48555a, "onAdResponseSucceed out");
        }

        @Override // com.ubix.ssp.ad.g.i
        public void onAdSkipped() {
            if (this.f48557a != null) {
                u.e(g.f48555a, "onAdSkipped in");
                this.f48557a.onAdSkipped();
            }
            u.e(g.f48555a, "onAdSkipped out");
        }
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void destroy() {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.h();
        }
        u.e(f48555a, C1315g.f37905b);
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public String getBiddingToken() {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar == null) {
            u.e(f48555a, "getBiddingToken:null");
            return null;
        }
        String strB = bVar.B();
        u.f("getBiddingToken:" + strB);
        return strB;
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public ParamsReview getParamsReview() {
        if (this.f48556b == null) {
            return null;
        }
        u.e(f48555a, "getParamsReview:" + this.f48556b.C());
        return this.f48556b.C();
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public long getPrice() {
        if (this.f48556b == null) {
            u.e(f48555a, "getPrice: return 0");
            return 0L;
        }
        u.e(f48555a, "getPrice:" + this.f48556b.D());
        return this.f48556b.D();
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public String getRequestId() {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            return bVar.E();
        }
        return null;
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public boolean isValid() {
        if (this.f48556b == null) {
            u.e(f48555a, "isValid: return false");
            return false;
        }
        u.e(f48555a, "isValid:" + this.f48556b.D());
        return this.f48556b.M();
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void loadAd() {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.O();
            u.e(f48555a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void loadBiddingAd(String str) {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.h(str);
            u.e(f48555a, "loadBiddingAd adm:" + str);
        }
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void loadSplashAd(Context context, String str, UBiXSplashAdListener uBiXSplashAdListener) {
        if (u.a()) {
            String str2 = f48555a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   listener is null:");
            sb.append(uBiXSplashAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        com.ubix.ssp.ad.j.b bVar = new com.ubix.ssp.ad.j.b(context, str);
        this.f48556b = bVar;
        bVar.a((i) new a(uBiXSplashAdListener));
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        String str;
        String str2;
        if (uBiXAdLossInfo == null) {
            str = f48555a;
            str2 = "lossInfo is empty";
        } else {
            com.ubix.ssp.ad.j.b bVar = this.f48556b;
            if (bVar == null) {
                return;
            }
            bVar.b(uBiXAdLossInfo.getInfo());
            str = f48555a;
            str2 = "lossNotice";
        }
        u.e(str, str2);
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void setExtraInfo(HashMap<String, String> map) {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.a(map);
            u.e(f48555a, "setExtraInfo");
        }
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void setMaxTimeout(int i2) {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.r(i2 * 1000);
        }
        u.e(f48555a, "setMaxTimeout:" + i2);
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void setSkipTime(int i2) {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.s(i2);
        }
        u.e(f48555a, "setSkipTime:" + i2);
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void showAd(ViewGroup viewGroup) {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.a(viewGroup);
            u.e(f48555a, "showAd");
        }
    }

    @Override // com.ubix.ssp.open.splash.UBiXSplashManager
    public void winNotice(long j2) {
        com.ubix.ssp.ad.j.b bVar = this.f48556b;
        if (bVar != null) {
            bVar.a(j2);
            u.e(f48555a, "winNotice");
        }
    }
}
