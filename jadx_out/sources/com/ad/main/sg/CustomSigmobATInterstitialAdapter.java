package com.ad.main.sg;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAd;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener;
import com.sigmob.windad.newInterstitial.WindNewInterstitialAdRequest;
import j.C1582a;
import java.util.Map;

/* loaded from: classes.dex */
public class CustomSigmobATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: r, reason: collision with root package name */
    public WindNewInterstitialAdRequest f1281r;

    /* renamed from: s, reason: collision with root package name */
    public WindNewInterstitialAd f1282s;

    /* renamed from: t, reason: collision with root package name */
    public String f1283t = "";

    /* renamed from: u, reason: collision with root package name */
    public volatile boolean f1284u = false;

    /* renamed from: v, reason: collision with root package name */
    public String f1285v = "";

    /* renamed from: w, reason: collision with root package name */
    public ATBiddingListener f1286w;

    public class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f1287b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f1288c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ Context f1289d;

        public a(String str, String str2, Context context) {
            this.f1287b = str;
            this.f1288c = str2;
            this.f1289d = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                WindAds windAdsSharedAds = WindAds.sharedAds();
                boolean zIsInit = windAdsSharedAds.isInit();
                if (!zIsInit) {
                    zIsInit = windAdsSharedAds.startWithOptions(this.f1289d, new WindAdOptions(this.f1287b, this.f1288c));
                }
                if (zIsInit) {
                    CustomSigmobATInterstitialAdapter.p(CustomSigmobATInterstitialAdapter.this);
                } else {
                    CustomSigmobATInterstitialAdapter.this.onAdLoadError("", "Sigmob SDK init failed.");
                }
            } catch (Throwable th) {
                CustomSigmobATInterstitialAdapter.this.onAdLoadError("", th.getMessage());
            }
        }
    }

    public class b implements WindNewInterstitialAdListener {
        public b() {
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public final void onInterstitialAdClicked(String str) {
            if (!TextUtils.equals(str, CustomSigmobATInterstitialAdapter.this.f1285v) || ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public final void onInterstitialAdClosed(String str) {
            if (!TextUtils.equals(str, CustomSigmobATInterstitialAdapter.this.f1285v) || ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdClose();
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public final void onInterstitialAdLoadError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(str, CustomSigmobATInterstitialAdapter.this.f1285v) || windAdError == null) {
                return;
            }
            CustomSigmobATInterstitialAdapter.this.onAdLoadError(String.valueOf(windAdError.getErrorCode()), windAdError.toString());
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public final void onInterstitialAdLoadSuccess(String str) throws NumberFormatException {
            if (TextUtils.equals(str, CustomSigmobATInterstitialAdapter.this.f1285v)) {
                if (!CustomSigmobATInterstitialAdapter.this.f1284u || CustomSigmobATInterstitialAdapter.this.f1282s == null) {
                    if (((ATBaseAdInternalAdapter) CustomSigmobATInterstitialAdapter.this).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) CustomSigmobATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        return;
                    }
                    return;
                }
                String ecpm = CustomSigmobATInterstitialAdapter.this.f1282s.getEcpm();
                double d2 = 0.0d;
                try {
                    if (TextUtils.isEmpty(ecpm)) {
                        CustomSigmobATInterstitialAdapter.this.onAdLoadError("", "ecpm is null");
                    } else {
                        d2 = Double.parseDouble(ecpm);
                    }
                } catch (Exception unused) {
                    CustomSigmobATInterstitialAdapter.this.onAdLoadError("", "ecpm is null");
                }
                CustomSigmobATInterstitialAdapter.this.f1286w.onC2SBiddingResultWithCache(ATBiddingResult.success(d2, "" + System.currentTimeMillis(), new C1582a(CustomSigmobATInterstitialAdapter.this.f1282s), ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public final void onInterstitialAdPreLoadFail(String str) {
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public final void onInterstitialAdPreLoadSuccess(String str) {
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdShow(String str) {
            if (!TextUtils.equals(CustomSigmobATInterstitialAdapter.this.f1285v, CustomSigmobATInterstitialAdapter.this.f1285v) || ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
        }

        @Override // com.sigmob.windad.newInterstitial.WindNewInterstitialAdListener
        public void onInterstitialAdShowError(WindAdError windAdError, String str) {
            if (!TextUtils.equals(CustomSigmobATInterstitialAdapter.this.f1285v, CustomSigmobATInterstitialAdapter.this.f1285v) || ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener == null) {
                return;
            }
            CustomInterstitialEventListener customInterstitialEventListener = ((CustomInterstitialAdapter) CustomSigmobATInterstitialAdapter.this).mImpressListener;
            StringBuilder sb = new StringBuilder();
            sb.append(windAdError.getErrorCode());
            customInterstitialEventListener.onInterstitialAdVideoError(sb.toString(), windAdError.toString());
        }
    }

    public static synchronized void p(CustomSigmobATInterstitialAdapter customSigmobATInterstitialAdapter) {
        customSigmobATInterstitialAdapter.q();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f1281r = null;
        WindNewInterstitialAd windNewInterstitialAd = this.f1282s;
        if (windNewInterstitialAd != null) {
            windNewInterstitialAd.destroy();
            this.f1282s = null;
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        Log.e(getNetworkName(), "not support");
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return "Sigmob-Custom";
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f1285v;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return WindAds.getVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WindNewInterstitialAd windNewInterstitialAd = this.f1282s;
        if (windNewInterstitialAd != null) {
            return windNewInterstitialAd.isReady();
        }
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
        this.f1285v = ATInitMediation.getStringFromMap(map, "placement_id");
        this.f1283t = ATInitMediation.getStringFromMap(map, "payload");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f1285v)) {
            onAdLoadError("", "app_id、app_key、placement_id could not be null.");
        } else {
            postOnMainThread(new a(stringFromMap, stringFromMap2, context));
        }
    }

    public void onAdLoadError(String str, String str2) {
        if (this.f1284u) {
            ATBiddingListener aTBiddingListener = this.f1286w;
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str2), null);
                return;
            }
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }

    public final void q() {
        WindNewInterstitialAd windNewInterstitialAd;
        this.f1281r = new WindNewInterstitialAdRequest(this.f1285v, "", null);
        WindNewInterstitialAd windNewInterstitialAd2 = new WindNewInterstitialAd(this.f1281r);
        this.f1282s = windNewInterstitialAd2;
        windNewInterstitialAd2.setWindNewInterstitialAdListener(new b());
        if (this.f1284u && (windNewInterstitialAd = this.f1282s) != null) {
            windNewInterstitialAd.setCurrency("CNY");
            this.f1282s.loadAd();
        } else if (TextUtils.isEmpty(this.f1283t)) {
            this.f1282s.loadAd();
        } else {
            this.f1282s.loadAd(this.f1283t);
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        int i2;
        try {
            if (isAdReady()) {
                if (this.f1284u) {
                    try {
                        i2 = Integer.parseInt(this.f1282s.getEcpm());
                    } catch (Throwable th) {
                        th.printStackTrace();
                        i2 = 0;
                    }
                    this.f1282s.setBidEcpm(i2);
                }
                this.f1282s.show(null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f1286w = aTBiddingListener;
        this.f1284u = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
