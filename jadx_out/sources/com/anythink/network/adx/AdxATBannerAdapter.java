package com.anythink.network.adx;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMBannerListener;
import com.smartdigimkt.sdk.api.format.SDMBannerView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AdxATBannerAdapter extends CustomBannerAdapter {

    /* renamed from: a, reason: collision with root package name */
    SDMBannerView f9202a;

    /* renamed from: b, reason: collision with root package name */
    String f9203b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f9204c = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9205a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9206b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9207c;

        /* renamed from: com.anythink.network.adx.AdxATBannerAdapter$a$a, reason: collision with other inner class name */
        public class C0095a implements SDMBannerListener {
            public C0095a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdClick() {
                CustomBannerEventListener customBannerEventListener = AdxATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdClose() {
                CustomBannerEventListener customBannerEventListener = AdxATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdClose();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdLoadFail(AdError adError) {
                AdxATBannerAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdLoaded() {
                if (((ATBaseAdInternalAdapter) AdxATBannerAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) AdxATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onAdShow() {
                CustomBannerEventListener customBannerEventListener = AdxATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onBannerAdShow();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMBannerListener
            public void onDeeplinkCallback(boolean z2) {
                CustomBannerEventListener customBannerEventListener = AdxATBannerAdapter.this.mImpressionEventListener;
                if (customBannerEventListener != null) {
                    customBannerEventListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map, Map map2) {
            this.f9205a = context;
            this.f9206b = map;
            this.f9207c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            AdxATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            AdxATBannerAdapter.this.f9202a = new SDMBannerView(this.f9205a);
            AdxATBannerAdapter adxATBannerAdapter = AdxATBannerAdapter.this;
            adxATBannerAdapter.f9202a.setPlacementId(adxATBannerAdapter.f9203b);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f9206b).setCustomEventMap(AdxATBannerAdapter.this.f9204c).setAdWidth(ATInitMediation.getIntFromMap(this.f9207c, ATAdConst.KEY.AD_WIDTH, 0)).setAdHeight(ATInitMediation.getIntFromMap(this.f9207c, ATAdConst.KEY.AD_HEIGHT, 0)).setBannerRefresh(false).build();
            AdxATBannerAdapter.this.f9202a.setListener(new C0095a());
            AdxATBannerAdapter.this.f9202a.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMBannerView sDMBannerView = this.f9202a;
        if (sDMBannerView != null) {
            sDMBannerView.destroy();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public Map<String, Object> getAdExtraInfoMap() {
        return this.f9204c;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f9202a;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        AdxATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, false);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMAd sDMAd;
        try {
            SDMBannerView sDMBannerView = this.f9202a;
            if (sDMBannerView == null || (sDMAd = sDMBannerView.getSDMAd()) == null) {
                return null;
            }
            return sDMAd.getExtraInfo();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return AdxATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9203b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9204c.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMBannerView sDMBannerView = this.f9202a;
        if (sDMBannerView != null) {
            return sDMBannerView.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f9203b = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            AdxATInitManager.getInstance().initSDK(context, map, new a(context.getApplicationContext(), map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter
    public void notifyWLInfo(int i2, Map<String, Object> map) {
        AdxATInitManager.getInstance().notifyWLInfo(i2, map, this.f9202a);
    }
}
