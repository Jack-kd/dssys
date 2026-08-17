package com.smartdigimkt.sdk.api.format;

import android.content.Context;
import android.view.ViewGroup;
import com.smartdigimkt.e5.l;
import com.smartdigimkt.e5.n;
import com.smartdigimkt.e5.o;
import com.smartdigimkt.p1.r;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.v.a0;
import com.smartdigimkt.v.b0;
import com.smartdigimkt.z.z;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class SDMSplashAd extends o implements SDMAdHandler {
    private volatile boolean isLoading;
    protected Context mContext;
    private SDMSplashListener mDevListener;
    protected long mFetchAdTimeout;
    protected String mPlacementId;
    private n mSdmAdLoadManager;

    public SDMSplashAd(Context context, String str) {
        this(context, str, 0L);
    }

    @Override // com.smartdigimkt.e5.o
    public int getFormat() {
        return 4;
    }

    @Override // com.smartdigimkt.e5.o
    public String getPlacementId() {
        return this.mPlacementId;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public SDMAd getSDMAd() {
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        if (fVar != null) {
            return new l(fVar);
        }
        return null;
    }

    public boolean isSupportCustomSkipView() {
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        if (fVar != null && (fVar instanceof com.smartdigimkt.j1.l)) {
            com.smartdigimkt.j1.l lVar = (com.smartdigimkt.j1.l) fVar;
            if (!z.g(lVar.f41069e, lVar.f41067c) && !z.h(lVar.f41069e, lVar.f41067c)) {
                return true;
            }
        }
        return false;
    }

    public void load() {
        load(null);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public void notifyLoss(SDMLossInfo sDMLossInfo) {
        sendLoss(sDMLossInfo);
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMAdHandler
    public void notifyWin(SDMWinInfo sDMWinInfo) {
        sendWin(sDMWinInfo);
    }

    @Override // com.smartdigimkt.e5.o
    public void onDestroy() {
        this.mDevListener = null;
    }

    public void setListener(SDMSplashListener sDMSplashListener) {
        this.mDevListener = sDMSplashListener;
    }

    public void show(ViewGroup viewGroup) {
        if (!checkReady(false)) {
            SDMSplashListener sDMSplashListener = this.mDevListener;
            if (sDMSplashListener != null) {
                sDMSplashListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail without ad cache"));
                return;
            }
            return;
        }
        notifyShow();
        if (!(this.mCacheAd instanceof com.smartdigimkt.j1.l)) {
            SDMSplashListener sDMSplashListener2 = this.mDevListener;
            if (sDMSplashListener2 != null) {
                sDMSplashListener2.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail by " + this.mCacheAd));
                return;
            }
            return;
        }
        WeakReference weakReference = new WeakReference((com.smartdigimkt.j1.l) this.mCacheAd);
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        k kVar = new k(this, weakReference);
        fVar.getClass();
        r rVar = new r(fVar, kVar);
        fVar.f41070f = rVar;
        com.smartdigimkt.l1.c cVar = fVar.f41073i;
        if (cVar != null) {
            cVar.f41618c = rVar;
        }
        printApiLog("show", "start", "");
        com.smartdigimkt.j1.l lVar = (com.smartdigimkt.j1.l) this.mCacheAd;
        lVar.getClass();
        com.smartdigimkt.z3.d.f45447a = false;
        lVar.f41096n = ((Boolean) com.smartdigimkt.c5.k.a(lVar.f41072h, SDMAdConst.EXTRA_PARAMS.SHOW_HIDE_SPLASH_SKIP_VIEW, Boolean.FALSE)).booleanValue();
        com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.j1.k(lVar, viewGroup));
    }

    public SDMSplashAd(Context context, String str, long j2) {
        this.isLoading = false;
        this.mPlacementId = str;
        this.mFetchAdTimeout = j2;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new n(4, str);
    }

    public void load(SDMAdRequest sDMAdRequest) {
        synchronized (this.mLock) {
            try {
                if (this.isLoading) {
                    com.smartdigimkt.b4.e.a().a(new a0(this));
                } else if (checkReady(false)) {
                    com.smartdigimkt.b4.e.a().a(new b0(this));
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
