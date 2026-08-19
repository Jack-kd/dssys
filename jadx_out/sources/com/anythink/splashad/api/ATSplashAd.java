package com.anythink.splashad.api;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
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
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.a.c;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.s;
import com.anythink.core.common.g;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.u.f;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ak;
import com.anythink.core.common.v.b.d;
import com.anythink.core.common.v.b.e;
import com.anythink.core.common.v.o;
import com.anythink.core.e.m;
import com.anythink.splashad.a.a;
import com.anythink.splashad.a.b;
import com.anythink.splashad.a.c;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class ATSplashAd {
    public static final int DEFAULT_SPLASH_TIMEOUT_TIME = 5000;
    final String TAG;
    public ATAdMultipleLoadedListener adMultipleLoadedListener;
    private ATAdRequest adRequest;
    WeakReference<Activity> mActivityWeakRef;
    c mAdLoadManager;
    ATAdRevenueListener mAdRevenueListener;
    com.anythink.core.common.d.c mAdSourceEventListener;
    Context mContext;
    ATAdSourceStatusListener mDeveloperStatusListener;
    ATEventInterface mDownloadListener;
    int mFetchAdTimeout;
    ATSplashAdListener mListener;
    ATAdMultipleLoadedListener mMultipleLoadedListener;
    private ATNativeAdCustomRender mNativeAdCustomRender;
    String mPlacementId;
    Map<String, Object> mTKExtraMap;

    /* renamed from: com.anythink.splashad.api.ATSplashAd$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        final /* synthetic */ ATAdRequest val$adRequest;
        final /* synthetic */ Map val$finalTkExtraMap;
        final /* synthetic */ int val$loadType;
        final /* synthetic */ long val$startLoadTime;

        /* renamed from: com.anythink.splashad.api.ATSplashAd$2$1, reason: invalid class name */
        public class AnonymousClass1 extends b {
            boolean hasCacheWhenTimeout = false;
            final /* synthetic */ int val$finalTimeout;

            public AnonymousClass1(int i2) {
                this.val$finalTimeout = i2;
            }

            @Override // com.anythink.splashad.a.b
            public void onAdLoaded(String str, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            s.b();
                            com.anythink.core.common.v.c.a();
                            com.anythink.core.common.v.c.a(ATSplashAd.this.getSplashCache());
                        } catch (Throwable unused) {
                        }
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onAdLoaded(!anonymousClass1.hasCacheWhenTimeout && z2);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.b
            public void onNoAdError(String str, final AdError adError) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onNoAdError(adError);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.b
            public void onTimeout(final String str) {
                c cVar = ATSplashAd.this.mAdLoadManager;
                if (cVar != null) {
                    final g gVarA = cVar.a(str);
                    c.a aVarH = gVarA != null ? gVarA.h() : null;
                    if (aVarH != null) {
                        aVarH.b();
                    }
                    ae aeVar = new ae();
                    aeVar.a(AnonymousClass2.this.val$finalTkExtraMap);
                    aeVar.a(AnonymousClass2.this.val$adRequest);
                    ATSplashAd aTSplashAd = ATSplashAd.this;
                    com.anythink.core.common.h.c cVarA = aTSplashAd.mAdLoadManager.a(aTSplashAd.mContext, aeVar);
                    if (cVarA != null) {
                        this.hasCacheWhenTimeout = true;
                        if (gVarA != null) {
                            if (aVarH == null || aVarH.e() != cVarA) {
                                gVarA.a(9, cVarA.o());
                            } else {
                                gVarA.a(11, cVarA.o());
                            }
                            f.a(ATSplashAd.this.mPlacementId, str, gVarA.i(), "1", cVarA, this.val$finalTimeout, AnonymousClass2.this.val$adRequest);
                            return;
                        }
                    }
                    s.b();
                    s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.1.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str2 = ATSplashAd.this.mPlacementId;
                            String str3 = str;
                            g gVar = gVarA;
                            m mVarI = gVar != null ? gVar.i() : null;
                            f.a(str2, str3, mVarI, "2", (com.anythink.core.common.h.c) null, r0.val$finalTimeout, AnonymousClass2.this.val$adRequest);
                            ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                            if (aTSplashAdListener != null) {
                                aTSplashAdListener.onAdLoadTimeout();
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass2(int i2, Map map, ATAdRequest aTAdRequest, long j2) {
            this.val$loadType = i2;
            this.val$finalTkExtraMap = map;
            this.val$adRequest = aTAdRequest;
            this.val$startLoadTime = j2;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r18 = this;
                r0 = r18
                com.anythink.splashad.api.ATSplashAd r1 = com.anythink.splashad.api.ATSplashAd.this
                int r1 = r1.mFetchAdTimeout
                long r14 = android.os.SystemClock.elapsedRealtime()
                com.anythink.splashad.api.ATSplashAd r2 = com.anythink.splashad.api.ATSplashAd.this
                android.content.Context r2 = r2.mContext
                com.anythink.core.e.o r2 = com.anythink.core.e.o.a(r2)
                com.anythink.splashad.api.ATSplashAd r3 = com.anythink.splashad.api.ATSplashAd.this
                java.lang.String r3 = r3.mPlacementId
                com.anythink.core.e.m r2 = r2.a(r3)
                if (r2 != 0) goto L2c
                com.anythink.splashad.api.ATSplashAd r2 = com.anythink.splashad.api.ATSplashAd.this
                android.content.Context r2 = r2.mContext
                com.anythink.core.e.o r2 = com.anythink.core.e.o.a(r2)
                com.anythink.splashad.api.ATSplashAd r3 = com.anythink.splashad.api.ATSplashAd.this
                java.lang.String r3 = r3.mPlacementId
                com.anythink.core.e.m r2 = r2.g(r3)
            L2c:
                r16 = r2
                if (r16 == 0) goto L37
                int r2 = r16.bq()
            L34:
                r17 = r2
                goto L39
            L37:
                r2 = -1
                goto L34
            L39:
                r2 = 0
                if (r1 > 0) goto L41
                if (r17 <= 0) goto L3f
                goto L43
            L3f:
                r3 = r2
                goto L46
            L41:
                if (r17 <= 0) goto L45
            L43:
                r1 = r17
            L45:
                r3 = 1
            L46:
                if (r1 > 0) goto L4d
                r1 = 5000(0x1388, float:7.006E-42)
                r7 = r2
            L4b:
                r6 = r1
                goto L4f
            L4d:
                r7 = r3
                goto L4b
            L4f:
                com.anythink.splashad.api.ATSplashAd r1 = com.anythink.splashad.api.ATSplashAd.this
                java.lang.ref.WeakReference<android.app.Activity> r1 = r1.mActivityWeakRef
                r2 = 0
                if (r1 == 0) goto L5d
                java.lang.Object r1 = r1.get()
                android.app.Activity r1 = (android.app.Activity) r1
                goto L5e
            L5d:
                r1 = r2
            L5e:
                int r3 = r0.val$loadType
                if (r3 != 0) goto L6a
                com.anythink.splashad.api.ATSplashAd$2$1 r2 = new com.anythink.splashad.api.ATSplashAd$2$1
                r2.<init>(r6)
                r2.startCountDown(r6)
            L6a:
                r4 = r2
                com.anythink.splashad.api.ATSplashAd r2 = com.anythink.splashad.api.ATSplashAd.this
                com.anythink.splashad.a.c r3 = r2.mAdLoadManager
                if (r3 == 0) goto L98
                if (r1 == 0) goto L74
                goto L76
            L74:
                android.content.Context r1 = r2.mContext
            L76:
                com.anythink.core.api.ATAdMultipleLoadedListener r5 = r2.adMultipleLoadedListener
                int r8 = r0.val$loadType
                com.anythink.core.common.d.c r9 = r2.mAdSourceEventListener
                java.util.Map r10 = r0.val$finalTkExtraMap
                com.anythink.core.api.ATAdRequest r11 = r0.val$adRequest
                long r12 = r0.val$startLoadTime
                r2 = r3
                r3 = r1
                r2.a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r14)
                com.anythink.splashad.api.ATSplashAd r1 = com.anythink.splashad.api.ATSplashAd.this
                java.lang.String r3 = r1.mPlacementId
                int r5 = r1.mFetchAdTimeout
                com.anythink.core.api.ATAdRequest r8 = r0.val$adRequest
                r7 = r6
                r4 = r16
                r6 = r17
                com.anythink.core.common.u.f.a(r3, r4, r5, r6, r7, r8)
                return
            L98:
                com.anythink.core.common.d.s.b()
                com.anythink.splashad.api.ATSplashAd$2$2 r1 = new com.anythink.splashad.api.ATSplashAd$2$2
                r1.<init>()
                com.anythink.core.common.d.s.b(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.anythink.splashad.api.ATSplashAd.AnonymousClass2.run():void");
        }
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener) {
        this(context, str, aTSplashAdListener, 0);
    }

    private void cleanListener() {
        try {
            this.mListener = null;
            this.mAdRevenueListener = null;
            this.mMultipleLoadedListener = null;
            this.mDownloadListener = null;
            this.mDeveloperStatusListener = null;
            this.mAdSourceEventListener = null;
        } catch (Throwable unused) {
        }
    }

    private ATAdStatusInfo getAdStatus() {
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            Log.e(this.TAG, "SDK init error!");
            return null;
        }
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            return cVar.a(this.mContext, this.mTKExtraMap);
        }
        Log.e(this.TAG, "PlacementId is empty!");
        return new ATAdStatusInfo(false, false, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.anythink.core.common.h.c getSplashCache() {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            return cVar.a(this.mTKExtraMap);
        }
        return null;
    }

    public ATAdStatusInfo checkAdStatus() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return new ATAdStatusInfo(false, false, null);
        }
        aa.b(this.mPlacementId, i.s.f2740t, i.s.f2717C, adStatus.toString(), "");
        return adStatus;
    }

    public List<ATAdInfo> checkValidAdCaches() {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            return cVar.a(this.mContext);
        }
        return null;
    }

    public void clearCache(int i2) {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            cVar.a(i2);
        }
    }

    public void destroyAd() {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            cVar.d();
        }
        cleanListener();
    }

    public void entryAdScenario(String str) {
        if (this.mAdLoadManager != null) {
            s.b().a(this.mAdLoadManager.b(), str, "4", (Map<String, Object>) null);
        }
    }

    public boolean isAdReady() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return false;
        }
        boolean zIsReady = adStatus.isReady();
        aa.b(this.mPlacementId, i.s.f2740t, i.s.f2716B, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public boolean isMultiton() {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        return cVar != null && cVar.a();
    }

    public void loadAd() {
        loadAd((ATAdRequest) null);
    }

    @Deprecated
    public void onDestory() {
    }

    public void sendEvent(Map<String, Object> map) {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            cVar.b(map);
        }
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        this.mDownloadListener = aTEventInterface;
    }

    public void setAdListener(ATSplashAdListener aTSplashAdListener) {
        this.mListener = aTSplashAdListener;
    }

    public void setAdMultipleLoadedListener(ATAdMultipleLoadedListener aTAdMultipleLoadedListener) {
        this.mMultipleLoadedListener = aTAdMultipleLoadedListener;
    }

    public void setAdRevenueListener(ATAdRevenueListener aTAdRevenueListener) {
        this.mAdRevenueListener = aTAdRevenueListener;
    }

    public void setAdSourceStatusListener(ATAdSourceStatusListener aTAdSourceStatusListener) {
        if (this.mAdSourceEventListener == null) {
            this.mAdSourceEventListener = new com.anythink.core.common.d.c();
        }
        this.mDeveloperStatusListener = aTAdSourceStatusListener;
        this.mAdSourceEventListener.setAdSourceStatusListener(aTAdSourceStatusListener);
    }

    public void setLocalExtra(Map<String, Object> map) {
        if (TextUtils.isEmpty(this.mPlacementId)) {
            Log.e(this.TAG, "You must set unit Id first.");
            return;
        }
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            cVar.c(map);
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

    public void show(Activity activity, ViewGroup viewGroup) {
        show(activity, viewGroup, "");
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener, ATAdCreateConfig aTAdCreateConfig) {
        this(context, str, aTSplashAdListener, 0, aTAdCreateConfig);
    }

    @Deprecated
    public void loadAd(ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        loadAd(aTAdxBidFloorInfo != null ? new ATAdRequest.Builder().setATAdxBidFloorInfo(aTAdxBidFloorInfo).build() : null);
    }

    @Deprecated
    public void show(Activity activity, ViewGroup viewGroup, String str) {
        show(activity, viewGroup, (ATSplashSkipInfo) null, o.e(str));
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener, int i2) {
        this(context, str, aTSplashAdListener, i2, null);
    }

    public void clearCache(List<ATAdInfo> list) {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            cVar.a(list);
        }
    }

    public void entryAdScenario(String str, Map<String, Object> map) {
        if (this.mAdLoadManager != null) {
            s.b().a(this.mAdLoadManager.b(), str, "4", map);
        }
    }

    public void show(Activity activity, ViewGroup viewGroup, ATSplashSkipInfo aTSplashSkipInfo) {
        show(activity, viewGroup, aTSplashSkipInfo, (ATShowConfig) null);
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener, int i2, ATAdCreateConfig aTAdCreateConfig) {
        this.TAG = getClass().getSimpleName();
        this.adMultipleLoadedListener = new ATAdMultipleLoadedListener() { // from class: com.anythink.splashad.api.ATSplashAd.1
            @Override // com.anythink.core.api.ATAdMultipleLoadedListener
            public void onAdMultipleLoaded(final ATRequestingInfo aTRequestingInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATAdMultipleLoadedListener aTAdMultipleLoadedListener = ATSplashAd.this.mMultipleLoadedListener;
                        if (aTAdMultipleLoadedListener != null) {
                            aTAdMultipleLoadedListener.onAdMultipleLoaded(aTRequestingInfo);
                        }
                    }
                });
            }
        };
        this.mContext = context.getApplicationContext();
        this.mPlacementId = str;
        this.mListener = aTSplashAdListener;
        this.mFetchAdTimeout = i2;
        if (context instanceof Activity) {
            this.mActivityWeakRef = new WeakReference<>((Activity) context);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mAdLoadManager = new com.anythink.splashad.a.c(context, str, aTAdCreateConfig);
    }

    public void loadAd(ATAdRequest aTAdRequest) {
        loadAd(aTAdRequest, 0);
    }

    @Deprecated
    public void show(Activity activity, ViewGroup viewGroup, ATSplashSkipInfo aTSplashSkipInfo, String str) {
        show(activity, viewGroup, aTSplashSkipInfo, o.e(str));
    }

    private void loadAd(ATAdRequest aTAdRequest, int i2) {
        HashMap map;
        if (TextUtils.isEmpty(this.mPlacementId)) {
            ATSplashAdListener aTSplashAdListener = this.mListener;
            if (aTSplashAdListener != null) {
                aTSplashAdListener.onNoAdError(ErrorCode.getErrorCode("9999", "", "placementId maybe is null"));
                return;
            }
            return;
        }
        String str = this.mPlacementId;
        String str2 = i.s.f2740t;
        String str3 = i.s.f2745y;
        String str4 = i.s.f2735o;
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        aa.a(str, str2, str3, str4, "", cVar != null ? cVar.b() : null);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.adRequest = aTAdRequest;
        if (this.mTKExtraMap != null) {
            map = new HashMap(this.mTKExtraMap);
        } else {
            map = new HashMap();
        }
        HashMap map2 = map;
        com.anythink.splashad.a.c cVar2 = this.mAdLoadManager;
        if (cVar2 != null) {
            cVar2.c();
        }
        com.anythink.core.common.v.b.c.a().b(new d(e.aj, new AnonymousClass2(i2, map2, aTAdRequest, jElapsedRealtime)));
    }

    public void show(Activity activity, ViewGroup viewGroup, ATSplashSkipInfo aTSplashSkipInfo, ATShowConfig aTShowConfig) {
        aa.b(this.mPlacementId, i.s.f2740t, i.s.f2715A, i.s.f2735o, "");
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            Log.e(this.TAG, "SDK init error!");
            return;
        }
        if (activity == null) {
            Log.e(this.TAG, "Splash Activity is null.");
        }
        if (viewGroup == null) {
            Log.e(this.TAG, "Splash Container is null.");
            return;
        }
        if (ATSDK.isNetworkLogDebug()) {
            ak.a(viewGroup);
        }
        a aVar = new a() { // from class: com.anythink.splashad.api.ATSplashAd.3
            @Override // com.anythink.splashad.a.a
            public void onAdClick(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.3.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onAdClick(aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.a
            public void onAdDismiss(final ATAdInfo aTAdInfo, final ATSplashAdExtraInfo aTSplashAdExtraInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.3.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onAdDismiss(aTAdInfo, aTSplashAdExtraInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.a
            public void onAdReward(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener == null || !(aTSplashAdListener instanceof ATSplashExListener)) {
                            return;
                        }
                        ((ATSplashExListener) aTSplashAdListener).onSplashAdReward(aTAdInfo);
                    }
                });
            }

            @Override // com.anythink.splashad.a.a
            public void onAdShow(final ATAdInfo aTAdInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.3.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATAdRevenueListener aTAdRevenueListener = ATSplashAd.this.mAdRevenueListener;
                        if (aTAdRevenueListener != null) {
                            aTAdRevenueListener.onAdRevenuePaid(aTAdInfo);
                        }
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onAdShow(aTAdInfo);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.a
            public void onDeeplinkCallback(final ATAdInfo aTAdInfo, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.3.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener == null || !(aTSplashAdListener instanceof ATSplashExListener)) {
                            return;
                        }
                        ((ATSplashExListener) aTSplashAdListener).onDeeplinkCallback(aTAdInfo, z2);
                    }
                });
            }

            @Override // com.anythink.splashad.a.a
            public void onDownloadConfirm(final Context context, final ATAdInfo aTAdInfo, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.3.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAd aTSplashAd = ATSplashAd.this;
                        ATSplashAdListener aTSplashAdListener = aTSplashAd.mListener;
                        if (aTSplashAdListener == null || !(aTSplashAdListener instanceof ATSplashExListener)) {
                            return;
                        }
                        ATSplashExListener aTSplashExListener = (ATSplashExListener) aTSplashAdListener;
                        Context context2 = context;
                        if (context2 == null) {
                            context2 = aTSplashAd.mContext;
                        }
                        aTSplashExListener.onDownloadConfirm(context2, aTAdInfo, aTNetworkConfirmInfo);
                    }
                });
            }
        };
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            cVar.a(activity, viewGroup, aVar, this.mDownloadListener, aTSplashSkipInfo, aTShowConfig, this.mTKExtraMap, this.mNativeAdCustomRender);
        }
    }
}
