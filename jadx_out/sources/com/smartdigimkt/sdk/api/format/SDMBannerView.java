package com.smartdigimkt.sdk.api.format;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.c5.w;
import com.smartdigimkt.e5.c0;
import com.smartdigimkt.e5.l;
import com.smartdigimkt.e5.n;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.p1.r;
import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.z4.m;

/* loaded from: classes5.dex */
public class SDMBannerView extends FrameLayout implements com.smartdigimkt.e5.h, SDMAdHandler {
    private final String TAG;
    private boolean canRenderBanner;
    boolean hasTouchWindow;
    com.smartdigimkt.a4.c impressionTracker;
    private volatile boolean isLoading;
    boolean isShowCall;
    private final com.smartdigimkt.e5.g mAdCallbackHandler;
    private com.smartdigimkt.e5.f mBannerRefreshTimer;
    private com.smartdigimkt.j1.a mCacheAd;
    private SDMBannerListener mDevListener;
    private com.smartdigimkt.e5.i mInnerBannerListener;
    boolean mIsRefresh;
    private com.smartdigimkt.j1.a mLastPresentCacheAd;
    private SDMAdRequest mLastSdmAdRequest;
    private p mLoadListener;
    private final Object mLock;
    private String mPlacementId;
    private com.smartdigimkt.j1.a mRefreshCacheAd;
    private final com.smartdigimkt.e5.d mRefreshImpressionGate;
    private boolean mRequestConfigRefresh;
    private n mSdmAdLoadManager;
    com.smartdigimkt.a4.f visibilityChecker;

    public SDMBannerView(Context context) {
        super(context);
        this.TAG = "SDMBannerView";
        this.mLock = new Object();
        this.mAdCallbackHandler = new com.smartdigimkt.e5.a();
        this.isLoading = false;
        this.hasTouchWindow = false;
        this.mRefreshImpressionGate = new com.smartdigimkt.e5.d();
        this.mIsRefresh = false;
        this.mRequestConfigRefresh = true;
        this.mInnerBannerListener = new com.smartdigimkt.v.e(this);
        this.mLoadListener = new c(this);
        this.mBannerRefreshTimer = new com.smartdigimkt.e5.f(this);
    }

