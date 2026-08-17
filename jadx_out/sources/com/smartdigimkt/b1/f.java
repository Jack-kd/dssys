package com.smartdigimkt.b1;

import android.media.MediaCodec;
import android.os.Handler;
import android.view.Surface;

/* loaded from: classes5.dex */
public final class f implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f39488a;

    public f(g gVar, MediaCodec mediaCodec) {
        this.f39488a = gVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j2, long j3) {
        g gVar = this.f39488a;
        if (this == gVar.f39527y0 && !gVar.f39507e0) {
            gVar.f39507e0 = true;
            s sVar = gVar.f39496T;
            Surface surface = gVar.f39504b0;
            if (sVar.f39569b != null) {
                sVar.f39568a.post(new q(sVar, surface));
            }
        }
    }
}
