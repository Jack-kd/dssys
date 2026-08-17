package com.anythink.network.toutiao;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.core.common.d.i;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class TTATInterstitialAdapter extends CustomInterstitialAdapter {

    /* renamed from: e, reason: collision with root package name */
    private TTFullScreenVideoAd f10357e;

    /* renamed from: f, reason: collision with root package name */
    private Map<String, Object> f10358f;

    /* renamed from: l, reason: collision with root package name */
    private WeakReference<Activity> f10364l;

    /* renamed from: a, reason: collision with root package name */
    private final String f10353a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    String f10354b = "";

    /* renamed from: c, reason: collision with root package name */
    int f10355c = 1;

    /* renamed from: d, reason: collision with root package name */
    String f10356d = "";

    /* renamed from: g, reason: collision with root package name */
    boolean f10359g = false;

    /* renamed from: h, reason: collision with root package name */
    TTAdNative.FullScreenVideoAdListener f10360h = new a();

    /* renamed from: i, reason: collision with root package name */
    TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f10361i = new b();

    /* renamed from: j, reason: collision with root package name */
    private boolean f10362j = false;

    /* renamed from: k, reason: collision with root package name */
    TTAppDownloadListener f10363k = new e();

    /* renamed from: m, reason: collision with root package name */
    boolean f10365m = false;

    public class a implements TTAdNative.FullScreenVideoAdListener {
        public a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onError(int i2, String str) {
            TTATInterstitialAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
            TTATInterstitialAdapter.this.f10357e = tTFullScreenVideoAd;
            if (tTFullScreenVideoAd != null) {
                Map<String, Object> mediaExtraInfo = tTFullScreenVideoAd.getMediaExtraInfo();
                TTATInterstitialAdapter.this.f10358f = TTATInitManager.getInstance().a(mediaExtraInfo, TTATInterstitialAdapter.this.f10358f);
            }
            TTATInitManager tTATInitManager = TTATInitManager.getInstance();
            TTATInterstitialAdapter tTATInterstitialAdapter = TTATInterstitialAdapter.this;
            tTATInitManager.notifyAdDataLoad(tTATInterstitialAdapter.f10359g, tTATInterstitialAdapter.f10358f, tTFullScreenVideoAd, ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mLoadListener, TTATInterstitialAdapter.this.mBiddingListener, new BaseAd[0]);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
            TTATInterstitialAdapter.this.f10357e = tTFullScreenVideoAd;
            TTATInterstitialAdapter tTATInterstitialAdapter = TTATInterstitialAdapter.this;
            try {
                if (tTATInterstitialAdapter.f10359g) {
                    TTATInitManager.getInstance().a(TTATInterstitialAdapter.this.f10358f, TTATInterstitialAdapter.this.f10357e, TTATInterstitialAdapter.this.mBiddingListener);
                } else if (((ATBaseAdInternalAdapter) tTATInterstitialAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public class b implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        public b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClose() {
            String unused = TTATInterstitialAdapter.this.f10353a;
            TTATInterstitialAdapter.this.a();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdShow() {
            String unused = TTATInterstitialAdapter.this.f10353a;
            TTATInterstitialAdapter.this.f10358f = TTATInitManager.getInstance().a(TTATInterstitialAdapter.this.f10357e, TTATInterstitialAdapter.this.f10358f);
            if (((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener.onInterstitialAdShow();
                ((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoStart();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdVideoBarClick() {
            String unused = TTATInterstitialAdapter.this.f10353a;
            if (((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener.onInterstitialAdClicked();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
            ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDismissType = 2;
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoComplete() {
            if (((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener != null) {
                ((CustomInterstitialAdapter) TTATInterstitialAdapter.this).mImpressListener.onInterstitialAdVideoEnd();
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10368a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10369b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10370c;

        public c(Context context, Map map, Map map2) {
            this.f10368a = context;
            this.f10369b = map;
            this.f10370c = map2;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTAdNative tTAdNativeCreateAdNative = TTAdSdk.getAdManager().createAdNative(this.f10368a);
            TTATCustomAdSlotBuilder tTATCustomAdSlotBuilder = new TTATCustomAdSlotBuilder(TTATInterstitialAdapter.this.f10354b, this.f10369b, this.f10370c);
            tTATCustomAdSlotBuilder.setAdCount(1);
            tTATCustomAdSlotBuilder.setOrientation(TTATInterstitialAdapter.this.f10355c);
            tTAdNativeCreateAdNative.loadFullScreenVideoAd(tTATCustomAdSlotBuilder.build(), TTATInterstitialAdapter.this.f10360h);
        }
    }

    public class d implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10372a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10373b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10374c;

        public d(Context context, Map map, Map map2) {
            this.f10372a = context;
            this.f10373b = map;
            this.f10374c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            TTATInterstitialAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                TTATInterstitialAdapter.this.a(this.f10372a, this.f10373b, this.f10374c);
            } catch (Throwable th) {
                TTATInterstitialAdapter.this.notifyATLoadFail("", th.getMessage());
            }
        }
    }

    public class e implements TTAppDownloadListener {
        public e() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadActive(long j2, long j3, String str, String str2) {
            if (TTATInterstitialAdapter.this.f10362j) {
                if (((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                    return;
                }
                ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener).onDownloadUpdate(j2, j3, str, str2);
                return;
            }
            TTATInterstitialAdapter.this.f10362j = true;
            if (((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener).onDownloadStart(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFailed(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener).onDownloadFail(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFinished(long j2, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener).onDownloadFinish(j2, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadPaused(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener).onDownloadPause(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onIdle() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onInstalled(String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATInterstitialAdapter.this).mDownloadListener).onInstalled(str, str2);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return TTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public String closeAd() {
        try {
            WeakReference<Activity> weakReference = this.f10364l;
            if (weakReference == null || weakReference.get() == null) {
                return "showingActivity is null";
            }
            this.f10364l.get().getClass();
            this.f10364l.get().finish();
            a();
            return "";
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        try {
            super.destory();
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f10357e;
            if (tTFullScreenVideoAd != null) {
                tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(null);
                this.f10357e = null;
            }
            this.f10361i = null;
            this.f10360h = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, TTATAdapter.class);
        map.put(4, TTATSplashAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f10358f;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return TTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10354b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return TTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        TTFullScreenVideoAd tTFullScreenVideoAd = this.f10357e;
        return tTFullScreenVideoAd != null && tTFullScreenVideoAd.getMediationManager().isReady();
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public boolean isSupportAdCarousel() {
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) throws Throwable {
        if (a(map, map2)) {
            TTATInitManager.getInstance().initSDK(context, map, new d(context, map, map2));
        } else {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.common.d.b.a
    public void onCreate(Activity activity) {
        try {
            activity.getClass();
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f10357e;
            if (tTFullScreenVideoAd != null) {
                String[] strArrSplit = tTFullScreenVideoAd.getClass().getName().split("\\.");
                if (strArrSplit.length >= 3) {
                    if (activity.getClass().getName().startsWith(strArrSplit[0] + i.f2495E + strArrSplit[1] + i.f2495E + strArrSplit[2]) && this.f10364l == null) {
                        this.f10364l = new WeakReference<>(activity);
                    }
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
            WeakReference<Activity> weakReference = this.f10364l;
            if (weakReference == null || weakReference.get() != activity) {
                return;
            }
            this.f10364l.clear();
            this.f10364l = null;
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
        try {
            this.f10365m = false;
            this.f10364l = null;
            TTFullScreenVideoAd tTFullScreenVideoAd = this.f10357e;
            if (tTFullScreenVideoAd == null || activity == null) {
                return;
            }
            tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(this.f10361i);
            this.f10357e.setDownloadListener(this.f10363k);
            this.f10357e.showFullScreenVideoAd(activity);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) throws Throwable {
        this.f10359g = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.f10365m = false;
        runOnNetworkRequestThread(new c(context.getApplicationContext(), map, map2));
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        this.f10354b = ATInitMediation.getStringFromMap(map, "slot_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f10354b)) {
            return false;
        }
        try {
            int intFromMap = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_ORIENTATION, 1);
            if (intFromMap == 1) {
                this.f10355c = 1;
            } else if (intFromMap == 2) {
                this.f10355c = 2;
            }
        } catch (Exception unused) {
        }
        this.f10356d = ATInitMediation.getStringFromMap(map, "payload");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f10365m) {
            return;
        }
        this.f10365m = true;
        CustomInterstitialEventListener customInterstitialEventListener = this.mImpressListener;
        if (customInterstitialEventListener != null) {
            customInterstitialEventListener.onInterstitialAdClose();
        }
    }
}
