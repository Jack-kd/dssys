package com.ubix.ssp.open.manager;

import android.app.Activity;
import android.content.Context;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXNativeAdListener;
import com.ubix.ssp.open.nativee.UBiXNativeManager;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class e implements UBiXNativeManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48537a = "e";

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.i.c f48538b;

    public class a implements com.ubix.ssp.ad.g.g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeAdListener f48539a;

        public a(UBiXNativeAdListener uBiXNativeAdListener) {
            this.f48539a = uBiXNativeAdListener;
        }

        @Override // com.ubix.ssp.ad.g.g
        public void a(ArrayList<NativeAd> arrayList) {
            if (this.f48539a != null) {
                u.e(e.f48537a, "onAdLoadSucceed in");
                this.f48539a.onAdLoadSucceed(arrayList);
            }
            u.e(e.f48537a, "onAdLoadSucceed out");
        }

        @Override // com.ubix.ssp.ad.g.g
        public void onAdLoadFailed(AdError adError) {
            if (this.f48539a != null) {
                u.c(e.f48537a, "onAdLoadFailed: ErrorCode in");
                this.f48539a.onAdLoadFailed(adError);
            }
            u.c(e.f48537a, "onAdLoadFailed out: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }
    }

    public class b implements com.ubix.ssp.ad.g.g {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeAdListener f48541a;

        public b(UBiXNativeAdListener uBiXNativeAdListener) {
            this.f48541a = uBiXNativeAdListener;
        }

        @Override // com.ubix.ssp.ad.g.g
        public void a(ArrayList<NativeAd> arrayList) {
            UBiXNativeAdListener uBiXNativeAdListener = this.f48541a;
            if (uBiXNativeAdListener != null) {
                uBiXNativeAdListener.onAdLoadSucceed(arrayList);
                u.e(e.f48537a, "[ADD adType]onAdLoadSucceed ");
            }
        }

        @Override // com.ubix.ssp.ad.g.g
        public void onAdLoadFailed(AdError adError) {
            UBiXNativeAdListener uBiXNativeAdListener = this.f48541a;
            if (uBiXNativeAdListener != null) {
                uBiXNativeAdListener.onAdLoadFailed(adError);
                u.c(e.f48537a, "[ADD adType]onAdLoadFailed: ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
            }
        }
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public String getBiddingToken() {
        com.ubix.ssp.ad.i.c cVar = this.f48538b;
        if (cVar == null) {
            u.e(f48537a, "getBiddingToken:null");
            return null;
        }
        String strB = cVar.B();
        u.f("getBiddingToken:" + strB);
        return strB;
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public void loadAd() {
        com.ubix.ssp.ad.i.c cVar = this.f48538b;
        if (cVar != null) {
            cVar.C();
            u.e(f48537a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public void loadBiddingAd(String str) {
        com.ubix.ssp.ad.i.c cVar = this.f48538b;
        if (cVar != null) {
            cVar.h(str);
            u.e(f48537a, "loadBiddingAd adm:" + str);
        }
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public void loadNativeAd(Context context, String str, int i2, UBiXNativeAdListener uBiXNativeAdListener) {
        String str2 = f48537a;
        StringBuilder sb = new StringBuilder();
        sb.append("slot id:");
        sb.append(str);
        sb.append("   adType:");
        sb.append(i2);
        sb.append("   listener is null:");
        sb.append(uBiXNativeAdListener == null);
        sb.append("   context is null:");
        sb.append(context == null);
        u.e(str2, sb.toString());
        if (context != null) {
            u.e(str2, "context is activity:" + (context instanceof Activity));
        }
        this.f48538b = new com.ubix.ssp.ad.i.c(context, str, i2, new b(uBiXNativeAdListener));
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public void setExtraInfo(HashMap<String, String> map) {
        com.ubix.ssp.ad.i.c cVar = this.f48538b;
        if (cVar != null) {
            cVar.a(map);
            u.e(f48537a, "setExtraInfo");
        }
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public void loadAd(int i2) {
        com.ubix.ssp.ad.i.c cVar = this.f48538b;
        if (cVar != null) {
            cVar.m(i2);
            u.e(f48537a, "loadAd count:" + i2);
        }
    }

    @Override // com.ubix.ssp.open.nativee.UBiXNativeManager
    public void loadNativeAd(Context context, String str, UBiXNativeAdListener uBiXNativeAdListener) {
        if (u.a()) {
            String str2 = f48537a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   listener is null:");
            sb.append(uBiXNativeAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        this.f48538b = new com.ubix.ssp.ad.i.c(context, str, 2, new a(uBiXNativeAdListener));
    }
}
