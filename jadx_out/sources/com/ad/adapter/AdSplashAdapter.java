package com.ad.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import com.ad.adapter.a;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.windmill.sdk.splash.WMSplashAd;
import com.windmill.sdk.splash.WMSplashAdListener;
import com.windmill.sdk.splash.WMSplashAdRequest;
import java.util.Map;

/* loaded from: classes.dex */
public class AdSplashAdapter extends CustomSplashAdapter {

    /* renamed from: r, reason: collision with root package name */
    public String f1245r;

    /* renamed from: s, reason: collision with root package name */
    public String f1246s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1247t = false;

    /* renamed from: u, reason: collision with root package name */
    public WMSplashAd f1248u;

    public class a implements a.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1249a;

        public a(Context context) {
            this.f1249a = context;
        }
    }

    public class b implements WMSplashAdListener {
        public b() {
        }
    }

    public class c implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ViewGroup f1252b;

        public c(ViewGroup viewGroup) {
            this.f1252b = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (AdSplashAdapter.this.f1248u == null || this.f1252b == null || !AdSplashAdapter.this.f1248u.isReady()) {
                    return;
                }
                AdSplashAdapter.this.f1248u.showAd(this.f1252b);
            } catch (Throwable unused) {
                if (((CustomSplashAdapter) AdSplashAdapter.this).mImpressionListener != null) {
                    ((ATBaseAdInternalAdapter) AdSplashAdapter.this).mDismissType = 99;
                    ((CustomSplashAdapter) AdSplashAdapter.this).mImpressionListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "GDT Splash show with exception"));
                    ((CustomSplashAdapter) AdSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f1248u.destroy();
        this.f1248u = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return com.ad.adapter.a.a().b();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1246s;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return com.ad.adapter.a.a().c();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WMSplashAd wMSplashAd = this.f1248u;
        if (wMSplashAd != null) {
            return wMSplashAd.isReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        Log.e(com.ad.adapter.a.f1254a, " splash loadCustomNetworkAd ");
        try {
            this.f1245r = ATInitMediation.getStringFromMap(map, "app_id");
            this.f1246s = ATInitMediation.getStringFromMap(map, "unit_id");
            if (!TextUtils.isEmpty(this.f1245r) && !TextUtils.isEmpty(this.f1246s)) {
                context.getApplicationContext();
                com.ad.adapter.a.a().d(context, map, new a(context));
                return;
            }
            notifyATLoadFail("", "TbAd appid or unitId is empty.");
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        if (viewGroup != null) {
            if (this.f1248u != null) {
                viewGroup.post(new c(viewGroup));
            }
        } else {
            CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
            if (customSplashEventListener != null) {
                this.mDismissType = 99;
                customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "Container is null"));
                this.mImpressionListener.onSplashAdDismiss();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        Log.e(com.ad.adapter.a.f1254a, " splash startBiddingRequest ");
        this.f1247t = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    public void startLoadAd(Context context) {
        Log.e(com.ad.adapter.a.f1254a, " splash startLoadAd ");
        try {
            WMSplashAd wMSplashAd = new WMSplashAd((Activity) context, new WMSplashAdRequest(this.f1246s, String.valueOf(0), (Map) null, true), new b());
            this.f1248u = wMSplashAd;
            wMSplashAd.loadAdOnly();
        } catch (Throwable unused) {
        }
    }
}
