package com.anythink.network.sigmob;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.sigmob.windad.Splash.WindSplashAD;
import com.sigmob.windad.Splash.WindSplashADListener;
import com.sigmob.windad.Splash.WindSplashAdRequest;
import com.sigmob.windad.WindAdError;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class SigmobATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: h, reason: collision with root package name */
    private static final String f10235h = "SigmobATSplashAdapter";

    /* renamed from: a, reason: collision with root package name */
    private String f10236a = "";

    /* renamed from: b, reason: collision with root package name */
    private WindSplashAD f10237b;

    /* renamed from: c, reason: collision with root package name */
    private WindSplashAdRequest f10238c;

    /* renamed from: d, reason: collision with root package name */
    private WindSplashADListener f10239d;

    /* renamed from: e, reason: collision with root package name */
    private String f10240e;

    /* renamed from: f, reason: collision with root package name */
    private double f10241f;

    /* renamed from: g, reason: collision with root package name */
    private volatile boolean f10242g;

    public class a implements MediationInitCallback {
        public a() {
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            SigmobATSplashAdapter.this.a("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            SigmobATSplashAdapter.this.a();
        }
    }

    public class b implements Runnable {

        public class a implements WindSplashADListener {
            public a() {
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdClick(String str) {
                if (!TextUtils.equals(str, SigmobATSplashAdapter.this.f10236a) || ((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener == null) {
                    return;
                }
                ((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdClose(String str) {
                if (TextUtils.equals(str, SigmobATSplashAdapter.this.f10236a)) {
                    ((ATBaseAdInternalAdapter) SigmobATSplashAdapter.this).mDismissType = 3;
                    if (((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener != null) {
                        ((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                    }
                }
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdLoadFail(WindAdError windAdError, String str) {
                if (!TextUtils.equals(str, SigmobATSplashAdapter.this.f10236a) || windAdError == null) {
                    return;
                }
                SigmobATSplashAdapter.this.a(String.valueOf(windAdError.getErrorCode()), windAdError.getMessage());
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdLoadSuccess(String str) {
                if (TextUtils.equals(str, SigmobATSplashAdapter.this.f10236a)) {
                    if (!SigmobATSplashAdapter.this.f10242g || SigmobATSplashAdapter.this.f10237b == null) {
                        if (((ATBaseAdInternalAdapter) SigmobATSplashAdapter.this).mLoadListener != null) {
                            ((ATBaseAdInternalAdapter) SigmobATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                    } else {
                        String ecpm = SigmobATSplashAdapter.this.f10237b.getEcpm();
                        String currency = SigmobATSplashAdapter.this.f10237b.getCurrency();
                        String str2 = SigmobATSplashAdapter.this.f10236a;
                        SigmobATSplashAdapter sigmobATSplashAdapter = SigmobATSplashAdapter.this;
                        SigmobATInitManager.onC2SBiddingResultWithCache(ecpm, currency, str2, sigmobATSplashAdapter.mBiddingListener, sigmobATSplashAdapter.f10237b, null);
                    }
                }
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdShow(String str) {
                if (!TextUtils.equals(str, SigmobATSplashAdapter.this.f10236a) || ((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener == null) {
                    return;
                }
                ((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdShowError(WindAdError windAdError, String str) {
            }

            @Override // com.sigmob.windad.Splash.WindSplashADListener
            public void onSplashAdSkip(String str) {
                if (TextUtils.equals(str, SigmobATSplashAdapter.this.f10236a)) {
                    ((ATBaseAdInternalAdapter) SigmobATSplashAdapter.this).mDismissType = 2;
                    if (((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener != null) {
                        ((CustomSplashAdapter) SigmobATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
                    }
                }
            }
        }

        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SigmobATInitManager.getInstance().setShakeStatus();
            SigmobATSplashAdapter sigmobATSplashAdapter = SigmobATSplashAdapter.this;
            sigmobATSplashAdapter.f10238c = new WindSplashAdRequest(sigmobATSplashAdapter.f10236a, "", null);
            SigmobATSplashAdapter.this.f10238c.setFetchDelay(((ATBaseAdInternalAdapter) SigmobATSplashAdapter.this).mFetchAdTimeout / 1000);
            SigmobATSplashAdapter.this.f10238c.setDisableAutoHideAd(true);
            SigmobATSplashAdapter.this.f10239d = new a();
            SigmobATSplashAdapter.this.f10237b = new WindSplashAD(SigmobATSplashAdapter.this.f10238c, SigmobATSplashAdapter.this.f10239d);
            if (SigmobATSplashAdapter.this.f10242g) {
                SigmobATSplashAdapter.this.f10237b.setCurrency("USD");
                if (SigmobATSplashAdapter.this.f10241f > 0.0d) {
                    SigmobATSplashAdapter.this.f10237b.setBidFloor(((int) SigmobATSplashAdapter.this.f10241f) * 100);
                }
                SigmobATSplashAdapter.this.f10237b.loadAd();
                return;
            }
            if (TextUtils.isEmpty(SigmobATSplashAdapter.this.f10240e)) {
                SigmobATSplashAdapter.this.f10237b.loadAd();
            } else {
                SigmobATSplashAdapter.this.f10237b.loadAd(SigmobATSplashAdapter.this.f10240e);
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return SigmobATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f10237b = null;
        this.f10238c = null;
        this.f10239d = null;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) throws SecurityException {
        this.f10236a = ATInitMediation.getStringFromMap(map, "placement_id");
        SigmobATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, SigmobATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return SigmobATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10236a;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return SigmobATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        WindSplashAD windSplashAD = this.f10237b;
        return windSplashAD != null && windSplashAD.isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) throws SecurityException {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY);
        this.f10236a = ATInitMediation.getStringFromMap(map, "placement_id");
        this.f10240e = ATInitMediation.getStringFromMap(map, "payload");
        this.f10241f = ATInitMediation.getDoubleFromMap(map, "bid_floor");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2) || TextUtils.isEmpty(this.f10236a)) {
            a("", "app_id、app_key、placement_id could not be null.");
        } else {
            SigmobATInitManager.getInstance().initSDK(context, map, new a());
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        if (this.f10237b != null && isAdReady()) {
            if (this.f10242g) {
                WindSplashAD windSplashAD = this.f10237b;
                windSplashAD.setBidEcpm(SigmobATInitManager.getEcpmInt(windSplashAD));
            }
            this.f10237b.show(viewGroup);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) throws SecurityException {
        this.f10242g = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        postOnMainThread(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        SigmobATInitManager.onAdLoadError(str, str2, this.f10242g, this.mBiddingListener, this.mLoadListener);
    }
}
