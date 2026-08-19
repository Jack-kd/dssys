package com.anythink.network.adx;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMAd;
import com.smartdigimkt.sdk.api.format.SDMSplashAd;
import com.smartdigimkt.sdk.api.format.SDMSplashAdExtraInfo;
import com.smartdigimkt.sdk.api.format.SDMSplashListener;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class AdxATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: a, reason: collision with root package name */
    SDMSplashAd f9257a;

    /* renamed from: b, reason: collision with root package name */
    String f9258b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Object> f9259c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private Context f9260d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f9261a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9262b;

        /* renamed from: com.anythink.network.adx.AdxATSplashAdapter$a$a, reason: collision with other inner class name */
        public class C0098a implements SDMSplashListener {
            public C0098a() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdClick() {
                if (((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdClose(SDMSplashAdExtraInfo sDMSplashAdExtraInfo) {
                if (sDMSplashAdExtraInfo != null) {
                    ((ATBaseAdInternalAdapter) AdxATSplashAdapter.this).mDismissType = sDMSplashAdExtraInfo.getDismissType();
                }
                if (((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdLoadFail(AdError adError) {
                AdxATSplashAdapter.this.notifyATLoadFail(adError.getCode(), adError.getMessage());
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdLoadTimeout() {
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdLoaded(boolean z2) {
                if (((ATBaseAdInternalAdapter) AdxATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) AdxATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdShow() {
                if (((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener.onSplashAdShow();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onAdShowFail(AdError adError) {
                if (((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, adError.getCode(), adError.getMessage()));
                    ((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                }
            }

            @Override // com.smartdigimkt.sdk.api.format.SDMSplashListener
            public void onDeeplinkCallback(boolean z2) {
                if (((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener != null) {
                    ((CustomSplashAdapter) AdxATSplashAdapter.this).mImpressionListener.onDeeplinkCallback(z2);
                }
            }
        }

        public a(Map map, Map map2) {
            this.f9261a = map;
            this.f9262b = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            AdxATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            AdxATSplashAdapter adxATSplashAdapter = AdxATSplashAdapter.this;
            adxATSplashAdapter.f9257a = new SDMSplashAd(adxATSplashAdapter.f9260d, AdxATSplashAdapter.this.f9258b, ((ATBaseAdInternalAdapter) r3).mFetchAdTimeout);
            SDMAdRequest sDMAdRequestBuild = new SDMAdRequest.Builder().setExtraMap(this.f9261a).setCustomEventMap(AdxATSplashAdapter.this.f9259c).setAdWidth(ATInitMediation.getIntFromMap(this.f9262b, ATAdConst.KEY.AD_WIDTH, 0)).setAdHeight(ATInitMediation.getIntFromMap(this.f9262b, ATAdConst.KEY.AD_HEIGHT, 0)).build();
            AdxATSplashAdapter.this.f9257a.setListener(new C0098a());
            AdxATSplashAdapter.this.f9257a.load(sDMAdRequestBuild);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return AdxATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        SDMSplashAd sDMSplashAd = this.f9257a;
        if (sDMSplashAd != null) {
            sDMSplashAd.destroy();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter
    public Map<String, Object> getAdExtraInfoMap() {
        return this.f9259c;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        AdxATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, false);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        SDMAd sDMAd;
        try {
            SDMSplashAd sDMSplashAd = this.f9257a;
            if (sDMSplashAd == null || (sDMAd = sDMSplashAd.getSDMAd()) == null) {
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
        return this.f9258b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdxATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9259c.put(SDMAdConst.EXTRA_PARAMS.E_L_PARAMS, 1);
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        SDMSplashAd sDMSplashAd = this.f9257a;
        if (sDMSplashAd != null) {
            return sDMSplashAd.isAdReady();
        }
        return false;
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public boolean isSupportCustomSkipView() {
        SDMSplashAd sDMSplashAd = this.f9257a;
        return sDMSplashAd != null && sDMSplashAd.isSupportCustomSkipView();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADX_PLACEMENT_ID);
        this.f9258b = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap)) {
            notifyATLoadFail("", "placement id is empty");
        } else {
            this.f9260d = context.getApplicationContext();
            AdxATInitManager.getInstance().initSDK(this.f9260d, map, new a(map, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter
    public void notifyWLInfo(int i2, Map<String, Object> map) {
        AdxATInitManager.getInstance().notifyWLInfo(i2, map, this.f9257a);
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        if (this.f9257a != null) {
            if (isCustomSkipView()) {
                this.f9259c.put(SDMAdConst.EXTRA_PARAMS.SHOW_HIDE_SPLASH_SKIP_VIEW, Boolean.TRUE);
            }
            this.f9257a.show(viewGroup);
        }
    }
}
