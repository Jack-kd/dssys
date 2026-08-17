package com.anythink.network.sigmob;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAd;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAdRequest;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SigmobATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: g, reason: collision with root package name */
    private static final String f10198g = "SigmobATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    private WindNewInterstitialAdRequest f10199a;

    /* renamed from: b, reason: collision with root package name */
    private String f10200b = "";

    /* renamed from: c, reason: collision with root package name */
    private WindNewInterstitialAd f10201c;

    /* renamed from: d, reason: collision with root package name */
    private double f10202d;

    /* renamed from: e, reason: collision with root package name */
    String f10203e;

    /* renamed from: f, reason: collision with root package name */
    private volatile boolean f10204f;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10205a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10206b;

        /* renamed from: com.anythink.network.sigmob.SigmobATInterstitialAdapter$a$a, reason: collision with other inner class name */
        public class C0112a implements MediationInitCallback {
            public C0112a() {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                SigmobATInterstitialAdapter.this.a("", str);
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                SigmobATInterstitialAdapter.this.a();
            }
        }

        public a(Context context, Map map) {
            this.f10205a = context;
            this.f10206b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                SigmobATInitManager.getInstance().initSDK(this.f10205a, this.f10206b, new C0112a());
            } catch (Throwable th) {
                SigmobATInterstitialAdapter.this.a("", th.getMessage());
            }
        }
    }

    public class b implements WindNewInterstitialAdListener {
        public b() {
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdClicked(String str) {
            if (!TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b) || ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdClosed(String str) {
            if (!TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b) || ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdLoadError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b) || windAdError == null) {
                return;
            }
            SigmobATInterstitialAdapter.this.a(String.valueOf(windAdError.getErrorCode()), windAdError.toString());
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdLoadSuccess(String str) {
            if (TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b)) {
                if (!SigmobATInterstitialAdapter.this.f10204f || SigmobATInterstitialAdapter.this.f10201c == null) {
                    if (((ATBaseAdInternalAdapter) SigmobATInterstitialAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) SigmobATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    }
                } else {
                    String ecpm = SigmobATInterstitialAdapter.this.f10201c.getEcpm();
                    String currency = SigmobATInterstitialAdapter.this.f10201c.getCurrency();
                    String str2 = SigmobATInterstitialAdapter.this.f10200b;
                    SigmobATInterstitialAdapter sigmobATInterstitialAdapter = SigmobATInterstitialAdapter.this;
                    SigmobATInitManager.onC2SBiddingResultWithCache(ecpm, currency, str2, sigmobATInterstitialAdapter.mBiddingListener, sigmobATInterstitialAdapter.f10201c, null);
                }
            }
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdPreLoadFail(String str) {
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdPreLoadSuccess(String str) {
            if (TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b)) {
                if (!SigmobATInterstitialAdapter.this.f10204f || SigmobATInterstitialAdapter.this.f10201c == null) {
                    if (((ATBaseAdInternalAdapter) SigmobATInterstitialAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) SigmobATInterstitialAdapter.this).mLoadListener.onAdDataLoaded();
                    }
                } else {
                    String ecpm = SigmobATInterstitialAdapter.this.f10201c.getEcpm();
                    String currency = SigmobATInterstitialAdapter.this.f10201c.getCurrency();
                    String str2 = SigmobATInterstitialAdapter.this.f10200b;
                    SigmobATInterstitialAdapter sigmobATInterstitialAdapter = SigmobATInterstitialAdapter.this;
                    SigmobATInitManager.onC2SBiddingResultWithData(ecpm, currency, str2, sigmobATInterstitialAdapter.mBiddingListener, sigmobATInterstitialAdapter.f10201c, null);
                }
            }
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdShow(String str) {
            if (!TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b) || ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdShowError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(str, SigmobATInterstitialAdapter.this.f10200b) || ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) SigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError("" + windAdError.getErrorCode(), windAdError.toString());
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return SigmobATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f10199a = null;
        WindNewInterstitialAd windNewInterstitialAd = this.f10201c;
        if (windNewInterstitialAd != null) {
            windNewInterstitialAd.destroy();
            this.f10201c = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) throws SecurityException {
        this.f10200b = ATInitMediation.getStringFromMap(map, "placement_id");
        SigmobATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return SigmobATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10200b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return SigmobATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WindNewInterstitialAd windNewInterstitialAd = this.f10201c;
        if (windNewInterstitialAd != null) {
            return windNewInterstitialAd.isReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
        this.f10200b = ATInitMediation.getStringFromMap(map, "placement_id");
        this.f10203e = ATInitMediation.getStringFromMap(map, "payload");
        this.f10202d = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2) || TextUtils.isEmpty(this.f10200b)) {
            a("", "app_id、app_key、placement_id could not be null.");
        } else {
            postOnMainThread(new a(context, map));
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        try {
            if (isAdReady()) {
                if (this.f10204f) {
                    WindNewInterstitialAd windNewInterstitialAd = this.f10201c;
                    windNewInterstitialAd.setBidEcpm(SigmobATInitManager.getEcpmInt(windNewInterstitialAd));
                }
                this.f10201c.show(new HashMap<>(1));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f10204f = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        WindNewInterstitialAd windNewInterstitialAd;
        SigmobATInitManager.getInstance().setShakeStatus();
        this.f10199a = new WindNewInterstitialAdRequest(this.f10200b, "", null);
        WindNewInterstitialAd windNewInterstitialAd2 = new WindNewInterstitialAd(this.f10199a);
        this.f10201c = windNewInterstitialAd2;
        windNewInterstitialAd2.setWindNewInterstitialAdListener(new b());
        if (this.f10204f && (windNewInterstitialAd = this.f10201c) != null) {
            windNewInterstitialAd.setCurrency("USD");
            double d2 = this.f10202d;
            if (d2 > 0.0d) {
                this.f10201c.setBidFloor(((int) d2) * 100);
            }
            this.f10201c.loadAd();
            return;
        }
        if (!TextUtils.isEmpty(this.f10203e)) {
            this.f10201c.loadAd(this.f10203e);
        } else {
            this.f10201c.loadAd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        SigmobATInitManager.onAdLoadError(str, str2, this.f10204f, this.mBiddingListener, this.mLoadListener);
    }
}
