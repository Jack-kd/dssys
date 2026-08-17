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
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMInterstitialAd extends o implements SDMAdHandler {
    protected Context mContext;
    private SDMInterstitialListener mDevListener;
    protected String mPlacementId;
    private n mSdmAdLoadManager;
    private volatile boolean isLoading = false;
    private p mLoadListener = new com.smartdigimkt.v.n(this);

    public SDMInterstitialAd(Context context, String str) {
        this.mPlacementId = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new n(3, str);
    }

    @Override // com.smartdigimkt.e5.o
    public int getFormat() {
        return 3;
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
    }

    public void setListener(SDMInterstitialListener sDMInterstitialListener) {
        this.mDevListener = sDMInterstitialListener;
    }

    public void show(Activity activity) {
        if (!checkReady(false)) {
            SDMInterstitialListener sDMInterstitialListener = this.mDevListener;
            if (sDMInterstitialListener != null) {
                sDMInterstitialListener.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail without ad cache"));
                return;
            }
            return;
        }
        notifyShow();
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        if (!(fVar instanceof com.smartdigimkt.j1.h)) {
            SDMInterstitialListener sDMInterstitialListener2 = this.mDevListener;
            if (sDMInterstitialListener2 != null) {
                sDMInterstitialListener2.onAdShowFail(com.smartdigimkt.k4.b.a("20002", "show fail by " + this.mCacheAd));
                return;
            }
            return;
        }
        com.smartdigimkt.v.p pVar = new com.smartdigimkt.v.p(this);
        fVar.getClass();
        r rVar = new r(fVar, pVar);
        fVar.f41070f = rVar;
        com.smartdigimkt.l1.c cVar = fVar.f41073i;
        if (cVar != null) {
            cVar.f41618c = rVar;
        }
        String str = "";
        printApiLog("show", "start", "");
        com.smartdigimkt.j1.h hVar = (com.smartdigimkt.j1.h) this.mCacheAd;
        hVar.getClass();
        try {
            Map map = hVar.f41072h;
            if (map == null) {
                map = new HashMap(2);
            }
            Map map2 = map;
            String str2 = (String) com.smartdigimkt.c5.k.a(map2, "extra_scenario", "");
            String str3 = hVar.f41067c.f41627a + hVar.f41067c.f41631e + hVar.f41067c.f41636j + hVar.f41069e.f41806a + System.currentTimeMillis();
            if (hVar.f41067c != null) {
                str = hVar.f41067c.f41632f + hVar.f41067c.f41631e;
            }
            hVar.f41073i.a(activity, map2, str3, str2, str);
        } catch (Exception e2) {
            e2.printStackTrace();
            r rVar2 = hVar.f41070f;
            if (rVar2 != null) {
                com.smartdigimkt.b4.e.a().a(new q(rVar2, new com.smartdigimkt.i0.f("-9999", e2.getMessage())));
            }
        }
    }

    public void load(SDMAdRequest sDMAdRequest) {
        synchronized (this.mLock) {
            try {
                if (this.isLoading) {
                    com.smartdigimkt.b4.e.a().a(new com.smartdigimkt.v.o(this));
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
