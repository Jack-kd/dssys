package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.AdError;
import com.smartdigimkt.sdk.api.format.SDMLossInfo;
import com.smartdigimkt.sdk.api.format.SDMWinInfo;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public abstract class o {
    public static final long DEFAULT_SPLASH_TIMEOUT_TIME = 5000;
    protected com.smartdigimkt.j1.f mCacheAd;
    protected final Object mLock = new Object();
    private final g mAdCallbackHandler = new a();

    public boolean checkReady(boolean z2) {
        boolean z3;
        int i2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        if (fVar != null) {
            int iB = fVar.b();
            this.mCacheAd.getClass();
            boolean zA = com.smartdigimkt.j1.f.a(iB);
            if (iB == 1) {
                sendLoss(new SDMLossInfo(SDMLossInfo.LOSS_REASON.LOSS_TO_EXPIRE, 0.0d));
                destroy();
            }
            i2 = iB;
            z3 = zA;
        } else {
            z3 = false;
            i2 = 0;
        }
        if (z2) {
            com.smartdigimkt.y3.h.a(z3, getPlacementId(), this.mCacheAd, System.currentTimeMillis() - jCurrentTimeMillis, i2);
            com.smartdigimkt.j1.f fVar2 = this.mCacheAd;
            if (!z3 || fVar2 == null) {
                com.smartdigimkt.c5.w.a(getPlacementId(), com.smartdigimkt.c5.j.a(String.valueOf(getFormat())), "isready", String.valueOf(false), "");
            } else if (fVar2.f41067c != null) {
                com.smartdigimkt.c5.w.a(getPlacementId(), com.smartdigimkt.c5.j.a(String.valueOf(getFormat())), "isready", String.valueOf(true), "");
            }
        }
        if (!z3) {
            this.mCacheAd = null;
        }
        return z3;
    }

    public void destroy() {
        synchronized (this.mLock) {
            try {
                onDestroy();
                com.smartdigimkt.j1.f fVar = this.mCacheAd;
                if (fVar != null) {
                    fVar.a();
                    this.mCacheAd = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract int getFormat();

    public abstract String getPlacementId();

    public boolean isAdReady() {
        return checkReady(true);
    }

    public void notifyShow() {
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        if (fVar != null) {
            fVar.c();
        }
        com.smartdigimkt.y3.d.a(SDKContext.getInstance().d()).a(13, this.mCacheAd.f41076l, -1L);
    }

    public abstract void onDestroy();

    public void printAdStatusLog(String str, String str2, String str3) {
        printAdStatusLog(str, str2, str3, null);
    }

    public void printApiLog(String str, String str2, String str3) {
        com.smartdigimkt.c5.w.a(getPlacementId(), com.smartdigimkt.c5.j.a(String.valueOf(getFormat())), str, str2, str3);
    }

    public void sendLoss(SDMLossInfo sDMLossInfo) {
        c0.a(this.mCacheAd, sDMLossInfo);
    }

    public void sendWin(SDMWinInfo sDMWinInfo) {
        c0.a(this.mCacheAd, sDMWinInfo);
    }

    public void printAdStatusLog(String str, String str2, String str3, AdError adError) {
        g gVar = this.mAdCallbackHandler;
        ((a) gVar).f40076a = this.mCacheAd;
        a.a(gVar, str, str2, adError);
        com.smartdigimkt.j1.f fVar = this.mCacheAd;
        com.smartdigimkt.c5.w.a(fVar != null ? fVar.f41076l : null, str, str2, str3);
    }
}
