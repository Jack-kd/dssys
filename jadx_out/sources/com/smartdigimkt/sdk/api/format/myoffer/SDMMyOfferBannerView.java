package com.smartdigimkt.sdk.api.format.myoffer;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.e5.q;
import com.smartdigimkt.e5.r;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMBannerListener;
import com.smartdigimkt.sdk.basead.ui.MraidBannerATView;
import com.smartdigimkt.sdk.basead.ui.SdkBannerATView;
import com.smartdigimkt.w.k;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMMyOfferBannerView extends FrameLayout implements com.smartdigimkt.e5.h {
    private final String TAG;
    private boolean canRenderBanner;
    boolean hasTouchWindow;
    com.smartdigimkt.a4.c impressionTracker;
    private volatile boolean isLoading;
    boolean isShowCall;
    private final com.smartdigimkt.e5.g mAdCallbackHandler;
    private com.smartdigimkt.e5.f mBannerRefreshTimer;
    private com.smartdigimkt.r1.d mCacheAd;
    private SDMBannerListener mDevListener;
    private com.smartdigimkt.e5.i mInnerBannerListener;
    boolean mIsRefresh;
    private com.smartdigimkt.r1.d mLastPresentCacheAd;
    private SDMAdRequest mLastSdmAdRequest;
    private p mLoadListener;
    private final Object mLock;
    private String mPlacementId;
    private final com.smartdigimkt.e5.d mRefreshImpressionGate;
    private boolean mRequestConfigRefresh;
    private r mSdmAdLoadManager;
    com.smartdigimkt.a4.f visibilityChecker;

    public SDMMyOfferBannerView(Context context) {
        super(context);
        this.TAG = "SDMMyOfferBannerView";
        this.mLock = new Object();
        this.mAdCallbackHandler = new com.smartdigimkt.e5.a();
        this.isLoading = false;
        this.hasTouchWindow = false;
        this.mRefreshImpressionGate = new com.smartdigimkt.e5.d();
        this.mIsRefresh = false;
        this.mRequestConfigRefresh = true;
        this.mInnerBannerListener = new com.smartdigimkt.w.e(this);
        this.mLoadListener = new c(this);
        this.mBannerRefreshTimer = new com.smartdigimkt.e5.f(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.smartdigimkt.r1.a getBannerCache() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (dVar == null || !dVar.d()) {
            return null;
        }
        return (com.smartdigimkt.r1.a) this.mCacheAd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInView() {
        return this.hasTouchWindow && isShown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRefreshOpen() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBannerShow(Context context, com.smartdigimkt.r1.a aVar, boolean z2) {
        System.currentTimeMillis();
        com.smartdigimkt.b4.e.a().c(new com.smartdigimkt.w.j(this));
    }

    private void registerDelayShow(View view, Context context, com.smartdigimkt.r1.a aVar, boolean z2) {
        if (view == null) {
            view = this;
        }
        com.smartdigimkt.a4.c cVar = this.impressionTracker;
        if (cVar != null) {
            cVar.a(view, new com.smartdigimkt.w.i(this, context, aVar, z2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderBannerView(com.smartdigimkt.r1.a aVar, boolean z2) {
        if (aVar != null) {
            this.mRefreshImpressionGate.f40081a = false;
            aVar.f42940g = new k(this, z2);
            View mraidBannerATView = aVar.d() ? aVar.f42949e.j() ? new MraidBannerATView(aVar.f42945a, aVar.f42946b, aVar.f42949e, aVar.f42940g) : new SdkBannerATView(aVar.f42945a, aVar.f42946b, aVar.f42949e, aVar.f42940g) : null;
            if (mraidBannerATView != null && mraidBannerATView.getParent() != null && mraidBannerATView.getParent() != this) {
                ((ViewGroup) mraidBannerATView.getParent()).removeView(mraidBannerATView);
            }
            com.smartdigimkt.r1.d dVar = this.mLastPresentCacheAd;
            if (dVar != null) {
                dVar.c();
            }
            this.mLastPresentCacheAd = aVar;
            if (mraidBannerATView == null) {
                Log.e(this.TAG, "Network's banner view = null. Did you call destroy()?");
                return;
            }
            if (isInView()) {
                notifyBannerShow(getContext().getApplicationContext(), aVar, z2);
            } else {
                registerDelayShow(mraidBannerATView, getContext().getApplicationContext(), aVar, z2);
            }
            removeAllViews();
            int i2 = mraidBannerATView.getLayoutParams() != null ? mraidBannerATView.getLayoutParams().width : 0;
            if (i2 == 0) {
                i2 = -2;
            }
            int i3 = mraidBannerATView.getLayoutParams() != null ? mraidBannerATView.getLayoutParams().height : 0;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i3 != 0 ? i3 : -2);
            layoutParams.gravity = 17;
            mraidBannerATView.setLayoutParams(layoutParams);
            addView(mraidBannerATView, layoutParams);
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

    public boolean checkReady() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        boolean zD = dVar != null ? dVar.d() : false;
        if (!zD) {
            this.mCacheAd = null;
        }
        return zD;
    }

    public void controlShow() {
        com.smartdigimkt.b4.e.a().c(new e(this, this.mIsRefresh));
    }

    public void destroy() {
        synchronized (this.mLock) {
            removeAllViews();
            synchronized (this.mLock) {
                try {
                    com.smartdigimkt.r1.d dVar = this.mCacheAd;
                    if (dVar != null) {
                        dVar.c();
                        this.mCacheAd = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
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

    public Map<String, Object> getExtraInfoMap() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (dVar != null) {
            return com.smartdigimkt.z.f.a(dVar.f42949e);
        }
        return null;
    }

    public boolean isAdReady() {
        return checkReady();
    }

    public void load() {
        load(null);
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
        this.mSdmAdLoadManager = new r(2, str);
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
                        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.w.g(this));
                        return;
                    }
                    if (!this.mIsRefresh && this.mCacheAd != null && checkReady()) {
                        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.w.h(this));
                        return;
                    }
                    this.isLoading = true;
                    r rVar = this.mSdmAdLoadManager;
                    Context context = getContext();
                    p pVar = this.mLoadListener;
                    rVar.getClass();
                    com.smartdigimkt.b4.e.a().c(new q(rVar, context, i2, sDMAdRequest, pVar));
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.w.f(this));
    }

    public SDMMyOfferBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "SDMMyOfferBannerView";
        this.mLock = new Object();
        this.mAdCallbackHandler = new com.smartdigimkt.e5.a();
        this.isLoading = false;
        this.hasTouchWindow = false;
        this.mRefreshImpressionGate = new com.smartdigimkt.e5.d();
        this.mIsRefresh = false;
        this.mRequestConfigRefresh = true;
        this.mInnerBannerListener = new com.smartdigimkt.w.e(this);
        this.mLoadListener = new c(this);
        this.mBannerRefreshTimer = new com.smartdigimkt.e5.f(this);
    }

    public SDMMyOfferBannerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.TAG = "SDMMyOfferBannerView";
        this.mLock = new Object();
        this.mAdCallbackHandler = new com.smartdigimkt.e5.a();
        this.isLoading = false;
        this.hasTouchWindow = false;
        this.mRefreshImpressionGate = new com.smartdigimkt.e5.d();
        this.mIsRefresh = false;
        this.mRequestConfigRefresh = true;
        this.mInnerBannerListener = new com.smartdigimkt.w.e(this);
        this.mLoadListener = new c(this);
        this.mBannerRefreshTimer = new com.smartdigimkt.e5.f(this);
    }
}
