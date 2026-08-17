package com.anythink.network.toutiao;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.banner.unitgroup.api.CustomBannerEventListener;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes2.dex */
public class TTATBannerAdapter extends CustomBannerAdapter {

    /* renamed from: c, reason: collision with root package name */
    private TTNativeExpressAd f10299c;

    /* renamed from: d, reason: collision with root package name */
    Context f10300d;

    /* renamed from: e, reason: collision with root package name */
    View f10301e;

    /* renamed from: f, reason: collision with root package name */
    int f10302f;

    /* renamed from: g, reason: collision with root package name */
    int f10303g;

    /* renamed from: h, reason: collision with root package name */
    int f10304h;

    /* renamed from: i, reason: collision with root package name */
    private Map<String, Object> f10305i;

    /* renamed from: j, reason: collision with root package name */
    String f10306j;

    /* renamed from: k, reason: collision with root package name */
    boolean f10307k;

    /* renamed from: m, reason: collision with root package name */
    private boolean f10309m;

    /* renamed from: a, reason: collision with root package name */
    private final String f10297a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    String f10298b = "";

    /* renamed from: l, reason: collision with root package name */
    boolean f10308l = false;

    /* renamed from: n, reason: collision with root package name */
    TTAdNative.NativeExpressAdListener f10310n = new a();

    /* renamed from: o, reason: collision with root package name */
    TTNativeExpressAd.ExpressAdInteractionListener f10311o = new b();

    /* renamed from: p, reason: collision with root package name */
    private boolean f10312p = false;

    /* renamed from: q, reason: collision with root package name */
    TTAppDownloadListener f10313q = new f();

    public class a implements TTAdNative.NativeExpressAdListener {
        public a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onError(int i2, String str) {
            TTATBannerAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
            if (list == null || list.size() <= 0) {
                TTATBannerAdapter.this.notifyATLoadFail("", "Return Ad list is empty.");
                return;
            }
            TTATBannerAdapter.this.f10299c = list.get(0);
            TTATBannerAdapter tTATBannerAdapter = TTATBannerAdapter.this;
            if (tTATBannerAdapter.f10304h > 0) {
                tTATBannerAdapter.f10299c.setSlideIntervalTime(TTATBannerAdapter.this.f10304h);
            } else {
                tTATBannerAdapter.f10299c.setSlideIntervalTime(0);
            }
            TTATBannerAdapter.this.a();
            Map<String, Object> mediaExtraInfo = TTATBannerAdapter.this.f10299c.getMediaExtraInfo();
            TTATBannerAdapter.this.f10305i = TTATInitManager.getInstance().a(mediaExtraInfo, TTATBannerAdapter.this.f10305i);
            if (TTATBannerAdapter.this.f10309m) {
                TTATBannerAdapter tTATBannerAdapter2 = TTATBannerAdapter.this;
                tTATBannerAdapter2.f10301e = tTATBannerAdapter2.f10299c.getExpressAdView();
                String unused = TTATBannerAdapter.this.f10297a;
                Objects.toString(TTATBannerAdapter.this.f10301e);
                if (TTATBannerAdapter.this.f10301e != null) {
                    TTATInitManager tTATInitManager = TTATInitManager.getInstance();
                    TTATBannerAdapter tTATBannerAdapter3 = TTATBannerAdapter.this;
                    tTATInitManager.notifyAdDataLoad(tTATBannerAdapter3.f10308l, tTATBannerAdapter3.f10305i, TTATBannerAdapter.this.f10299c, ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mLoadListener, TTATBannerAdapter.this.mBiddingListener, new BaseAd[0]);
                }
            }
            TTATBannerAdapter.this.f10299c.render();
        }
    }

