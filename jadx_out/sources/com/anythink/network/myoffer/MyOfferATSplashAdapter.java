package com.anythink.network.myoffer;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.network.adx.AdxATInitManager;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMSplashAdExtraInfo;
import com.smartdigimkt.sdk.api.format.SDMSplashListener;
import com.smartdigimkt.sdk.api.format.myoffer.SDMMyOfferSplashAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class MyOfferATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: b, reason: collision with root package name */
    SDMMyOfferSplashAd f10066b;

    /* renamed from: c, reason: collision with root package name */
    String f10067c;

    /* renamed from: a, reason: collision with root package name */
    private String f10065a = "";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Object> f10068d = new HashMap();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10069a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10070b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10071c;

        /* renamed from: com.anythink.network.myoffer.MyOfferATSplashAdapter$a$a, reason: collision with other inner class name */
        public class C0110a implements SDMSplashListener {
            public C0110a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdClick() {
                if (((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdClose(SDMSplashAdExtraInfo sDMSplashAdExtraInfo) {
                if (sDMSplashAdExtraInfo != null) {
                    ((ATBaseAdInternalAdapter) MyOfferATSplashAdapter.this).mDismissType = sDMSplashAdExtraInfo.getDismissType();
                }
                if (((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdLoadFail(AdError adError) {
                MyOfferATSplashAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdLoadTimeout() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdLoaded(boolean z2) {
                if (((ATBaseAdInternalAdapter) MyOfferATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MyOfferATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdShow() {
                if (((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener.onSplashAdShow();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdShowFail(AdError adError) {
                if (((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, adError.getCode(), adError.getMessage()));
                    ((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onDeeplinkCallback(boolean z2) {
                if (((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) MyOfferATSplashAdapter.this).mImpressionListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Context context, Map map, Map map2) {
            this.f10069a = context;
            this.f10070b = map;
            this.f10071c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MyOfferATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MyOfferATSplashAdapter myOfferATSplashAdapter = MyOfferATSplashAdapter.this;
            myOfferATSplashAdapter.f10066b = new SDMMyOfferSplashAd(this.f10069a, myOfferATSplashAdapter.f10067c, ((ATBaseAdInternalAdapter) myOfferATSplashAdapter).mFetchAdTimeout);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f10070b).setCustomEventMap(MyOfferATSplashAdapter.this.f10068d).setAdWidth(ATInitMediation.getIntFromMap(this.f10071c, ATAdConst.KEY.AD_WIDTH, 0)).setAdHeight(ATInitMediation.getIntFromMap(this.f10071c, ATAdConst.KEY.AD_HEIGHT, 0)).build();
            MyOfferATSplashAdapter.this.f10066b.setListener(new C0110a());
            MyOfferATSplashAdapter.this.f10066b.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMMyOfferSplashAd sDMMyOfferSplashAd = this.f10066b;
        if (sDMMyOfferSplashAd != null) {
            sDMMyOfferSplashAd.destroy();
            this.f10066b = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMMyOfferSplashAd sDMMyOfferSplashAd = this.f10066b;
        if (sDMMyOfferSplashAd != null) {
            return sDMMyOfferSplashAd.getExtraInfoMap();
        }
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "MyOffer";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10065a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMMyOfferSplashAd sDMMyOfferSplashAd = this.f10066b;
        if (sDMMyOfferSplashAd != null) {
            return sDMMyOfferSplashAd.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public boolean isSupportCustomSkipView() {
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10065a = ATInitMediation.getStringFromMap(map, "my_oid", "");
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f10067c = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            AdxATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        if (this.f10066b != null) {
            if (isCustomSkipView()) {
                this.f10068d.put(SDMAdConst.EXTRA_PARAMS.SHOW_HIDE_SPLASH_SKIP_VIEW, Boolean.TRUE);
            }
            this.f10066b.show(viewGroup);
        }
    }
}
