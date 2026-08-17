package com.anythink.network.adx;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMInterstitialAd;
import com.smartdigimkt.sdk.api.format.SDMInterstitialListener;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AdxATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: a, reason: collision with root package name */
    SDMInterstitialAd f9226a;

    /* renamed from: b, reason: collision with root package name */
    String f9227b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f9228c = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9229a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9230b;

        /* renamed from: com.anythink.network.adx.AdxATInterstitialAdapter$a$a, reason: collision with other inner class name */
        public class C0096a implements SDMInterstitialListener {
            public C0096a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdClick() {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdClose() {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdLoadFail(AdError adError) {
                AdxATInterstitialAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdLoaded() {
                if (((ATBaseAdInternalAdapter) AdxATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) AdxATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdShow() {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdShowFail(AdError adError) {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError(adError.getCode(), adError.getMessage());
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdVideoEnd() {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdVideoStart() {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onDeeplinkCallback(boolean z2) {
                if (((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) AdxATInterstitialAdapter.this).mImpressListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map) {
            this.f9229a = context;
            this.f9230b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            AdxATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            AdxATInterstitialAdapter adxATInterstitialAdapter = AdxATInterstitialAdapter.this;
            adxATInterstitialAdapter.f9226a = new SDMInterstitialAd(this.f9229a, adxATInterstitialAdapter.f9227b);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f9230b).setCustomEventMap(AdxATInterstitialAdapter.this.f9228c).build();
            AdxATInterstitialAdapter.this.f9226a.setListener(new C0096a());
            AdxATInterstitialAdapter.this.f9226a.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMInterstitialAd sDMInterstitialAd = this.f9226a;
        if (sDMInterstitialAd != null) {
            sDMInterstitialAd.destroy();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public Map<String, Object> getAdExtraInfoMap() {
        return this.f9228c;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        AdxATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, false);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMAd sDMAd;
        try {
            SDMInterstitialAd sDMInterstitialAd = this.f9226a;
            if (sDMInterstitialAd == null || (sDMAd = sDMInterstitialAd.getSDMAd()) == null) {
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
        return this.f9227b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9228c.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMInterstitialAd sDMInterstitialAd = this.f9226a;
        if (sDMInterstitialAd != null) {
            return sDMInterstitialAd.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f9227b = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            AdxATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter
    public void notifyWLInfo(int i2, Map<String, Object> map) {
        AdxATInitManager.getInstance().notifyWLInfo(i2, map, this.f9226a);
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        if (this.f9226a != null) {
            this.f9228c.put("extra_scenario", this.mScenario);
            this.f9226a.show(activity);
        } else {
            CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
            if (customInterstitialEventListener != null) {
                customInterstitialEventListener.onInterstitialAdVideoError("-1", "sdmInterstitialAd is empty");
            }
        }
    }
}
