package com.ubix.ssp.ad.e.y.c;

import com.umeng.analytics.pro.ek;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f47814a;

    /* renamed from: b, reason: collision with root package name */
    private int f47815b;

    /* renamed from: c, reason: collision with root package name */
    private int f47816c;

    /* renamed from: d, reason: collision with root package name */
    private int f47817d;

    /* renamed from: e, reason: collision with root package name */
    private int f47818e;

    /* renamed from: f, reason: collision with root package name */
    private int f47819f;

    /* renamed from: h, reason: collision with root package name */
    private int f47821h;

    /* renamed from: g, reason: collision with root package name */
    private int f47820g = Integer.MAX_VALUE;

    /* renamed from: i, reason: collision with root package name */
    private int f47822i = 64;

    /* renamed from: j, reason: collision with root package name */
    private int f47823j = 67108864;

    private a(byte[] bArr, int i2, int i3) {
        this.f47814a = bArr;
        this.f47815b = i2;
        this.f47816c = i3 + i2;
        this.f47818e = i2;
    }

    private void z() {
        int i2 = this.f47816c + this.f47817d;
        this.f47816c = i2;
        int i3 = this.f47820g;
        if (i2 <= i3) {
            this.f47817d = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f47817d = i4;
        this.f47816c = i2 - i4;
    }

    public void A() throws d {
        int iW;
        do {
            iW = w();
            if (iW == 0) {
                return;
            }
        } while (h(iW));
    }

    public int a() {
        int i2 = this.f47820g;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - this.f47818e;
    }

    public int b() {
        return this.f47818e - this.f47815b;
    }

    public void c(int i2) {
        this.f47820g = i2;
        z();
    }

    public int d(int i2) throws d {
        if (i2 < 0) {
            throw d.e();
        }
        int i3 = i2 + this.f47818e;
        int i4 = this.f47820g;
        if (i3 > i4) {
            throw d.g();
        }
        this.f47820g = i3;
        z();
        return i4;
    }

    public Object e(int i2) {
        switch (i2) {
            case 1:
                return Double.valueOf(f());
            case 2:
                return Float.valueOf(j());
            case 3:
                return Long.valueOf(l());
            case 4:
                return Long.valueOf(y());
            case 5:
                return Integer.valueOf(k());
            case 6:
                return Long.valueOf(i());
            case 7:
                return Integer.valueOf(h());
            case 8:
                return Boolean.valueOf(d());
            case 9:
                return v();
            case 10:
            case 11:
            default:
                throw new IllegalArgumentException("Unknown type " + i2);
            case 12:
                return e();
            case 13:
                return Integer.valueOf(x());
            case 14:
                return Integer.valueOf(g());
            case 15:
                return Integer.valueOf(r());
            case 16:
                return Long.valueOf(s());
            case 17:
                return Integer.valueOf(t());
            case 18:
                return Long.valueOf(u());
        }
    }

    public double f() {
        return Double.longBitsToDouble(o());
    }

    public int g() {
        return p();
    }

    public int h() {
        return n();
    }

    public long i() {
        return o();
    }

    public float j() {
        return Float.intBitsToFloat(n());
    }

    public int k() {
        return p();
    }

    public long l() {
        return q();
    }

    public byte m() throws d {
        int i2 = this.f47818e;
        if (i2 == this.f47816c) {
            throw d.g();
        }
        byte[] bArr = this.f47814a;
        this.f47818e = i2 + 1;
        return bArr[i2];
    }

    public int n() throws d {
        return (m() & 255) | ((m() & 255) << 8) | ((m() & 255) << 16) | ((m() & 255) << 24);
    }

    public long o() throws d {
        return ((m() & 255) << 8) | (m() & 255) | ((m() & 255) << 16) | ((m() & 255) << 24) | ((m() & 255) << 32) | ((m() & 255) << 40) | ((m() & 255) << 48) | ((m() & 255) << 56);
    }

    public int p() throws d {
        int i2;
        byte bM = m();
        if (bM >= 0) {
            return bM;
        }
        int i3 = bM & 127;
        byte bM2 = m();
        if (bM2 >= 0) {
            i2 = bM2 << 7;
        } else {
            i3 |= (bM2 & 127) << 7;
            byte bM3 = m();
            if (bM3 >= 0) {
                i2 = bM3 << ek.f49294l;
            } else {
                i3 |= (bM3 & 127) << 14;
                byte bM4 = m();
                if (bM4 < 0) {
                    int i4 = i3 | ((bM4 & 127) << 21);
                    byte bM5 = m();
                    int i5 = i4 | (bM5 << 28);
                    if (bM5 < 0) {
                        for (int i6 = 0; i6 < 5; i6++) {
                            if (m() < 0) {
                            }
                        }
                        throw d.d();
                    }
                    return i5;
                }
                i2 = bM4 << 21;
            }
        }
        return i3 | i2;
    }

    public long q() throws d {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j2 |= (r3 & 127) << i2;
            if ((m() & com.anythink.core.common.s.a.c.f7560a) == 0) {
                return j2;
            }
        }
        throw d.d();
    }

    public int r() {
        return n();
    }

    public long s() {
        return o();
    }

    public int t() {
        return b(p());
    }

    public long u() {
        return a(q());
    }

    public String v() throws d {
        int iP = p();
        int i2 = this.f47816c;
        int i3 = this.f47818e;
        if (iP > i2 - i3 || iP <= 0) {
            return new String(f(iP), c.f47825a);
        }
        String str = new String(this.f47814a, i3, iP, c.f47825a);
        this.f47818e += iP;
        return str;
    }

    public int w() throws d {
        if (c()) {
            this.f47819f = 0;
            return 0;
        }
        int iP = p();
        this.f47819f = iP;
        if (iP != 0) {
            return iP;
        }
        throw d.b();
    }

    public int x() {
        return p();
    }

    public long y() {
        return q();
    }

    public static long a(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    public static int b(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    public boolean c() {
        return this.f47818e == this.f47816c;
    }

    public boolean d() {
        return p() != 0;
    }

    public byte[] e() throws d {
        int iP = p();
        int i2 = this.f47816c;
        int i3 = this.f47818e;
        if (iP > i2 - i3 || iP <= 0) {
            return iP == 0 ? h.f47837h : f(iP);
        }
        byte[] bArr = new byte[iP];
        System.arraycopy(this.f47814a, i3, bArr, 0, iP);
        this.f47818e += iP;
        return bArr;
    }

    public byte[] f(int i2) throws d {
        if (i2 < 0) {
            throw d.e();
        }
        int i3 = this.f47818e;
        int i4 = i3 + i2;
        int i5 = this.f47820g;
        if (i4 > i5) {
            i(i5 - i3);
            throw d.g();
        }
        if (i2 > this.f47816c - i3) {
            throw d.g();
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.f47814a, i3, bArr, 0, i2);
        this.f47818e += i2;
        return bArr;
    }

    public void g(int i2) {
        int i3 = this.f47818e;
        int i4 = this.f47815b;
        if (i2 > i3 - i4) {
            throw new IllegalArgumentException("Position " + i2 + " is beyond current " + (this.f47818e - this.f47815b));
        }
        if (i2 >= 0) {
            this.f47818e = i4 + i2;
            return;
        }
        throw new IllegalArgumentException("Bad position " + i2);
    }

    public boolean h(int i2) throws d {
        int iB = h.b(i2);
        if (iB == 0) {
            k();
            return true;
        }
        if (iB == 1) {
            o();
            return true;
        }
        if (iB == 2) {
            i(p());
            return true;
        }
        if (iB == 3) {
            A();
            a(h.a(h.a(i2), 4));
            return true;
        }
        if (iB == 4) {
            return false;
        }
        if (iB != 5) {
            throw d.c();
        }
        n();
        return true;
    }

    public void i(int i2) throws d {
        if (i2 < 0) {
            throw d.e();
        }
        int i3 = this.f47818e;
        int i4 = i3 + i2;
        int i5 = this.f47820g;
        if (i4 > i5) {
            i(i5 - i3);
            throw d.g();
        }
        if (i2 > this.f47816c - i3) {
            throw d.g();
        }
        this.f47818e = i4;
    }

    public static a a(byte[] bArr, int i2, int i3) {
        return new a(bArr, i2, i3);
    }

    public void a(int i2) throws d {
        if (this.f47819f != i2) {
            throw d.a();
        }
    }

    public void a(f fVar) throws d {
        int iP = p();
        if (this.f47821h >= this.f47822i) {
            throw d.f();
        }
        int iD = d(iP);
        this.f47821h++;
        fVar.a(this);
        a(0);
        this.f47821h--;
        c(iD);
    }
}
