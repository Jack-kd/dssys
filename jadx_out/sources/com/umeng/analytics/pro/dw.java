package com.umeng.analytics.pro;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class dw extends ed {

    /* renamed from: a, reason: collision with root package name */
    protected static final int f49201a = -65536;

    /* renamed from: b, reason: collision with root package name */
    protected static final int f49202b = -2147418112;

    /* renamed from: h, reason: collision with root package name */
    private static final ei f49203h = new ei();

    /* renamed from: c, reason: collision with root package name */
    protected boolean f49204c;

    /* renamed from: d, reason: collision with root package name */
    protected boolean f49205d;

    /* renamed from: e, reason: collision with root package name */
    protected int f49206e;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f49207f;

    /* renamed from: i, reason: collision with root package name */
    private byte[] f49208i;

    /* renamed from: j, reason: collision with root package name */
    private byte[] f49209j;

    /* renamed from: k, reason: collision with root package name */
    private byte[] f49210k;

    /* renamed from: l, reason: collision with root package name */
    private byte[] f49211l;

    /* renamed from: m, reason: collision with root package name */
    private byte[] f49212m;

    /* renamed from: n, reason: collision with root package name */
    private byte[] f49213n;

    /* renamed from: o, reason: collision with root package name */
    private byte[] f49214o;

    /* renamed from: p, reason: collision with root package name */
    private byte[] f49215p;

    public static class a implements ef {

        /* renamed from: a, reason: collision with root package name */
        protected boolean f49216a;

        /* renamed from: b, reason: collision with root package name */
        protected boolean f49217b;

        /* renamed from: c, reason: collision with root package name */
        protected int f49218c;

        public a() {
            this(false, true);
        }

        @Override // com.umeng.analytics.pro.ef
        public ed a(er erVar) {
            dw dwVar = new dw(erVar, this.f49216a, this.f49217b);
            int i2 = this.f49218c;
            if (i2 != 0) {
                dwVar.c(i2);
            }
            return dwVar;
        }

        public a(boolean z2, boolean z3) {
            this(z2, z3, 0);
        }

        public a(boolean z2, boolean z3, int i2) {
            this.f49216a = z2;
            this.f49217b = z3;
            this.f49218c = i2;
        }
    }

    public dw(er erVar) {
        this(erVar, false, true);
    }

    @Override // com.umeng.analytics.pro.ed
    public ByteBuffer A() throws dk {
        int iW = w();
        d(iW);
        if (this.f49270g.h() >= iW) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f49270g.f(), this.f49270g.g(), iW);
            this.f49270g.a(iW);
            return byteBufferWrap;
        }
        byte[] bArr = new byte[iW];
        this.f49270g.d(bArr, 0, iW);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a() {
    }

    @Override // com.umeng.analytics.pro.ed
    public void b() {
    }

    @Override // com.umeng.analytics.pro.ed
    public void c() {
    }

    @Override // com.umeng.analytics.pro.ed
    public void d() throws dk {
        a((byte) 0);
    }

    @Override // com.umeng.analytics.pro.ed
    public void e() {
    }

    @Override // com.umeng.analytics.pro.ed
    public void f() {
    }

    @Override // com.umeng.analytics.pro.ed
    public void g() {
    }

    @Override // com.umeng.analytics.pro.ed
    public eb h() throws dk {
        int iW = w();
        if (iW < 0) {
            if (((-65536) & iW) == f49202b) {
                return new eb(z(), (byte) (iW & 255), w());
            }
            throw new ee(4, "Bad version in readMessageBegin");
        }
        if (this.f49204c) {
            throw new ee(4, "Missing version in readMessageBegin, old client?");
        }
        return new eb(b(iW), u(), w());
    }

    @Override // com.umeng.analytics.pro.ed
    public void i() {
    }

    @Override // com.umeng.analytics.pro.ed
    public ei j() {
        return f49203h;
    }

    @Override // com.umeng.analytics.pro.ed
    public void k() {
    }

    @Override // com.umeng.analytics.pro.ed
    public dy l() throws dk {
        byte bU = u();
        return new dy("", bU, bU == 0 ? (short) 0 : v());
    }

    @Override // com.umeng.analytics.pro.ed
    public void m() {
    }

    @Override // com.umeng.analytics.pro.ed
    public ea n() throws dk {
        return new ea(u(), u(), w());
    }

    @Override // com.umeng.analytics.pro.ed
    public void o() {
    }

    @Override // com.umeng.analytics.pro.ed
    public dz p() throws dk {
        return new dz(u(), w());
    }

    @Override // com.umeng.analytics.pro.ed
    public void q() {
    }

    @Override // com.umeng.analytics.pro.ed
    public eh r() throws dk {
        return new eh(u(), w());
    }

    @Override // com.umeng.analytics.pro.ed
    public void s() {
    }

    @Override // com.umeng.analytics.pro.ed
    public boolean t() throws dk {
        return u() == 1;
    }

    @Override // com.umeng.analytics.pro.ed
    public byte u() throws dk {
        if (this.f49270g.h() < 1) {
            a(this.f49212m, 0, 1);
            return this.f49212m[0];
        }
        byte b3 = this.f49270g.f()[this.f49270g.g()];
        this.f49270g.a(1);
        return b3;
    }

    @Override // com.umeng.analytics.pro.ed
    public short v() throws dk {
        int iG;
        byte[] bArrF = this.f49213n;
        if (this.f49270g.h() >= 2) {
            bArrF = this.f49270g.f();
            iG = this.f49270g.g();
            this.f49270g.a(2);
        } else {
            a(this.f49213n, 0, 2);
            iG = 0;
        }
        return (short) ((bArrF[iG + 1] & 255) | ((bArrF[iG] & 255) << 8));
    }

    @Override // com.umeng.analytics.pro.ed
    public int w() throws dk {
        int iG;
        byte[] bArrF = this.f49214o;
        if (this.f49270g.h() >= 4) {
            bArrF = this.f49270g.f();
            iG = this.f49270g.g();
            this.f49270g.a(4);
        } else {
            a(this.f49214o, 0, 4);
            iG = 0;
        }
        return (bArrF[iG + 3] & 255) | ((bArrF[iG] & 255) << 24) | ((bArrF[iG + 1] & 255) << 16) | ((bArrF[iG + 2] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.ed
    public long x() throws dk {
        int iG;
        byte[] bArrF = this.f49215p;
        if (this.f49270g.h() >= 8) {
            bArrF = this.f49270g.f();
            iG = this.f49270g.g();
            this.f49270g.a(8);
        } else {
            a(this.f49215p, 0, 8);
            iG = 0;
        }
        return (bArrF[iG + 7] & 255) | ((bArrF[iG] & 255) << 56) | ((bArrF[iG + 1] & 255) << 48) | ((bArrF[iG + 2] & 255) << 40) | ((bArrF[iG + 3] & 255) << 32) | ((bArrF[iG + 4] & 255) << 24) | ((bArrF[iG + 5] & 255) << 16) | ((bArrF[iG + 6] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.ed
    public double y() throws dk {
        return Double.longBitsToDouble(x());
    }

    @Override // com.umeng.analytics.pro.ed
    public String z() throws dk {
        int iW = w();
        if (this.f49270g.h() < iW) {
            return b(iW);
        }
        try {
            String str = new String(this.f49270g.f(), this.f49270g.g(), iW, "UTF-8");
            this.f49270g.a(iW);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new dk("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public dw(er erVar, boolean z2, boolean z3) {
        super(erVar);
        this.f49207f = false;
        this.f49208i = new byte[1];
        this.f49209j = new byte[2];
        this.f49210k = new byte[4];
        this.f49211l = new byte[8];
        this.f49212m = new byte[1];
        this.f49213n = new byte[2];
        this.f49214o = new byte[4];
        this.f49215p = new byte[8];
        this.f49204c = z2;
        this.f49205d = z3;
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(ei eiVar) {
    }

    public String b(int i2) throws dk {
        try {
            d(i2);
            byte[] bArr = new byte[i2];
            this.f49270g.d(bArr, 0, i2);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new dk("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void c(int i2) {
        this.f49206e = i2;
        this.f49207f = true;
    }

    public void d(int i2) throws dk {
        if (i2 < 0) {
            throw new ee("Negative length: " + i2);
        }
        if (this.f49207f) {
            int i3 = this.f49206e - i2;
            this.f49206e = i3;
            if (i3 >= 0) {
                return;
            }
            throw new ee("Message length exceeded: " + i2);
        }
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(eb ebVar) throws dk, UnsupportedEncodingException {
        if (this.f49205d) {
            a(f49202b | ebVar.f49264b);
            a(ebVar.f49263a);
            a(ebVar.f49265c);
        } else {
            a(ebVar.f49263a);
            a(ebVar.f49264b);
            a(ebVar.f49265c);
        }
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(dy dyVar) throws dk {
        a(dyVar.f49250b);
        a(dyVar.f49251c);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(ea eaVar) throws dk {
        a(eaVar.f49260a);
        a(eaVar.f49261b);
        a(eaVar.f49262c);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(dz dzVar) throws dk {
        a(dzVar.f49252a);
        a(dzVar.f49253b);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(eh ehVar) throws dk {
        a(ehVar.f49280a);
        a(ehVar.f49281b);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(boolean z2) throws dk {
        a(z2 ? (byte) 1 : (byte) 0);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(byte b3) throws dk {
        byte[] bArr = this.f49208i;
        bArr[0] = b3;
        this.f49270g.b(bArr, 0, 1);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(short s2) throws dk {
        byte[] bArr = this.f49209j;
        bArr[0] = (byte) ((s2 >> 8) & 255);
        bArr[1] = (byte) (s2 & 255);
        this.f49270g.b(bArr, 0, 2);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(int i2) throws dk {
        byte[] bArr = this.f49210k;
        bArr[0] = (byte) ((i2 >> 24) & 255);
        bArr[1] = (byte) ((i2 >> 16) & 255);
        bArr[2] = (byte) ((i2 >> 8) & 255);
        bArr[3] = (byte) (i2 & 255);
        this.f49270g.b(bArr, 0, 4);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(long j2) throws dk {
        byte[] bArr = this.f49211l;
        bArr[0] = (byte) ((j2 >> 56) & 255);
        bArr[1] = (byte) ((j2 >> 48) & 255);
        bArr[2] = (byte) ((j2 >> 40) & 255);
        bArr[3] = (byte) ((j2 >> 32) & 255);
        bArr[4] = (byte) ((j2 >> 24) & 255);
        bArr[5] = (byte) ((j2 >> 16) & 255);
        bArr[6] = (byte) ((j2 >> 8) & 255);
        bArr[7] = (byte) (j2 & 255);
        this.f49270g.b(bArr, 0, 8);
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(double d2) throws dk {
        a(Double.doubleToLongBits(d2));
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(String str) throws dk, UnsupportedEncodingException {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.f49270g.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new dk("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.analytics.pro.ed
    public void a(ByteBuffer byteBuffer) throws dk {
        int iLimit = byteBuffer.limit() - byteBuffer.position();
        a(iLimit);
        this.f49270g.b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), iLimit);
    }

    private int a(byte[] bArr, int i2, int i3) throws dk {
        d(i3);
        return this.f49270g.d(bArr, i2, i3);
    }
}
