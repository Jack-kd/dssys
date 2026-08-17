package com.smartdigimkt.sdk.api.format.myoffer;

import android.app.Activity;
import android.content.Context;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.e5.q;
import com.smartdigimkt.e5.r;
import com.smartdigimkt.e5.s;
import com.smartdigimkt.r1.n;
import com.smartdigimkt.r1.o;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMRewardVideoListener;
import com.smartdigimkt.sdk.basead.ui.BaseATActivity;
import com.smartdigimkt.w.w;
import com.smartdigimkt.w.x;
import com.smartdigimkt.w.y;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMMyOfferRewardedVideoAd extends s {
    protected Context mContext;
    private SDMRewardVideoListener mDevListener;
    protected String mPlacementId;
    private final r mSdmAdLoadManager;
    private volatile boolean isLoading = false;
    private final p mLoadListener = new w(this);

    public SDMMyOfferRewardedVideoAd(Context context, String str) {
        this.mPlacementId = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new r(1, str);
    }

    public Map<String, Object> getExtraInfoMap() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (dVar != null) {
            return com.smartdigimkt.z.f.a(dVar.f42949e);
        }
        return null;
    }

    public int getFormat() {
        return 1;
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

    public void setListener(SDMRewardVideoListener sDMRewardVideoListener) {
        this.mDevListener = sDMRewardVideoListener;
    }

    public void show(Activity activity) {
        if (!checkReady()) {
            SDMRewardVideoListener sDMRewardVideoListener = this.mDevListener;
            if (sDMRewardVideoListener != null) {
                sDMRewardVideoListener.onAdPlayFailed(com.smartdigimkt.k4.b.a("20002", "show fail without ad cache"));
                return;
            }
            return;
        }
        notifyShow();
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (!(dVar instanceof o)) {
            SDMRewardVideoListener sDMRewardVideoListener2 = this.mDevListener;
            if (sDMRewardVideoListener2 != null) {
                sDMRewardVideoListener2.onAdPlayFailed(com.smartdigimkt.k4.b.a("20002", "show fail by " + this.mCacheAd));
                return;
            }
            return;
        }
        ((o) dVar).f42975g = new y(this);
        o oVar = (o) this.mCacheAd;
        oVar.getClass();
        try {
            if (oVar.f42945a == null) {
                com.smartdigimkt.p1.g gVar = oVar.f42975g;
                if (gVar != null) {
                    gVar.onShowFailed(new com.smartdigimkt.i0.f(com.anythink.core.common.inner.b.b.f4592i, com.anythink.core.common.inner.b.b.f4565H));
                    return;
                }
                return;
            }
            String str = (String) k.a(oVar.f42950f, "extra_scenario", "");
            String str2 = oVar.f42946b.f41632f;
            int iY = com.smartdigimkt.c5.h.y(activity);
            String str3 = oVar.f42946b.f41627a + oVar.f42947c + System.currentTimeMillis();
            com.smartdigimkt.p1.b.f42548a.f42554a.put(str3, new n(oVar, str3));
            com.smartdigimkt.m3.a aVar = new com.smartdigimkt.m3.a();
            aVar.f41772c = oVar.f42949e;
            aVar.f41773d = str3;
            aVar.f41770a = 1;
            aVar.f41775f = oVar.f42946b;
            aVar.f41774e = iY;
            aVar.f41771b = str;
            BaseATActivity.a(activity, aVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            com.smartdigimkt.p1.g gVar2 = oVar.f42975g;
            if (gVar2 != null) {
                gVar2.onShowFailed(new com.smartdigimkt.i0.f("-9999", e2.getMessage()));
            }
        }
    }

    public void load(SDMAdRequest sDMAdRequest) {
        synchronized (this.mLock) {
            try {
                if (this.isLoading) {
                    com.smartdigimkt.b4.e.a().a(new x(this));
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
}
