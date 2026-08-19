package com.ubix.ssp.open.manager;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.sigmob.sdk.mraid.C1315g;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdSize;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;
import com.ubix.ssp.open.banner.UBiXBannerAdListener;
import com.ubix.ssp.open.banner.UBiXBannerManager;

/* loaded from: classes5.dex */
public class a implements UBiXBannerManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48521a = "a";

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.c.b f48522b;

    /* renamed from: com.ubix.ssp.open.manager.a$a, reason: collision with other inner class name */
    public class C0851a implements com.ubix.ssp.ad.g.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXBannerAdListener f48523a;

        public C0851a(UBiXBannerAdListener uBiXBannerAdListener) {
            this.f48523a = uBiXBannerAdListener;
        }

        @Override // com.ubix.ssp.ad.g.a
        public void onAdClicked() {
            if (this.f48523a != null) {
                u.e(a.f48521a, "onAdClicked in");
                this.f48523a.onAdClicked();
            }
            u.e(a.f48521a, "onAdClicked out");
        }

        @Override // com.ubix.ssp.ad.g.a
        public void onAdClosed() {
            if (this.f48523a != null) {
                u.e(a.f48521a, "onAdClosed in");
                this.f48523a.onAdClosed();
            }
            u.e(a.f48521a, "onAdClosed out");
        }

        @Override // com.ubix.ssp.ad.g.a
        public void onAdExposeFailed(AdError adError) {
            if (this.f48523a != null) {
                u.c(a.f48521a, "onAdExposeFailed in");
                this.f48523a.onAdExposeFailed(adError);
            }
            u.c(a.f48521a, "onAdExposeFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.a
        public void onAdExposed() {
            if (this.f48523a != null) {
                u.e(a.f48521a, "onAdExposed in");
                this.f48523a.onAdExposed();
            }
            u.e(a.f48521a, "onAdExposed out");
        }

        @Override // com.ubix.ssp.ad.g.a
        public void onAdLoadFailed(AdError adError) {
            if (this.f48523a != null) {
                u.c(a.f48521a, "onAdLoadFailed in");
                this.f48523a.onAdLoadFailed(adError);
            }
            u.c(a.f48521a, "onAdLoadFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.a
        public void onAdLoadSucceed() {
            if (this.f48523a != null) {
                u.e(a.f48521a, "onAdLoadSucceed in");
                this.f48523a.onAdLoadSucceed();
            }
            u.e(a.f48521a, "onAdLoadSucceed out");
        }
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void destroy() {
        com.ubix.ssp.ad.c.b bVar = this.f48522b;
        if (bVar != null) {
            bVar.L();
            u.e(f48521a, C1315g.f37905b);
        }
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public View getBannerView() {
        if (this.f48522b == null) {
            u.e(f48521a, "getBannerView: return null");
            return null;
        }
        u.e(f48521a, "getBannerView:" + this.f48522b.C());
        return this.f48522b.C();
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public ParamsReview getParamsReview() {
        if (this.f48522b == null) {
            u.e(f48521a, "getParamsReview: return null");
            return null;
        }
        u.e(f48521a, "getParamsReview:" + this.f48522b.D());
        return this.f48522b.D();
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public long getPrice() {
        if (this.f48522b == null) {
            u.e(f48521a, "getPrice: return 0");
            return 0L;
        }
        u.e(f48521a, "getPrice:" + this.f48522b.E());
        return this.f48522b.E();
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public boolean isValid() {
        if (this.f48522b == null) {
            u.e(f48521a, "isValid: return false");
            return false;
        }
        u.e(f48521a, "isValid:" + this.f48522b.H());
        return this.f48522b.H();
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void loadAd() {
        com.ubix.ssp.ad.c.b bVar = this.f48522b;
        if (bVar != null) {
            bVar.I();
            u.e(f48521a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void loadBannerAd(Context context, String str, AdSize adSize, UBiXBannerAdListener uBiXBannerAdListener) {
        if (u.a()) {
            String str2 = f48521a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   AdSize:");
            sb.append(adSize);
            sb.append("   listener is null:");
            sb.append(uBiXBannerAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        com.ubix.ssp.ad.c.b bVar = new com.ubix.ssp.ad.c.b(context, str, adSize);
        this.f48522b = bVar;
        bVar.a((com.ubix.ssp.ad.g.a) new C0851a(uBiXBannerAdListener));
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        String str;
        String str2;
        if (uBiXAdLossInfo == null) {
            str = f48521a;
            str2 = "lossInfo is empty";
        } else {
            com.ubix.ssp.ad.c.b bVar = this.f48522b;
            if (bVar == null) {
                return;
            }
            bVar.b(uBiXAdLossInfo.getInfo());
            str = f48521a;
            str2 = "lossNotice";
        }
        u.e(str, str2);
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void winNotice(long j2) {
        com.ubix.ssp.ad.c.b bVar = this.f48522b;
        if (bVar != null) {
            bVar.a(j2);
            u.e(f48521a, "winNotice");
        }
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void loadAd(int i2) {
        com.ubix.ssp.ad.c.b bVar = this.f48522b;
        if (bVar != null) {
            bVar.m(-1);
            u.e(f48521a, "loadAd with refreshTime: " + i2);
        }
    }

    @Override // com.ubix.ssp.open.banner.UBiXBannerManager
    public void loadBannerAd(Context context, String str, UBiXBannerAdListener uBiXBannerAdListener) {
        loadBannerAd(context, str, null, uBiXBannerAdListener);
    }
}
