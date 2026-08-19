package com.smartdigimkt.l0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* loaded from: classes5.dex */
public final class h0 implements e {

    /* renamed from: g, reason: collision with root package name */
    public int f41530g;

    /* renamed from: h, reason: collision with root package name */
    public g0 f41531h;

    /* renamed from: i, reason: collision with root package name */
    public ByteBuffer f41532i;

    /* renamed from: j, reason: collision with root package name */
    public ShortBuffer f41533j;

    /* renamed from: k, reason: collision with root package name */
    public ByteBuffer f41534k;

    /* renamed from: l, reason: collision with root package name */
    public long f41535l;

    /* renamed from: m, reason: collision with root package name */
    public long f41536m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f41537n;

    /* renamed from: d, reason: collision with root package name */
    public float f41527d = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f41528e = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f41525b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f41526c = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f41529f = -1;

    public h0() {
        ByteBuffer byteBuffer = e.f41474a;
        this.f41532i = byteBuffer;
        this.f41533j = byteBuffer.asShortBuffer();
        this.f41534k = byteBuffer;
        this.f41530g = -1;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean a(int i2, int i3, int i4) throws d {
        if (i4 != 2) {
            throw new d(i2, i3, i4);
        }
        int i5 = this.f41530g;
        if (i5 == -1) {
            i5 = i2;
        }
        if (this.f41526c == i2 && this.f41525b == i3 && this.f41529f == i5) {
            return false;
        }
        this.f41526c = i2;
        this.f41525b = i3;
        this.f41529f = i5;
        this.f41531h = null;
        return true;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean b() {
        if (this.f41526c != -1) {
            return Math.abs(this.f41527d - 1.0f) >= 0.01f || Math.abs(this.f41528e - 1.0f) >= 0.01f || this.f41529f != this.f41526c;
        }
        return false;
    }

    @Override // com.smartdigimkt.l0.e
    public final int c() {
        return this.f41529f;
    }

    @Override // com.smartdigimkt.l0.e
    public final int d() {
        return 2;
    }

    @Override // com.smartdigimkt.l0.e
    public final void e() {
        int i2;
        g0 g0Var = this.f41531h;
        if (g0Var == null) {
            throw new IllegalStateException();
        }
        int i3 = g0Var.f41511k;
        float f2 = g0Var.f41503c;
        float f3 = g0Var.f41504d;
        int i4 = g0Var.f41513m + ((int) ((((i3 / (f2 / f3)) + g0Var.f41515o) / (g0Var.f41505e * f3)) + 0.5f));
        g0Var.f41510j = g0Var.b(g0Var.f41510j, i3, (g0Var.f41508h * 2) + i3);
        int i5 = 0;
        while (true) {
            i2 = g0Var.f41508h * 2;
            int i6 = g0Var.f41502b;
            if (i5 >= i2 * i6) {
                break;
            }
            g0Var.f41510j[(i6 * i3) + i5] = 0;
            i5++;
        }
        g0Var.f41511k = i2 + g0Var.f41511k;
        g0Var.a();
        if (g0Var.f41513m > i4) {
            g0Var.f41513m = i4;
        }
        g0Var.f41511k = 0;
        g0Var.f41518r = 0;
        g0Var.f41515o = 0;
        this.f41537n = true;
    }

    @Override // com.smartdigimkt.l0.e
    public final int f() {
        return this.f41525b;
    }

    @Override // com.smartdigimkt.l0.e
    public final void flush() {
        if (b()) {
            g0 g0Var = this.f41531h;
            if (g0Var == null) {
                this.f41531h = new g0(this.f41526c, this.f41525b, this.f41527d, this.f41528e, this.f41529f);
            } else {
                g0Var.f41511k = 0;
                g0Var.f41513m = 0;
                g0Var.f41515o = 0;
                g0Var.f41516p = 0;
                g0Var.f41517q = 0;
                g0Var.f41518r = 0;
                g0Var.f41519s = 0;
                g0Var.f41520t = 0;
                g0Var.f41521u = 0;
                g0Var.f41522v = 0;
            }
        }
        this.f41534k = e.f41474a;
        this.f41535l = 0L;
        this.f41536m = 0L;
        this.f41537n = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final boolean g() {
        if (!this.f41537n) {
            return false;
        }
        g0 g0Var = this.f41531h;
        return g0Var == null || g0Var.f41513m == 0;
    }

    @Override // com.smartdigimkt.l0.e
    public final void h() {
        this.f41527d = 1.0f;
        this.f41528e = 1.0f;
        this.f41525b = -1;
        this.f41526c = -1;
        this.f41529f = -1;
        ByteBuffer byteBuffer = e.f41474a;
        this.f41532i = byteBuffer;
        this.f41533j = byteBuffer.asShortBuffer();
        this.f41534k = byteBuffer;
        this.f41530g = -1;
        this.f41531h = null;
        this.f41535l = 0L;
        this.f41536m = 0L;
        this.f41537n = false;
    }

    @Override // com.smartdigimkt.l0.e
    public final void a(ByteBuffer byteBuffer) {
        if (this.f41531h != null) {
            if (byteBuffer.hasRemaining()) {
                ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
                int iRemaining = byteBuffer.remaining();
                this.f41535l += iRemaining;
                g0 g0Var = this.f41531h;
                g0Var.getClass();
                int iRemaining2 = shortBufferAsShortBuffer.remaining();
                int i2 = g0Var.f41502b;
                int i3 = iRemaining2 / i2;
                short[] sArrB = g0Var.b(g0Var.f41510j, g0Var.f41511k, i3);
                g0Var.f41510j = sArrB;
                shortBufferAsShortBuffer.get(sArrB, g0Var.f41511k * g0Var.f41502b, ((i2 * i3) * 2) / 2);
                g0Var.f41511k += i3;
                g0Var.a();
                byteBuffer.position(byteBuffer.position() + iRemaining);
            }
            int i4 = this.f41531h.f41513m * this.f41525b * 2;
            if (i4 > 0) {
                if (this.f41532i.capacity() < i4) {
                    ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i4).order(ByteOrder.nativeOrder());
                    this.f41532i = byteBufferOrder;
                    this.f41533j = byteBufferOrder.asShortBuffer();
                } else {
                    this.f41532i.clear();
                    this.f41533j.clear();
                }
                g0 g0Var2 = this.f41531h;
                ShortBuffer shortBuffer = this.f41533j;
                g0Var2.getClass();
                int iMin = Math.min(shortBuffer.remaining() / g0Var2.f41502b, g0Var2.f41513m);
                shortBuffer.put(g0Var2.f41512l, 0, g0Var2.f41502b * iMin);
                int i5 = g0Var2.f41513m - iMin;
                g0Var2.f41513m = i5;
                short[] sArr = g0Var2.f41512l;
                int i6 = g0Var2.f41502b;
                System.arraycopy(sArr, iMin * i6, sArr, 0, i5 * i6);
                this.f41536m += i4;
                this.f41532i.limit(i4);
                this.f41534k = this.f41532i;
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.smartdigimkt.l0.e
    public final ByteBuffer a() {
        ByteBuffer byteBuffer = this.f41534k;
        this.f41534k = e.f41474a;
        return byteBuffer;
    }
}
