package com.smartdigimkt.o0;

import com.smartdigimkt.a1.t;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class a implements k {

    /* renamed from: a, reason: collision with root package name */
    public final int f42182a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f42183b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f42184c;

    /* renamed from: d, reason: collision with root package name */
    public final long[] f42185d;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f42186e;

    /* renamed from: f, reason: collision with root package name */
    public final long f42187f;

    public a(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f42183b = iArr;
        this.f42184c = jArr;
        this.f42185d = jArr2;
        this.f42186e = jArr3;
        int length = iArr.length;
        this.f42182a = length;
        if (length <= 0) {
            this.f42187f = 0L;
        } else {
            int i2 = length - 1;
            this.f42187f = jArr2[i2] + jArr3[i2];
        }
    }

    @Override // com.smartdigimkt.o0.k
    public final boolean a() {
        return true;
    }

    @Override // com.smartdigimkt.o0.k
    public final long b() {
        return this.f42187f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f42182a + ", sizes=" + Arrays.toString(this.f42183b) + ", offsets=" + Arrays.toString(this.f42184c) + ", timeUs=" + Arrays.toString(this.f42186e) + ", durationsUs=" + Arrays.toString(this.f42185d) + ")";
    }

    @Override // com.smartdigimkt.o0.k
    public final i a(long j2) {
        int i2;
        long[] jArr = this.f42186e;
        int i3 = t.f39303a;
        int iBinarySearch = Arrays.binarySearch(jArr, j2);
        if (iBinarySearch < 0) {
            i2 = -(iBinarySearch + 2);
        } else {
            while (true) {
                int i4 = iBinarySearch - 1;
                if (i4 < 0 || jArr[i4] != j2) {
                    break;
                }
                iBinarySearch = i4;
            }
            i2 = iBinarySearch;
        }
        int iMax = Math.max(0, i2);
        long[] jArr2 = this.f42186e;
        long j3 = jArr2[iMax];
        long[] jArr3 = this.f42184c;
        l lVar = new l(j3, jArr3[iMax]);
        if (j3 >= j2 || iMax == this.f42182a - 1) {
            return new i(lVar, lVar);
        }
        int i5 = iMax + 1;
        return new i(lVar, new l(jArr2[i5], jArr3[i5]));
    }
}
