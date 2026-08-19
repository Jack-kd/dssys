package com.ad.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ad.adapter.a;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAd;
import com.windmill.sdk.natives.WMNativeAdRequest;
import g.AbstractC1399a;
import g.AbstractC1400b;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class AdNativeExpressAd extends CustomNativeAdapter {

    /* renamed from: r, reason: collision with root package name */
    public String f1222r;

    /* renamed from: s, reason: collision with root package name */
    public String f1223s;

    /* renamed from: u, reason: collision with root package name */
    public WMNativeAd f1225u;

    /* renamed from: v, reason: collision with root package name */
    public CustomNativeAd f1226v;

    /* renamed from: t, reason: collision with root package name */
    public boolean f1224t = false;

    /* renamed from: w, reason: collision with root package name */
    public int f1227w = -1;

    /* renamed from: x, reason: collision with root package name */
    public int f1228x = -2;

    public class a implements a.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1229a;

        public a(Context context) {
            this.f1229a = context;
        }
    }

    public class b implements WMNativeAd.NativeAdLoadListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f1231a;

        public b(Context context) {
            this.f1231a = context;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdNativeExpressAd.this.f1226v != null) {
                AdNativeExpressAd.this.f1226v.destroy();
                AdNativeExpressAd.this.f1226v = null;
            }
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        AbstractC1399a.b(new c());
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return com.ad.adapter.a.a().b();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1223s;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return com.ad.adapter.a.a().c();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            this.f1222r = ATInitMediation.getStringFromMap(map, "app_id");
            this.f1223s = ATInitMediation.getStringFromMap(map, "unit_id");
            try {
                this.f1227w = AbstractC1400b.a(context, ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_WIDTH, -1));
                this.f1228x = AbstractC1400b.a(context, ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_HEIGHT, -2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (!TextUtils.isEmpty(this.f1222r) && !TextUtils.isEmpty(this.f1223s)) {
                com.ad.adapter.a.a().d(context, map, new a(context));
                return;
            }
            notifyATLoadFail("", "TbAd appid or unitId is empty.");
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f1224t = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    public void startLoadAd(Context context) {
        try {
            if (!(context instanceof Activity)) {
                notifyATLoadFail("", "tbAdn  context must be activity.");
                return;
            }
            HashMap map = new HashMap();
            map.put("ad_key_width", Integer.valueOf(this.f1227w));
            map.put("ad_key_height", Integer.valueOf(this.f1228x));
            WMNativeAd wMNativeAd = new WMNativeAd(context, new WMNativeAdRequest(this.f1223s, String.valueOf(0), 1, map));
            this.f1225u = wMNativeAd;
            wMNativeAd.loadAd(new b(context));
        } catch (Throwable unused) {
        }
    }
}
