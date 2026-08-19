package com.smartdigimkt.sdk.api.format.myoffer;

import android.content.Context;
import com.smartdigimkt.e5.p;
import com.smartdigimkt.e5.q;
import com.smartdigimkt.e5.r;
import com.smartdigimkt.e5.s;
import com.smartdigimkt.e5.u;
import com.smartdigimkt.sdk.api.SDMAdRequest;
import com.smartdigimkt.sdk.api.format.SDMNativeAd;
import com.smartdigimkt.sdk.api.format.SDMNativeLoadListener;
import com.smartdigimkt.w.t;
import java.util.Map;

/* loaded from: classes5.dex */
public class SDMMyOfferNative extends s {
    protected Context mContext;
    private SDMNativeLoadListener mDevListener;
    private u mNativeAdImp;
    protected String mPlacementId;
    private r mSdmAdLoadManager;
    private volatile boolean isLoading = false;
    private p mLoadListener = new com.smartdigimkt.w.s(this);

    public SDMMyOfferNative(Context context, String str) {
        this.mPlacementId = str;
        if (context != null) {
            this.mContext = context.getApplicationContext();
        }
        this.mSdmAdLoadManager = new r(0, str);
    }

    public Map<String, Object> getExtraInfoMap() {
        com.smartdigimkt.r1.d dVar = this.mCacheAd;
        if (dVar != null) {
            return com.smartdigimkt.z.f.a(dVar.f42949e);
        }
        return null;
    }

    public int getFormat() {
        return 0;
    }

    public SDMNativeAd getNativeAd() {
        return this.mNativeAdImp;
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
