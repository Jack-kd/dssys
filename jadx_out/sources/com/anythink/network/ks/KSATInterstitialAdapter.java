package com.anythink.network.ks;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.core.common.d.i;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsFullScreenVideoAd;
import com.kwad.sdk.api.KsInterstitialAd;
import com.kwad.sdk.api.KsLoadManager;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.KsVideoPlayConfig;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class KSATInterstitialAdapter extends CustomInterstitialAdapter {
    public static String TAG = "KSATInterstitialAdapter";

    /* renamed from: a, reason: collision with root package name */
    long f9863a;

    /* renamed from: b, reason: collision with root package name */
    int f9864b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9865c;

    /* renamed from: e, reason: collision with root package name */
    String f9867e;

    /* renamed from: f, reason: collision with root package name */
    KsFullScreenVideoAd f9868f;

    /* renamed from: g, reason: collision with root package name */
    KsInterstitialAd f9869g;

    /* renamed from: i, reason: collision with root package name */
    double f9871i;

    /* renamed from: j, reason: collision with root package name */
    private Map<String, Object> f9872j;

    /* renamed from: k, reason: collision with root package name */
    private WeakReference<Activity> f9873k;

    /* renamed from: d, reason: collision with root package name */
    int f9866d = 1;

    /* renamed from: h, reason: collision with root package name */
    boolean f9870h = false;

    /* renamed from: l, reason: collision with root package name */
    boolean f9874l = false;

    public class a implements MediationInitCallback {
        public a() {
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            KSATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            KSATInterstitialAdapter.this.b();
        }
    }

    public class b implements KsLoadManager.InterstitialAdListener {
        public b() {
        }

        @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
        public void onError(int i2, String str) {
            KSATInterstitialAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
        public void onInterstitialAdLoad(List<KsInterstitialAd> list) {
            double ecpm;
            KSATInterstitialAdapter.this.f9869g = (list == null || list.size() <= 0) ? null : list.get(0);
            KSATInterstitialAdapter kSATInterstitialAdapter = KSATInterstitialAdapter.this;
            KsInterstitialAd ksInterstitialAd = kSATInterstitialAdapter.f9869g;
            if (ksInterstitialAd == null) {
                kSATInterstitialAdapter.notifyATLoadFail("", "KuaiShou: List<KsInterstitialAd> is empty.");
                return;
            }
            kSATInterstitialAdapter.a(ksInterstitialAd.getMediaExtraInfo());
            KSATInterstitialAdapter kSATInterstitialAdapter2 = KSATInterstitialAdapter.this;
            if (!kSATInterstitialAdapter2.f9870h) {
                if (((ATBaseAdInternalAdapter) kSATInterstitialAdapter2).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (kSATInterstitialAdapter2.mBiddingListener == null) {
                kSATInterstitialAdapter2.notifyATLoadFail("", "KuaiShou: KsInterstitialAd had been destroyed.");
                return;
            }
            try {
                ecpm = kSATInterstitialAdapter2.f9869g.getECPM();
            } catch (Throwable th) {
                th.printStackTrace();
                ecpm = 0.0d;
            }
            if (ecpm <= 0.0d) {
                KSATInterstitialAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                return;
            }
            KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(KSATInterstitialAdapter.this.f9869g);
            KSATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.InterstitialAdListener
        public void onRequestResult(int i2) {
            if (((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mLoadListener.onAdDataLoaded();
            }
        }
    }

    public class c implements KsLoadManager.FullScreenVideoAdListener {
        public c() {
        }

        @Override // com.kwad.sdk.api.KsLoadManager.FullScreenVideoAdListener
        public void onError(int i2, String str) {
            KSATInterstitialAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.FullScreenVideoAdListener
        public void onFullScreenVideoAdLoad(List<KsFullScreenVideoAd> list) {
            double ecpm;
            KSATInterstitialAdapter.this.f9868f = (list == null || list.size() <= 0) ? null : list.get(0);
            KSATInterstitialAdapter kSATInterstitialAdapter = KSATInterstitialAdapter.this;
            KsFullScreenVideoAd ksFullScreenVideoAd = kSATInterstitialAdapter.f9868f;
            if (ksFullScreenVideoAd == null) {
                kSATInterstitialAdapter.notifyATLoadFail("", "KuaiShou: List<KsFullScreenVideoAd> is empty.");
                return;
            }
            kSATInterstitialAdapter.a(ksFullScreenVideoAd.getMediaExtraInfo());
            KSATInterstitialAdapter kSATInterstitialAdapter2 = KSATInterstitialAdapter.this;
            if (!kSATInterstitialAdapter2.f9870h) {
                if (((ATBaseAdInternalAdapter) kSATInterstitialAdapter2).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    return;
                }
                return;
            }
            if (kSATInterstitialAdapter2.mBiddingListener == null) {
                kSATInterstitialAdapter2.notifyATLoadFail("", "KuaiShou: KsFullScreenVideoAd had been destroyed.");
                return;
            }
            try {
                ecpm = kSATInterstitialAdapter2.f9868f.getECPM();
            } catch (Throwable th) {
                th.printStackTrace();
                ecpm = 0.0d;
            }
            if (ecpm <= 0.0d) {
                KSATInterstitialAdapter.this.mBiddingListener.onC2SBidResult(ATBiddingResult.fail("error price: " + ecpm));
                return;
            }
            KSATBiddingNotice kSATBiddingNotice = new KSATBiddingNotice(KSATInterstitialAdapter.this.f9868f);
            KSATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(ecpm, System.currentTimeMillis() + "", kSATBiddingNotice, ATAdConst.CURRENCY.RMB_CENT), null);
        }

        @Override // com.kwad.sdk.api.KsLoadManager.FullScreenVideoAdListener
        public void onFullScreenVideoResult(List<KsFullScreenVideoAd> list) {
            if (((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mLoadListener.onAdDataLoaded();
            }
        }
    }

    public class d implements KsFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        public d() {
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClicked() {
            String str = KSATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onPageDismiss() {
            String str = KSATInterstitialAdapter.TAG;
            KSATInterstitialAdapter.this.a();
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
            ((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mDismissType = 2;
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoPlayEnd() {
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
            }
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoPlayError(int i2, int i3) {
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError(i2 + "", i3 + "");
            }
        }

        @Override // com.kwad.sdk.api.KsFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoPlayStart() {
            String str = KSATInterstitialAdapter.TAG;
            try {
                KSATInitManager.getInstance().a(KSATInterstitialAdapter.this.getShowId(), new WeakReference(KSATInterstitialAdapter.this.f9868f));
            } catch (Throwable unused) {
            }
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
        }
    }

    public class e implements KsInterstitialAd.AdInteractionListener {
        public e() {
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onAdClicked() {
            String str = KSATInterstitialAdapter.TAG;
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onAdClosed() {
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onAdShow() {
            String str = KSATInterstitialAdapter.TAG;
            try {
                KSATInitManager.getInstance().a(KSATInterstitialAdapter.this.getShowId(), new WeakReference(KSATInterstitialAdapter.this.f9869g));
            } catch (Throwable unused) {
            }
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
            }
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onPageDismiss() {
            String str = KSATInterstitialAdapter.TAG;
            KSATInterstitialAdapter.this.a();
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onSkippedAd() {
            ((ATBaseAdInternalAdapter) KSATInterstitialAdapter.this).mDismissType = 2;
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onVideoPlayEnd() {
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
            }
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onVideoPlayError(int i2, int i3) {
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoError(i2 + "", i3 + "");
            }
        }

        @Override // com.kwad.sdk.api.KsInterstitialAd.AdInteractionListener
        public void onVideoPlayStart() {
            if (((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) KSATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return KSATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public String closeAd() {
        try {
            if (this.f9866d == 1) {
                WeakReference<Activity> weakReference = this.f9873k;
                if (weakReference == null || weakReference.get() == null) {
                    return "showingActivity is null";
                }
                this.f9873k.get().getClass();
                this.f9873k.get().finish();
                a();
                return "";
            }
            KsInterstitialAd ksInterstitialAd = this.f9869g;
            if (ksInterstitialAd == null) {
                return "mKsInterstitialAd is null";
            }
            Object objA = a(ksInterstitialAd);
            if (objA == null) {
                return "dialog object is not find";
            }
            if (!(objA instanceof AlertDialog)) {
                return "find object is not dialog";
            }
            Method method = objA.getClass().getMethod("dismiss", null);
            method.setAccessible(true);
            method.invoke(objA, null);
            a();
            return "";
        } catch (Throwable th) {
            th.printStackTrace();
            return th.getMessage();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        try {
            super.destory();
            KsFullScreenVideoAd ksFullScreenVideoAd = this.f9868f;
            if (ksFullScreenVideoAd != null) {
                ksFullScreenVideoAd.setFullScreenVideoAdInteractionListener(null);
                this.f9868f = null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        this.f9863a = ATInitMediation.getLongFromMap(map, "position_id");
        KSATInitManager.getInstance().a(context, map, map2, aTBidRequestInfoListener, 3);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, KSATAdapter.class);
        map.put(4, KSATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f9872j;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return KSATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        try {
            return String.valueOf(this.f9863a);
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
        if (this.f9866d == 0) {
            return this.f9869g != null;
        }
        KsFullScreenVideoAd ksFullScreenVideoAd = this.f9868f;
        return ksFullScreenVideoAd != null && ksFullScreenVideoAd.isAdEnable();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public boolean isSupportAdCarousel() {
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (a(map, map2)) {
            KSATInitManager.getInstance().initSDK(context, map, new a());
        } else {
            notifyATLoadFail("", "kuaishou app_id or position_id is empty.");
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onCreate(Activity activity) {
        KsFullScreenVideoAd ksFullScreenVideoAd;
        try {
            activity.getClass();
            if (this.f9866d != 1 || (ksFullScreenVideoAd = this.f9868f) == null) {
                return;
            }
            String[] strArrSplit = ksFullScreenVideoAd.getClass().getName().split("\\.");
            if (strArrSplit.length >= 2) {
                if (activity.getClass().getName().startsWith(strArrSplit[0] + i.f2495E + strArrSplit[1]) && this.f9873k == null) {
                    this.f9873k = new WeakReference<>(activity);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onDestroy(Activity activity) {
        try {
            activity.getClass();
            WeakReference<Activity> weakReference = this.f9873k;
            if (weakReference == null || weakReference.get() != activity) {
                return;
            }
            this.f9873k.clear();
            this.f9873k = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onPause(Activity activity) {
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onResume(Activity activity) {
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        this.f9874l = false;
        KsVideoPlayConfig ksVideoPlayConfigBuild = new KsVideoPlayConfig.Builder().showLandscape(this.f9864b == 2).skipThirtySecond(false).videoSoundEnable(this.f9865c).build();
        this.f9873k = null;
        KsFullScreenVideoAd ksFullScreenVideoAd = this.f9868f;
        if (ksFullScreenVideoAd != null && activity != null) {
            ksFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new d());
            this.f9868f.showFullScreenVideoAd(activity, ksVideoPlayConfigBuild);
        }
        KsInterstitialAd ksInterstitialAd = this.f9869g;
        if (ksInterstitialAd == null || activity == null) {
            return;
        }
        ksInterstitialAd.setAdInteractionListener(new e());
        this.f9869g.showInterstitialAd(activity, ksVideoPlayConfigBuild);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.f9870h = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f9874l = false;
        KsScene.Builder builderScreenOrientation = new KsScene.Builder(this.f9863a).adNum(1).screenOrientation(this.f9864b == 2 ? 2 : 1);
        if (!TextUtils.isEmpty(this.f9867e)) {
            builderScreenOrientation.setBidResponseV2(this.f9867e);
        }
        KsScene ksSceneBuild = builderScreenOrientation.build();
        if (this.f9866d == 0) {
            KsAdSDK.getLoadManager().loadInterstitialAd(ksSceneBuild, new b());
        } else {
            KsAdSDK.getLoadManager().loadFullScreenVideoAd(ksSceneBuild, new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map) {
        if (map != null) {
            this.f9872j = KSATInitManager.getInstance().a(map, this.f9872j);
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        String stringFromMap2 = ATInitMediation.getStringFromMap(map, "position_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(stringFromMap2)) {
            return false;
        }
        try {
            this.f9863a = Long.parseLong(stringFromMap2);
        } catch (NumberFormatException unused) {
        }
        this.f9865c = true;
        if (map.containsKey("video_muted")) {
            this.f9865c = TextUtils.equals("0", ATInitMediation.getStringFromMap(map, "video_muted"));
        }
        if (ATSDKGlobalSetting.isGlobalMute != null) {
            this.f9865c = !r0.booleanValue();
        }
        if (map.containsKey("orientation")) {
            this.f9864b = ATInitMediation.getIntFromMap(map, "orientation");
        }
        if (map.containsKey("is_video")) {
            this.f9866d = ATInitMediation.getIntFromMap(map, "is_video", 1);
        }
        if (map.containsKey("anythink_gsp")) {
            this.f9871i = ATInitMediation.getDoubleFromMap(map, "anythink_gsp");
        }
        if (map.containsKey("payload")) {
            this.f9867e = KSATInitManager.getInstance().getPayloadInfo(ATInitMediation.getStringFromMap(map, "payload"), this.f9871i);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f9874l) {
            return;
        }
        this.f9874l = true;
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdClose();
        }
    }

    private Object a(KsInterstitialAd ksInterstitialAd) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        try {
            ksInterstitialAd.getClass();
            Class<?> cls = ksInterstitialAd.getClass();
            for (Field field : cls.getDeclaredFields()) {
                field.setAccessible(true);
                Field declaredField = cls.getDeclaredField(field.getName());
                declaredField.setAccessible(true);
                Object obj = declaredField.get(ksInterstitialAd);
                if (obj != null) {
                    if (obj instanceof AlertDialog) {
                        return obj;
                    }
                    if (obj instanceof KsInterstitialAd) {
                        return a((KsInterstitialAd) obj);
                    }
                }
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
