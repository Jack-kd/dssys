package com.anythink.network.meishu;

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
import com.meishu.sdk.core.ad.MsAdSlot;
import com.meishu.sdk.core.ad.interstitial.InterstitialAd;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdEventListener;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.loader.InteractionListener;
import com.meishu.sdk.core.utils.AdErrorInfo;
import com.meishu.sdk.core.utils.ResultBean;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class MsATInterstitialAdapter extends CustomInterstitialAdapter {
    public static final String TAG = "MsATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    private InterstitialAdLoader f9979a;

    /* renamed from: b, reason: collision with root package name */
    private InterstitialAd f9980b;

    /* renamed from: c, reason: collision with root package name */
    private String f9981c;

    /* renamed from: d, reason: collision with root package name */
    boolean f9982d = false;

    /* renamed from: e, reason: collision with root package name */
    private String f9983e = "0";

    /* renamed from: f, reason: collision with root package name */
    private String f9984f = "0";

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f9985a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f9986b;

        public a(Context context, Map map) {
            this.f9985a = context;
            this.f9986b = map;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            MsATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            MsATInterstitialAdapter.this.a(this.f9985a, (Map<String, Object>) this.f9986b);
        }
    }

    public class b implements InterstitialAdEventListener {
        public b() {
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdError(AdErrorInfo adErrorInfo) {
            String str = MsATInterstitialAdapter.TAG;
            Objects.toString(adErrorInfo);
            MsATInterstitialAdapter.this.notifyATLoadFail(String.valueOf(adErrorInfo.getCode()), adErrorInfo.getMessage());
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdReady(InterstitialAd interstitialAd) {
            ResultBean data;
            String str = MsATInterstitialAdapter.TAG;
            Objects.toString(interstitialAd);
            if (interstitialAd == null) {
                MsATInterstitialAdapter.this.notifyATLoadFail("", "ms: onAdReady rewardVideoAd is empty");
                return;
            }
            MsATInterstitialAdapter.this.f9980b = interstitialAd;
            MsATInterstitialAdapter msATInterstitialAdapter = MsATInterstitialAdapter.this;
            if (!msATInterstitialAdapter.f9982d) {
                if (((ATBaseAdInternalAdapter) msATInterstitialAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) MsATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (msATInterstitialAdapter.mBiddingListener != null) {
                try {
                    data = msATInterstitialAdapter.f9980b.getData();
                } catch (Exception unused) {
                }
                double d2 = data != null ? Double.parseDouble(data.getEcpm()) : 0.0d;
                String str2 = MsATInterstitialAdapter.TAG;
                if (d2 <= 0.0d) {
                    MsATInterstitialAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + d2));
                    return;
                }
                MsATBiddingNotice msATBiddingNotice = new MsATBiddingNotice(MsATInterstitialAdapter.this.f9980b);
                MsATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, System.currentTimeMillis() + "", msATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    public class c implements InteractionListener {
        public c() {
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClicked() {
            String str = MsATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdClosed() {
            String str = MsATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
            }
        }

        @Override // com.meishu.sdk.core.loader.InteractionListener
        public void onAdExposure() {
            String str = MsATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
            if (((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) MsATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return MsATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        InterstitialAdLoader interstitialAdLoader = this.f9979a;
        if (interstitialAdLoader != null) {
            interstitialAdLoader.destroy();
            this.f9979a = null;
        }
        InterstitialAd interstitialAd = this.f9980b;
        if (interstitialAd != null) {
            interstitialAd.setInteractionListener(null);
            this.f9980b = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(4, MsATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return MsATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f9981c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return MsATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        InterstitialAd interstitialAd = this.f9980b;
        return interstitialAd != null && interstitialAd.isAdValid();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f9981c = ATInitMediation.getStringFromMap(map, "unit_id");
        this.f9983e = ATInitMediation.getStringFromMap(map, "unit_type", "0");
        this.f9984f = ATInitMediation.getStringFromMap(map, "click_close", "0");
        if (TextUtils.isEmpty(this.f9981c) || context == null) {
            notifyATLoadFail("", "ms: unit_id or context is empty");
        } else if (this.f9982d) {
            MsATInitManager.getInstance().initSDK(context, map, new a(context, map));
        } else {
            notifyATLoadFail("", "ms request must be bidding");
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        try {
            Objects.toString(this.f9980b);
            InterstitialAd interstitialAd = this.f9980b;
            if (interstitialAd != null && interstitialAd.isAdValid()) {
                this.f9980b.setInteractionListener(new c());
                this.f9980b.showAd(activity);
            } else {
                CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
                if (customInterstitialEventListener != null) {
                    customInterstitialEventListener.onInterstitialAdVideoError("", "interstitialAd is null or is not ready");
                }
            }
        } catch (Throwable th) {
            CustomInterstitialEventListener customInterstitialEventListener2 = this.mImpressListener;
            if (customInterstitialEventListener2 != null) {
                customInterstitialEventListener2.onInterstitialAdVideoError("", "interstitialAd show exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9982d = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map) {
        try {
            Activity activity = context instanceof Activity ? (Activity) context : null;
            if (activity == null) {
                notifyATLoadFail("", "context is not activity");
                return;
            }
            Thread.currentThread().getName();
            if (!this.f9983e.equals("0")) {
                notifyATLoadFail("", "this version only support InterstitialAd");
                return;
            }
            InterstitialAdLoader interstitialAdLoader = new InterstitialAdLoader(activity, new MsAdSlot.Builder().setPid(this.f9981c).setIsClickToClose(this.f9984f.equals("1")).setChannel(MsATInitManager.CHANNEL).build(), new b());
            this.f9979a = interstitialAdLoader;
            interstitialAdLoader.loadAd();
        } catch (Throwable th) {
            notifyATLoadFail("", "ms startLoadAd exception:" + th.getMessage());
        }
    }
}
