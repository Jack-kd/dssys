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
import com.ubix.ssp.open.icon.UBiXIconAdListener;
import com.ubix.ssp.open.icon.UBiXIconManager;

/* loaded from: classes5.dex */
public class b implements UBiXIconManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48525a = "b";

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.f.b f48526b;

    public class a implements com.ubix.ssp.ad.g.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXIconAdListener f48527a;

        public a(UBiXIconAdListener uBiXIconAdListener) {
            this.f48527a = uBiXIconAdListener;
        }

        @Override // com.ubix.ssp.ad.g.d
        public void onAdClicked(View view) {
            if (this.f48527a != null) {
                u.e(b.f48525a, "onAdClicked in");
                this.f48527a.onAdClicked();
            }
            u.e(b.f48525a, "onAdClicked out");
        }

        @Override // com.ubix.ssp.ad.g.d
        public void onAdClosed() {
            if (this.f48527a != null) {
                u.e(b.f48525a, "onAdClosed in");
                this.f48527a.onAdClosed();
            }
            u.e(b.f48525a, "onAdClosed out");
        }

        @Override // com.ubix.ssp.ad.g.d
        public void onAdExposeFailed(AdError adError) {
            if (this.f48527a != null) {
                u.c(b.f48525a, "onAdExposeFailed in");
                this.f48527a.onAdExposeFailed(adError);
            }
            u.c(b.f48525a, "onAdExposeFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.d
        public void onAdExposed() {
            if (this.f48527a != null) {
                u.e(b.f48525a, "onAdExposed in");
                this.f48527a.onAdExposed();
            }
            u.e(b.f48525a, "onAdExposed out");
        }

        @Override // com.ubix.ssp.ad.g.d
        public void onAdLoadFailed(AdError adError) {
            if (this.f48527a != null) {
                u.c(b.f48525a, "onAdLoadFailed in");
                this.f48527a.onAdLoadFailed(adError);
            }
            u.c(b.f48525a, "onAdLoadFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.d
        public void onAdLoadSucceed() {
            if (this.f48527a != null) {
                u.e(b.f48525a, "onAdLoadSucceed in");
                this.f48527a.onAdLoadSucceed();
            }
            u.e(b.f48525a, "onAdLoadSucceed out");
        }
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public void destroy() {
        com.ubix.ssp.ad.f.b bVar = this.f48526b;
        if (bVar != null) {
            bVar.a();
            u.e(f48525a, C1315g.f37905b);
        }
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public String getBiddingToken() {
        com.ubix.ssp.ad.f.b bVar = this.f48526b;
        if (bVar == null) {
            u.e(f48525a, "getBiddingToken:null");
            return null;
        }
        String strB = bVar.b();
        u.f("getBiddingToken:" + strB);
        return strB;
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public View getIconView() {
        if (this.f48526b == null) {
            u.e(f48525a, "getIconView: return null");
            return null;
        }
        u.e(f48525a, "getIconView:" + this.f48526b.c());
        return this.f48526b.c();
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public ParamsReview getParamsReview() {
        if (this.f48526b == null) {
            u.e(f48525a, "getParamsReview: return null");
            return null;
        }
        u.e(f48525a, "getParamsReview:" + this.f48526b.d());
        return this.f48526b.d();
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public long getPrice() {
        if (this.f48526b == null) {
            u.e(f48525a, "getPrice: return 0");
            return 0L;
        }
        u.e(f48525a, "getPrice:" + this.f48526b.e());
        return this.f48526b.e();
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public boolean isValid() {
        if (this.f48526b == null) {
            u.e(f48525a, "isValid: return false");
            return false;
        }
        u.e(f48525a, "isValid:" + this.f48526b.f());
        return this.f48526b.f();
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public void loadAd() {
        com.ubix.ssp.ad.f.b bVar = this.f48526b;
        if (bVar != null) {
            bVar.g();
            u.e(f48525a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public void loadBiddingAd(String str) {
        com.ubix.ssp.ad.f.b bVar = this.f48526b;
        if (bVar != null) {
            bVar.a(str);
            u.e(f48525a, "loadBiddingAd adm:" + str);
        }
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public void loadIconAd(Context context, String str, AdSize adSize, UBiXIconAdListener uBiXIconAdListener) {
        if (u.a()) {
            String str2 = f48525a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   AdSize:");
            sb.append(adSize);
            sb.append("   listener is null:");
            sb.append(uBiXIconAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        com.ubix.ssp.ad.f.b bVar = new com.ubix.ssp.ad.f.b(context, str, adSize);
        this.f48526b = bVar;
        bVar.a(new a(uBiXIconAdListener));
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        String str;
        String str2;
        if (uBiXAdLossInfo == null) {
            str = f48525a;
            str2 = "lossInfo is empty";
        } else {
            com.ubix.ssp.ad.f.b bVar = this.f48526b;
            if (bVar == null) {
                return;
            }
            bVar.a(uBiXAdLossInfo.getInfo());
            str = f48525a;
            str2 = "lossNotice";
        }
        u.e(str, str2);
    }

    @Override // com.ubix.ssp.open.icon.UBiXIconManager
    public void winNotice(long j2) {
        com.ubix.ssp.ad.f.b bVar = this.f48526b;
        if (bVar != null) {
            bVar.a(j2);
            u.e(f48525a, "winNotice");
        }
    }
}
