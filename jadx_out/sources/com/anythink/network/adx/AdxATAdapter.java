package com.anythink.network.adx;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMNative;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeLoadListener;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AdxATAdapter extends CustomNativeAdapter {

    /* renamed from: a, reason: collision with root package name */
    SDMNative f9192a;

    /* renamed from: b, reason: collision with root package name */
    String f9193b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f9194c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    AdxATNativeAd f9195d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f9196a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f9197b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f9198c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f9199d;

        /* renamed from: com.anythink.network.adx.AdxATAdapter$a$a, reason: collision with other inner class name */
        public class C0094a implements SDMNativeLoadListener {
            public C0094a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMNativeLoadListener
            public void onAdLoadFail(AdError adError) {
                AdxATAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMNativeLoadListener
            public void onAdLoaded(SDMNativeAd sDMNativeAd) {
                if (sDMNativeAd == null) {
                    AdxATAdapter.this.notifyATLoadFail("", "return empty");
                    return;
                }
                a aVar = a.this;
                AdxATNativeAd adxATNativeAd = new AdxATNativeAd(aVar.f9199d, sDMNativeAd, AdxATAdapter.this);
                if (sDMNativeAd.getSDMAd() != null) {
                    adxATNativeAd.setNetworkInfoMap(sDMNativeAd.getSDMAd().getExtraInfo());
                }
                adxATNativeAd.setAdObject(AdxATAdapter.this.f9194c);
                if (((ATBaseAdInternalAdapter) AdxATAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) AdxATAdapter.this).mLoadListener.onAdCacheLoaded(adxATNativeAd);
                } else {
                    AdxATAdapter.this.f9195d = adxATNativeAd;
                }
            }
        }

        public a(Map map, Context context, Map map2, Context context2) {
            this.f9196a = map;
            this.f9197b = context;
            this.f9198c = map2;
            this.f9199d = context2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            AdxATAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            String stringFromMap;
            int i2;
            Map map = this.f9196a;
            int i3 = 0;
            if (map != null) {
                int intFromMap = ATInitMediation.getIntFromMap(map, ATAdConst.KEY.AD_WIDTH, 0);
                int intFromMap2 = ATInitMediation.getIntFromMap(this.f9196a, ATAdConst.KEY.AD_HEIGHT, 0);
                stringFromMap = ATInitMediation.getStringFromMap(this.f9196a, AdxATConst.NATIVE_VIDEO_AUTO_PLAY, "1");
                i3 = intFromMap;
                i2 = intFromMap2;
            } else {
                stringFromMap = "";
                i2 = 0;
            }
            AdxATAdapter adxATAdapter = AdxATAdapter.this;
            adxATAdapter.f9192a = new SDMNative(this.f9197b, adxATAdapter.f9193b);
            SDMAdRequest.Builder customEventMap = new SDMAdRequest.Builder().setExtraMap(this.f9198c).setCustomEventMap(AdxATAdapter.this.f9194c);
            if (!TextUtils.isEmpty(stringFromMap)) {
                customEventMap.setNativeVideoAutoPlay(stringFromMap);
            }
            if (i3 > 0) {
                customEventMap.setAdWidth(i3);
            }
            if (i2 > 0) {
                customEventMap.setAdHeight(i2);
            }
            AdxATAdapter.this.f9192a.setListener(new C0094a());
            AdxATAdapter.this.f9192a.load(customEventMap.build());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMNative sDMNative = this.f9192a;
        if (sDMNative != null) {
            sDMNative.destroy();
            this.f9192a = null;
        }
        if (this.f9195d != null) {
            this.f9195d = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public Map<String, Object> getAdExtraInfoMap() {
        return this.f9194c;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public BaseAd getBaseAdObject(Context context) {
        AdxATNativeAd adxATNativeAd = this.f9195d;
        if (adxATNativeAd == null || !adxATNativeAd.isValid()) {
            return null;
        }
        return this.f9195d;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        AdxATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, false);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return AdxATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9193b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9194c.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        Context applicationContext = context.getApplicationContext();
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f9193b = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            Context applicationContext2 = context.getApplicationContext();
            AdxATInitManager.getInstance().initSDK(applicationContext2, map, new a(map2, applicationContext2, map, applicationContext));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter
    public void notifyWLInfo(int i2, Map<String, Object> map) {
        SDMNative sDMNative = this.f9192a;
        AdxATInitManager.getInstance().notifyWLInfo(i2, map, sDMNative != null ? sDMNative.getNativeAd() : null);
    }
}
