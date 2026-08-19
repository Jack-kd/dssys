package com.anythink.rewardvideo.api;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdRevenueListener;
import com.anythink.core.api.ATAdSourceStatusListener;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.ATRequestingInfo;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.d.a;
import com.anythink.core.common.d.c;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.s;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.h;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class ATRewardVideoAd {
    final String TAG;
    a adLoadListener;
    public ATAdMultipleLoadedListener adMultipleLoadedListener;
    WeakReference<Activity> mActivityWef;
    com.anythink.rewardvideo.a.a mAdLoadManager;
    ATAdRevenueListener mAdRevenueListener;
    c mAdSourceEventListener;
    Context mContext;
    ATAdSourceStatusListener mDeveloperStatusListener;
    ATEventInterface mDownloadListener;
    private ATRewardVideoExListener mInterListener;
    ATRewardVideoListener mListener;
    ATAdMultipleLoadedListener mMultipleLoadedListener;
    private ATNativeAdCustomRender mNativeAdCustomRender;
    String mPlacementId;
    Map<String, Object> mTKExtraMap;

    public ATRewardVideoAd(Context context, String str) {
        this(context, str, null);
    }

    private void controlShow(Activity activity, ATShowConfig aTShowConfig) {
        aa.b(this.mPlacementId, i.s.f2738r, i.s.f2715A, i.s.f2735o, "");
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            AdError errorCode = ErrorCode.getErrorCode("9999", "", "sdk init error");
            ATRewardVideoListener aTRewardVideoListener = this.mListener;
            if (aTRewardVideoListener != null) {
                aTRewardVideoListener.onRewardedVideoAdPlayFailed(errorCode, k.a((ATBaseAdAdapter) null));
            }
            Log.e(this.TAG, "SDK init error!");
            return;
        }
        if (activity == null) {
            Context context = this.mContext;
            if (context instanceof Activity) {
                activity = (Activity) context;
            }
        }
        Activity activity2 = activity;
        if (activity2 == null) {
            Log.e(this.TAG, "RewardedVideo Show Activity is null.");
        }
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.a(activity2, aTShowConfig, this.mInterListener, this.mDownloadListener, this.mTKExtraMap, this.mNativeAdCustomRender);
            return;
        }
        ATRewardVideoListener aTRewardVideoListener2 = this.mListener;
        if (aTRewardVideoListener2 != null) {
            aTRewardVideoListener2.onRewardedVideoAdPlayFailed(ErrorCode.getErrorCode("9999", "", "adLoadManager is null"), k.a((ATBaseAdAdapter) null));
        }
    }

    private ATAdStatusInfo getAdStatus() {
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            Log.e(this.TAG, "SDK init error!");
            return null;
        }
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            return aVar.a(this.mContext, this.mTKExtraMap);
        }
        Log.e(this.TAG, "PlacementId is empty!");
        return new ATAdStatusInfo(false, false, null);
    }

    private Context getRequestContext() {
        WeakReference<Activity> weakReference = this.mActivityWef;
        Activity activity = weakReference != null ? weakReference.get() : null;
        return activity != null ? activity : this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.anythink.core.common.h.c getRewardCache() {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            return aVar.a(this.mTKExtraMap);
        }
        return null;
    }

    private boolean isPlaceStrategyNeedAutoLoad() {
        if (TextUtils.isEmpty(this.mPlacementId)) {
            Log.e(this.TAG, "You must set unit Id first.");
            return false;
        }
        m mVarA = o.a(s.b().g()).a(this.mPlacementId);
        return mVarA != null && mVarA.an() == 1;
    }

    public ATAdStatusInfo checkAdStatus() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return new ATAdStatusInfo(false, false, null);
        }
        aa.b(this.mPlacementId, i.s.f2738r, i.s.f2717C, adStatus.toString(), "");
        return adStatus;
    }

    public List<ATAdInfo> checkValidAdCaches() {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            return aVar.a(this.mContext);
        }
        return null;
    }

    public void clearCache(int i2) {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.a(i2);
        }
    }

    public void destroyAd() {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void entryAdScenario(String str) {
        if (this.mAdLoadManager != null) {
            s.b().a(this.mAdLoadManager.b(), str, "1", (Map<String, Object>) null);
        }
    }

    public boolean isAdReady() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return false;
        }
        boolean zIsReady = adStatus.isReady();
        aa.b(this.mPlacementId, i.s.f2738r, i.s.f2716B, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public boolean isMultiton() {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        return aVar != null && aVar.a();
    }

    public void load() {
        load(null);
    }

    public void sendEvent(Map<String, Object> map) {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.b(map);
        }
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        this.mDownloadListener = aTEventInterface;
    }

    public void setAdListener(ATRewardVideoListener aTRewardVideoListener) {
        this.mListener = aTRewardVideoListener;
    }

    public void setAdMultipleLoadedListener(ATAdMultipleLoadedListener aTAdMultipleLoadedListener) {
        this.mMultipleLoadedListener = aTAdMultipleLoadedListener;
    }

    public void setAdRevenueListener(ATAdRevenueListener aTAdRevenueListener) {
        this.mAdRevenueListener = aTAdRevenueListener;
    }

    public void setAdSourceStatusListener(ATAdSourceStatusListener aTAdSourceStatusListener) {
        if (this.mAdSourceEventListener == null) {
            this.mAdSourceEventListener = new c();
        }
        this.mDeveloperStatusListener = aTAdSourceStatusListener;
        this.mAdSourceEventListener.setAdSourceStatusListener(aTAdSourceStatusListener);
    }

    public void setLocalExtra(Map<String, Object> map) {
        if (TextUtils.isEmpty(this.mPlacementId)) {
            Log.e(this.TAG, "You must set unit Id first.");
            return;
        }
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.c(map);
        }
    }

    public void setNativeAdCustomRender(ATNativeAdCustomRender aTNativeAdCustomRender) {
        this.mNativeAdCustomRender = aTNativeAdCustomRender;
    }

    public void setTKExtra(Map<String, Object> map) {
        if (this.mTKExtraMap == null) {
            this.mTKExtraMap = new ConcurrentHashMap();
        }
        this.mTKExtraMap.clear();
        this.mTKExtraMap.putAll(map);
    }

    @Deprecated
    public void show(Activity activity, String str) {
        controlShow(activity, com.anythink.core.common.v.o.e(str));
    }

    public ATRewardVideoAd(Context context, String str, ATAdCreateConfig aTAdCreateConfig) {
        this.TAG = getClass().getSimpleName();
        this.mInterListener = new ATRewardVideoExListener() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1
            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onAgainReward(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.13
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ((ATRewardVideoExListener) aTRewardVideoListener).onAgainReward(aTAdInfo);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onAgainRewardFailed(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                            if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                                return;
                            }
                            ((ATRewardVideoExListener) aTRewardVideoListener).onAgainRewardFailed(aTAdInfo);
                        } catch (Throwable th) {
                            th.getMessage();
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onDeeplinkCallback(final ATAdInfo aTAdInfo, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ((ATRewardVideoExListener) aTRewardVideoListener).onDeeplinkCallback(aTAdInfo, z2);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onDownloadConfirm(final Context context2, final ATAdInfo aTAdInfo, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoAd aTRewardVideoAd = ATRewardVideoAd.this;
                        ATRewardVideoListener aTRewardVideoListener = aTRewardVideoAd.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ATRewardVideoExListener aTRewardVideoExListener = (ATRewardVideoExListener) aTRewardVideoListener;
                        Context context3 = context2;
                        if (context3 == null) {
                            context3 = aTRewardVideoAd.mContext;
                        }
                        aTRewardVideoExListener.onDownloadConfirm(context3, aTAdInfo, aTNetworkConfirmInfo);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onReward(final ATAdInfo aTAdInfo) {
                final boolean z2 = aTAdInfo == null;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a(ATRewardVideoAd.this.mPlacementId, "onReward", aTAdInfo, z2);
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onReward(aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onRewardFailed(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.15
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                            if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                                return;
                            }
                            ((ATRewardVideoExListener) aTRewardVideoListener).onRewardFailed(aTAdInfo);
                        } catch (Throwable th) {
                            th.getMessage();
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onRewardedVideoAdAgainPlayClicked(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayClicked(aTAdInfo);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onRewardedVideoAdAgainPlayEnd(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayEnd(aTAdInfo);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onRewardedVideoAdAgainPlayFailed(final AdError adError, final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayFailed(adError, aTAdInfo);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoExListener
            public void onRewardedVideoAdAgainPlayStart(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATAdRevenueListener aTAdRevenueListener = ATRewardVideoAd.this.mAdRevenueListener;
                        if (aTAdRevenueListener != null) {
                            aTAdRevenueListener.onAdRevenuePaid(aTAdInfo);
                        }
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener == null || !(aTRewardVideoListener instanceof ATRewardVideoExListener)) {
                            return;
                        }
                        ((ATRewardVideoExListener) aTRewardVideoListener).onRewardedVideoAdAgainPlayStart(aTAdInfo);
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdClosed(final ATAdInfo aTAdInfo) {
                final boolean z2 = aTAdInfo == null;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a(ATRewardVideoAd.this.mPlacementId, "onRewardedVideoAdClosed", aTAdInfo, z2);
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdClosed(aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdFailed(AdError adError) {
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdLoaded() {
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdPlayClicked(final ATAdInfo aTAdInfo) {
                final boolean z2 = aTAdInfo == null;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a(ATRewardVideoAd.this.mPlacementId, "onRewardedVideoAdPlayClicked", aTAdInfo, z2);
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdPlayClicked(aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdPlayEnd(final ATAdInfo aTAdInfo) {
                final boolean z2 = aTAdInfo == null;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a(ATRewardVideoAd.this.mPlacementId, "onRewardedVideoAdPlayEnd", aTAdInfo, z2);
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdPlayEnd(aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdPlayFailed(final AdError adError, final ATAdInfo aTAdInfo) {
                final boolean z2 = aTAdInfo == null;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a(ATRewardVideoAd.this.mPlacementId, "onRewardedVideoAdPlayFailed", aTAdInfo, z2);
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdPlayFailed(adError, aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.rewardvideo.api.ATRewardVideoListener
            public void onRewardedVideoAdPlayStart(final ATAdInfo aTAdInfo) {
                final boolean z2 = aTAdInfo == null;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.a(ATRewardVideoAd.this.mPlacementId, "onRewardedVideoAdPlayStart", aTAdInfo, z2);
                        ATAdRevenueListener aTAdRevenueListener = ATRewardVideoAd.this.mAdRevenueListener;
                        if (aTAdRevenueListener != null) {
                            aTAdRevenueListener.onAdRevenuePaid(aTAdInfo);
                        }
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdPlayStart(aTAdInfo);
                        }
                    }
                });
            }
        };
        this.adLoadListener = new a() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.2
            @Override // com.anythink.core.common.d.a
            public void onAdLoadFail(final AdError adError) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.2.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdFailed(adError);
                        }
                    }
                });
            }

            @Override // com.anythink.core.common.d.a
            public void onAdLoaded() {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            s.b();
                            com.anythink.core.common.v.c.a();
                            com.anythink.core.common.v.c.a(ATRewardVideoAd.this.getRewardCache());
                        } catch (Throwable unused) {
                        }
                        ATRewardVideoListener aTRewardVideoListener = ATRewardVideoAd.this.mListener;
                        if (aTRewardVideoListener != null) {
                            aTRewardVideoListener.onRewardedVideoAdLoaded();
                        }
                    }
                });
            }
        };
        this.adMultipleLoadedListener = new ATAdMultipleLoadedListener() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.3
            @Override // com.anythink.core.api.ATAdMultipleLoadedListener
            public void onAdMultipleLoaded(final ATRequestingInfo aTRequestingInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.rewardvideo.api.ATRewardVideoAd.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATAdMultipleLoadedListener aTAdMultipleLoadedListener = ATRewardVideoAd.this.mMultipleLoadedListener;
                        if (aTAdMultipleLoadedListener != null) {
                            aTAdMultipleLoadedListener.onAdMultipleLoaded(aTRequestingInfo);
                        }
                    }
                });
            }
        };
        this.mPlacementId = str;
        this.mContext = context.getApplicationContext();
        if (context instanceof Activity) {
            this.mActivityWef = new WeakReference<>((Activity) context);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mAdLoadManager = new com.anythink.rewardvideo.a.a(context, str, aTAdCreateConfig);
    }

    public void load(Context context) {
        load(context, (ATAdRequest) null);
    }

    public void show(Activity activity) {
        show(activity, (ATShowConfig) null);
    }

    public void clearCache(List<ATAdInfo> list) {
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.a(list);
        }
    }

    public void entryAdScenario(String str, Map<String, Object> map) {
        if (this.mAdLoadManager != null) {
            s.b().a(this.mAdLoadManager.b(), str, "1", map);
        }
    }

    @Deprecated
    public void load(Context context, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        ATAdRequest aTAdRequestBuild = aTAdxBidFloorInfo != null ? new ATAdRequest.Builder().setATAdxBidFloorInfo(aTAdxBidFloorInfo).build() : null;
        if (context == null) {
            context = getRequestContext();
        }
        load(context, aTAdRequestBuild, 0);
    }

    public void show(Activity activity, ATShowConfig aTShowConfig) {
        controlShow(activity, aTShowConfig);
    }

    public void load(Context context, ATAdRequest aTAdRequest) {
        if (context == null) {
            context = getRequestContext();
        }
        load(context, aTAdRequest, 0);
    }

    private void load(Context context, ATAdRequest aTAdRequest, int i2) {
        String str = this.mPlacementId;
        String str2 = i.s.f2738r;
        String str3 = i.s.f2745y;
        String str4 = i.s.f2735o;
        com.anythink.rewardvideo.a.a aVar = this.mAdLoadManager;
        aa.a(str, str2, str3, str4, "", aVar != null ? aVar.b() : null);
        com.anythink.rewardvideo.a.a aVar2 = this.mAdLoadManager;
        if (aVar2 != null) {
            aVar2.a(context, i2, this.adLoadListener, this.mAdSourceEventListener, this.adMultipleLoadedListener, this.mTKExtraMap, aTAdRequest);
            return;
        }
        ATRewardVideoListener aTRewardVideoListener = this.mListener;
        if (aTRewardVideoListener != null) {
            aTRewardVideoListener.onRewardedVideoAdFailed(ErrorCode.getErrorCode("9999", "", "placementId maybe is null"));
        }
    }
}
