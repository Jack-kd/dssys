package com.anythink.network.beizi;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.beizi.fusion.InterstitialAd;
import com.beizi.fusion.InterstitialAdListener;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class BzATInterstitialAdapter extends CustomInterstitialAdapter {
    public static final String TAG = "BzATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    private InterstitialAd f9498a;

    /* renamed from: b, reason: collision with root package name */
    private String f9499b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9500c = false;

    /* renamed from: d, reason: collision with root package name */
    private int f9501d = 1;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, Object> f9502e;

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9503a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9504b;

        public a(Context context, Map map) {
            this.f9503a = context;
            this.f9504b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            BzATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            BzATInterstitialAdapter.this.a(this.f9503a, (Map<String, Object>) this.f9504b);
        }
    }

    public class b implements InterstitialAdListener {
        public b() {
        }

        @Override // com.beizi.fusion.InterstitialAdListener
        public void onAdClick() {
            String str = BzATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.beizi.fusion.InterstitialAdListener
        public void onAdClosed() {
            String str = BzATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
            }
            if (((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
            }
        }

        @Override // com.beizi.fusion.InterstitialAdListener
        public void onAdFailed(int i2) {
            String str = BzATInterstitialAdapter.TAG;
            BzATInterstitialAdapter.this.notifyATLoadFail(String.valueOf(i2), "");
        }

        @Override // com.beizi.fusion.InterstitialAdListener
        public void onAdLoaded() {
            String str = BzATInterstitialAdapter.TAG;
            Objects.toString(BzATInterstitialAdapter.this.f9498a);
            if (BzATInterstitialAdapter.this.f9498a == null) {
                BzATInterstitialAdapter.this.notifyATLoadFail("", "mInterstitialAd is null");
                return;
            }
            BzATInterstitialAdapter.this.f9502e = BzATInitManager.getInstance().a(BzATInterstitialAdapter.this.f9498a.getCustomExtraJsonData(), BzATInterstitialAdapter.this.f9502e);
            BzATInterstitialAdapter bzATInterstitialAdapter = BzATInterstitialAdapter.this;
            if (!bzATInterstitialAdapter.f9500c) {
                if (((ATBaseAdInternalAdapter) bzATInterstitialAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) BzATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (bzATInterstitialAdapter.mBiddingListener != null) {
                BzATInterstitialAdapter.this.f9498a.getECPM();
                int ecpm = BzATInterstitialAdapter.this.f9498a.getECPM();
                if (ecpm <= 0) {
                    BzATInterstitialAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                BzATBiddingNotice bzATBiddingNotice = new BzATBiddingNotice(BzATInterstitialAdapter.this.f9498a);
                BzATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", bzATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.beizi.fusion.InterstitialAdListener
        public void onAdShown() {
            String str = BzATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            }
            if (((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) BzATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return BzATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        InterstitialAd interstitialAd = this.f9498a;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.f9498a = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(4, BzATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9502e;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return BzATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9499b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return BzATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        InterstitialAd interstitialAd = this.f9498a;
        return interstitialAd != null && interstitialAd.isLoaded();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9499b = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9501d = ATInitMediation.getIntFromMap(map, "template_type", 1);
        if (TextUtils.isEmpty(this.f9499b) || context == null) {
            notifyATLoadFail("", "beizi: unit_id or context is empty");
        } else {
            Context applicationContext = context.getApplicationContext();
            BzATInitManager.getInstance().initSDK(applicationContext, map, new a(applicationContext, map));
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f9498a);
            InterstitialAd interstitialAd = this.f9498a;
            if (interstitialAd != null && interstitialAd.isLoaded()) {
                this.f9498a.showAd(activity);
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
        this.f9500c = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Thread.currentThread().getName();
            InterstitialAd interstitialAd = new InterstitialAd(context, this.f9499b, new b(), 10000L, this.f9501d);
            this.f9498a = interstitialAd;
            interstitialAd.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "beizi startLoadAd exception:" + th.getMessage());
        }
    }
}
