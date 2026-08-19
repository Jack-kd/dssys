package com.ad.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ad.adapter.a;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.windmill.sdk.interstitial.WMInterstitialAd;
import com.windmill.sdk.interstitial.WMInterstitialAdListener;
import com.windmill.sdk.interstitial.WMInterstitialAdRequest;
import g.AbstractC1400b;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class AdInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: r, reason: collision with root package name */
    public String f1213r;

    /* renamed from: s, reason: collision with root package name */
    public String f1214s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1215t = false;

    /* renamed from: u, reason: collision with root package name */
    public WMInterstitialAd f1216u;

    public class a implements a.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1217a;

        public a(Context context) {
            this.f1217a = context;
        }
    }

    public class b implements WMInterstitialAdListener {
        public b() {
        }
    }

    public class c implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Activity f1220b;

        public c(Activity activity) {
            this.f1220b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdInterstitialAdapter.this.f1216u == null || !AdInterstitialAdapter.this.f1216u.isReady()) {
                return;
            }
            AdInterstitialAdapter.this.f1216u.show(this.f1220b, (HashMap) null);
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f1216u.destroy();
        this.f1216u = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return com.ad.adapter.a.a().b();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1214s;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return com.ad.adapter.a.a().c();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WMInterstitialAd wMInterstitialAd = this.f1216u;
        if (wMInterstitialAd != null) {
            return wMInterstitialAd.isReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f1213r = ATInitMediation.getStringFromMap(map, "app_id");
            this.f1214s = ATInitMediation.getStringFromMap(map, "unit_id");
            if (!TextUtils.isEmpty(this.f1213r) && !TextUtils.isEmpty(this.f1214s)) {
                context.getApplicationContext();
                com.ad.adapter.a.a().d(context, map, new a(context));
                return;
            }
            notifyATLoadFail("", "TbAd appid or unitId is empty.");
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        AbstractC1400b.b(new c(activity));
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f1215t = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    public void startLoadAd(Context context) {
        try {
            if (!(context instanceof Activity)) {
                notifyATLoadFail("", "tbAdn interstitial context must be activity.");
                return;
            }
            WMInterstitialAd wMInterstitialAd = new WMInterstitialAd((Activity) context, new WMInterstitialAdRequest(this.f1214s, String.valueOf(0), new HashMap()));
            this.f1216u = wMInterstitialAd;
            wMInterstitialAd.setInterstitialAdListener(new b());
            this.f1216u.loadAd();
        } catch (Throwable unused) {
        }
    }
}
