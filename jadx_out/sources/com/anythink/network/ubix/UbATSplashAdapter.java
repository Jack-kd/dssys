package com.anythink.network.ubix;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.manager.UBiXAdManager;
import com.ubix.ssp.open.splash.UBiXSplashAdListener;
import com.ubix.ssp.open.splash.UBiXSplashManager;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: d, reason: collision with root package name */
    private UBiXSplashManager f10522d;

    /* renamed from: a, reason: collision with root package name */
    private final String f10519a = UbATSplashAdapter.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f10520b = "";

    /* renamed from: c, reason: collision with root package name */
    private boolean f10521c = false;

    /* renamed from: e, reason: collision with root package name */
    private int f10523e = 5;

    /* renamed from: f, reason: collision with root package name */
    private boolean f10524f = false;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10525a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10526b;

        public a(Context context, Map map) {
            this.f10525a = context;
            this.f10526b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            UbATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            UbATSplashAdapter.this.a(this.f10525a, (Map<String, Object>) this.f10526b);
        }
    }

    public class b implements UBiXSplashAdListener {
        public b() {
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdClicked() {
            String unused = UbATSplashAdapter.this.f10519a;
            if (((CustomSplashAdapter) UbATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) UbATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdClosed() {
            String unused = UbATSplashAdapter.this.f10519a;
            UbATSplashAdapter.this.a();
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdExposeFailed(AdError adError) {
            if (adError != null) {
                adError.getErrorCode();
            }
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String unused = UbATSplashAdapter.this.f10519a;
            UbATSplashAdapter.this.a(errorMessage);
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdExposed() {
            String unused = UbATSplashAdapter.this.f10519a;
            if (((CustomSplashAdapter) UbATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) UbATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdLoadFailed(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String unused = UbATSplashAdapter.this.f10519a;
            UbATSplashAdapter.this.notifyATLoadFail(String.valueOf(errorCode), errorMessage);
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdLoadSucceed() {
            String unused = UbATSplashAdapter.this.f10519a;
            if (UbATSplashAdapter.this.f10522d == null) {
                UbATSplashAdapter.this.notifyATLoadFail("", "mSplashAd is null");
                return;
            }
            if (!UbATSplashAdapter.this.f10521c) {
                if (((ATBaseAdInternalAdapter) UbATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) UbATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            UbATSplashAdapter ubATSplashAdapter = UbATSplashAdapter.this;
            if (ubATSplashAdapter.mBiddingListener != null) {
                long price = ubATSplashAdapter.f10522d.getPrice();
                String unused2 = UbATSplashAdapter.this.f10519a;
                if (price <= 0) {
                    UbATSplashAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                UbATBiddingNotice ubATBiddingNotice = new UbATBiddingNotice(UbATSplashAdapter.this.f10522d);
                UbATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", ubATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdResponseSucceed() {
            String unused = UbATSplashAdapter.this.f10519a;
        }

        @Override // com.ubix.ssp.open.splash.UBiXSplashAdListener
        public void onAdSkipped() {
            String unused = UbATSplashAdapter.this.f10519a;
            ((ATBaseAdInternalAdapter) UbATSplashAdapter.this).mDismissType = 2;
            UbATSplashAdapter.this.a();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return UbATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        try {
            UBiXSplashManager uBiXSplashManager = this.f10522d;
            if (uBiXSplashManager != null) {
                uBiXSplashManager.destroy();
                this.f10522d = null;
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return UbATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10520b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return UbATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        UBiXSplashManager uBiXSplashManager = this.f10522d;
        return uBiXSplashManager != null && uBiXSplashManager.isValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10520b = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10523e = ATInitMediation.getIntFromMap(map, "skip_time", 5);
        if (TextUtils.isEmpty(this.f10520b) || context == null) {
            notifyATLoadFail("", "ubix: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            UbATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map2));
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        try {
            UBiXSplashManager uBiXSplashManager = this.f10522d;
            if (uBiXSplashManager == null || !uBiXSplashManager.isValid()) {
                a("mSplashAd is null or is not ready");
            } else {
                this.f10522d.showAd(viewGroup);
            }
        } catch (Throwable th) {
            a(th.getMessage());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10521c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            UBiXSplashManager uBiXSplashManagerCreateSpreadAd = UBiXAdManager.createSpreadAd();
            this.f10522d = uBiXSplashManagerCreateSpreadAd;
            int i2 = this.mFetchAdTimeout;
            if (i2 > 0) {
                uBiXSplashManagerCreateSpreadAd.setMaxTimeout(i2);
            }
            this.f10522d.setExtraInfo(UbATConst.toExtraMap(map));
            this.f10522d.loadSplashAd(context, this.f10520b, new b());
            if (this.f10523e < 3) {
                this.f10523e = 3;
            }
            if (this.f10523e > 10) {
                this.f10523e = 10;
            }
            this.f10522d.setSkipTime(this.f10523e * 1000);
            this.f10522d.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "ubix startLoadAd exception:" + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.mDismissType = 99;
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", str));
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f10524f) {
            return;
        }
        this.f10524f = true;
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdDismiss();
        }
    }
}
