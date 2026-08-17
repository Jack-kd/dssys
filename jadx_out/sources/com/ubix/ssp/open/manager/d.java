package com.ubix.ssp.open.manager;

import android.app.Activity;
import android.content.Context;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdSize;
import com.ubix.ssp.open.nativee.express.NativeExpressAd;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressAdListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes5.dex */
public class d implements UBiXNativeExpressManager {

    /* renamed from: a, reason: collision with root package name */
    public static final String f48533a = "d";

    /* renamed from: b, reason: collision with root package name */
    private com.ubix.ssp.ad.i.d f48534b;

    public class a implements com.ubix.ssp.ad.g.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeExpressAdListener f48535a;

        public a(UBiXNativeExpressAdListener uBiXNativeExpressAdListener) {
            this.f48535a = uBiXNativeExpressAdListener;
        }

        @Override // com.ubix.ssp.ad.g.f
        public void onAdLoadFailed(AdError adError) {
            if (this.f48535a != null) {
                u.c(d.f48533a, "onAdLoadFailed in");
                this.f48535a.onAdLoadFailed(adError);
            }
            u.c(d.f48533a, "onAdLoadFailed out ErrorCode:" + adError.getErrorCode() + "   ErrorMessage:" + adError.getErrorMessage());
        }

        @Override // com.ubix.ssp.ad.g.f
        public void onAdLoadSucceed(List<NativeExpressAd> list) {
            if (this.f48535a != null) {
                u.e(d.f48533a, "onAdLoadSucceed in");
                this.f48535a.onAdLoadSucceed(list);
            }
            u.e(d.f48533a, "onAdLoadSucceed out");
        }
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public String getBiddingToken() {
        com.ubix.ssp.ad.i.d dVar = this.f48534b;
        if (dVar == null) {
            u.e(f48533a, "getBiddingToken:null");
            return null;
        }
        String strA = dVar.a();
        u.f("getBiddingToken:" + strA);
        return strA;
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public void loadAd() {
        com.ubix.ssp.ad.i.d dVar = this.f48534b;
        if (dVar != null) {
            dVar.b();
            u.e(f48533a, "loadAd");
        }
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public void loadBiddingAd(String str) {
        com.ubix.ssp.ad.i.d dVar = this.f48534b;
        if (dVar != null) {
            dVar.a(str);
            u.e(f48533a, "loadBiddingAd adm:" + str);
        }
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public void loadNativeExpressAd(Context context, String str, AdSize adSize, UBiXNativeExpressAdListener uBiXNativeExpressAdListener) {
        if (u.a()) {
            String str2 = f48533a;
            StringBuilder sb = new StringBuilder();
            sb.append("slot id:");
            sb.append(str);
            sb.append("   AdSize:");
            sb.append(adSize);
            sb.append("   listener is null:");
            sb.append(uBiXNativeExpressAdListener == null);
            sb.append("   context is null:");
            sb.append(context == null);
            u.e(str2, sb.toString());
            if (context != null) {
                u.e(str2, "context is activity:" + (context instanceof Activity));
            }
        }
        this.f48534b = new com.ubix.ssp.ad.i.d(context, str, adSize, new a(uBiXNativeExpressAdListener));
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public void setExtraInfo(HashMap<String, String> map) {
        com.ubix.ssp.ad.i.d dVar = this.f48534b;
        if (dVar != null) {
            dVar.a(map);
            u.e(f48533a, "setExtraInfo");
        }
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public void loadAd(int i2) {
        com.ubix.ssp.ad.i.d dVar = this.f48534b;
        if (dVar != null) {
            dVar.b(i2);
            u.e(f48533a, "loadAd count:" + i2);
        }
    }

    @Override // com.ubix.ssp.open.nativee.express.UBiXNativeExpressManager
    public void loadNativeExpressAd(Context context, String str, UBiXNativeExpressAdListener uBiXNativeExpressAdListener) {
        loadNativeExpressAd(context, str, new AdSize(-1, -2), uBiXNativeExpressAdListener);
    }
}