    public class b implements TTNativeExpressAd.ExpressAdInteractionListener {
        public b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i2) {
            CustomBannerEventListener customBannerEventListener = TTATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClicked();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i2) {
            try {
                TTATBannerAdapter tTATBannerAdapter = TTATBannerAdapter.this;
                TTATInitManager tTATInitManager = TTATInitManager.getInstance();
                TTATBannerAdapter tTATBannerAdapter2 = TTATBannerAdapter.this;
                tTATBannerAdapter.f10305i = tTATInitManager.a(tTATBannerAdapter2.f10301e, tTATBannerAdapter2.f10305i);
                ViewParent parent = TTATBannerAdapter.this.f10301e.getParent();
                while (!(parent instanceof ViewGroup) && parent != null) {
                    parent = parent.getParent();
                }
                if (parent != null) {
                    Context context = ((ViewGroup) parent).getContext();
                    if (context instanceof Activity) {
                        TTATBannerAdapter tTATBannerAdapter3 = TTATBannerAdapter.this;
                        tTATBannerAdapter3.a((Activity) context, tTATBannerAdapter3.f10299c, false);
                    } else {
                        String unused = TTATBannerAdapter.this.f10297a;
                    }
                } else if (view == null || !(view.getContext() instanceof Activity)) {
                    String unused2 = TTATBannerAdapter.this.f10297a;
                } else {
                    TTATBannerAdapter.this.a((Activity) view.getContext(), TTATBannerAdapter.this.f10299c, false);
                }
            } catch (Throwable th) {
                Log.e(TTATBannerAdapter.this.f10297a, "bindDislike fail:" + th.getMessage());
            }
            TTATBannerAdapter tTATBannerAdapter4 = TTATBannerAdapter.this;
            CustomBannerEventListener customBannerEventListener = tTATBannerAdapter4.mImpressionEventListener;
            if (customBannerEventListener == null || tTATBannerAdapter4.f10307k) {
                return;
            }
            customBannerEventListener.onBannerAdShow();
            TTATBannerAdapter.this.f10307k = true;
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String str, int i2) {
            TTATBannerAdapter.this.notifyATLoadFail(i2 + "", str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float f2, float f3) {
            String unused = TTATBannerAdapter.this.f10297a;
            Objects.toString(view);
            TTATBannerAdapter tTATBannerAdapter = TTATBannerAdapter.this;
            tTATBannerAdapter.f10301e = view;
            tTATBannerAdapter.f10307k = false;
            if (tTATBannerAdapter.f10308l) {
                try {
                    TTATInitManager.getInstance().a(TTATBannerAdapter.this.f10305i, TTATBannerAdapter.this.f10299c, TTATBannerAdapter.this.mBiddingListener);
                } catch (Throwable unused2) {
                }
            } else if (((ATBaseAdInternalAdapter) tTATBannerAdapter).mLoadListener != null) {
                ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f10316a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10317b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f10318c;

        public c(Map map, Map map2, Context context) {
            this.f10316a = map;
            this.f10317b = map2;
            this.f10318c = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.network.toutiao.TTATBannerAdapter.c.run():void");
        }
    }

    public class d implements TTAdDislike.DislikeInteractionCallback {
        public d() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onSelected(int i2, String str, boolean z2) {
            CustomBannerEventListener customBannerEventListener = TTATBannerAdapter.this.mImpressionEventListener;
            if (customBannerEventListener != null) {
                customBannerEventListener.onBannerAdClose();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }
    }

    public class e implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f10321a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10322b;

        public e(Map map, Map map2) {
            this.f10321a = map;
            this.f10322b = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            TTATBannerAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                TTATBannerAdapter tTATBannerAdapter = TTATBannerAdapter.this;
                tTATBannerAdapter.a(tTATBannerAdapter.f10300d, (Map<String, Object>) this.f10321a, (Map<String, Object>) this.f10322b);
            } catch (Throwable th) {
                TTATBannerAdapter.this.notifyATLoadFail("", th.getMessage());
            }
        }
    }

    public class f implements TTAppDownloadListener {
        public f() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadActive(long j2, long j3, String str, String str2) {
            if (TTATBannerAdapter.this.f10312p) {
                if (((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                    return;
                }
                ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener).onDownloadUpdate(j2, j3, str, str2);
                return;
            }
            TTATBannerAdapter.this.f10312p = true;
            if (((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener).onDownloadStart(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFailed(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener).onDownloadFail(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFinished(long j2, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener).onDownloadFinish(j2, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadPaused(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener).onDownloadPause(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onIdle() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onInstalled(String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATBannerAdapter.this).mDownloadListener).onInstalled(str, str2);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return TTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        this.f10301e = null;
        TTNativeExpressAd tTNativeExpressAd = this.f10299c;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.setExpressInteractionListener((TTNativeExpressAd.AdInteractionListener) null);
            this.f10299c.destroy();
            this.f10299c = null;
        }
        this.f10311o = null;
        this.f10310n = null;
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.f10301e;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(0, TTATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f10305i;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return TTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10298b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return TTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) throws Throwable {
        if (!a(map, map2)) {
            notifyATLoadFail("", "app_id or slot_id is empty!");
            return;
        }
        this.f10300d = context.getApplicationContext();
        this.f10309m = ATInitMediation.getIntFromMap(map, "ad_s_reqf_mode", -1) == 2;
        TTATInitManager.getInstance().initSDK(this.f10300d, map, new e(map, map2));
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) throws Throwable {
        this.f10308l = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        runOnNetworkRequestThread(new c(map, map2, context.getApplicationContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, TTNativeExpressAd tTNativeExpressAd, boolean z2) {
        tTNativeExpressAd.setDislikeCallback(activity, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        TTNativeExpressAd tTNativeExpressAd = this.f10299c;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.setExpressInteractionListener(this.f10311o);
            this.f10299c.setDownloadListener(this.f10313q);
        }
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        this.f10298b = ATInitMediation.getStringFromMap(map, "slot_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f10298b)) {
            return false;
        }
        this.f10304h = ATInitMediation.getIntFromMap(map, "nw_rft", 0);
        this.f10306j = ATInitMediation.getStringFromMap(map, "payload");
        return true;
    }
}
