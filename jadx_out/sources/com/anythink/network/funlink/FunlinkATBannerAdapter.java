package com.anythink.network.funlink;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKUtils;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.fl.saas.adx.api.FLBanner;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.interfaces.AdViewBannerListener;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class FunlinkATBannerAdapter extends CustomBannerAdapter {
    public static final String TAG = "FunlinkATBannerAdapter";

    /* renamed from: a, reason: collision with root package name */
    boolean f9559a = false;

    /* renamed from: b, reason: collision with root package name */
    private String f9560b;

    /* renamed from: c, reason: collision with root package name */
    private FLBanner f9561c;

    /* renamed from: d, reason: collision with root package name */
    private View f9562d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9563a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9564b;

        public a(Context context, Map map) {
            this.f9563a = context;
            this.f9564b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            FunlinkATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            FunlinkATBannerAdapter.this.a(this.f9563a, (Map<String, Object>) this.f9564b);
        }
    }

    public class b implements AdViewBannerListener {
        public b() {
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
        public void onAdClick(String str) {
            String str2 = FunlinkATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = FunlinkATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClicked();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
        public void onAdExposure() {
            String str = FunlinkATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = FunlinkATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdShow();
            }
        }

        @Override // com.fl.saas.adx.base.interfaces.AdViewListener
        public void onAdFailed(FLError fLError) {
            String strValueOf = fLError != null ? String.valueOf(fLError.getCode()) : "";
            String msg = fLError != null ? fLError.getMsg() : "unknown error";
            String str = FunlinkATBannerAdapter.TAG;
            FunlinkATBannerAdapter.this.notifyATLoadFail(strValueOf, msg);
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
        public void onClosed() {
            String str = FunlinkATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = FunlinkATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClose();
            }
        }

        @Override // com.fl.saas.adx.base.base.listener.InnerBannerListener
        public void onReceived(View view) {
            String str = FunlinkATBannerAdapter.TAG;
            Objects.toString(view);
            if (view == null || FunlinkATBannerAdapter.this.f9561c == null) {
                FunlinkATBannerAdapter.this.notifyATLoadFail("", "bannerView is null");
                return;
            }
            FunlinkATBannerAdapter.this.f9562d = view;
            FunlinkATInitManager funlinkATInitManager = FunlinkATInitManager.getInstance();
            FunlinkATBannerAdapter funlinkATBannerAdapter = FunlinkATBannerAdapter.this;
            boolean z2 = funlinkATBannerAdapter.f9559a;
            FLBanner fLBanner = funlinkATBannerAdapter.f9561c;
            long ecpm = FunlinkATBannerAdapter.this.f9561c.getECPM();
            FunlinkATBannerAdapter funlinkATBannerAdapter2 = FunlinkATBannerAdapter.this;
            funlinkATInitManager.handleAdCacheLoadedCallback(z2, fLBanner, ecpm, funlinkATBannerAdapter2.mBiddingListener, ((ATBaseAdInternalAdapter) funlinkATBannerAdapter2).mLoadListener, new BaseAd[0]);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return FunlinkATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        FLBanner fLBanner = this.f9561c;
        if (fLBanner != null) {
            fLBanner.destroy();
            this.f9561c = null;
        }
        this.f9562d = null;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f9562d;
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
        return this.f9560b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return FunlinkATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        return (this.f9561c == null || this.f9562d == null) ? false : true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9560b = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "funlink: unit_id or context is empty");
        } else {
            FunlinkATInitManager.getInstance().initSDK(context, map, new a(context, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9559a = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            int i2 = context.getResources().getDisplayMetrics().widthPixels;
            int i3 = -1;
            if (map != null) {
                try {
                    if (map.containsKey(ATAdConst.KEY.AD_WIDTH)) {
                        i2 = Integer.parseInt(map.get(ATAdConst.KEY.AD_WIDTH).toString());
                    }
                } catch (Exception unused) {
                }
            }
            if (map != null && map.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                i3 = Integer.parseInt(map.get(ATAdConst.KEY.AD_HEIGHT).toString());
            }
            Thread.currentThread().getName();
            FLBanner fLBannerBuild = new FLBanner.Builder(context).setKey(this.f9560b).setExpressWidth(ATSDKUtils.px2dip(context, i2)).setExpressHeight(ATSDKUtils.px2dip(context, i3 > 0 ? i3 : (int) (i2 / 6.4d))).setBannerListener(new b()).build();
            this.f9561c = fLBannerBuild;
            fLBannerBuild.requestBanner();
        } catch (Throwable th) {
            notifyATLoadFail("", "funlink startLoadAd exception:" + th.getMessage());
        }
    }
}
