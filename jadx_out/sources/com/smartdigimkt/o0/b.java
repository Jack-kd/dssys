package com.smartdigimkt.o0;

import com.smartdigimkt.a1.t;
import java.io.EOFException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.z0.i f42189b;

    /* renamed from: c, reason: collision with root package name */
    public final long f42190c;

    /* renamed from: d, reason: collision with root package name */
    public long f42191d;

    /* renamed from: f, reason: collision with root package name */
    public int f42193f;

    /* renamed from: g, reason: collision with root package name */
    public int f42194g;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f42192e = new byte[65536];

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f42188a = new byte[4096];

    public b(com.smartdigimkt.z0.i iVar, long j2, long j3) {
        this.f42189b = iVar;
        this.f42191d = j2;
        this.f42190c = j3;
    }

    public final boolean a(int i2) throws InterruptedException, EOFException {
        int i3 = this.f42193f + i2;
        byte[] bArr = this.f42192e;
        if (i3 > bArr.length) {
            int i4 = t.f39303a;
            this.f42192e = Arrays.copyOf(this.f42192e, Math.max(65536 + i3, Math.min(bArr.length * 2, i3 + 524288)));
        }
        int iMin = Math.min(this.f42194g - this.f42193f, i2);
        while (iMin < i2) {
            int i5 = i2;
            iMin = a(this.f42192e, this.f42193f, i5, iMin, false);
            if (iMin == -1) {
                return false;
            }
            i2 = i5;
        }
        int i6 = this.f42193f + i2;
        this.f42193f = i6;
        this.f42194g = Math.max(this.f42194g, i6);
        return true;
    }

    public final void b(int i2) throws InterruptedException, EOFException {
        int iMin = Math.min(this.f42194g, i2);
        int i3 = this.f42194g - iMin;
        this.f42194g = i3;
        this.f42193f = 0;
        byte[] bArr = this.f42192e;
        byte[] bArr2 = i3 < bArr.length - 524288 ? new byte[65536 + i3] : bArr;
        System.arraycopy(bArr, iMin, bArr2, 0, i3);
        this.f42192e = bArr2;
        int iA = iMin;
        while (iA < i2 && iA != -1) {
            iA = a(this.f42188a, -iA, Math.min(i2, this.f42188a.length + iA), iA, false);
        }
        if (iA != -1) {
            this.f42191d += iA;
        }
    }

    public final boolean a(byte[] bArr, int i2, int i3, boolean z2) throws InterruptedException, EOFException {
        int iA;
        int i4 = this.f42194g;
        if (i4 == 0) {
            iA = 0;
        } else {
            int iMin = Math.min(i4, i3);
            System.arraycopy(this.f42192e, 0, bArr, i2, iMin);
            int i5 = this.f42194g - iMin;
            this.f42194g = i5;
            this.f42193f = 0;
            byte[] bArr2 = this.f42192e;
            byte[] bArr3 = i5 < bArr2.length - 524288 ? new byte[65536 + i5] : bArr2;
            System.arraycopy(bArr2, iMin, bArr3, 0, i5);
            this.f42192e = bArr3;
            iA = iMin;
        }
        while (iA < i3 && iA != -1) {
            iA = a(bArr, i2, i3, iA, z2);
        }
        if (iA != -1) {
            this.f42191d += iA;
        }
        return iA != -1;
    }

    public final int a(byte[] bArr, int i2, int i3, int i4, boolean z2) throws InterruptedException, EOFException {
        if (!Thread.interrupted()) {
            int iA = this.f42189b.a(bArr, i2 + i4, i3 - i4);
            if (iA != -1) {
                return i4 + iA;
            }
            if (i4 == 0 && z2) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }
}
