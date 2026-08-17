package com.smartdigimkt.sdk.api.format;

import android.content.Context;
import com.smartdigimkt.e5.m;
import com.smartdigimkt.e5.n;
import com.smartdigimkt.e5.o;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.e5.x;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.v.s;
import com.smartdigimkt.v.t;

/* loaded from: classes5.dex */
public class SDMNative extends o {
    protected Context mContext;
    private SDMNativeLoadListener mDevListener;
    private x mNativeAdImp;
    protected String mPlacementId;
    private n mSdmAdLoadManager;
    private volatile boolean isLoading = false;
    private p mLoadListener = new s(this);

    public SDMNative(Context context, String str) {
        this.mPlacementId = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new n(0, str);
    }

    @Override // com.smartdigimkt.e5.o
    public int getFormat() {
        return 0;
    }

    public SDMNativeAd getNativeAd() {
        return this.mNativeAdImp;
    }

    @Override // com.smartdigimkt.e5.o
    public String getPlacementId() {
        return this.mPlacementId;
    }

    public void load() {
        load(null);
    }

    @Override // com.smartdigimkt.e5.o
    public void onDestroy() {
        this.mDevListener = null;
    }

    public void setListener(SDMNativeLoadListener sDMNativeLoadListener) {
        this.mDevListener = sDMNativeLoadListener;
    }

    public void load(SDMAdRequest sDMAdRequest) {
        synchronized (this.mLock) {
            try {
                if (this.isLoading) {
                    com.smartdigimkt.b4.e.a().a(new t(this));
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
