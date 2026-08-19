package com.smartdigimkt.sdk.api.format.myoffer;

import android.app.Activity;
import android.content.Context;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.e5.q;
import com.smartdigimkt.e5.r;
import com.smartdigimkt.e5.s;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMInterstitialListener;
import com.smartdigimkt.sdk.basead.ui.BaseATActivity;
import com.smartdigimkt.w.n;
import com.smartdigimkt.w.o;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMMyOfferInterstitialAd extends s {
    protected Context mContext;
    private SDMInterstitialListener mDevListener;
    protected String mPlacementId;
    private r mSdmAdLoadManager;
    private volatile boolean isLoading = false;
    private p mLoadListener = new n(this);

    public SDMMyOfferInterstitialAd(Context context, String str) {
        this.mPlacementId = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new r(3, str);
    }

    public Map<String, Object> getExtraInfoMap() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (dVar != null) {
            return com.smartdigimkt.z.f.a(dVar.f42949e);
        }
        return null;
    }

    public int getFormat() {
        return 3;
    }

    public String getPlacementId() {
        return this.mPlacementId;
    }

    public void load() {
        load(null);
    }

    @Override // com.smartdigimkt.e5.s
    public void onDestroy() {
        this.mDevListener = null;
    }

    public void setListener(SDMInterstitialListener sDMInterstitialListener) {
        this.mDevListener = sDMInterstitialListener;
    }

    public void show(Activity activity) {
        show(activity, null);
    }

    public void load(SDMAdRequest sDMAdRequest) {
        synchronized (this.mLock) {
            try {
                if (this.isLoading) {
                    com.smartdigimkt.b4.e.a().a(new o(this));
                    return;
                }
                if (checkReady()) {
                    this.mLoadListener.onAdLoaded(this.mCacheAd);
                    return;
                }
                this.isLoading = true;
                r rVar = this.mSdmAdLoadManager;
                Context context = this.mContext;
                p pVar = this.mLoadListener;
                rVar.getClass();
                com.smartdigimkt.b4.e.a().c(new q(rVar, context, 0, sDMAdRequest, pVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void show(Activity activity, Map<String, Object> map) {
        if (!checkReady()) {
            SDMInterstitialListener sDMInterstitialListener = this.mDevListener;
            if (sDMInterstitialListener != null) {
                sDMInterstitialListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail without ad cache"));
                return;
            }
            return;
        }
        notifyShow();
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (!(dVar instanceof com.smartdigimkt.r1.f)) {
            SDMInterstitialListener sDMInterstitialListener2 = this.mDevListener;
            if (sDMInterstitialListener2 != null) {
                sDMInterstitialListener2.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail by " + this.mCacheAd));
                return;
            }
            return;
        }
        ((com.smartdigimkt.r1.f) dVar).f42954g = new com.smartdigimkt.w.p(this);
        com.smartdigimkt.r1.f fVar = (com.smartdigimkt.r1.f) this.mCacheAd;
        fVar.getClass();
        try {
            if (fVar.f42945a == null) {
                com.smartdigimkt.p1.g gVar = fVar.f42954g;
                if (gVar != null) {
                    gVar.onShowFailed(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, com.anythink.core.common.inner.b.b.f4565H));
                    return;
                }
                return;
            }
            String str = (String) k.a(fVar.f42950f, "extra_scenario", "");
            String str2 = fVar.f42946b.f41632f;
            int iY = com.smartdigimkt.c5.h.y(activity);
            String str3 = fVar.f42946b.f41627a + fVar.f42947c + System.currentTimeMillis();
            com.smartdigimkt.p1.b.f42548a.f42554a.put(str3, new com.smartdigimkt.r1.e(fVar, str3));
            com.smartdigimkt.m3.a aVar = new com.smartdigimkt.m3.a();
            aVar.f41772c = fVar.f42949e;
            aVar.f41773d = str3;
            aVar.f41770a = 3;
            aVar.f41775f = fVar.f42946b;
            aVar.f41774e = iY;
            aVar.f41771b = str;
            BaseATActivity.a(activity, aVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            com.smartdigimkt.p1.g gVar2 = fVar.f42954g;
            if (gVar2 != null) {
                gVar2.onShowFailed(new com.smartdigimkt.i0.f("-9999", e2.getMessage()));
            }
        }
    }
}
