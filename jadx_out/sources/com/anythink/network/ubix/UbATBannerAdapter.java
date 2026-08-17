package com.anythink.network.ubix;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdSize;
import com.ubix.ssp.open.banner.UBiXBannerAdListener;
import com.ubix.ssp.open.banner.UBiXBannerManager;
import com.ubix.ssp.open.manager.UBiXAdManager;
import java.util.Map;

/* loaded from: classes2.dex */
public class UbATBannerAdapter extends CustomBannerAdapter {
    public static final String TAG = "UbATBannerAdapter";

    /* renamed from: e, reason: collision with root package name */
    private static final int f10465e = 320;

    /* renamed from: a, reason: collision with root package name */
    private String f10466a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f10467b = false;

    /* renamed from: c, reason: collision with root package name */
    private UBiXBannerManager f10468c;

    /* renamed from: d, reason: collision with root package name */
    private View f10469d;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10470a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10471b;

        public a(Context context, Map map) {
            this.f10470a = context;
            this.f10471b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            UbATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            UbATBannerAdapter.this.a(this.f10470a, (Map<String, Object>) this.f10471b);
        }
    }

    public class b implements UBiXBannerAdListener {
        public b() {
        }

        @Override // com.ubix.ssp.open.banner.UBiXBannerAdListener
        public void onAdClicked() {
            String str = UbATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = UbATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClicked();
            }
        }

        @Override // com.ubix.ssp.open.banner.UBiXBannerAdListener
        public void onAdClosed() {
            String str = UbATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = UbATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClose();
            }
        }

        @Override // com.ubix.ssp.open.banner.UBiXBannerAdListener
        public void onAdExposeFailed(AdError adError) {
            String str = UbATBannerAdapter.TAG;
        }

        @Override // com.ubix.ssp.open.banner.UBiXBannerAdListener
        public void onAdExposed() {
            String str = UbATBannerAdapter.TAG;
            CustomBannerEventListener customBannerEventListener = UbATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdShow();
            }
        }

        @Override // com.ubix.ssp.open.banner.UBiXBannerAdListener
        public void onAdLoadFailed(AdError adError) {
            int errorCode = adError != null ? adError.getErrorCode() : -1;
            String errorMessage = adError != null ? adError.getErrorMessage() : "unknown";
            String str = UbATBannerAdapter.TAG;
            UbATBannerAdapter.this.notifyATLoadFail(String.valueOf(errorCode), errorMessage);
        }

        @Override // com.ubix.ssp.open.banner.UBiXBannerAdListener
        public void onAdLoadSucceed() {
            String str = UbATBannerAdapter.TAG;
            if (UbATBannerAdapter.this.f10468c == null) {
                UbATBannerAdapter.this.notifyATLoadFail("", "mBannerAd is null");
                return;
            }
            UbATBannerAdapter ubATBannerAdapter = UbATBannerAdapter.this;
            ubATBannerAdapter.f10469d = ubATBannerAdapter.f10468c.getBannerView();
            if (UbATBannerAdapter.this.f10469d == null) {
                UbATBannerAdapter.this.notifyATLoadFail("", "mBannerView is null");
                return;
            }
            if (!UbATBannerAdapter.this.f10467b) {
                if (((ATBaseAdInternalAdapter) UbATBannerAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) UbATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            UbATBannerAdapter ubATBannerAdapter2 = UbATBannerAdapter.this;
            if (ubATBannerAdapter2.mBiddingListener != null) {
                long price = ubATBannerAdapter2.f10468c.getPrice();
                if (price <= 0) {
                    UbATBannerAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                    return;
                }
                UbATBiddingNotice ubATBiddingNotice = new UbATBiddingNotice(UbATBannerAdapter.this.f10468c);
                UbATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", ubATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return UbATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        UBiXBannerManager uBiXBannerManager = this.f10468c;
        if (uBiXBannerManager != null) {
            try {
                uBiXBannerManager.destroy();
            } catch (Throwable unused) {
            }
            this.f10468c = null;
        }
        this.f10469d = null;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f10469d;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return UbATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10466a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return UbATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        UBiXBannerManager uBiXBannerManager = this.f10468c;
        return (uBiXBannerManager == null || !uBiXBannerManager.isValid() || this.f10469d == null) ? false : true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10466a = stringFromMap;
        if (TextUtils.isEmpty(stringFromMap) || context == null) {
            notifyATLoadFail("", "ubix: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            UbATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map2));
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10467b = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    private static int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        int iA = 320;
        int iA2 = -2;
        if (map != null) {
            try {
                try {
                    if (map.containsKey(ATAdConst.KEY.AD_WIDTH)) {
                        iA = a(context, Integer.parseInt(map.get(ATAdConst.KEY.AD_WIDTH).toString()));
                    }
                } catch (Throwable th) {
                    notifyATLoadFail("", "ubix startLoadAd exception:" + th.getMessage());
                    return;
                }
            } catch (Exception unused) {
            }
        }
        if (map != null && map.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
            iA2 = a(context, Integer.parseInt(map.get(ATAdConst.KEY.AD_HEIGHT).toString()));
        }
        AdSize adSize = new AdSize(iA, iA2);
        Thread.currentThread().getName();
        UBiXBannerManager uBiXBannerManagerCreateBannerAd = UBiXAdManager.createBannerAd();
        this.f10468c = uBiXBannerManagerCreateBannerAd;
        uBiXBannerManagerCreateBannerAd.loadBannerAd(context, this.f10466a, adSize, new b());
        this.f10468c.loadAd();
    }
}
