package com.smartdigimkt.m1;

import com.smartdigimkt.e5.v;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;

/* loaded from: classes5.dex */
public final class p extends r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDMNativeAdMediaViewListener f41738a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f41739b;

    public p(s sVar, v vVar) {
        this.f41739b = sVar;
        this.f41738a = vVar;
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onProgressUpdate(long j2, long j3) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f41738a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onProgressUpdate(j2, j3);
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onVideoAdComplete() {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f41738a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoAdComplete();
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onVideoAdStartPlay(long j2) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f41738a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoAdStartPlay(j2);
        }
    }

    @Override // com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener
    public final void onVideoError(String str, String str2) {
        SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener = this.f41738a;
        if (sDMNativeAdMediaViewListener != null) {
            sDMNativeAdMediaViewListener.onVideoError(str, str2);
        }
    }
}
