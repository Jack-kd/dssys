package com.anythink.banner.api;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.anythink.banner.a.c;
import com.anythink.banner.a.d;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.api.ATAdCreateConfig;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdMultipleLoadedListener;
import com.anythink.core.api.ATAdRequest;
import com.anythink.core.api.ATAdRevenueListener;
import com.anythink.core.api.ATAdSourceStatusListener;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATCustomContentResult;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNativeAdCustomRender;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.ATRequestingInfo;
import com.anythink.core.api.ATShowConfig;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.bridge.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.d.i;
import com.anythink.core.common.d.k;
import com.anythink.core.common.d.r;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.ae;
import com.anythink.core.common.h.n;
import com.anythink.core.common.u.g;
import com.anythink.core.common.v.a.f;
import com.anythink.core.common.v.aa;
import com.anythink.core.common.v.ah;
import com.anythink.core.common.v.b.e;
import com.anythink.core.e.m;
import com.anythink.core.e.o;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ATBannerView extends FrameLayout implements c {
    private static final long CONTROL_SHOW_DEBOUNCE_MS = 100;
    private final String TAG;
    com.anythink.core.common.d.a adLoadListener;
    public ATAdMultipleLoadedListener adMultipleLoadedListener;
    private ATAdxBidFloorInfo adxBidFloorInfo;
    private boolean canRenderBanner;
    boolean hasTouchWindow;
    com.anythink.core.common.v.a.c impressionTracker;
    private volatile boolean isControlShowing;
    boolean isShowCall;
    private ATCustomContentResult mATCustomContentResult;
    private com.anythink.banner.a.a mAdLoadManager;
    private ATAdRequest mAdRequest;
    com.anythink.core.common.d.c mAdSourceEventListener;
    private com.anythink.banner.b.a mBannerRefreshTimer;
    CustomBannerAdapter mCustomBannerAd;
    ATAdSourceStatusListener mDeveloperStatusListener;
    ATEventInterface mDownloadListener;
    private d mInnerBannerListener;
    boolean mIsRefresh;
    private volatile long mLastControlShowTime;
    private com.anythink.core.common.l.e.a.c mLastShowBannerView;
    private ATBannerListener mListener;
    private ATAdMultipleLoadedListener mMultipleLoadedListener;
    private String mPlacementId;
    private ATAdRevenueListener mRevenueListener;
    private String mScenario;
    private String mShowCustomExt;
    Map<String, Object> mTKExtraMap;
    private ATNativeAdCustomRender nativeAdCustomRender;
    f.b visibilityChecker;

    public static class a {
        static final int AD_LOADED = 0;
        static final int AUTO_REFRESH = 1;
        static final int ON_ATTACH_TO_WINDOW = 2;
        static final int ON_VISIBILITY_CHANGED = 3;
        static final int ON_WINDOW_FOCUS_CHANGED = 4;

        private a() {
        }
    }

    public ATBannerView(Context context) {
        super(context);
        this.TAG = ATBannerView.class.getSimpleName();
        this.mScenario = "";
        this.mShowCustomExt = "";
        this.hasTouchWindow = false;
        this.mIsRefresh = false;
        this.isControlShowing = false;
        this.mLastControlShowTime = 0L;
        this.mInnerBannerListener = new d() { // from class: com.anythink.banner.api.ATBannerView.1
            @Override // com.anythink.banner.a.d
            public void onBannerClicked(final CustomBannerAdapter customBannerAdapter) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView.this.mListener.onBannerClicked(k.a(customBannerAdapter));
                        }
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onBannerClose(final CustomBannerAdapter customBannerAdapter) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView.this.mListener.onBannerClose(k.a(customBannerAdapter));
                        }
                    }
                });
                if (ATAdxSetting.getInstance().isAdxNetworkMode(ATBannerView.this.mPlacementId)) {
                    return;
                }
                ATBannerView.this.canRenderBanner = true;
                ATBannerView aTBannerView = ATBannerView.this;
                aTBannerView.loadAd(1, aTBannerView.mAdRequest);
            }

            @Override // com.anythink.banner.a.d
            public void onBannerShow(final CustomBannerAdapter customBannerAdapter, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        k kVarA = k.a(customBannerAdapter);
                        if (ATBannerView.this.mRevenueListener != null) {
                            ATBannerView.this.mRevenueListener.onAdRevenuePaid(kVarA);
                        }
                        if (ATBannerView.this.mListener != null) {
                            if (customBannerAdapter == null || !z2) {
                                ATBannerView.this.mListener.onBannerShow(kVarA);
                            } else {
                                ATBannerView.this.mListener.onBannerAutoRefreshed(kVarA);
                            }
                        }
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onDeeplinkCallback(final CustomBannerAdapter customBannerAdapter, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !(ATBannerView.this.mListener instanceof ATBannerExListener)) {
                            return;
                        }
                        ((ATBannerExListener) ATBannerView.this.mListener).onDeeplinkCallback(ATBannerView.this.mIsRefresh, k.a(customBannerAdapter), z2);
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onDownloadConfirm(final Context context2, final CustomBannerAdapter customBannerAdapter, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !(ATBannerView.this.mListener instanceof ATBannerExListener)) {
                            return;
                        }
                        ((ATBannerExListener) ATBannerView.this.mListener).onDownloadConfirm(context2, k.a(customBannerAdapter), aTNetworkConfirmInfo);
                    }
                });
            }
        };
        this.adLoadListener = new com.anythink.core.common.d.a() { // from class: com.anythink.banner.api.ATBannerView.2
            @Override // com.anythink.core.common.d.a
            public void onAdLoadFail(final AdError adError) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.2.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !ATBannerView.this.canRenderBanner) {
                            return;
                        }
                        ATBannerView aTBannerView = ATBannerView.this;
                        if (aTBannerView.mIsRefresh) {
                            aTBannerView.mListener.onBannerAutoRefreshFail(adError);
                        } else {
                            aTBannerView.mListener.onBannerFailed(adError);
                        }
                    }
                });
                if (ATBannerView.this.mAdLoadManager == null || !ATBannerView.this.isInView() || ATBannerView.this.mBannerRefreshTimer.a()) {
                    return;
                }
                ATBannerView.this.mBannerRefreshTimer.b();
            }

            @Override // com.anythink.core.common.d.a
            public void onAdLoaded() {
                ATBannerView.this.isShowCall = true;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            s.b();
                            com.anythink.core.common.v.c.a();
                            com.anythink.core.common.v.c.a(ATBannerView.this.getBannerCache(false));
                        } catch (Throwable unused) {
                        }
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView aTBannerView = ATBannerView.this;
                            if (!aTBannerView.mIsRefresh) {
                                aTBannerView.mListener.onBannerLoaded();
                            }
                        }
                        ATBannerView.this.controlShow(0);
                    }
                });
            }
        };
        this.adMultipleLoadedListener = new ATAdMultipleLoadedListener() { // from class: com.anythink.banner.api.ATBannerView.3
            @Override // com.anythink.core.api.ATAdMultipleLoadedListener
            public void onAdMultipleLoaded(final ATRequestingInfo aTRequestingInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mMultipleLoadedListener != null) {
                            ATBannerView.this.mMultipleLoadedListener.onAdMultipleLoaded(aTRequestingInfo);
                        }
                    }
                });
            }
        };
        this.mBannerRefreshTimer = new com.anythink.banner.b.a(this);
    }

    private boolean checkVisibilityPercent() {
        if (this.visibilityChecker == null) {
            this.visibilityChecker = new f.b(1);
        }
        if (getParent() != null) {
            return this.visibilityChecker.a((View) getParent(), this, 80, 0);
        }
        return false;
    }

    private void clearAdClickRecord(n nVar) {
        com.anythink.core.common.v.c.a().b().d(nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.anythink.core.common.h.c getBannerCache(boolean z2) {
        ae cacheCheckInfo = getCacheCheckInfo(this.mTKExtraMap);
        cacheCheckInfo.f();
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            return aVar.a(getContext(), z2, cacheCheckInfo);
        }
        return null;
    }

    private ae getCacheCheckInfo(Map<String, Object> map) {
        ae aeVar = new ae();
        aeVar.a(map);
        aeVar.a(this.mAdRequest);
        return aeVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInView() {
        if (this.hasTouchWindow && isShown()) {
            return this.mCustomBannerAd == null || checkVisibilityPercent();
        }
        return false;
    }

    private boolean isLifecycleShowType(int i2) {
        return i2 == 2 || i2 == 3 || i2 == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRefreshOpen() {
        if (TextUtils.isEmpty(this.mPlacementId)) {
            Log.e(this.TAG, "You must set unit Id first.");
            return false;
        }
        m mVarA = o.a(getContext().getApplicationContext()).a(this.mPlacementId);
        return mVarA != null && mVarA.an() == 1;
    }

    private boolean isShowToReload() {
        if (TextUtils.isEmpty(this.mPlacementId)) {
            Log.e(this.TAG, "You must set unit Id first.");
            return false;
        }
        m mVarA = o.a(getContext().getApplicationContext()).a(this.mPlacementId);
        if (mVarA == null) {
            return false;
        }
        int iH = mVarA.h();
        return -1 == iH || 1 == iH;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBannerImpression(final Context context, final ATBaseAdAdapter aTBaseAdAdapter, final boolean z2) {
        final n trackingInfo = aTBaseAdAdapter.getTrackingInfo();
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(e.aa, new Runnable() { // from class: com.anythink.banner.api.ATBannerView.7
            @Override // java.lang.Runnable
            public void run() {
                com.anythink.core.common.v.c.a().a(aTBaseAdAdapter);
                trackingInfo.a(aTBaseAdAdapter.getInternalNetworkInfoMap());
                aa.a(trackingInfo, i.s.f2723c, i.s.f2733m, "");
                ah.b(trackingInfo, aTBaseAdAdapter);
                com.anythink.core.common.u.e.a(context);
                com.anythink.core.common.u.e.a(4, trackingInfo, aTBaseAdAdapter.getUnitGroupInfo());
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.7.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            k kVarA = k.a(aTBaseAdAdapter);
                            if (kVarA != null && kVarA.getNetworkFirmId() == -1) {
                                g.a(i.o.f2699c, aTBaseAdAdapter, null);
                            }
                            if (ATBannerView.this.mRevenueListener != null) {
                                ATBannerView.this.mRevenueListener.onAdRevenuePaid(kVarA);
                            }
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            if (z2) {
                                ATBannerView.this.mListener.onBannerAutoRefreshed(kVarA);
                            } else {
                                ATBannerView.this.mListener.onBannerShow(kVarA);
                            }
                        }
                    }
                });
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBannerShow(final Context context, final com.anythink.core.common.h.c cVar, final boolean z2) {
        final ATBaseAdAdapter aTBaseAdAdapterE = cVar.e();
        final n trackingInfo = aTBaseAdAdapterE.getTrackingInfo();
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(e.ab, new Runnable() { // from class: com.anythink.banner.api.ATBannerView.6
            @Override // java.lang.Runnable
            public final void run() throws NumberFormatException {
                if (trackingInfo != null) {
                    ah.a(ATBannerView.this.getContext(), trackingInfo);
                    com.anythink.core.common.f fVarA = trackingInfo.a();
                    if (fVarA != null && fVarA.e() != null) {
                        fVarA.e().a(context.getApplicationContext(), cVar);
                    }
                    com.anythink.core.common.u.e.a(context);
                    com.anythink.core.common.u.e.a(13, trackingInfo, aTBaseAdAdapterE.getUnitGroupInfo(), jCurrentTimeMillis);
                    if (aTBaseAdAdapterE.supportImpressionCallback()) {
                        return;
                    }
                    ATBannerView.this.notifyBannerImpression(context, aTBaseAdAdapterE, z2);
                }
            }
        }));
    }

    private void registerDelayShow(View view, final Context context, final com.anythink.core.common.h.c cVar, CustomBannerAdapter customBannerAdapter, final boolean z2) {
        if (view == null) {
            view = this;
        }
        com.anythink.core.common.v.a.c cVar2 = this.impressionTracker;
        if (cVar2 != null) {
            cVar2.a(view, new com.anythink.core.common.v.a.a() { // from class: com.anythink.banner.api.ATBannerView.4
                @Override // com.anythink.core.common.v.a.a, com.anythink.core.common.v.a.b
                public final int getImpressionMinPercentageViewed() {
                    return 50;
                }

                @Override // com.anythink.core.common.v.a.a, com.anythink.core.common.v.a.b
                public final int getImpressionMinTimeViewed() {
                    return 0;
                }

                @Override // com.anythink.core.common.v.a.a, com.anythink.core.common.v.a.b
                public final void recordImpression(View view2) {
                    ATBannerView.this.notifyBannerShow(context, cVar, z2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void renderBannerView(com.anythink.core.common.h.c r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.banner.api.ATBannerView.renderBannerView(com.anythink.core.common.h.c, boolean):void");
    }

    public ATAdStatusInfo checkAdStatus() {
        if (s.b().g() == null || TextUtils.isEmpty(s.b().p()) || TextUtils.isEmpty(s.b().q())) {
            Log.e(this.TAG, "SDK init error!");
            return new ATAdStatusInfo(false, false, null);
        }
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar == null) {
            Log.e(this.TAG, "PlacementId is empty!");
            return new ATAdStatusInfo(false, false, null);
        }
        ATAdStatusInfo aTAdStatusInfoA = aVar.a(getContext(), this.mTKExtraMap);
        aa.b(this.mPlacementId, i.s.f2736p, i.s.f2717C, aTAdStatusInfoA.toString(), "");
        return aTAdStatusInfoA;
    }

    public List<ATAdInfo> checkValidAdCaches() {
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            return aVar.a(getContext());
        }
        return null;
    }

    public void clearCache(int i2) {
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.a(i2);
        }
    }

    public void controlShow(int i2) {
        if (this.mAdLoadManager == null || this.isControlShowing) {
            return;
        }
        if (isLifecycleShowType(i2)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.mLastControlShowTime < 100) {
                return;
            } else {
                this.mLastControlShowTime = jCurrentTimeMillis;
            }
        }
        final boolean z2 = this.mIsRefresh;
        this.isControlShowing = true;
        com.anythink.core.common.v.b.c.a().b(new com.anythink.core.common.v.b.d(e.f8116Y, new Runnable() { // from class: com.anythink.banner.api.ATBannerView.5
            @Override // java.lang.Runnable
            public void run() {
                final com.anythink.core.common.h.c bannerCache;
                boolean z3;
                boolean z4;
                boolean z5;
                try {
                    synchronized (ATBannerView.this.mAdLoadManager) {
                        try {
                            if (ATBannerView.this.canRenderBanner) {
                                ATBannerView aTBannerView = ATBannerView.this;
                                bannerCache = aTBannerView.getBannerCache(aTBannerView.isShowCall);
                                ATBannerView aTBannerView2 = ATBannerView.this;
                                aTBannerView2.isShowCall = false;
                                if (bannerCache != null) {
                                    if (aTBannerView2.isInView()) {
                                        bannerCache.a(bannerCache.c() + 1);
                                        ATBannerView.this.canRenderBanner = false;
                                        z3 = false;
                                        z5 = false;
                                        z4 = true;
                                    } else {
                                        ATBannerView aTBannerView3 = ATBannerView.this;
                                        if (aTBannerView3.hasTouchWindow && aTBannerView3.isShown()) {
                                            z4 = false;
                                            z3 = false;
                                            z5 = true;
                                        }
                                    }
                                } else if (aTBannerView2.isRefreshOpen() && ATBannerView.this.mAdLoadManager != null && !ATBannerView.this.mAdLoadManager.c()) {
                                    ATBannerView aTBannerView4 = ATBannerView.this;
                                    if (aTBannerView4.hasTouchWindow && aTBannerView4.isShown()) {
                                        z4 = false;
                                        z3 = true;
                                    } else {
                                        z4 = false;
                                        z5 = false;
                                        z3 = true;
                                    }
                                }
                                z5 = z3;
                            } else {
                                bannerCache = null;
                            }
                            z4 = false;
                            z3 = false;
                            z5 = z3;
                        } finally {
                        }
                    }
                    if (z4 && bannerCache != null) {
                        s.b();
                        s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                ATBannerView.this.renderBannerView(bannerCache, z2);
                            }
                        });
                    }
                    if (z3) {
                        ATBannerView aTBannerView5 = ATBannerView.this;
                        aTBannerView5.loadAd(1, aTBannerView5.mAdRequest);
                    }
                    if (z5 && ATBannerView.this.mBannerRefreshTimer != null) {
                        ATBannerView.this.mBannerRefreshTimer.b();
                    }
                    ATBannerView.this.isControlShowing = false;
                } catch (Throwable th) {
                    ATBannerView.this.isControlShowing = false;
                    throw th;
                }
            }
        }));
    }

    public void destroy() {
        removeAllViews();
        this.isControlShowing = false;
        CustomBannerAdapter customBannerAdapter = this.mCustomBannerAd;
        if (customBannerAdapter != null) {
            clearAdClickRecord(customBannerAdapter.getTrackingInfo());
            this.mCustomBannerAd.internalDestroy();
        }
        com.anythink.banner.b.a aVar = this.mBannerRefreshTimer;
        if (aVar != null) {
            aVar.c();
        }
        com.anythink.core.common.v.a.c cVar = this.impressionTracker;
        if (cVar != null) {
            cVar.a();
        }
        com.anythink.banner.a.a aVar2 = this.mAdLoadManager;
        if (aVar2 != null) {
            aVar2.d();
            com.anythink.banner.a.a.a(this.mPlacementId);
        }
        com.anythink.core.common.l.e.a.c cVar2 = this.mLastShowBannerView;
        if (cVar2 instanceof com.anythink.core.common.l.e.a.d) {
            ((com.anythink.core.common.l.e.a.d) cVar2).destroyNativeAd();
            this.mLastShowBannerView = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        CustomBannerAdapter customBannerAdapter = this.mCustomBannerAd;
        if (customBannerAdapter != null) {
            com.anythink.core.common.u.a.a(getContext(), motionEvent, customBannerAdapter.getTrackingInfo());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void entryAdScenario(String str) {
        if (this.mAdLoadManager != null) {
            s.b().a(this.mAdLoadManager.b(), str, "2", (Map<String, Object>) null);
        }
    }

    public boolean isMultiton() {
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        return aVar != null && aVar.a();
    }

    public void loadAd() {
        loadAd(null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.hasTouchWindow = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.hasTouchWindow = false;
        CustomBannerAdapter customBannerAdapter = this.mCustomBannerAd;
        if (customBannerAdapter != null) {
            clearAdClickRecord(customBannerAdapter.getTrackingInfo());
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            controlShow(3);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            controlShow(4);
        }
    }

    public void sendEvent(Map<String, Object> map) {
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.a(map);
        }
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        r rVarC;
        this.mDownloadListener = aTEventInterface;
        if (this.mCustomBannerAd == null || (rVarC = s.b().c()) == null) {
            return;
        }
        CustomBannerAdapter customBannerAdapter = this.mCustomBannerAd;
        customBannerAdapter.setAdDownloadListener(rVarC.createDataFetchListener(customBannerAdapter, null, this.mDownloadListener));
    }

    public void setAdMultipleLoadedListener(ATAdMultipleLoadedListener aTAdMultipleLoadedListener) {
        this.mMultipleLoadedListener = aTAdMultipleLoadedListener;
    }

    public void setAdRevenueListener(ATAdRevenueListener aTAdRevenueListener) {
        this.mRevenueListener = aTAdRevenueListener;
    }

    public void setAdSourceStatusListener(ATAdSourceStatusListener aTAdSourceStatusListener) {
        if (this.mAdSourceEventListener == null) {
            this.mAdSourceEventListener = new com.anythink.core.common.d.c();
        }
        this.mDeveloperStatusListener = aTAdSourceStatusListener;
        this.mAdSourceEventListener.setAdSourceStatusListener(aTAdSourceStatusListener);
    }

    @Deprecated
    public void setAdxBidFloorInfo(ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        this.adxBidFloorInfo = aTAdxBidFloorInfo;
    }

    public void setBannerAdListener(ATBannerListener aTBannerListener) {
        this.mListener = aTBannerListener;
    }

    public void setLocalExtra(Map<String, Object> map) {
        if (TextUtils.isEmpty(this.mPlacementId)) {
            Log.e(this.TAG, "You must set unit Id first.");
            return;
        }
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.b(map);
        }
    }

    public void setNativeAdCustomRender(ATNativeAdCustomRender aTNativeAdCustomRender) {
        this.nativeAdCustomRender = aTNativeAdCustomRender;
    }

    public void setPlacementId(String str) {
        setPlacementId(str, null);
    }

    @Deprecated
    public void setScenario(String str) {
        setShowConfig(com.anythink.core.common.v.o.e(str));
    }

    public void setShowConfig(ATShowConfig aTShowConfig) {
        if (aTShowConfig != null) {
            this.mScenario = aTShowConfig.getScenarioId();
            this.mShowCustomExt = aTShowConfig.getShowCustomExt();
            this.mATCustomContentResult = aTShowConfig.getATCustomContentResult();
        }
    }

    public void setTKExtra(Map<String, Object> map) {
        if (this.mTKExtraMap == null) {
            this.mTKExtraMap = new ConcurrentHashMap();
        }
        this.mTKExtraMap.clear();
        this.mTKExtraMap.putAll(map);
    }

    @Override // com.anythink.banner.a.c
    public void timeUpRefreshView() {
        this.isShowCall = true;
        this.canRenderBanner = true;
        if (isShowToReload()) {
            controlShow(1);
        } else {
            loadAd(1, this.mAdRequest);
        }
    }

    public void loadAd(ATAdRequest aTAdRequest) {
        loadAd(0, aTAdRequest);
    }

    public void setPlacementId(String str, ATAdCreateConfig aTAdCreateConfig) {
        this.mPlacementId = str;
        this.mBannerRefreshTimer.a(str);
        if (this.impressionTracker == null) {
            getContext();
            this.impressionTracker = new com.anythink.core.common.v.a.c();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mAdLoadManager = new com.anythink.banner.a.a(getContext(), str, aTAdCreateConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(int i2, ATAdRequest aTAdRequest) {
        String str = this.mPlacementId;
        String str2 = i.s.f2736p;
        String str3 = i.s.f2745y;
        String str4 = i.s.f2735o;
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        aa.a(str, str2, str3, str4, "", aVar != null ? aVar.b() : null);
        if (this.adxBidFloorInfo != null) {
            if (aTAdRequest == null) {
                aTAdRequest = new ATAdRequest.Builder().setATAdxBidFloorInfo(this.adxBidFloorInfo).build();
            } else if (aTAdRequest.getATAdxBidFloorInfo() == null) {
                aTAdRequest.setAdxBidFloorInfo(this.adxBidFloorInfo);
            }
        }
        ATAdRequest aTAdRequest2 = aTAdRequest;
        this.mAdRequest = aTAdRequest2;
        this.mIsRefresh = i2 == 1;
        if (i2 == 0) {
            this.canRenderBanner = true;
        }
        com.anythink.banner.a.a aVar2 = this.mAdLoadManager;
        if (aVar2 != null) {
            aVar2.a(getContext(), i2, this.adLoadListener, this.mAdSourceEventListener, this.adMultipleLoadedListener, this.mTKExtraMap, aTAdRequest2);
            return;
        }
        com.anythink.core.common.d.a aVar3 = this.adLoadListener;
        if (aVar3 != null) {
            aVar3.onAdLoadFail(ErrorCode.getErrorCode("9999", "", "placementId maybe is null"));
        }
    }

    public void clearCache(List<ATAdInfo> list) {
        com.anythink.banner.a.a aVar = this.mAdLoadManager;
        if (aVar != null) {
            aVar.a(list);
        }
    }

    public void entryAdScenario(String str, Map<String, Object> map) {
        if (this.mAdLoadManager != null) {
            s.b().a(this.mAdLoadManager.b(), str, "2", map);
        }
    }

    public ATBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = ATBannerView.class.getSimpleName();
        this.mScenario = "";
        this.mShowCustomExt = "";
        this.hasTouchWindow = false;
        this.mIsRefresh = false;
        this.isControlShowing = false;
        this.mLastControlShowTime = 0L;
        this.mInnerBannerListener = new d() { // from class: com.anythink.banner.api.ATBannerView.1
            @Override // com.anythink.banner.a.d
            public void onBannerClicked(final CustomBannerAdapter customBannerAdapter) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView.this.mListener.onBannerClicked(k.a(customBannerAdapter));
                        }
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onBannerClose(final CustomBannerAdapter customBannerAdapter) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView.this.mListener.onBannerClose(k.a(customBannerAdapter));
                        }
                    }
                });
                if (ATAdxSetting.getInstance().isAdxNetworkMode(ATBannerView.this.mPlacementId)) {
                    return;
                }
                ATBannerView.this.canRenderBanner = true;
                ATBannerView aTBannerView = ATBannerView.this;
                aTBannerView.loadAd(1, aTBannerView.mAdRequest);
            }

            @Override // com.anythink.banner.a.d
            public void onBannerShow(final CustomBannerAdapter customBannerAdapter, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        k kVarA = k.a(customBannerAdapter);
                        if (ATBannerView.this.mRevenueListener != null) {
                            ATBannerView.this.mRevenueListener.onAdRevenuePaid(kVarA);
                        }
                        if (ATBannerView.this.mListener != null) {
                            if (customBannerAdapter == null || !z2) {
                                ATBannerView.this.mListener.onBannerShow(kVarA);
                            } else {
                                ATBannerView.this.mListener.onBannerAutoRefreshed(kVarA);
                            }
                        }
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onDeeplinkCallback(final CustomBannerAdapter customBannerAdapter, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !(ATBannerView.this.mListener instanceof ATBannerExListener)) {
                            return;
                        }
                        ((ATBannerExListener) ATBannerView.this.mListener).onDeeplinkCallback(ATBannerView.this.mIsRefresh, k.a(customBannerAdapter), z2);
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onDownloadConfirm(final Context context2, final CustomBannerAdapter customBannerAdapter, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !(ATBannerView.this.mListener instanceof ATBannerExListener)) {
                            return;
                        }
                        ((ATBannerExListener) ATBannerView.this.mListener).onDownloadConfirm(context2, k.a(customBannerAdapter), aTNetworkConfirmInfo);
                    }
                });
            }
        };
        this.adLoadListener = new com.anythink.core.common.d.a() { // from class: com.anythink.banner.api.ATBannerView.2
            @Override // com.anythink.core.common.d.a
            public void onAdLoadFail(final AdError adError) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.2.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !ATBannerView.this.canRenderBanner) {
                            return;
                        }
                        ATBannerView aTBannerView = ATBannerView.this;
                        if (aTBannerView.mIsRefresh) {
                            aTBannerView.mListener.onBannerAutoRefreshFail(adError);
                        } else {
                            aTBannerView.mListener.onBannerFailed(adError);
                        }
                    }
                });
                if (ATBannerView.this.mAdLoadManager == null || !ATBannerView.this.isInView() || ATBannerView.this.mBannerRefreshTimer.a()) {
                    return;
                }
                ATBannerView.this.mBannerRefreshTimer.b();
            }

            @Override // com.anythink.core.common.d.a
            public void onAdLoaded() {
                ATBannerView.this.isShowCall = true;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            s.b();
                            com.anythink.core.common.v.c.a();
                            com.anythink.core.common.v.c.a(ATBannerView.this.getBannerCache(false));
                        } catch (Throwable unused) {
                        }
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView aTBannerView = ATBannerView.this;
                            if (!aTBannerView.mIsRefresh) {
                                aTBannerView.mListener.onBannerLoaded();
                            }
                        }
                        ATBannerView.this.controlShow(0);
                    }
                });
            }
        };
        this.adMultipleLoadedListener = new ATAdMultipleLoadedListener() { // from class: com.anythink.banner.api.ATBannerView.3
            @Override // com.anythink.core.api.ATAdMultipleLoadedListener
            public void onAdMultipleLoaded(final ATRequestingInfo aTRequestingInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mMultipleLoadedListener != null) {
                            ATBannerView.this.mMultipleLoadedListener.onAdMultipleLoaded(aTRequestingInfo);
                        }
                    }
                });
            }
        };
        this.mBannerRefreshTimer = new com.anythink.banner.b.a(this);
    }

    public ATBannerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.TAG = ATBannerView.class.getSimpleName();
        this.mScenario = "";
        this.mShowCustomExt = "";
        this.hasTouchWindow = false;
        this.mIsRefresh = false;
        this.isControlShowing = false;
        this.mLastControlShowTime = 0L;
        this.mInnerBannerListener = new d() { // from class: com.anythink.banner.api.ATBannerView.1
            @Override // com.anythink.banner.a.d
            public void onBannerClicked(final CustomBannerAdapter customBannerAdapter) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView.this.mListener.onBannerClicked(k.a(customBannerAdapter));
                        }
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onBannerClose(final CustomBannerAdapter customBannerAdapter) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView.this.mListener.onBannerClose(k.a(customBannerAdapter));
                        }
                    }
                });
                if (ATAdxSetting.getInstance().isAdxNetworkMode(ATBannerView.this.mPlacementId)) {
                    return;
                }
                ATBannerView.this.canRenderBanner = true;
                ATBannerView aTBannerView = ATBannerView.this;
                aTBannerView.loadAd(1, aTBannerView.mAdRequest);
            }

            @Override // com.anythink.banner.a.d
            public void onBannerShow(final CustomBannerAdapter customBannerAdapter, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        k kVarA = k.a(customBannerAdapter);
                        if (ATBannerView.this.mRevenueListener != null) {
                            ATBannerView.this.mRevenueListener.onAdRevenuePaid(kVarA);
                        }
                        if (ATBannerView.this.mListener != null) {
                            if (customBannerAdapter == null || !z2) {
                                ATBannerView.this.mListener.onBannerShow(kVarA);
                            } else {
                                ATBannerView.this.mListener.onBannerAutoRefreshed(kVarA);
                            }
                        }
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onDeeplinkCallback(final CustomBannerAdapter customBannerAdapter, final boolean z2) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !(ATBannerView.this.mListener instanceof ATBannerExListener)) {
                            return;
                        }
                        ((ATBannerExListener) ATBannerView.this.mListener).onDeeplinkCallback(ATBannerView.this.mIsRefresh, k.a(customBannerAdapter), z2);
                    }
                });
            }

            @Override // com.anythink.banner.a.d
            public void onDownloadConfirm(final Context context2, final CustomBannerAdapter customBannerAdapter, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.1.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !(ATBannerView.this.mListener instanceof ATBannerExListener)) {
                            return;
                        }
                        ((ATBannerExListener) ATBannerView.this.mListener).onDownloadConfirm(context2, k.a(customBannerAdapter), aTNetworkConfirmInfo);
                    }
                });
            }
        };
        this.adLoadListener = new com.anythink.core.common.d.a() { // from class: com.anythink.banner.api.ATBannerView.2
            @Override // com.anythink.core.common.d.a
            public void onAdLoadFail(final AdError adError) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.2.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mListener == null || !ATBannerView.this.canRenderBanner) {
                            return;
                        }
                        ATBannerView aTBannerView = ATBannerView.this;
                        if (aTBannerView.mIsRefresh) {
                            aTBannerView.mListener.onBannerAutoRefreshFail(adError);
                        } else {
                            aTBannerView.mListener.onBannerFailed(adError);
                        }
                    }
                });
                if (ATBannerView.this.mAdLoadManager == null || !ATBannerView.this.isInView() || ATBannerView.this.mBannerRefreshTimer.a()) {
                    return;
                }
                ATBannerView.this.mBannerRefreshTimer.b();
            }

            @Override // com.anythink.core.common.d.a
            public void onAdLoaded() {
                ATBannerView.this.isShowCall = true;
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            s.b();
                            com.anythink.core.common.v.c.a();
                            com.anythink.core.common.v.c.a(ATBannerView.this.getBannerCache(false));
                        } catch (Throwable unused) {
                        }
                        if (ATBannerView.this.mListener != null) {
                            ATBannerView aTBannerView = ATBannerView.this;
                            if (!aTBannerView.mIsRefresh) {
                                aTBannerView.mListener.onBannerLoaded();
                            }
                        }
                        ATBannerView.this.controlShow(0);
                    }
                });
            }
        };
        this.adMultipleLoadedListener = new ATAdMultipleLoadedListener() { // from class: com.anythink.banner.api.ATBannerView.3
            @Override // com.anythink.core.api.ATAdMultipleLoadedListener
            public void onAdMultipleLoaded(final ATRequestingInfo aTRequestingInfo) {
                s.b();
                s.b(new Runnable() { // from class: com.anythink.banner.api.ATBannerView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (ATBannerView.this.mMultipleLoadedListener != null) {
                            ATBannerView.this.mMultipleLoadedListener.onAdMultipleLoaded(aTRequestingInfo);
                        }
                    }
                });
            }
        };
        this.mBannerRefreshTimer = new com.anythink.banner.b.a(this);
    }
}
