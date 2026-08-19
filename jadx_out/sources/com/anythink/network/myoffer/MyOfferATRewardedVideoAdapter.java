package com.anythink.network.myoffer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.network.adx.AdxATInitManager;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMRewardVideoListener;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferRewardedVideoAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MyOfferATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: b, reason: collision with root package name */
    SDMMyOfferRewardedVideoAd f10058b;

    /* renamed from: c, reason: collision with root package name */
    String f10059c;

    /* renamed from: a, reason: collision with root package name */
    private String f10057a = "";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f10060d = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10061a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10062b;

        /* renamed from: com.anythink.network.myoffer.MyOfferATRewardedVideoAdapter$a$a, reason: collision with other inner class name */
        public class C0109a implements SDMRewardVideoListener {
            public C0109a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdClick() {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdClose() {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdLoadFail(AdError adError) {
                MyOfferATRewardedVideoAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdLoaded() {
                if (((ATBaseAdInternalAdapter) MyOfferATRewardedVideoAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MyOfferATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdPlayEnd() {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdPlayFailed(AdError adError) {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed(adError.getCode(), adError.getMessage());
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdPlayStart() {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onAdReward() {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onReward();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMRewardVideoListener
            public void onDeeplinkCallback(boolean z2) {
                if (((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener != null) {
                    ((CustomRewardVideoAdapter) MyOfferATRewardedVideoAdapter.this).mImpressionListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map) {
            this.f10061a = context;
            this.f10062b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MyOfferATRewardedVideoAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MyOfferATRewardedVideoAdapter myOfferATRewardedVideoAdapter = MyOfferATRewardedVideoAdapter.this;
            myOfferATRewardedVideoAdapter.f10058b = new SDMMyOfferRewardedVideoAd(this.f10061a, myOfferATRewardedVideoAdapter.f10059c);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f10062b).setCustomEventMap(MyOfferATRewardedVideoAdapter.this.f10060d).build();
            MyOfferATRewardedVideoAdapter.this.f10058b.setListener(new C0109a());
            MyOfferATRewardedVideoAdapter.this.f10058b.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMMyOfferRewardedVideoAd sDMMyOfferRewardedVideoAd = this.f10058b;
        if (sDMMyOfferRewardedVideoAd != null) {
            sDMMyOfferRewardedVideoAd.destroy();
            this.f10058b = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMMyOfferRewardedVideoAd sDMMyOfferRewardedVideoAd = this.f10058b;
        if (sDMMyOfferRewardedVideoAd != null) {
            return sDMMyOfferRewardedVideoAd.getExtraInfoMap();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "MyOffer";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10057a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10060d.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMMyOfferRewardedVideoAd sDMMyOfferRewardedVideoAd = this.f10058b;
        if (sDMMyOfferRewardedVideoAd != null) {
            return sDMMyOfferRewardedVideoAd.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10057a = ATInitMediation.getStringFromMap(map, "my_oid", "");
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f10059c = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            AdxATInitManager.getInstance().initSDK(context, map, new a(context, map));
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        if (this.f10058b != null) {
            this.f10060d.put("extra_scenario", this.mScenario);
            this.f10058b.show(activity);
        } else {
            CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
            if (customRewardedVideoEventListener != null) {
                customRewardedVideoEventListener.onRewardedVideoAdPlayFailed("-1", "sdmRewardedVideoAd is empty");
            }
        }
    }
}
