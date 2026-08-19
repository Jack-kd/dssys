package com.smartdigimkt.q0;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* loaded from: classes5.dex */
public final class h implements g {
    @Override // com.smartdigimkt.q0.g
    public final int a() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.smartdigimkt.q0.g
    public final boolean b() {
        return false;
    }

    @Override // com.smartdigimkt.q0.g
    public final MediaCodecInfo a(int i2) {
        return MediaCodecList.getCodecInfoAt(i2);
    }

    @Override // com.smartdigimkt.q0.g
    public final boolean a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }
}
