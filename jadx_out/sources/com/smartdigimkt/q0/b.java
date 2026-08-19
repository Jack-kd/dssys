package com.smartdigimkt.q0;

import android.media.MediaCodec;
import com.smartdigimkt.a1.t;
import com.smartdigimkt.j0.s;

/* loaded from: classes5.dex */
public final class b extends Exception {
    public b(s sVar, f fVar, int i2) {
        super("Decoder init failed: [" + i2 + "], " + sVar, fVar);
        String str = sVar.f40991f;
        Math.abs(i2);
    }

    public b(s sVar, Exception exc, String str) {
        super("Decoder init failed: " + str + ", " + sVar, exc);
        String str2 = sVar.f40991f;
        if (t.f39303a < 21 || !(exc instanceof MediaCodec.CodecException)) {
            return;
        }
        ((MediaCodec.CodecException) exc).getDiagnosticInfo();
    }
}
