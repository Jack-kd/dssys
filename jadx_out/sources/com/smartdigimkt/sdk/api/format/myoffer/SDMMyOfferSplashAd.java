package com.smartdigimkt.sdk.api.format.myoffer;

import android.content.Context;
import android.view.ViewGroup;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e5.r;
import com.smartdigimkt.e5.s;
import com.smartdigimkt.r1.p;
import com.smartdigimkt.r1.q;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMSplashListener;
import com.smartdigimkt.w.a0;
import com.smartdigimkt.w.b0;
import com.smartdigimkt.w.z;
import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMMyOfferSplashAd extends s {
    private volatile boolean isLoading;
    protected Context mContext;
    private SDMSplashListener mDevListener;
    protected long mFetchAdTimeout;
    protected String mPlacementId;
    private r mSdmAdLoadManager;

    public SDMMyOfferSplashAd(Context context, String str) {
        this(context, str, 0L);
    }

    public Map<String, Object> getExtraInfoMap() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (dVar != null) {
            return com.smartdigimkt.z.f.a(dVar.f42949e);
        }
        return null;
    }

    public int getFormat() {
        return 4;
    }

    public String getPlacementId() {
        return this.mPlacementId;
    }

    public boolean isSupportCustomSkipView() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        return dVar != null && (dVar instanceof q);
    }

    public void load() {
        load(null);
    }

    @Override // com.smartdigimkt.e5.s
    public void onDestroy() {
        this.mDevListener = null;
    }

    public void setListener(SDMSplashListener sDMSplashListener) {
        this.mDevListener = sDMSplashListener;
    }

    public void show(ViewGroup viewGroup) {
        if (!checkReady()) {
            SDMSplashListener sDMSplashListener = this.mDevListener;
            if (sDMSplashListener != null) {
                sDMSplashListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail without ad cache"));
                return;
            }
            return;
        }
        notifyShow();
        if (this.mCacheAd instanceof q) {
            ((q) this.mCacheAd).f42978g = new b0(this, new WeakReference((q) this.mCacheAd));
            q qVar = (q) this.mCacheAd;
            qVar.f42980i = ((Boolean) k.a(qVar.f42950f, SDMAdConst.EXTRA_PARAMS.SHOW_HIDE_SPLASH_SKIP_VIEW, Boolean.FALSE)).booleanValue();
            com.smartdigimkt.b4.e.a().a(new p(qVar, viewGroup));
            return;
        }
        SDMSplashListener sDMSplashListener2 = this.mDevListener;
        if (sDMSplashListener2 != null) {
            sDMSplashListener2.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail by " + this.mCacheAd));
        }
    }

    public SDMMyOfferSplashAd(Context context, String str, long j2) {
        this.isLoading = false;
        this.mPlacementId = str;
        this.mFetchAdTimeout = j2;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new r(4, str);
    }

    public void load(SDMAdRequest sDMAdRequest) {
        synchronized (this.mLock) {
            try {
                if (this.isLoading) {
                    com.smartdigimkt.b4.e.a().a(new z(this));
                } else if (checkReady()) {
                    com.smartdigimkt.b4.e.a().a(new a0(this));
                } else {
                    this.isLoading = true;
                    com.smartdigimkt.b4.e.a().c(new j(this, sDMAdRequest));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
