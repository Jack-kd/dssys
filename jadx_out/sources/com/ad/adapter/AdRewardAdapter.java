package com.ad.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ad.adapter.a;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.windmill.sdk.reward.WMRewardAd;
import com.windmill.sdk.reward.WMRewardAdListener;
import com.windmill.sdk.reward.WMRewardAdRequest;
import g.AbstractC1399a;
import g.AbstractC1400b;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class AdRewardAdapter extends CustomRewardVideoAdapter {

    /* renamed from: r, reason: collision with root package name */
    public String f1234r;

    /* renamed from: s, reason: collision with root package name */
    public String f1235s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1236t = false;

    /* renamed from: u, reason: collision with root package name */
    public WMRewardAd f1237u;

    public class a implements a.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1238a;

        public a(Context context) {
            this.f1238a = context;
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Context f1240b;

        public class a implements WMRewardAdListener {
            public a() {
            }
        }

        public b(Context context) {
            this.f1240b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            HashMap map = new HashMap();
            AdRewardAdapter.this.f1237u = new WMRewardAd((Activity) this.f1240b, new WMRewardAdRequest(AdRewardAdapter.this.f1235s, String.valueOf(0), map));
            AdRewardAdapter.this.f1237u.setRewardedAdListener(new a());
            AdRewardAdapter.this.f1237u.loadAd();
        }
    }

    public class c implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Activity f1243b;

        public c(Activity activity) {
            this.f1243b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdRewardAdapter.this.f1237u == null || !AdRewardAdapter.this.f1237u.isReady()) {
                return;
            }
            AdRewardAdapter.this.f1237u.show(this.f1243b, (HashMap) null);
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f1237u.destroy();
        this.f1237u = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return com.ad.adapter.a.a().b();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1235s;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return com.ad.adapter.a.a().c();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WMRewardAd wMRewardAd = this.f1237u;
        if (wMRewardAd != null) {
            return wMRewardAd.isReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f1234r = ATInitMediation.getStringFromMap(map, "app_id");
            this.f1235s = ATInitMediation.getStringFromMap(map, "unit_id");
            if (!TextUtils.isEmpty(this.f1234r) && !TextUtils.isEmpty(this.f1235s)) {
                context.getApplicationContext();
                com.ad.adapter.a.a().d(context, map, new a(context));
                return;
            }
            notifyATLoadFail("", "TbAd appid or unitId is empty.");
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        AbstractC1400b.b(new c(activity));
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f1236t = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    public void startLoadAd(Context context) {
        try {
            if (context instanceof Activity) {
                AbstractC1399a.a(new b(context));
            } else {
                notifyATLoadFail("", "tbAdn reward context must be activity.");
            }
        } catch (Throwable unused) {
        }
    }
}
