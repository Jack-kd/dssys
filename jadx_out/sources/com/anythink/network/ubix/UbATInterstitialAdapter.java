package com.anythink.network.ubix;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener;
import com.ubix.ssp.open.interstitial.UBiXInterstitialManager;
import com.ubix.ssp.open.manager.UBiXAdManager;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATInterstitialAdapter extends CustomInterstitialAdapter {
    public static final String TAG = "UbATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10490a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f10491b = false;

    /* renamed from: c, reason: collision with root package name */
    private UBiXInterstitialManager f10492c;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10493a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10494b;

        public a(Context context, Map map) {
            this.f10493a = context;
            this.f10494b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            UbATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            UbATInterstitialAdapter.this.a(this.f10493a, this.f10494b);
        }
    }

    public class b implements UBiXInterstitialAdListener {
        public b() {
        }

        @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener
        public void onAdClicked() {
            String str = UbATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener
        public void onAdClosed() {
            String str = UbATInterstitialAdapter.TAG;
            if (UbATInterstitialAdapter.this.f10492c != null && UbATInterstitialAdapter.this.f10492c.isVideoAd() && ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
            }
            if (((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
            }
        }

        @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener
        public void onAdExposeFailed(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String str = UbATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError(String.valueOf(errorCode), errorMessage);
            }
        }

        @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener
        public void onAdExposed() {
            String str = UbATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                if (UbATInterstitialAdapter.this.f10492c == null || !UbATInterstitialAdapter.this.f10492c.isVideoAd()) {
                    return;
                }
                ((CustomInterstitialAdapter) UbATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
        }

        @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener
        public void onAdLoadFailed(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String str = UbATInterstitialAdapter.TAG;
            UbATInterstitialAdapter.this.notifyATLoadFail(String.valueOf(errorCode), errorMessage);
        }

        @Override // com.ubix.ssp.open.interstitial.UBiXInterstitialAdListener
        public void onAdLoadSucceed() {
            String str = UbATInterstitialAdapter.TAG;
            if (UbATInterstitialAdapter.this.f10492c == null) {
                UbATInterstitialAdapter.this.notifyATLoadFail("", "mInterstitialAd is null");
                return;
            }
            if (!UbATInterstitialAdapter.this.f10491b) {
                if (((ATBaseAdInternalAdapter) UbATInterstitialAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) UbATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            UbATInterstitialAdapter ubATInterstitialAdapter = UbATInterstitialAdapter.this;
            if (ubATInterstitialAdapter.mBiddingListener != null) {
                long price = ubATInterstitialAdapter.f10492c.getPrice();
                if (price <= 0) {
                    UbATInterstitialAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                UbATBiddingNotice ubATBiddingNotice = new UbATBiddingNotice(UbATInterstitialAdapter.this.f10492c);
                UbATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", ubATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return UbATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        UBiXInterstitialManager uBiXInterstitialManager = this.f10492c;
        if (uBiXInterstitialManager != null) {
            try {
                uBiXInterstitialManager.destroy();
            } catch (Throwable unused) {
            }
            this.f10492c = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return UbATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10490a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return UbATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        UBiXInterstitialManager uBiXInterstitialManager = this.f10492c;
        return uBiXInterstitialManager != null && uBiXInterstitialManager.isValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10490a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "ubix: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            UbATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map2));
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        try {
            UBiXInterstitialManager uBiXInterstitialManager = this.f10492c;
            if (uBiXInterstitialManager != null && uBiXInterstitialManager.isValid()) {
                this.f10492c.showAd(activity);
                return;
            }
            CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
            if (customInterstitialEventListener != null) {
                customInterstitialEventListener.onInterstitialAdVideoError("", "mInterstitialAd is null or is not ready");
            }
        } catch (Throwable th) {
            CustomInterstitialEventListener customInterstitialEventListener2 = this.mImpressListener;
            if (customInterstitialEventListener2 != null) {
                customInterstitialEventListener2.onInterstitialAdVideoError("", "mInterstitialAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10491b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            UBiXInterstitialManager uBiXInterstitialManagerCreateInterstitialAd = UBiXAdManager.createInterstitialAd();
            this.f10492c = uBiXInterstitialManagerCreateInterstitialAd;
            uBiXInterstitialManagerCreateInterstitialAd.setExtraInfo(UbATConst.toExtraMap(map));
            this.f10492c.loadInterstitialAd(context, this.f10490a, new b());
            this.f10492c.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "ubix startLoadAd exception:" + th.getMessage());
        }
    }
}
