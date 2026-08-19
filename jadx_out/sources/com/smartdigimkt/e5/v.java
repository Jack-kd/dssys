package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;

/* loaded from: classes5.dex */
public final class v implements SDMNativeAdMediaViewListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDMNativeAdMediaViewListener f40107a;

    public v(SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener) {
        this.f40107a = sDMNativeAdMediaViewListener;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onProgressUpdate(long j2, long j3) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f40107a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onProgressUpdate(j2, j3);
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onVideoAdComplete() {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f40107a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoAdComplete();
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onVideoAdStartPlay(long j2) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f40107a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoAdStartPlay(j2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onVideoError(String str, String str2) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f40107a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoError(str, str2);
        }
    }
}
