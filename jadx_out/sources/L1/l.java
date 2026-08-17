package L1;

import L1.d;

/* loaded from: classes5.dex */
public class l extends L1.a {

    /* renamed from: n, reason: collision with root package name */
    public d f235n;

    public static class a extends l implements d.a {
        @Override // L1.l, L1.a
        public boolean equals(Object obj) {
            if (this != obj) {
                return ((obj instanceof d) && ((d) obj).A0(this)) || super.equals(obj);
            }
            return true;
        }
    }

    public l(d dVar, int i2, int i3, int i4, int i5) {
        super(2, !dVar.s0());
        this.f235n = dVar.buffer();
        q0(i4);
        z0(i3);
        o0(i2);
        this.f209b = i5;
    }

    @Override // L1.a, L1.d
    public int b0(int i2, d dVar) {
        return this.f235n.b0(i2, dVar);
    }

    @Override // L1.a, L1.d
    public d buffer() {
        return this.f235n.buffer();
    }

    @Override // L1.d
    public void c0(int i2, byte b3) {
        this.f235n.c0(i2, b3);
    }

    @Override // L1.a, L1.d
    public void clear() {
        o0(-1);
        z0(0);
        q0(this.f235n.getIndex());
        z0(this.f235n.getIndex());
    }

    @Override // L1.d
    public int d0(int i2, byte[] bArr, int i3, int i4) {
        return this.f235n.d0(i2, bArr, i3, i4);
    }

    @Override // L1.a
    public boolean equals(Object obj) {
        if (this != obj) {
            return ((obj instanceof d) && obj.equals(this)) || super.equals(obj);
        }
        return true;
    }

    @Override // L1.a, L1.d
    public int g0(int i2, byte[] bArr, int i3, int i4) {
        return this.f235n.g0(i2, bArr, i3, i4);
    }

    @Override // L1.a, L1.d
    public d h0(int i2, int i3) {
        return this.f235n.h0(i2, i3);
    }

    @Override // L1.a, L1.d
    public boolean isReadOnly() {
        return this.f235n.isReadOnly();
    }

    @Override // L1.d
    public byte k0(int i2) {
        return this.f235n.k0(i2);
    }

    @Override // L1.d
    public byte[] p0() {
        return this.f235n.p0();
    }

    @Override // L1.a
    public String toString() {
        return this.f235n == null ? "INVALID" : super.toString();
    }

    public void update(d dVar) {
        this.f209b = 2;
        this.f235n = dVar.buffer();
        z0(0);
        q0(dVar.n0());
        z0(dVar.getIndex());
        o0(dVar.x0());
        this.f209b = dVar.isReadOnly() ? 1 : 2;
    }

    @Override // L1.d
    public int w0() {
        return this.f235n.w0();
    }

    @Override // L1.a, L1.d
    public boolean y0() {
        return true;
    }

    public l(d dVar) {
        super(2, !dVar.s0());
        this.f235n = dVar.buffer();
        q0(dVar.n0());
        z0(dVar.getIndex());
        o0(dVar.x0());
        this.f209b = dVar.isReadOnly() ? 1 : 2;
    }

    public void update(int i2, int i3) {
        int i4 = this.f209b;
        this.f209b = 2;
        z0(0);
        q0(i3);
        z0(i2);
        o0(-1);
        this.f209b = i4;
    }

    public l() {
        super(2, true);
    }

    @Override // L1.a, L1.d
    public void u0() {
    }
}
