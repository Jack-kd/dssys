package com.smartdigimkt.sdk.api.format;

import android.app.Activity;
import android.content.Context;
import com.smartdigimkt.e5.l;
import com.smartdigimkt.e5.m;
import com.smartdigimkt.e5.n;
import com.smartdigimkt.e5.o;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.p1.q;
import com.smartdigimkt.p1.r;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.v.w;
import com.smartdigimkt.v.x;
import com.smartdigimkt.v.y;
import com.smartdigimkt.v.z;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMRewardedVideoAd extends o implements SDMAdHandler {
    protected Context mContext;
    private volatile SDMAdDeepRewardResultListener mDeepRewardListener;
    private SDMRewardVideoListener mDevListener;
    protected String mPlacementId;
    private final n mSdmAdLoadManager;
    private volatile boolean isLoading = false;
    private final p mLoadListener = new w(this);

    public SDMRewardedVideoAd(Context context, String str) {
        this.mPlacementId = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new n(1, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDoubleReward(int i2) {
        com.smartdigimkt.b4.e.a().a(new z(this, i2));
    }

    @Override // com.smartdigimkt.e5.o
    public int getFormat() {
        return 1;
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
        this.mDeepRewardListener = null;
    }

    public void setDeepRewardListener(SDMAdDeepRewardResultListener sDMAdDeepRewardResultListener) {
        this.mDeepRewardListener = sDMAdDeepRewardResultListener;
        hashCode();
    }

    public void setListener(SDMRewardVideoListener sDMRewardVideoListener) {
        this.mDevListener = sDMRewardVideoListener;
    }

    public void show(Activity activity) {
        String str;
        if (!checkReady(false)) {
            SDMRewardVideoListener sDMRewardVideoListener = this.mDevListener;
            if (sDMRewardVideoListener != null) {
                sDMRewardVideoListener.onAdPlayFailed(com.smartdigimkt.k4.b.a("20002", "show fail without ad cache"));
                return;
            }
            return;
        }
        notifyShow();
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        if (!(fVar instanceof com.smartdigimkt.j1.j)) {
            SDMRewardVideoListener sDMRewardVideoListener2 = this.mDevListener;
            if (sDMRewardVideoListener2 != null) {
                sDMRewardVideoListener2.onAdPlayFailed(com.smartdigimkt.k4.b.a("20002", "show fail by " + this.mCacheAd));
                return;
            }
            return;
        }
        com.smartdigimkt.m3.b bVar = fVar.f41069e;
        if (bVar != null) {
            bVar.f42059t0.clear();
        }
        com.smartdigimkt.j1.f fVar2 = this.mCacheAd;
        y yVar = new y(this);
        fVar2.getClass();
        r rVar = new r(fVar2, yVar);
        fVar2.f41070f = rVar;
        com.smartdigimkt.l1.c cVar = fVar2.f41073i;
        if (cVar != null) {
            cVar.f41618c = rVar;
        }
        printApiLog("show", "start", "");
        com.smartdigimkt.j1.j jVar = (com.smartdigimkt.j1.j) this.mCacheAd;
        hashCode();
        jVar.f41093n = this.mDeepRewardListener != null;
        try {
            String str2 = jVar.f41067c.f41627a + jVar.f41067c.f41631e + jVar.f41067c.f41636j + jVar.f41069e.f41806a + System.currentTimeMillis();
            Map map = jVar.f41072h;
            if (map == null) {
                map = new HashMap(2);
            }
            Map map2 = map;
            if (jVar.f41067c != null) {
                str = jVar.f41067c.f41632f + jVar.f41067c.f41631e;
            } else {
                str = "";
            }
            jVar.f41073i.a(activity, map2, str2, (String) com.smartdigimkt.c5.k.a(map2, "extra_scenario", ""), str, jVar.f41093n);
        } catch (Exception e2) {
            e2.printStackTrace();
            r rVar2 = jVar.f41070f;
            if (rVar2 != null) {
                com.smartdigimkt.b4.e.a().a(new q(rVar2, new com.smartdigimkt.i0.f("-9999", e2.getMessage())));
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
                if (checkReady(false)) {
                    this.mLoadListener.onAdLoaded(this.mCacheAd);
                    return;
                }
                this.isLoading = true;
                n nVar = this.mSdmAdLoadManager;
                Context context = this.mContext;
                p pVar = this.mLoadListener;
                nVar.getClass();
                com.smartdigimkt.b4.e.a().c(new m(nVar, context, 0, sDMAdRequest, pVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
