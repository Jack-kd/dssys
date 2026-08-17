package com.anythink.network.toutiao;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.anythink.splashad.unitgroup.api.CustomSplashEventListener;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CSJAdError;
import com.bytedance.sdk.openadsdk.CSJSplashAd;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class TTATSplashAdapter extends CustomSplashAdapter implements CSJSplashAd.SplashAdListener {

    /* renamed from: e, reason: collision with root package name */
    CSJSplashAd f10440e;

    /* renamed from: f, reason: collision with root package name */
    View f10441f;

    /* renamed from: g, reason: collision with root package name */
    private Map<String, Object> f10442g;

    /* renamed from: a, reason: collision with root package name */
    private final String f10436a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    String f10437b = "";

    /* renamed from: c, reason: collision with root package name */
    String f10438c = "";

    /* renamed from: d, reason: collision with root package name */
    String f10439d = "";

    /* renamed from: h, reason: collision with root package name */
    String f10443h = "";

    /* renamed from: i, reason: collision with root package name */
    boolean f10444i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f10445j = false;

    /* renamed from: k, reason: collision with root package name */
    TTAppDownloadListener f10446k = new c();

    public class a implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10447a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10448b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10449c;

        public a(Context context, Map map, Map map2) {
            this.f10447a = context;
            this.f10448b = map;
            this.f10449c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            TTATSplashAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                TTATSplashAdapter.this.a(this.f10447a, this.f10448b, this.f10449c);
            } catch (Throwable th) {
                TTATSplashAdapter.this.notifyATLoadFail("", th.getMessage());
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ AdSlot.Builder f10451a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ TTAdNative f10452b;

        public class a implements TTAdNative.CSJSplashAdListener {
            public a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
            public void onSplashLoadFail(CSJAdError cSJAdError) {
                TTATSplashAdapter.this.notifyATLoadFail(cSJAdError.getCode() + "", cSJAdError.getMsg());
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
            public void onSplashLoadSuccess(CSJSplashAd cSJSplashAd) {
                if (cSJSplashAd != null) {
                    Map<String, Object> mediaExtraInfo = cSJSplashAd.getMediaExtraInfo();
                    TTATSplashAdapter.this.f10442g = TTATInitManager.getInstance().a(mediaExtraInfo, TTATSplashAdapter.this.f10442g);
                }
                if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mLoadListener.onAdDataLoaded();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
            public void onSplashRenderFail(CSJSplashAd cSJSplashAd, CSJAdError cSJAdError) {
                TTATSplashAdapter.this.notifyATLoadFail(cSJAdError.getCode() + "", cSJAdError.getMsg());
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.CSJSplashAdListener
            public void onSplashRenderSuccess(CSJSplashAd cSJSplashAd) {
                TTATSplashAdapter.this.f10440e = cSJSplashAd;
                try {
                    Map<String, Object> mediaExtraInfo = cSJSplashAd.getMediaExtraInfo();
                    if (mediaExtraInfo != null) {
                        if (TTATSplashAdapter.this.f10442g == null) {
                            TTATSplashAdapter.this.f10442g = new HashMap(3);
                        }
                        TTATSplashAdapter.this.f10442g.putAll(mediaExtraInfo);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                TTATSplashAdapter tTATSplashAdapter = TTATSplashAdapter.this;
                if (!tTATSplashAdapter.f10444i) {
                    if (((ATBaseAdInternalAdapter) tTATSplashAdapter).mLoadListener != null) {
                        ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                    }
                } else {
                    try {
                        TTATInitManager tTATInitManager = TTATInitManager.getInstance();
                        Map<String, Object> map = TTATSplashAdapter.this.f10442g;
                        TTATSplashAdapter tTATSplashAdapter2 = TTATSplashAdapter.this;
                        tTATInitManager.a(map, tTATSplashAdapter2.f10440e, tTATSplashAdapter2.mBiddingListener);
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        public b(AdSlot.Builder builder, TTAdNative tTAdNative) {
            this.f10451a = builder;
            this.f10452b = tTAdNative;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f10452b.loadSplashAd(this.f10451a.build(), new a(), ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mFetchAdTimeout);
            } catch (Exception e2) {
                TTATSplashAdapter.this.notifyATLoadFail("", e2.getMessage());
            }
        }
    }

    public class c implements TTAppDownloadListener {
        public c() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadActive(long j2, long j3, String str, String str2) {
            if (TTATSplashAdapter.this.f10445j) {
                if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                    return;
                }
                ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener).onDownloadUpdate(j2, j3, str, str2);
                return;
            }
            TTATSplashAdapter.this.f10445j = true;
            if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener).onDownloadStart(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFailed(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener).onDownloadFail(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFinished(long j2, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener).onDownloadFinish(j2, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadPaused(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener).onDownloadPause(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onIdle() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onInstalled(String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATSplashAdapter.this).mDownloadListener).onInstalled(str, str2);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return TTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, TTATAdapter.class);
        map.put(3, TTATInterstitialAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f10442g;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return TTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10438c;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return TTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        CSJSplashAd cSJSplashAd = this.f10440e;
        return cSJSplashAd != null && cSJSplashAd.getMediationManager().isReady();
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public boolean isSupportCustomSkipView() {
        return true;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) throws Throwable {
        if (a(map, map2)) {
            TTATInitManager.getInstance().initSDK(context, map, new a(context, map, map2));
        } else {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdClick(CSJSplashAd cSJSplashAd) {
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdClose(CSJSplashAd cSJSplashAd, int i2) {
        if (i2 == 1) {
            this.mDismissType = 2;
        } else if (i2 == 2) {
            this.mDismissType = 3;
        } else if (i2 == 3) {
            this.mDismissType = 4;
        }
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdDismiss();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.CSJSplashAd.SplashAdListener
    public void onSplashAdShow(CSJSplashAd cSJSplashAd) {
        this.f10442g = TTATInitManager.getInstance().a(this.f10440e, this.f10442g);
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShow();
        }
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        if (this.f10440e != null) {
            if (isCustomSkipView()) {
                this.f10440e.hideSkipButton();
            }
            this.f10440e.setDownloadListener(this.f10446k);
            this.f10440e.setSplashAdListener(this);
            View splashView = this.f10440e.getSplashView();
            if (splashView == null) {
                a("SplashAd.getSplashView return null");
                return;
            }
            try {
                viewGroup.addView(splashView, new ViewGroup.LayoutParams(-1, -1));
            } catch (Throwable th) {
                a("SplashAd.getSplashView show fail with exception:" + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) throws Throwable {
        this.f10444i = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        TTAdManager adManager = TTAdSdk.getAdManager();
        Context applicationContext = context.getApplicationContext();
        TTAdNative tTAdNativeCreateAdNative = adManager.createAdNative(applicationContext);
        TTATCustomAdSlotBuilder tTATCustomAdSlotBuilder = new TTATCustomAdSlotBuilder(this.f10438c, map, map2);
        int i2 = 0;
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        int i3 = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString()) : 0;
        try {
            if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString());
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (i3 <= 0) {
            i3 = applicationContext.getResources().getDisplayMetrics().widthPixels;
        }
        if (i2 <= 0) {
            i2 = applicationContext.getResources().getDisplayMetrics().heightPixels;
        }
        tTATCustomAdSlotBuilder.setImageAcceptedSize(i3, i2);
        tTATCustomAdSlotBuilder.setExpressViewAcceptedSize(a(applicationContext, i3), a(applicationContext, i2));
        runOnNetworkRequestThread(new b(tTATCustomAdSlotBuilder, tTAdNativeCreateAdNative));
    }

    private static int a(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    private void a(String str) {
        this.mDismissType = 99;
        CustomSplashEventListener customSplashEventListener = this.mImpressionListener;
        if (customSplashEventListener != null) {
            customSplashEventListener.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", str));
            this.mImpressionListener.onSplashAdDismiss();
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        this.f10438c = ATInitMediation.getStringFromMap(map, "slot_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f10438c)) {
            return false;
        }
        this.f10443h = ATInitMediation.getStringFromMap(map, "payload");
        this.f10439d = ATInitMediation.getStringFromMap(map, "personalized_template", "0");
        return true;
    }
}
