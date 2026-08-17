package com.anythink.network.ks;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsSplashScreenAd;
import com.kwad.sdk.api.model.SplashAdExtraData;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATSplashAdapter extends CustomSplashAdapter {

    /* renamed from: b, reason: collision with root package name */
    long f9910b;

    /* renamed from: c, reason: collision with root package name */
    KsSplashScreenAd f9911c;

    /* renamed from: e, reason: collision with root package name */
    View f9913e;

    /* renamed from: f, reason: collision with root package name */
    boolean f9914f;

    /* renamed from: g, reason: collision with root package name */
    Context f9915g;

    /* renamed from: h, reason: collision with root package name */
    String f9916h;

    /* renamed from: i, reason: collision with root package name */
    double f9917i;

    /* renamed from: k, reason: collision with root package name */
    private Map<String, Object> f9919k;

    /* renamed from: a, reason: collision with root package name */
    private final String f9909a = getClass().getSimpleName();

    /* renamed from: d, reason: collision with root package name */
    private boolean f9912d = false;

    /* renamed from: j, reason: collision with root package name */
    boolean f9918j = false;

    public class a implements MediationInitCallback {
        public a() {
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            KSATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            KSATSplashAdapter.this.b();
        }
    }

    public class b implements KsLoadManager.SplashScreenAdListener {
        public b() {
        }

        @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
        public void onError(int i2, String str) {
            KSATSplashAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
        public void onRequestResult(int i2) {
            if (((ATBaseAdInternalAdapter) KSATSplashAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) KSATSplashAdapter.this).mLoadListener.onAdDataLoaded();
            }
        }

        @Override // com.kwad.sdk.api.KsLoadManager.SplashScreenAdListener
        public void onSplashScreenAdLoad(KsSplashScreenAd ksSplashScreenAd) {
            double ecpm;
            KSATSplashAdapter.this.f9911c = ksSplashScreenAd;
            if (ksSplashScreenAd != null) {
                KSATSplashAdapter.this.f9919k = KSATInitManager.getInstance().a(ksSplashScreenAd.getMediaExtraInfo(), KSATSplashAdapter.this.f9919k);
            }
            KSATSplashAdapter kSATSplashAdapter = KSATSplashAdapter.this;
            if (!kSATSplashAdapter.f9918j) {
                if (((ATBaseAdInternalAdapter) kSATSplashAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (kSATSplashAdapter.mBiddingListener != null) {
                try {
                    ecpm = ksSplashScreenAd.getECPM();
                } catch (Throwable th) {
                    th.printStackTrace();
                    ecpm = 0.0d;
                }
                if (ecpm <= 0.0d) {
                    KSATSplashAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                    return;
                }
                KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(ksSplashScreenAd);
                KSATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
            }
        }
    }

    public class c implements KsSplashScreenAd.SplashScreenAdInteractionListener {
        public c() {
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onAdClicked() {
            if (((CustomSplashAdapter) KSATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) KSATSplashAdapter.this).mImpressionListener.onSplashAdClicked();
            }
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onAdShowEnd() {
            ((ATBaseAdInternalAdapter) KSATSplashAdapter.this).mDismissType = 3;
            KSATSplashAdapter kSATSplashAdapter = KSATSplashAdapter.this;
            if (kSATSplashAdapter.f9914f || ((CustomSplashAdapter) kSATSplashAdapter).mImpressionListener == null) {
                return;
            }
            KSATSplashAdapter kSATSplashAdapter2 = KSATSplashAdapter.this;
            kSATSplashAdapter2.f9914f = true;
            ((CustomSplashAdapter) kSATSplashAdapter2).mImpressionListener.onSplashAdDismiss();
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onAdShowError(int i2, String str) {
            Log.e(KSATSplashAdapter.this.f9909a, "onAdShowError: " + i2 + ", " + str);
            ((ATBaseAdInternalAdapter) KSATSplashAdapter.this).mDismissType = 99;
            KSATSplashAdapter kSATSplashAdapter = KSATSplashAdapter.this;
            if (kSATSplashAdapter.f9914f || ((CustomSplashAdapter) kSATSplashAdapter).mImpressionListener == null) {
                return;
            }
            KSATSplashAdapter kSATSplashAdapter2 = KSATSplashAdapter.this;
            kSATSplashAdapter2.f9914f = true;
            ((CustomSplashAdapter) kSATSplashAdapter2).mImpressionListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "" + i2, str));
            ((CustomSplashAdapter) KSATSplashAdapter.this).mImpressionListener.onSplashAdDismiss();
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onAdShowStart() {
            try {
                KSATInitManager.getInstance().a(KSATSplashAdapter.this.getShowId(), new WeakReference(KSATSplashAdapter.this.f9911c));
            } catch (Throwable unused) {
            }
            if (((CustomSplashAdapter) KSATSplashAdapter.this).mImpressionListener != null) {
                ((CustomSplashAdapter) KSATSplashAdapter.this).mImpressionListener.onSplashAdShow();
            }
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onDownloadTipsDialogCancel() {
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onDownloadTipsDialogDismiss() {
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onDownloadTipsDialogShow() {
        }

        @Override // com.kwad.sdk.api.KsSplashScreenAd.SplashScreenAdInteractionListener
        public void onSkippedAd() {
            ((ATBaseAdInternalAdapter) KSATSplashAdapter.this).mDismissType = 2;
            KSATSplashAdapter kSATSplashAdapter = KSATSplashAdapter.this;
            if (kSATSplashAdapter.f9914f || ((CustomSplashAdapter) kSATSplashAdapter).mImpressionListener == null) {
                return;
            }
            KSATSplashAdapter kSATSplashAdapter2 = KSATSplashAdapter.this;
            kSATSplashAdapter2.f9914f = true;
            ((CustomSplashAdapter) kSATSplashAdapter2).mImpressionListener.onSplashAdDismiss();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return KSATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f9911c = null;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9910b = ATInitMediation.getLongFromMap(map, "position_id");
        KSATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, 4);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, KSATAdapter.class);
        map.put(3, KSATInterstitialAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9919k;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return KSATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        try {
            return String.valueOf(this.f9910b);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return KSATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        KsSplashScreenAd ksSplashScreenAd = this.f9911c;
        return ksSplashScreenAd != null && ksSplashScreenAd.isAdEnable();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (!a(map, map2)) {
            notifyATLoadFail("", "kuaishou app_id or position_id is empty.");
        } else {
            this.f9915g = context.getApplicationContext();
            KSATInitManager.getInstance().initSDK(this.f9915g, map, new a());
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        KsSplashScreenAd ksSplashScreenAd = this.f9911c;
        if (ksSplashScreenAd != null) {
            try {
                View view = ksSplashScreenAd.getView(viewGroup.getContext().getApplicationContext(), new c());
                if (!this.f9912d) {
                    viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    this.f9913e = view;
                    viewGroup.addView(view, new ViewGroup.LayoutParams(-1, -1));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9918j = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        b bVar = new b();
        KsScene.Builder builderAdNum = new KsScene.Builder(this.f9910b).adNum(1);
        Boolean boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(28);
        if (boolIsShakeEnabled != null) {
            SplashAdExtraData splashAdExtraData = new SplashAdExtraData();
            splashAdExtraData.setDisableRotateStatus(!boolIsShakeEnabled.booleanValue());
            splashAdExtraData.setDisableShakeStatus(!boolIsShakeEnabled.booleanValue());
            splashAdExtraData.setDisableSlideStatus(true ^ boolIsShakeEnabled.booleanValue());
            builderAdNum.setSplashExtraData(splashAdExtraData);
        }
        if (!TextUtils.isEmpty(this.f9916h)) {
            builderAdNum.setBidResponseV2(this.f9916h);
        }
        KsAdSDK.getLoadManager().loadSplashScreenAd(builderAdNum.build(), bVar);
    }

    public void a() {
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdClicked();
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, "position_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2)) {
            return false;
        }
        try {
            this.f9910b = Long.parseLong(stringFromMap2);
        } catch (NumberFormatException unused) {
        }
        if (map.containsKey("zoomoutad_sw")) {
            this.f9912d = TextUtils.equals("2", ATInitMediation.getStringFromMap(map, "zoomoutad_sw"));
        }
        if (map.containsKey("anythink_gsp")) {
            this.f9917i = ATInitMediation.getDoubleFromMap(map, "anythink_gsp");
        }
        if (!map.containsKey("payload")) {
            return true;
        }
        this.f9916h = KSATInitManager.getInstance().getPayloadInfo(ATInitMediation.getStringFromMap(map, "payload"), this.f9917i);
        return true;
    }
}
