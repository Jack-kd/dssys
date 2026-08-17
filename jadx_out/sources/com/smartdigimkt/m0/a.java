package com.smartdigimkt.m0;

import android.media.MediaCodec;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f41692a;

    /* renamed from: b, reason: collision with root package name */
    public final MediaCodec.CryptoInfo.Pattern f41693b = new MediaCodec.CryptoInfo.Pattern(0, 0);

    public a(MediaCodec.CryptoInfo cryptoInfo) {
        this.f41692a = cryptoInfo;
    }

    public static void a(a aVar, int i2, int i3) {
        aVar.f41693b.set(i2, i3);
        aVar.f41692a.setPattern(aVar.f41693b);
    }
}
