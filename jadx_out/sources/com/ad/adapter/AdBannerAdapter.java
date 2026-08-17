package com.ad.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.ad.adapter.a;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.windmill.sdk.banner.WMBannerAdListener;
import com.windmill.sdk.banner.WMBannerAdRequest;
import com.windmill.sdk.banner.WMBannerView;
import java.util.Map;

/* loaded from: classes.dex */
public class AdBannerAdapter extends CustomBannerAdapter {

    /* renamed from: r, reason: collision with root package name */
    public String f1206r;

    /* renamed from: s, reason: collision with root package name */
    public String f1207s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1208t = false;

    /* renamed from: u, reason: collision with root package name */
    public WMBannerView f1209u;

    public class a implements a.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1210a;

        public a(Context context) {
            this.f1210a = context;
        }
    }

    public class b implements WMBannerAdListener {
        public b() {
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        WMBannerView wMBannerView = this.f1209u;
        if (wMBannerView != null) {
            wMBannerView.destroy();
            this.f1209u = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f1209u;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return com.ad.adapter.a.a().b();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1207s;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return com.ad.adapter.a.a().c();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f1206r = ATInitMediation.getStringFromMap(map, "app_id");
            this.f1207s = ATInitMediation.getStringFromMap(map, "unit_id");
            if (!TextUtils.isEmpty(this.f1206r) && !TextUtils.isEmpty(this.f1207s)) {
                context.getApplicationContext();
                com.ad.adapter.a.a().d(context, map, new a(context));
                return;
            }
            notifyATLoadFail("", "TbAd appid or unitId is empty.");
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f1208t = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    public void startLoadAd(Context context) {
        try {
            if (!(context instanceof Activity)) {
                notifyATLoadFail("", "  context must be activity.");
                return;
            }
            this.f1209u = new WMBannerView((Activity) context);
            WMBannerAdRequest wMBannerAdRequest = new WMBannerAdRequest(this.f1207s, String.valueOf(0), (Map) null);
            this.f1209u.setAdListener(new b());
            this.f1209u.loadAd(wMBannerAdRequest);
        } catch (Throwable unused) {
        }
    }
}
