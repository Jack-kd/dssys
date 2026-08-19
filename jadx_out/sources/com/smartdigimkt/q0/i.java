package com.smartdigimkt.q0;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes5.dex */
public final class i implements g {

    /* renamed from: a, reason: collision with root package name */
    public final int f42665a;

    /* renamed from: b, reason: collision with root package name */
    public MediaCodecInfo[] f42666b;

    public i(boolean z2) {
        this.f42665a = z2 ? 1 : 0;
    }

    @Override // com.smartdigimkt.q0.g
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.smartdigimkt.q0.g
    public final boolean b() {
        return true;
    }

    @Override // com.smartdigimkt.q0.g
    public final int a() {
        if (this.f42666b == null) {
            this.f42666b = new MediaCodecList(this.f42665a).getCodecInfos();
        }
        return this.f42666b.length;
    }

    @Override // com.smartdigimkt.q0.g
    public final MediaCodecInfo a(int i2) {
        if (this.f42666b == null) {
            this.f42666b = new MediaCodecList(this.f42665a).getCodecInfos();
        }
        return this.f42666b[i2];
    }
}
