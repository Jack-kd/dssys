package com.anythink.network.funlink;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.anythink.network.funlink.FunlinkATFeedAd;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class FunlinkATAdapter extends CustomNativeAdapter {
    public static final String TAG = "FunlinkATAdapter";

    /* renamed from: a, reason: collision with root package name */
    boolean f9550a = false;

    /* renamed from: b, reason: collision with root package name */
    private String f9551b;

    /* renamed from: c, reason: collision with root package name */
    private String f9552c;

    /* renamed from: d, reason: collision with root package name */
    private FunlinkATFeedAd f9553d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9554a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9555b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9556c;

        public a(Context context, Map map, Map map2) {
            this.f9554a = context;
            this.f9555b = map;
            this.f9556c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            FunlinkATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            FunlinkATAdapter.this.a(this.f9554a, this.f9555b, this.f9556c);
        }
    }

    public class b implements FunlinkATFeedAd.AdListener {
        public b() {
        }

        @Override // com.anythink.network.funlink.FunlinkATFeedAd.AdListener
        public void onNativeAdFailToLoad(String str, String str2) {
            FunlinkATAdapter.this.notifyATLoadFail(str, str2);
        }

        @Override // com.anythink.network.funlink.FunlinkATFeedAd.AdListener
        public void onNativeAdLoadSuccess(List<CustomNativeAd> list, Object obj, long j2) {
            if (list == null || list.isEmpty()) {
                FunlinkATAdapter.this.notifyATLoadFail("", "nativeAdDataList is empty");
                return;
            }
            CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) list.toArray(new CustomNativeAd[0]);
            FunlinkATInitManager funlinkATInitManager = FunlinkATInitManager.getInstance();
            FunlinkATAdapter funlinkATAdapter = FunlinkATAdapter.this;
            funlinkATInitManager.handleAdCacheLoadedCallback(funlinkATAdapter.f9550a, obj, j2, funlinkATAdapter.mBiddingListener, ((ATBaseAdInternalAdapter) funlinkATAdapter).mLoadListener, customNativeAdArr);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return FunlinkATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        FunlinkATFeedAd funlinkATFeedAd = this.f9553d;
        if (funlinkATFeedAd != null) {
            try {
                funlinkATFeedAd.destroy();
            } catch (Throwable th) {
                th.getMessage();
            }
            this.f9553d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public ATInitMediation getMediationInitManager() {
        return FunlinkATInitManager.getInstance();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return FunlinkATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9551b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return FunlinkATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9551b = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9552c = ATInitMediation.getStringFromMap(map, "unit_type");
        if (TextUtils.isEmpty(this.f9551b) || context == null) {
            notifyATLoadFail("", "funlink: unit_id or context is empty");
        } else {
            FunlinkATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9550a = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        try {
            Thread.currentThread().getName();
            b bVar = new b();
            if (!this.f9552c.equals("0") && !this.f9552c.equals("1")) {
                notifyATLoadFail("", "funlink not support UnitType:" + this.f9552c);
                return;
            }
            FunlinkATMixNativeAd funlinkATMixNativeAd = new FunlinkATMixNativeAd(this.f9552c, bVar);
            this.f9553d = funlinkATMixNativeAd;
            funlinkATMixNativeAd.loadAd(context, this.f9551b, map, map2);
        } catch (Throwable th) {
            notifyATLoadFail("", "funlink startLoadAd exception:" + th.getMessage());
        }
    }
}