    private boolean checkVisibilityPercent() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.smartdigimkt.j1.a getBannerCache() {
        com.smartdigimkt.j1.a aVar = this.mRefreshCacheAd;
        if (aVar != null && com.smartdigimkt.j1.f.a(aVar.b())) {
            return this.mRefreshCacheAd;
        }
        com.smartdigimkt.j1.a aVar2 = this.mCacheAd;
        if (aVar2 == null || !com.smartdigimkt.j1.f.a(aVar2.b())) {
            return null;
        }
        return this.mCacheAd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInView() {
        return this.hasTouchWindow && isShown() && checkVisibilityPercent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRefreshOpen() {
        com.smartdigimkt.a5.e eVarA;
        return this.mRequestConfigRefresh && (eVarA = m.a().a(this.mPlacementId)) != null && eVarA.f39424n == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBannerShow(Context context, com.smartdigimkt.j1.a aVar, boolean z2) {
        System.currentTimeMillis();
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.v.j(this, aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdStatus(String str, String str2) {
        onAdStatus(str, str2, null);
    }

    private void printReadyLog(com.smartdigimkt.j1.f fVar, boolean z2) {
        if (!z2 || fVar == null) {
            w.a(this.mPlacementId, com.smartdigimkt.c5.j.a(String.valueOf(2)), "isready", String.valueOf(false), "");
        } else if (fVar.f41067c != null) {
            w.a(this.mPlacementId, com.smartdigimkt.c5.j.a(String.valueOf(2)), "isready", String.valueOf(true), "");
        }
    }

    private void registerDelayShow(View view, Context context, com.smartdigimkt.j1.a aVar, boolean z2) {
        if (view == null) {
            view = this;
        }
        com.smartdigimkt.a4.c cVar = this.impressionTracker;
        if (cVar != null) {
            cVar.a(view, new com.smartdigimkt.v.i(this, context, aVar, z2));
        }
    }

    private void releaseExpireCache() {
        notifyLoss(new SDMLossInfo(SDMLossInfo.LOSS_REASON.LOSS_TO_EXPIRE, 0.0d));
        destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderBannerView(com.smartdigimkt.j1.a aVar, boolean z2) {
        if (aVar != null) {
            this.mRefreshImpressionGate.f40081a = false;
            r rVar = new r(aVar, new com.smartdigimkt.v.k(this, z2));
            aVar.f41070f = rVar;
            com.smartdigimkt.l1.c cVar = aVar.f41073i;
            if (cVar != null) {
                cVar.f41618c = rVar;
            }
            try {
                View viewD = aVar.d();
                if (viewD != null && viewD.getParent() != null && viewD.getParent() != this) {
                    ((ViewGroup) viewD.getParent()).removeView(viewD);
                }
                com.smartdigimkt.j1.a aVar2 = this.mLastPresentCacheAd;
                if (aVar2 != null) {
                    aVar2.a();
                }
                this.mLastPresentCacheAd = aVar;
                if (viewD == null) {
                    Log.e(this.TAG, "Network's banner view = null. Did you call destroy()?");
                    return;
                }
                if (isInView()) {
                    notifyBannerShow(getContext().getApplicationContext(), aVar, z2);
                } else {
                    registerDelayShow(viewD, getContext().getApplicationContext(), aVar, z2);
                }
                removeAllViews();
                int i2 = viewD.getLayoutParams() != null ? viewD.getLayoutParams().width : 0;
                if (i2 == 0) {
                    i2 = -2;
                }
                int i3 = viewD.getLayoutParams() != null ? viewD.getLayoutParams().height : 0;
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3 != 0 ? i3 : -2);
                layoutParams.gravity = 17;
                viewD.setLayoutParams(layoutParams);
                addView(viewD, layoutParams);
            } catch (Throwable th) {
                String.valueOf(th);
                onAdStatus("show_failed", "fail", new com.smartdigimkt.k4.a("20002", "Banner inflate failed: " + (th.getMessage() != null ? th.getMessage() : th.getClass().getSimpleName())));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRefreshAfterShow() {
        com.smartdigimkt.e5.d dVar = this.mRefreshImpressionGate;
        if (dVar.f40081a) {
            return;
        }
        dVar.f40081a = true;
        if (isRefreshOpen()) {
            com.smartdigimkt.e5.f fVar = this.mBannerRefreshTimer;
            if (fVar != null) {
                fVar.b();
            }
            if (this.mSdmAdLoadManager == null) {
                return;
            }
            synchronized (this.mLock) {
                try {
                    if (this.isLoading) {
                        return;
                    }
                    load(1, this.mLastSdmAdRequest);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public boolean checkReady(boolean z2) {
        boolean zA;
        int i2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.j1.a aVar = this.mCacheAd;
        if (aVar != null) {
            int iB = aVar.b();
            this.mCacheAd.getClass();
            zA = com.smartdigimkt.j1.f.a(iB);
            if (iB == 1) {
                releaseExpireCache();
            }
            i2 = iB;
        } else {
            zA = false;
            i2 = 0;
        }
        if (z2) {
            com.smartdigimkt.y3.h.a(zA, this.mPlacementId, this.mCacheAd, System.currentTimeMillis() - jCurrentTimeMillis, i2);
            printReadyLog(this.mCacheAd, zA);
        }
        if (!zA) {
            this.mCacheAd = null;
        }
        return zA;
    }

    public void controlShow() {
        com.smartdigimkt.b4.e.a().c(new e(this, this.mIsRefresh));
    }

    public void destroy() {
        synchronized (this.mLock) {
            try {
                removeAllViews();
                synchronized (this.mLock) {
                    try {
                        com.smartdigimkt.j1.a aVar = this.mCacheAd;
                        if (aVar != null) {
                            aVar.a();
                            this.mCacheAd = null;
                        }
                    } finally {
                    }
                }
                com.smartdigimkt.j1.a aVar2 = this.mRefreshCacheAd;
                if (aVar2 != null) {
                    aVar2.a();
                    this.mRefreshCacheAd = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mRefreshImpressionGate.f40081a = false;
        com.smartdigimkt.e5.f fVar = this.mBannerRefreshTimer;
        if (fVar != null) {
            fVar.a();
        }
        com.smartdigimkt.a4.c cVar = this.impressionTracker;
        if (cVar != null) {
            cVar.f39317b.clear();
            cVar.f39318c.clear();
            com.smartdigimkt.a4.h hVar = cVar.f39316a;
            hVar.f39333d.clear();
            hVar.f39337h.removeMessages(0);
            hVar.f39338i = false;
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public SDMAd getSDMAd() {
        com.smartdigimkt.j1.a aVar = this.mCacheAd;
        if (aVar != null) {
            return new l(aVar);
        }
        return null;
    }

    public boolean isAdReady() {
        return checkReady(true);
    }

    public void load() {
        load(null);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public void notifyLoss(SDMLossInfo sDMLossInfo) {
        c0.a(this.mCacheAd, sDMLossInfo);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public void notifyWin(SDMWinInfo sDMWinInfo) {
        c0.a(this.mCacheAd, sDMWinInfo);
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
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 == 0) {
            controlShow();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            controlShow();
        }
    }

    public void setListener(SDMBannerListener sDMBannerListener) {
        this.mDevListener = sDMBannerListener;
    }

    public void setPlacementId(String str) {
        this.mSdmAdLoadManager = new n(2, str);
        this.mPlacementId = str;
        this.mBannerRefreshTimer.f40083a = str;
        if (this.impressionTracker == null) {
            getContext();
            this.impressionTracker = new com.smartdigimkt.a4.c(1, 50);
        }
    }

    @Override // com.smartdigimkt.e5.h
    public void timeUpRefreshView() {
        this.isShowCall = true;
        this.canRenderBanner = true;
        controlShow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdStatus(String str, String str2, AdError adError) {
        com.smartdigimkt.e5.g gVar = this.mAdCallbackHandler;
        ((com.smartdigimkt.e5.a) gVar).f40076a = this.mCacheAd;
        com.smartdigimkt.e5.a.a(gVar, str, str2, adError);
        com.smartdigimkt.j1.a aVar = this.mCacheAd;
        com.smartdigimkt.q3.a aVar2 = null;
        com.smartdigimkt.q3.a aVar3 = aVar != null ? aVar.f41076l : null;
        if (aVar3 == null) {
            com.smartdigimkt.j1.a aVar4 = this.mRefreshCacheAd;
            if (aVar4 != null) {
                aVar2 = aVar4.f41076l;
            }
        } else {
            aVar2 = aVar3;
        }
        w.a(aVar2, str, str2, adError != null ? adError.getErrorInfo() : "");
    }

    public void load(SDMAdRequest sDMAdRequest) {
        load(0, sDMAdRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load(int i2, SDMAdRequest sDMAdRequest) {
        if (this.mSdmAdLoadManager != null && !TextUtils.isEmpty(this.mPlacementId)) {
            this.mIsRefresh = i2 == 1;
            if (i2 == 0) {
                this.canRenderBanner = true;
            }
            if (sDMAdRequest != null) {
                this.mRequestConfigRefresh = sDMAdRequest.getBannerRefresh();
            }
            this.mLastSdmAdRequest = sDMAdRequest;
            synchronized (this.mLock) {
                try {
                    if (this.isLoading) {
                        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.v.g(this));
                        return;
                    }
                    if (!this.mIsRefresh && this.mCacheAd != null && checkReady(false)) {
                        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.v.h(this));
                        return;
                    }
                    this.isLoading = true;
                    n nVar = this.mSdmAdLoadManager;
                    Context context = getContext();
                    p pVar = this.mLoadListener;
                    nVar.getClass();
                    com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.e5.m(nVar, context, i2, sDMAdRequest, pVar));
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.v.f(this));
    }

    public SDMBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "SDMBannerView";
        this.mLock = new Object();
        this.mAdCallbackHandler = new com.smartdigimkt.e5.a();
        this.isLoading = false;
        this.hasTouchWindow = false;
        this.mRefreshImpressionGate = new com.smartdigimkt.e5.d();
        this.mIsRefresh = false;
        this.mRequestConfigRefresh = true;
        this.mInnerBannerListener = new com.smartdigimkt.v.e(this);
        this.mLoadListener = new c(this);
        this.mBannerRefreshTimer = new com.smartdigimkt.e5.f(this);
    }

    public SDMBannerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.TAG = "SDMBannerView";
        this.mLock = new Object();
        this.mAdCallbackHandler = new com.smartdigimkt.e5.a();
        this.isLoading = false;
        this.hasTouchWindow = false;
        this.mRefreshImpressionGate = new com.smartdigimkt.e5.d();
        this.mIsRefresh = false;
        this.mRequestConfigRefresh = true;
        this.mInnerBannerListener = new com.smartdigimkt.v.e(this);
        this.mLoadListener = new c(this);
        this.mBannerRefreshTimer = new com.smartdigimkt.e5.f(this);
    }
}
