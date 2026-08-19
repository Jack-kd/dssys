package com.smartdigimkt.m0;

import android.media.MediaCodec;
import com.smartdigimkt.a1.t;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f41694a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f41695b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f41696c;

    /* renamed from: d, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f41697d;

    /* renamed from: e, reason: collision with root package name */
    public final a f41698e;

    public b() {
        int i2 = t.f39303a;
        MediaCodec.CryptoInfo cryptoInfo = i2 >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f41697d = cryptoInfo;
        this.f41698e = i2 >= 24 ? new a(cryptoInfo) : null;
    }

    public final void a(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3, int i4, int i5) {
        this.f41695b = iArr;
        this.f41696c = iArr2;
        this.f41694a = bArr2;
        int i6 = t.f39303a;
        if (i6 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f41697d;
            cryptoInfo.numSubSamples = i2;
            cryptoInfo.numBytesOfClearData = iArr;
            cryptoInfo.numBytesOfEncryptedData = iArr2;
            cryptoInfo.key = bArr;
            cryptoInfo.iv = bArr2;
            cryptoInfo.mode = i3;
            if (i6 >= 24) {
                a.a(this.f41698e, i4, i5);
            }
        }
    }
}
