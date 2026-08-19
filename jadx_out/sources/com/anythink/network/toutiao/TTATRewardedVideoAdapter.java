package com.anythink.network.toutiao;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.anythink.china.api.CustomAdapterDownloadListener;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.api.bridge.ATBaseAdInternalAdapter;
import com.anythink.network.toutiao.TTATConst;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardedVideoEventListener;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class TTATRewardedVideoAdapter extends CustomRewardVideoAdapter {

    /* renamed from: c, reason: collision with root package name */
    private TTRewardVideoAd f10416c;

    /* renamed from: d, reason: collision with root package name */
    boolean f10417d;

    /* renamed from: e, reason: collision with root package name */
    private Map<String, Object> f10418e;

    /* renamed from: a, reason: collision with root package name */
    private final String f10414a = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    String f10415b = "";

    /* renamed from: f, reason: collision with root package name */
    String f10419f = "";

    /* renamed from: g, reason: collision with root package name */
    boolean f10420g = false;

    /* renamed from: h, reason: collision with root package name */
    TTAdNative.RewardVideoAdListener f10421h = new a();

    /* renamed from: i, reason: collision with root package name */
    TTRewardVideoAd.RewardAdInteractionListener f10422i = new b();

    /* renamed from: j, reason: collision with root package name */
    private boolean f10423j = false;

    /* renamed from: k, reason: collision with root package name */
    TTAppDownloadListener f10424k = new e();

    public class a implements TTAdNative.RewardVideoAdListener {
        public a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onError(int i2, String str) {
            TTATRewardedVideoAdapter.this.notifyATLoadFail(String.valueOf(i2), str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            TTATRewardedVideoAdapter.this.f10416c = tTRewardVideoAd;
            if (tTRewardVideoAd != null) {
                Map<String, Object> mediaExtraInfo = tTRewardVideoAd.getMediaExtraInfo();
                TTATRewardedVideoAdapter.this.f10418e = TTATInitManager.getInstance().a(mediaExtraInfo, TTATRewardedVideoAdapter.this.f10418e);
            }
            TTATInitManager tTATInitManager = TTATInitManager.getInstance();
            TTATRewardedVideoAdapter tTATRewardedVideoAdapter = TTATRewardedVideoAdapter.this;
            tTATInitManager.notifyAdDataLoad(tTATRewardedVideoAdapter.f10420g, tTATRewardedVideoAdapter.f10418e, tTRewardVideoAd, ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mLoadListener, TTATRewardedVideoAdapter.this.mBiddingListener, new BaseAd[0]);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
            TTATRewardedVideoAdapter.this.f10416c = tTRewardVideoAd;
            TTATRewardedVideoAdapter tTATRewardedVideoAdapter = TTATRewardedVideoAdapter.this;
            if (tTATRewardedVideoAdapter.f10420g) {
                try {
                    TTATInitManager.getInstance().a(TTATRewardedVideoAdapter.this.f10418e, TTATRewardedVideoAdapter.this.f10416c, TTATRewardedVideoAdapter.this.mBiddingListener);
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            try {
                if (((ATBaseAdInternalAdapter) tTATRewardedVideoAdapter).mLoadListener != null) {
                    ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class b implements TTRewardVideoAd.RewardAdInteractionListener {
        public b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            if (((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdClosed();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            TTATRewardedVideoAdapter.this.f10418e = TTATInitManager.getInstance().a(TTATRewardedVideoAdapter.this.f10416c, TTATRewardedVideoAdapter.this.f10418e);
            if (((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayStart();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            if (((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayClicked();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean z2, int i2, Bundle bundle) {
            String unused = TTATRewardedVideoAdapter.this.f10414a;
            TTATRewardedVideoAdapter.this.a(z2, i2, bundle, false);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean z2, int i2, String str, int i3, String str2) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
            ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDismissType = 2;
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            if (((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayEnd();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
            if (((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener != null) {
                ((CustomRewardVideoAdapter) TTATRewardedVideoAdapter.this).mImpressionListener.onRewardedVideoAdPlayFailed("", "Callback VideoError");
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10427a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10428b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10429c;

        public c(Context context, Map map, Map map2) {
            this.f10427a = context;
            this.f10428b = map;
            this.f10429c = map2;
        }

        @Override // java.lang.Runnable
        public void run() throws NumberFormatException {
            TTAdNative tTAdNativeCreateAdNative = TTAdSdk.getAdManager().createAdNative(this.f10427a);
            TTATCustomAdSlotBuilder tTATCustomAdSlotBuilder = new TTATCustomAdSlotBuilder(TTATRewardedVideoAdapter.this.f10415b, this.f10428b, this.f10429c);
            try {
                tTATCustomAdSlotBuilder.setExpressViewAcceptedSize(TTATRewardedVideoAdapter.b(this.f10427a, this.f10427a.getResources().getDisplayMetrics().widthPixels), TTATRewardedVideoAdapter.b(this.f10427a, this.f10427a.getResources().getDisplayMetrics().heightPixels));
            } catch (Throwable th) {
                th.printStackTrace();
            }
            Map map = this.f10429c;
            if (map != null) {
                try {
                    tTATCustomAdSlotBuilder.setSupportDeepLink(((Boolean) map.get(ATAdConst.KEY.AD_IS_SUPPORT_DEEP_LINK)).booleanValue());
                } catch (Exception unused) {
                }
                try {
                    int i2 = Integer.parseInt(this.f10429c.get(ATAdConst.KEY.AD_ORIENTATION).toString());
                    if (i2 == 1) {
                        tTATCustomAdSlotBuilder.setOrientation(1);
                    } else if (i2 == 2) {
                        tTATCustomAdSlotBuilder.setOrientation(2);
                    }
                } catch (Exception unused2) {
                }
            }
            if (!TextUtils.isEmpty(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mUserId)) {
                tTATCustomAdSlotBuilder.setUserID(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mUserId);
            }
            if (!TextUtils.isEmpty(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mUserData)) {
                if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mUserData.contains(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME)) {
                    TTATRewardedVideoAdapter tTATRewardedVideoAdapter = TTATRewardedVideoAdapter.this;
                    ((ATBaseAdInternalAdapter) tTATRewardedVideoAdapter).mUserData = ((ATBaseAdInternalAdapter) tTATRewardedVideoAdapter).mUserData.replace(ATAdConst.REWARD_EXTRA_REPLACE_HODLER_KEY.NETWORK_PLACEMENT_ID_HOLDER_NAME, TTATRewardedVideoAdapter.this.f10415b);
                }
                tTATCustomAdSlotBuilder.setMediaExtra(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mUserData);
            }
            tTATCustomAdSlotBuilder.setAdCount(1);
            tTAdNativeCreateAdNative.loadRewardVideoAd(tTATCustomAdSlotBuilder.build(), TTATRewardedVideoAdapter.this.f10421h);
        }
    }

    public class d implements MediationInitCallback {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10431a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Map f10432b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f10433c;

        public d(Context context, Map map, Map map2) {
            this.f10431a = context;
            this.f10432b = map;
            this.f10433c = map2;
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onFail(String str) {
            TTATRewardedVideoAdapter.this.notifyATLoadFail("", str);
        }

        @Override // com.anythink.core.api.MediationInitCallback
        public void onSuccess() {
            try {
                TTATRewardedVideoAdapter.this.a(this.f10431a, this.f10432b, this.f10433c);
            } catch (Throwable th) {
                TTATRewardedVideoAdapter.this.notifyATLoadFail("", th.getMessage());
            }
        }
    }

    public class e implements TTAppDownloadListener {
        public e() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadActive(long j2, long j3, String str, String str2) {
            if (TTATRewardedVideoAdapter.this.f10423j) {
                if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                    return;
                }
                ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener).onDownloadUpdate(j2, j3, str, str2);
                return;
            }
            TTATRewardedVideoAdapter.this.f10423j = true;
            if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener).onDownloadStart(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFailed(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener).onDownloadFail(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadFinished(long j2, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener).onDownloadFinish(j2, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onDownloadPaused(long j2, long j3, String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener).onDownloadPause(j2, j3, str, str2);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onIdle() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
        public void onInstalled(String str, String str2) {
            if (((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener == null || !(((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener instanceof CustomAdapterDownloadListener)) {
                return;
            }
            ((CustomAdapterDownloadListener) ((ATBaseAdInternalAdapter) TTATRewardedVideoAdapter.this).mDownloadListener).onInstalled(str, str2);
        }
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return TTATInitManager.getInstance().getAdapterBridgeVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void destory() {
        TTRewardVideoAd tTRewardVideoAd = this.f10416c;
        if (tTRewardVideoAd != null) {
            tTRewardVideoAd.setRewardAdInteractionListener(null);
            this.f10416c = null;
        }
        this.f10421h = null;
        this.f10422i = null;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdInternalAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<Integer, Class<? extends ATBaseAdAdapter>> getFormatAdapterMap() {
        HashMap map = new HashMap();
        map.put(3, TTATInterstitialAdapter.class);
        map.put(4, TTATSplashAdapter.class);
        map.put(0, TTATAdapter.class);
        return map;
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.f10418e;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkName() {
        return TTATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.f10415b;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return TTATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean isAdReady() {
        TTRewardVideoAd tTRewardVideoAd = this.f10416c;
        return tTRewardVideoAd != null && tTRewardVideoAd.getMediationManager().isReady();
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) throws Throwable {
        if (a(map, map2)) {
            TTATInitManager.getInstance().initSDK(context, map, new d(context, map, map2));
        } else {
            notifyATLoadFail("", "app_id or slot_id is empty!");
        }
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        TTRewardVideoAd tTRewardVideoAd;
        if (activity == null || (tTRewardVideoAd = this.f10416c) == null) {
            return;
        }
        tTRewardVideoAd.setRewardAdInteractionListener(this.f10422i);
        this.f10416c.setDownloadListener(this.f10424k);
        this.f10416c.showRewardVideoAd(activity);
    }

    @Override // com.anythink.core.api.bridge.ATBaseAdAdapter, com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) throws Throwable {
        this.f10420g = true;
        loadCustomNetworkAd(context, map, map2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Context context, float f2) {
        float f3 = context.getResources().getDisplayMetrics().density;
        if (f3 <= 0.0f) {
            f3 = 1.0f;
        }
        return (int) ((f2 / f3) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        runOnNetworkRequestThread(new c(context.getApplicationContext(), map, map2));
    }

    private boolean a(Map<String, Object> map, Map<String, Object> map2) {
        String stringFromMap = ATInitMediation.getStringFromMap(map, "app_id");
        this.f10415b = ATInitMediation.getStringFromMap(map, "slot_id");
        if (TextUtils.isEmpty(stringFromMap) || TextUtils.isEmpty(this.f10415b)) {
            return false;
        }
        this.f10419f = ATInitMediation.getStringFromMap(map, "payload");
        return true;
    }

    private void a(int i2, Bundle bundle) {
        try {
            if (this.f10418e == null) {
                this.f10418e = new HashMap();
            }
            HashMap map = new HashMap(4);
            map.put(TTATConst.REWARD_EXTRA.REWARD_EXTRA_KEY_REWARD_TYPE, Integer.valueOf(i2));
            if (bundle != null) {
                Object obj = bundle.get("transId");
                if (obj != null) {
                    this.f10418e.put("transId", obj.toString());
                    this.f10418e.put("third_trans_id", obj.toString());
                }
                map.put(TTATConst.REWARD_EXTRA.REWARD_EXTRA_KEY_BUNDLE, bundle);
                map.put(ATAdConst.REWARD_EXTRA.REWARD_INFO_ERROR_CODE, Integer.valueOf(bundle.getInt("reward_extra_key_error_code")));
                map.put(ATAdConst.REWARD_EXTRA.REWARD_INFO_ERROR_MSG, bundle.getString("reward_extra_key_error_msg"));
            }
            this.f10418e.put(ATAdConst.REWARD_EXTRA.REWARD_INFO, map);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z2, int i2, Bundle bundle, boolean z3) {
        a(i2, bundle);
        if (this.f10417d) {
            return;
        }
        this.f10417d = true;
        CustomRewardedVideoEventListener customRewardedVideoEventListener = this.mImpressionListener;
        if (customRewardedVideoEventListener != null) {
            if (z2) {
                if (z3) {
                    customRewardedVideoEventListener.onAgainReward();
                    return;
                } else {
                    customRewardedVideoEventListener.onReward();
                    return;
                }
            }
            if (z3) {
                customRewardedVideoEventListener.onAgainRewardFailed();
            } else {
                customRewardedVideoEventListener.onRewardFailed();
            }
        }
    }
}
