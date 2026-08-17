package com.umeng.analytics.pro;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class dx extends ed {

    /* renamed from: d, reason: collision with root package name */
    private static final ei f49219d = new ei("");

    /* renamed from: e, reason: collision with root package name */
    private static final dy f49220e = new dy("", (byte) 0, 0);

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f49221f = {0, 0, 1, 3, 7, 0, 4, 0, 5, 0, 6, 8, 12, 11, 10, 9};

    /* renamed from: h, reason: collision with root package name */
    private static final byte f49222h = -126;

    /* renamed from: i, reason: collision with root package name */
    private static final byte f49223i = 1;

    /* renamed from: j, reason: collision with root package name */
    private static final byte f49224j = 31;

    /* renamed from: k, reason: collision with root package name */
    private static final byte f49225k = -32;

    /* renamed from: l, reason: collision with root package name */
    private static final int f49226l = 5;

    /* renamed from: a, reason: collision with root package name */
    byte[] f49227a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f49228b;

    /* renamed from: c, reason: collision with root package name */
    byte[] f49229c;

    /* renamed from: m, reason: collision with root package name */
    private dc f49230m;

    /* renamed from: n, reason: collision with root package name */
    private short f49231n;

    /* renamed from: o, reason: collision with root package name */
    private dy f49232o;

    /* renamed from: p, reason: collision with root package name */
    private Boolean f49233p;

    /* renamed from: q, reason: collision with root package name */
    private final long f49234q;

    /* renamed from: r, reason: collision with root package name */
    private byte[] f49235r;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final byte f49237a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final byte f49238b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final byte f49239c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final byte f49240d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final byte f49241e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final byte f49242f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final byte f49243g = 7;

        /* renamed from: h, reason: collision with root package name */
        public static final byte f49244h = 8;

        /* renamed from: i, reason: collision with root package name */
        public static final byte f49245i = 9;

        /* renamed from: j, reason: collision with root package name */
        public static final byte f49246j = 10;

        /* renamed from: k, reason: collision with root package name */
        public static final byte f49247k = 11;

        /* renamed from: l, reason: collision with root package name */
        public static final byte f49248l = 12;

        private b() {
        }
    }

    public dx(er erVar, long j2) {
        super(erVar);
        this.f49230m = new dc(15);
        this.f49231n = (short) 0;
        this.f49232o = null;
        this.f49233p = null;
        this.f49227a = new byte[5];
        this.f49228b = new byte[10];
        this.f49235r = new byte[1];
        this.f49229c = new byte[1];
        this.f49234q = j2;
    }

    private int E() throws dk {
        int i2 = 0;
        if (this.f49270g.h() >= 5) {
            byte[] bArrF = this.f49270g.f();
            int iG = this.f49270g.g();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                byte b3 = bArrF[iG + i2];
                i3 |= (b3 & 127) << i4;
                if ((b3 & com.anythink.core.common.s.a.c.f7560a) != 128) {
                    this.f49270g.a(i2 + 1);
                    return i3;
                }
                i4 += 7;
                i2++;
            }
        } else {
            int i5 = 0;
            while (true) {
                byte bU = u();
                i2 |= (bU & 127) << i5;
                if ((bU & com.anythink.core.common.s.a.c.f7560a) != 128) {
                    return i2;
                }
                i5 += 7;
            }
        }
    }

    private long F() throws dk {
        int i2 = 0;
        long j2 = 0;
        if (this.f49270g.h() >= 10) {
            byte[] bArrF = this.f49270g.f();
            int iG = this.f49270g.g();
            long j3 = 0;
            int i3 = 0;
            while (true) {
                j3 |= (r7 & 127) << i3;
                if ((bArrF[iG + i2] & com.anythink.core.common.s.a.c.f7560a) != 128) {
                    this.f49270g.a(i2 + 1);
                    return j3;
                }
                i3 += 7;
                i2++;
            }
        } else {
            while (true) {
                j2 |= (r0 & 127) << i2;
                if ((u() & com.anythink.core.common.s.a.c.f7560a) != 128) {
                    return j2;
                }
                i2 += 7;
            }
        }
    }

    private int c(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    private long d(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    private int g(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    @Override // com.umeng.analytics.pro.ed
    public ByteBuffer A() throws dk {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[iE];
        this.f49270g.d(bArr, 0, iE);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.ed
    public void B() {
        this.f49230m.c();
        this.f49231n = (short) 0;
    }

    @Override // com.umeng.analytics.pro.ed
    public void a() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public void b() throws dk {
        this.f49231n = this.f49230m.a();
    }

    @Override // com.umeng.analytics.pro.ed
    public void e() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public void f() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public eb h() throws dk {
        byte bU = u();
        if (bU != -126) {
            throw new ee("Expected protocol id " + Integer.toHexString(-126) + " but got " + Integer.toHexString(bU));
        }
        byte bU2 = u();
        byte b3 = (byte) (bU2 & f49224j);
        if (b3 == 1) {
            return new eb(z(), (byte) ((bU2 >> 5) & 3), E());
        }
        throw new ee("Expected version 1 but got " + ((int) b3));
    }

    @Override // com.umeng.analytics.pro.ed
    public void i() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public ei j() throws dk {
        this.f49230m.a(this.f49231n);
        this.f49231n = (short) 0;
        return f49219d;
    }

    @Override // com.umeng.analytics.pro.ed
    public void k() throws dk {
        this.f49231n = this.f49230m.a();
    }

    @Override // com.umeng.analytics.pro.ed
    public dy l() throws dk {
        byte bU = u();
        if (bU == 0) {
            return f49220e;
        }
        short s2 = (short) ((bU & 240) >> 4);
        short sV = s2 == 0 ? v() : (short) (this.f49231n + s2);
        byte b3 = (byte) (bU & ek.f49295m);
        dy dyVar = new dy("", d(b3), sV);
        if (c(bU)) {
            this.f49233p = b3 == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.f49231n = dyVar.f49251c;
        return dyVar;
    }

    @Override // com.umeng.analytics.pro.ed
    public void m() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public ea n() throws dk {
        int iE = E();
        byte bU = iE == 0 ? (byte) 0 : u();
        return new ea(d((byte) (bU >> 4)), d((byte) (bU & ek.f49295m)), iE);
    }

    @Override // com.umeng.analytics.pro.ed
    public void o() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public dz p() throws dk {
        byte bU = u();
        int iE = (bU >> 4) & 15;
        if (iE == 15) {
            iE = E();
        }
        return new dz(d(bU), iE);
    }

    @Override // com.umeng.analytics.pro.ed
    public void q() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public eh r() throws dk {
        return new eh(p());
    }

    @Override // com.umeng.analytics.pro.ed
    public void s() throws dk {
    }

    @Override // com.umeng.analytics.pro.ed
    public boolean t() throws dk {
        Boolean bool = this.f49233p;
        if (bool == null) {
            return u() == 1;
        }
        boolean zBooleanValue = bool.booleanValue();
        this.f49233p = null;
        return zBooleanValue;
    }

    @Override // com.umeng.analytics.pro.ed
    public byte u() throws dk {
        if (this.f49270g.h() <= 0) {
            this.f49270g.d(this.f49229c, 0, 1);
            return this.f49229c[0];
        }
        byte b3 = this.f49270g.f()[this.f49270g.g()];
        this.f49270g.a(1);
        return b3;
    }

    @Override // com.umeng.analytics.pro.ed
    public short v() throws dk {
        return (short) g(E());
    }

    @Override // com.umeng.analytics.pro.ed
    public int w() throws dk {
        return g(E());
    }

    @Override // com.umeng.analytics.pro.ed
    public long x() throws dk {
        return d(F());
    }

    @Override // com.umeng.analytics.pro.ed
    public double y() throws dk {
        byte[] bArr = new byte[8];
        this.f49270g.d(bArr, 0, 8);
        return Double.longBitsToDouble(a(bArr));
    }

    @Override // com.umeng.analytics.pro.ed
    public String z() throws dk {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return "";
        }
        try {
            if (this.f49270g.h() < iE) {
                return new String(e(iE), "UTF-8");
            }
            String str = new String(this.f49270g.f(), this.f49270g.g(), iE, "UTF-8");
            this.f49270g.a(iE);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new dk("UTF-8 not supported!");
        }
    }

    public static class a implements ef {

        /* renamed from: a, reason: collision with root package name */
        private final long f49236a;

        public a() {
            this.f49236a = -1L;
        }

        @Override // com.umeng.analytics.pro.ef
        public ed a(er erVar) {
            return new dx(erVar, this.f49236a);
        }

        public a(int i2) {
            this.f49236a = i2;
        }
    }

    private void b(int i2) throws dk {
        int i3 = 0;
        while ((i2 & (-128)) != 0) {
            this.f49227a[i3] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
            i3++;
        }
        byte[] bArr = this.f49227a;
        bArr[i3] = (byte) i2;
        this.f49270g.b(bArr, 0, i3 + 1);
    }

    private long c(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    private byte[] e(int i2) throws dk {
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i2];
        this.f49270g.d(bArr, 0, i2);
        return bArr;
    }

    private void f(int i2) throws ee {
        if (i2 < 0) {
            throw new ee("Negative length: " + i2);
        }
        long j2 = this.f49234q;
        if (j2 == -1 || i2 <= j2) {
            return;
        }
        throw new ee("Length exceeded max allowed: " + i2);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(eb ebVar) throws dk {
        b(f49222h);
        d(((ebVar.f49264b << 5) & (-32)) | 1);
        b(ebVar.f49265c);
        a(ebVar.f49263a);
    }

    @Override // com.umeng.analytics.pro.ed
    public void d() throws dk {
        b((byte) 0);
    }

    @Override // com.umeng.analytics.pro.ed
    public void g() throws dk {
    }

    private void d(int i2) throws dk {
        b((byte) i2);
    }

    @Override // com.umeng.analytics.pro.ed
    public void c() throws dk {
    }

    private boolean c(byte b3) {
        int i2 = b3 & ek.f49295m;
        return i2 == 1 || i2 == 2;
    }

    private byte d(byte b3) throws ee {
        byte b4 = (byte) (b3 & ek.f49295m);
        switch (b4) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return ek.f49295m;
            case 10:
                return ek.f49294l;
            case 11:
                return ek.f49293k;
            case 12:
                return (byte) 12;
            default:
                throw new ee("don't know what type: " + ((int) b4));
        }
    }

    private void b(long j2) throws dk {
        int i2 = 0;
        while (((-128) & j2) != 0) {
            this.f49228b[i2] = (byte) ((127 & j2) | 128);
            j2 >>>= 7;
            i2++;
        }
        byte[] bArr = this.f49228b;
        bArr[i2] = (byte) j2;
        this.f49270g.b(bArr, 0, i2 + 1);
    }

    private byte e(byte b3) {
        return f49221f[b3];
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(ei eiVar) throws dk {
        this.f49230m.a(this.f49231n);
        this.f49231n = (short) 0;
    }

    private void b(byte b3) throws dk {
        byte[] bArr = this.f49235r;
        bArr[0] = b3;
        this.f49270g.b(bArr);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(dy dyVar) throws dk {
        if (dyVar.f49250b == 2) {
            this.f49232o = dyVar;
        } else {
            a(dyVar, (byte) -1);
        }
    }

    public dx(er erVar) {
        this(erVar, -1L);
    }

    private void a(dy dyVar, byte b3) throws dk {
        if (b3 == -1) {
            b3 = e(dyVar.f49250b);
        }
        short s2 = dyVar.f49251c;
        short s3 = this.f49231n;
        if (s2 > s3 && s2 - s3 <= 15) {
            d(b3 | ((s2 - s3) << 4));
        } else {
            b(b3);
            a(dyVar.f49251c);
        }
        this.f49231n = dyVar.f49251c;
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(ea eaVar) throws dk {
        int i2 = eaVar.f49262c;
        if (i2 == 0) {
            d(0);
            return;
        }
        b(i2);
        d(e(eaVar.f49261b) | (e(eaVar.f49260a) << 4));
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(dz dzVar) throws dk {
        a(dzVar.f49252a, dzVar.f49253b);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(eh ehVar) throws dk {
        a(ehVar.f49280a, ehVar.f49281b);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(boolean z2) throws dk {
        dy dyVar = this.f49232o;
        if (dyVar != null) {
            a(dyVar, z2 ? (byte) 1 : (byte) 2);
            this.f49232o = null;
        } else {
            b(z2 ? (byte) 1 : (byte) 2);
        }
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(byte b3) throws dk {
        b(b3);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(short s2) throws dk {
        b(c((int) s2));
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(int i2) throws dk {
        b(c(i2));
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(long j2) throws dk {
        b(c(j2));
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(double d2) throws dk {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(Double.doubleToLongBits(d2), bArr, 0);
        this.f49270g.b(bArr);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(String str) throws dk {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new dk("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(ByteBuffer byteBuffer) throws dk {
        a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    private void a(byte[] bArr, int i2, int i3) throws dk {
        b(i3);
        this.f49270g.b(bArr, i2, i3);
    }

    public void a(byte b3, int i2) throws dk {
        if (i2 <= 14) {
            d(e(b3) | (i2 << 4));
        } else {
            d(e(b3) | 240);
            b(i2);
        }
    }

    private void a(long j2, byte[] bArr, int i2) {
        bArr[i2] = (byte) (j2 & 255);
        bArr[i2 + 1] = (byte) ((j2 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((j2 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((j2 >> 24) & 255);
        bArr[i2 + 4] = (byte) ((j2 >> 32) & 255);
        bArr[i2 + 5] = (byte) ((j2 >> 40) & 255);
        bArr[i2 + 6] = (byte) ((j2 >> 48) & 255);
        bArr[i2 + 7] = (byte) ((j2 >> 56) & 255);
    }

    private long a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (255 & bArr[0]);
    }
}
