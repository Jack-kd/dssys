package com.anythink.network.myoffer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.network.adx.AdxATInitManager;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMInterstitialListener;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferInterstitialAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MyOfferATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: b, reason: collision with root package name */
    SDMMyOfferInterstitialAd f10046b;

    /* renamed from: c, reason: collision with root package name */
    String f10047c;

    /* renamed from: a, reason: collision with root package name */
    private String f10045a = "";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f10048d = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10049a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10050b;

        /* renamed from: com.anythink.network.myoffer.MyOfferATInterstitialAdapter$a$a, reason: collision with other inner class name */
        public class C0108a implements SDMInterstitialListener {
            public C0108a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdClick() {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdClose() {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdLoadFail(AdError adError) {
                MyOfferATInterstitialAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdLoaded() {
                if (((ATBaseAdInternalAdapter) MyOfferATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MyOfferATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdShow() {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdShowFail(AdError adError) {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError(adError.getCode(), adError.getMessage());
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdVideoEnd() {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onAdVideoStart() {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMInterstitialListener
            public void onDeeplinkCallback(boolean z2) {
                if (((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener != null) {
                    ((CustomInterstitialAdapter) MyOfferATInterstitialAdapter.this).mImpressListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map) {
            this.f10049a = context;
            this.f10050b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MyOfferATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MyOfferATInterstitialAdapter myOfferATInterstitialAdapter = MyOfferATInterstitialAdapter.this;
            myOfferATInterstitialAdapter.f10046b = new SDMMyOfferInterstitialAd(this.f10049a, myOfferATInterstitialAdapter.f10047c);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f10050b).setCustomEventMap(MyOfferATInterstitialAdapter.this.f10048d).build();
            MyOfferATInterstitialAdapter.this.f10046b.setListener(new C0108a());
            MyOfferATInterstitialAdapter.this.f10046b.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMMyOfferInterstitialAd sDMMyOfferInterstitialAd = this.f10046b;
        if (sDMMyOfferInterstitialAd != null) {
            sDMMyOfferInterstitialAd.destroy();
            this.f10046b = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMMyOfferInterstitialAd sDMMyOfferInterstitialAd = this.f10046b;
        if (sDMMyOfferInterstitialAd != null) {
            return sDMMyOfferInterstitialAd.getExtraInfoMap();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "MyOffer";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10045a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10048d.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMMyOfferInterstitialAd sDMMyOfferInterstitialAd = this.f10046b;
        if (sDMMyOfferInterstitialAd != null) {
            return sDMMyOfferInterstitialAd.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10045a = ATInitMediation.getStringFromMap(map, "my_oid", "");
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f10047c = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            AdxATInitManager.getInstance().initSDK(context, map, new a(context, map));
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        if (isAdReady()) {
            this.f10048d.put("extra_scenario", this.mScenario);
            this.f10046b.show(activity);
        }
    }
}
