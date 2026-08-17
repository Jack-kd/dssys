package com.smartdigimkt.w0;

/* loaded from: classes5.dex */
public final class b0 {

    /* renamed from: i, reason: collision with root package name */
    public int f44741i;

    /* renamed from: j, reason: collision with root package name */
    public int f44742j;

    /* renamed from: k, reason: collision with root package name */
    public int f44743k;

    /* renamed from: l, reason: collision with root package name */
    public int f44744l;

    /* renamed from: q, reason: collision with root package name */
    public com.smartdigimkt.j0.s f44749q;

    /* renamed from: a, reason: collision with root package name */
    public int f44733a = 1000;

    /* renamed from: b, reason: collision with root package name */
    public int[] f44734b = new int[1000];

    /* renamed from: c, reason: collision with root package name */
    public long[] f44735c = new long[1000];

    /* renamed from: f, reason: collision with root package name */
    public long[] f44738f = new long[1000];

    /* renamed from: e, reason: collision with root package name */
    public int[] f44737e = new int[1000];

    /* renamed from: d, reason: collision with root package name */
    public int[] f44736d = new int[1000];

    /* renamed from: g, reason: collision with root package name */
    public com.smartdigimkt.o0.m[] f44739g = new com.smartdigimkt.o0.m[1000];

    /* renamed from: h, reason: collision with root package name */
    public com.smartdigimkt.j0.s[] f44740h = new com.smartdigimkt.j0.s[1000];

    /* renamed from: m, reason: collision with root package name */
    public long f44745m = Long.MIN_VALUE;

    /* renamed from: n, reason: collision with root package name */
    public long f44746n = Long.MIN_VALUE;

    /* renamed from: p, reason: collision with root package name */
    public boolean f44748p = true;

    /* renamed from: o, reason: collision with root package name */
    public boolean f44747o = true;

    public final synchronized boolean a() {
        return this.f44744l != this.f44741i;
    }

    public final long b(int i2) {
        long jMax = Long.MIN_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int iC = c(i2 - 1);
        for (int i3 = 0; i3 < i2; i3++) {
            jMax = Math.max(jMax, this.f44738f[iC]);
            if ((this.f44737e[iC] & 1) != 0) {
                return jMax;
            }
            iC--;
            if (iC == -1) {
                iC = this.f44733a - 1;
            }
        }
        return jMax;
    }

    public final int c(int i2) {
        int i3 = this.f44743k + i2;
        int i4 = this.f44733a;
        return i3 < i4 ? i3 : i3 - i4;
    }

    public final synchronized void a(long j2, int i2, long j3, int i3, com.smartdigimkt.o0.m mVar) {
        try {
            if (this.f44747o) {
                if ((i2 & 1) == 0) {
                    return;
                } else {
                    this.f44747o = false;
                }
            }
            if (this.f44748p) {
                throw new IllegalStateException();
            }
            a(j2);
            int iC = c(this.f44741i);
            this.f44738f[iC] = j2;
            long[] jArr = this.f44735c;
            jArr[iC] = j3;
            this.f44736d[iC] = i3;
            this.f44737e[iC] = i2;
            this.f44739g[iC] = mVar;
            this.f44740h[iC] = this.f44749q;
            this.f44734b[iC] = 0;
            int i4 = this.f44741i + 1;
            this.f44741i = i4;
            int i5 = this.f44733a;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                int[] iArr = new int[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr2 = new int[i6];
                int[] iArr3 = new int[i6];
                com.smartdigimkt.o0.m[] mVarArr = new com.smartdigimkt.o0.m[i6];
                com.smartdigimkt.j0.s[] sVarArr = new com.smartdigimkt.j0.s[i6];
                int i7 = this.f44743k;
                int i8 = i5 - i7;
                System.arraycopy(jArr, i7, jArr2, 0, i8);
                System.arraycopy(this.f44738f, this.f44743k, jArr3, 0, i8);
                System.arraycopy(this.f44737e, this.f44743k, iArr2, 0, i8);
                System.arraycopy(this.f44736d, this.f44743k, iArr3, 0, i8);
                System.arraycopy(this.f44739g, this.f44743k, mVarArr, 0, i8);
                System.arraycopy(this.f44740h, this.f44743k, sVarArr, 0, i8);
                System.arraycopy(this.f44734b, this.f44743k, iArr, 0, i8);
                int i9 = this.f44743k;
                System.arraycopy(this.f44735c, 0, jArr2, i8, i9);
                System.arraycopy(this.f44738f, 0, jArr3, i8, i9);
                System.arraycopy(this.f44737e, 0, iArr2, i8, i9);
                System.arraycopy(this.f44736d, 0, iArr3, i8, i9);
                System.arraycopy(this.f44739g, 0, mVarArr, i8, i9);
                System.arraycopy(this.f44740h, 0, sVarArr, i8, i9);
                System.arraycopy(this.f44734b, 0, iArr, i8, i9);
                this.f44735c = jArr2;
                this.f44738f = jArr3;
                this.f44737e = iArr2;
                this.f44736d = iArr3;
                this.f44739g = mVarArr;
                this.f44740h = sVarArr;
                this.f44734b = iArr;
                this.f44743k = 0;
                this.f44741i = this.f44733a;
                this.f44733a = i6;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(long j2) {
        this.f44746n = Math.max(this.f44746n, j2);
    }

    public final int a(int i2, int i3, long j2, boolean z2) {
        int i4 = -1;
        for (int i5 = 0; i5 < i3 && this.f44738f[i2] <= j2; i5++) {
            if (!z2 || (this.f44737e[i2] & 1) != 0) {
                i4 = i5;
            }
            i2++;
            if (i2 == this.f44733a) {
                i2 = 0;
            }
        }
        return i4;
    }

    public final long a(int i2) {
        this.f44745m = Math.max(this.f44745m, b(i2));
        int i3 = this.f44741i - i2;
        this.f44741i = i3;
        this.f44742j += i2;
        int i4 = this.f44743k + i2;
        this.f44743k = i4;
        int i5 = this.f44733a;
        if (i4 >= i5) {
            this.f44743k = i4 - i5;
        }
        int i6 = this.f44744l - i2;
        this.f44744l = i6;
        if (i6 < 0) {
            this.f44744l = 0;
        }
        if (i3 == 0) {
            int i7 = this.f44743k;
            if (i7 != 0) {
                i5 = i7;
            }
            return this.f44735c[i5 - 1] + this.f44736d[r2];
        }
        return this.f44735c[this.f44743k];
    }
}
