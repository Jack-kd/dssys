package com.anythink.network.octopus;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.anythink.network.octopus.ZyATInterstitial;
import com.octopus.ad.FullScreenVideoAd;
import com.octopus.ad.IBidding;
import com.octopus.ad.InterstitialAd;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class ZyATInterstitialAdapter extends CustomInterstitialAdapter implements ZyATInterstitial.AdListener {
    public static final String TAG = "ZyATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    private ZyATInterstitial f10125a;

    /* renamed from: b, reason: collision with root package name */
    private String f10126b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10127c = false;

    /* renamed from: d, reason: collision with root package name */
    private String f10128d = "0";

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10129a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10130b;

        public a(Context context, Map map) {
            this.f10129a = context;
            this.f10130b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            ZyATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            ZyATInterstitialAdapter.this.a(this.f10129a, this.f10130b);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return ZyATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        ZyATInterstitial zyATInterstitial = this.f10125a;
        if (zyATInterstitial != null) {
            zyATInterstitial.destroy();
            this.f10125a = null;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return ZyATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10126b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return ZyATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        ZyATInterstitial zyATInterstitial = this.f10125a;
        return zyATInterstitial != null && zyATInterstitial.isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10126b = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f10128d = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        if (TextUtils.isEmpty(this.f10126b) || context == null) {
            notifyATLoadFail("", "octopus: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            ZyATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdCacheLoaded(boolean z2) {
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdClicked() {
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdClicked();
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdClosed() {
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdVideoEnd();
        }
        CustomInterstitialEventListener customInterstitialEventListener2 = this.mImpressListener;
        if (customInterstitialEventListener2 != null) {
            customInterstitialEventListener2.onInterstitialAdClose();
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdFailedToLoad(String str, String str2) {
        notifyATLoadFail(str, str2);
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdFailedToPLay(String str, String str2) {
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdVideoError(str, str2);
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdLoaded(IBidding iBidding) {
        Objects.toString(iBidding);
        if (iBidding == null) {
            notifyATLoadFail("", "object is null");
            return;
        }
        int price = 0;
        if (!this.f10127c) {
            ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
                return;
            }
            return;
        }
        if (this.mBiddingListener != null) {
            if (iBidding instanceof FullScreenVideoAd) {
                price = ((FullScreenVideoAd) iBidding).getPrice();
            } else if (iBidding instanceof InterstitialAd) {
                price = ((InterstitialAd) iBidding).getPrice();
            }
            if (price <= 0) {
                this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + price));
                return;
            }
            ZyATBiddingNotice zyATBiddingNotice = new ZyATBiddingNotice(iBidding);
            this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(price, System.currentTimeMillis() + "", zyATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
        }
    }

    @Override // com.anythink.network.octopus.ZyATInterstitial.AdListener
    public void onAdShown() {
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdShow();
        }
        CustomInterstitialEventListener customInterstitialEventListener2 = this.mImpressListener;
        if (customInterstitialEventListener2 != null) {
            customInterstitialEventListener2.onInterstitialAdVideoStart();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f10125a);
            ZyATInterstitial zyATInterstitial = this.f10125a;
            if (zyATInterstitial != null && zyATInterstitial.isReady()) {
                this.f10125a.showAd(activity);
                return;
            }
            CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
            if (customInterstitialEventListener != null) {
                customInterstitialEventListener.onInterstitialAdVideoError("", "zyATInterstitialAd is null or is not ready");
            }
        } catch (Throwable th) {
            CustomInterstitialEventListener customInterstitialEventListener2 = this.mImpressListener;
            if (customInterstitialEventListener2 != null) {
                customInterstitialEventListener2.onInterstitialAdVideoError("", "zyATInterstitialAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10127c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            if (this.f10128d.equals("0")) {
                this.f10125a = new ZyATInterstitialAd(this);
            } else {
                if (!this.f10128d.equals("1")) {
                    notifyATLoadFail("", "this version not support this mUnitType:" + this.f10128d);
                    return;
                }
                this.f10125a = new ZyATFullScreenVideoAd(this);
            }
            this.f10125a.loadAd(context, this.f10126b, map);
        } catch (Throwable th) {
            notifyATLoadFail("", "octopus startLoadAd exception:" + th.getMessage());
        }
    }
}
