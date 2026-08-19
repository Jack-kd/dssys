package com.smartdigimkt.e5;

/* loaded from: classes5.dex */
public abstract class s {
    public static final long DEFAULT_SPLASH_TIMEOUT_TIME = 5000;
    protected com.smartdigimkt.r1.d mCacheAd;
    protected final Object mLock = new Object();

    public boolean checkReady() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        boolean zD = dVar != null ? dVar.d() : false;
        if (!zD) {
            this.mCacheAd = null;
        }
        return zD;
    }

    public void destroy() {
        synchronized (this.mLock) {
            try {
                onDestroy();
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

    public boolean isAdReady() {
        return checkReady();
    }

    public void notifyShow() {
    }

    public abstract void onDestroy();
}
