package org.eclipse.jetty.http;

import com.umeng.analytics.pro.ek;
import java.io.IOException;
import java.io.InterruptedIOException;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EofException;

/* loaded from: classes5.dex */
public class h extends org.eclipse.jetty.http.a {

    /* renamed from: B, reason: collision with root package name */
    public static final byte[] f52207B;

    /* renamed from: C, reason: collision with root package name */
    public static final byte[] f52208C;

    /* renamed from: D, reason: collision with root package name */
    public static final byte[] f52209D;

    /* renamed from: E, reason: collision with root package name */
    public static final byte[] f52210E;

    /* renamed from: F, reason: collision with root package name */
    public static final byte[] f52211F;

    /* renamed from: G, reason: collision with root package name */
    public static final byte[] f52212G;

    /* renamed from: H, reason: collision with root package name */
    public static final byte[] f52213H;

    /* renamed from: I, reason: collision with root package name */
    public static byte[] f52214I;

    /* renamed from: v, reason: collision with root package name */
    public boolean f52216v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f52217w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f52218x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f52219y;

    /* renamed from: z, reason: collision with root package name */
    public static final R1.c f52215z = R1.b.a(h.class);

    /* renamed from: A, reason: collision with root package name */
    public static final b[] f52206A = new b[508];

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public L1.d f52220a;

        /* renamed from: b, reason: collision with root package name */
        public L1.d f52221b;

        /* renamed from: c, reason: collision with root package name */
        public L1.d f52222c;

        public b() {
        }
    }

    static {
        int length = p.f52352d.length();
        for (int i2 = 0; i2 < f52206A.length; i2++) {
            HttpStatus.Code codeA = HttpStatus.a(i2);
            if (codeA != null) {
                String message = codeA.getMessage();
                int i3 = length + 5;
                int length2 = message.length() + i3 + 2;
                byte[] bArr = new byte[length2];
                p.f52352d.d0(0, bArr, 0, length);
                bArr[length] = 32;
                bArr[length + 1] = (byte) ((i2 / 100) + 48);
                bArr[length + 2] = (byte) (((i2 % 100) / 10) + 48);
                bArr[length + 3] = (byte) ((i2 % 10) + 48);
                bArr[length + 4] = 32;
                for (int i4 = 0; i4 < message.length(); i4++) {
                    bArr[i3 + i4] = (byte) message.charAt(i4);
                }
                bArr[message.length() + i3] = ek.f49293k;
                bArr[length + 6 + message.length()] = 10;
                b[] bVarArr = f52206A;
                b bVar = new b();
                bVarArr[i2] = bVar;
                bVar.f52220a = new L1.h(bArr, i3, (length2 - length) - 7, 0);
                bVarArr[i2].f52221b = new L1.h(bArr, 0, i3, 0);
                bVarArr[i2].f52222c = new L1.h(bArr, 0, length2, 0);
            }
        }
        f52207B = new byte[]{com.sigmob.sdk.archives.tar.e.f35442H, ek.f49293k, 10, ek.f49293k, 10};
        f52208C = org.eclipse.jetty.util.m.c("Content-Length: 0\r\n");
        f52209D = org.eclipse.jetty.util.m.c("Connection: keep-alive\r\n");
        f52210E = org.eclipse.jetty.util.m.c("Connection: close\r\n");
        f52211F = org.eclipse.jetty.util.m.c("Connection: ");
        f52212G = org.eclipse.jetty.util.m.c("\r\n");
        f52213H = org.eclipse.jetty.util.m.c("Transfer-Encoding: chunked\r\n");
        f52214I = org.eclipse.jetty.util.m.c("Server: Jetty(7.0.x)\r\n");
    }

    public h(Buffers buffers, L1.k kVar) {
        super(buffers, kVar);
        this.f52216v = false;
        this.f52217w = false;
        this.f52218x = false;
        this.f52219y = false;
    }

    public static void G(String str) {
        f52214I = org.eclipse.jetty.util.m.c("Server: Jetty(" + str + ")\r\n");
    }

    public final int A() {
        L1.d dVar;
        L1.d dVar2 = this.f52156o;
        int i2 = 0;
        int i3 = (dVar2 == null || dVar2.length() <= 0) ? 0 : 4;
        L1.d dVar3 = this.f52157p;
        int i4 = i3 | ((dVar3 == null || dVar3.length() <= 0) ? 0 : 2);
        if (this.f52216v && (dVar = this.f52158q) != null && dVar.length() > 0) {
            i2 = 1;
        }
        return i4 | i2;
    }

    public boolean B() {
        L1.d dVar = this.f52156o;
        if (dVar != null && dVar.length() != 0) {
            return false;
        }
        L1.d dVar2 = this.f52157p;
        if (dVar2 != null && dVar2.length() != 0) {
            return false;
        }
        L1.d dVar3 = this.f52158q;
        return dVar3 == null || dVar3.length() == 0;
    }

    public boolean C() {
        return this.f52148g == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.h.D():void");
    }

    public void E(int i2) {
        if (this.f52144c != 0) {
            return;
        }
        if (i2 < 100 || i2 > 199) {
            throw new IllegalArgumentException("!1xx");
        }
        b bVar = f52206A[i2];
        if (bVar == null) {
            throw new IllegalArgumentException(i2 + "?");
        }
        if (this.f52156o == null) {
            this.f52156o = this.f52142a.getHeader();
        }
        this.f52156o.m0(bVar.f52222c);
        this.f52156o.r0(n.f52332a);
        while (this.f52156o.length() > 0) {
            try {
                int i3 = this.f52143b.i(this.f52156o);
                if (i3 < 0 || !this.f52143b.isOpen()) {
                    throw new EofException();
                }
                if (i3 == 0) {
                    Thread.sleep(100L);
                }
            } catch (InterruptedException e2) {
                f52215z.a(e2);
                throw new InterruptedIOException(e2.toString());
            }
        }
    }

    public void F(L1.d dVar) {
        L1.d dVar2;
        if (this.f52154m || this.f52144c != 0 || (((dVar2 = this.f52158q) != null && dVar2.length() > 0) || this.f52219y || this.f52153l)) {
            throw new IllegalStateException();
        }
        this.f52152k = true;
        this.f52158q = dVar;
        this.f52216v = true;
        this.f52144c = 3;
        long length = dVar.length();
        this.f52150i = length;
        this.f52151j = length;
    }

    @Override // org.eclipse.jetty.http.a, org.eclipse.jetty.http.c
    public void complete() throws IOException {
        if (this.f52144c == 4) {
            return;
        }
        super.complete();
        if (this.f52144c < 3) {
            this.f52144c = 3;
            if (this.f52151j == -2) {
                this.f52218x = true;
            }
        }
        l();
    }

    @Override // org.eclipse.jetty.http.c
    public void g(L1.d dVar, boolean z2) throws IOException {
        L1.d dVar2;
        L1.d dVarA;
        if (this.f52154m) {
            throw new IllegalStateException("NO CONTENT");
        }
        if (this.f52152k || this.f52144c == 4) {
            f52215z.g("Ignoring extra content {}", dVar);
            dVar.clear();
            return;
        }
        this.f52152k = z2;
        L1.d dVar3 = this.f52158q;
        if ((dVar3 != null && dVar3.length() > 0) || this.f52219y) {
            if (this.f52143b.o()) {
                throw new EofException();
            }
            l();
            L1.d dVar4 = this.f52158q;
            if (dVar4 != null && dVar4.length() > 0) {
                if (this.f52219y) {
                    dVarA = this.f52142a.a(this.f52158q.length() + 12 + dVar.length());
                    dVarA.m0(this.f52158q);
                    byte[] bArr = n.f52332a;
                    dVarA.r0(bArr);
                    L1.g.e(dVarA, dVar.length());
                    dVarA.r0(bArr);
                    dVarA.m0(dVar);
                } else {
                    dVarA = this.f52142a.a(this.f52158q.length() + dVar.length());
                    dVarA.m0(this.f52158q);
                    dVarA.m0(dVar);
                }
                dVar = dVarA;
            }
        }
        this.f52158q = dVar;
        this.f52150i += dVar.length();
        if (this.f52153l) {
            dVar.clear();
            this.f52158q = null;
            return;
        }
        if (this.f52143b != null && (((dVar2 = this.f52157p) == null || dVar2.length() == 0) && this.f52158q.length() > 0 && (this.f52152k || (e() && this.f52158q.length() > 1024)))) {
            this.f52216v = true;
            return;
        }
        if (this.f52219y) {
            return;
        }
        if (this.f52157p == null) {
            this.f52157p = this.f52142a.getBuffer();
        }
        this.f52158q.skip(this.f52157p.m0(this.f52158q));
        if (this.f52158q.length() == 0) {
            this.f52158q = null;
        }
    }

    @Override // org.eclipse.jetty.http.a, org.eclipse.jetty.http.c
    public int l() throws IOException {
        L1.d dVar;
        Boolean bool;
        L1.d dVar2;
        L1.d dVar3;
        try {
            if (this.f52144c == 0) {
                throw new IllegalStateException("State==HEADER");
            }
            D();
            if (this.f52143b == null) {
                if (this.f52217w && (dVar3 = this.f52157p) != null) {
                    dVar3.r0(n.f52332a);
                }
                if (this.f52218x && (dVar2 = this.f52157p) != null && !this.f52153l) {
                    dVar2.r0(f52207B);
                }
                this.f52217w = false;
                this.f52218x = false;
                return 0;
            }
            int iA = A();
            int i2 = -1;
            int i3 = 0;
            while (true) {
                switch (iA) {
                    case 0:
                        L1.d dVar4 = this.f52156o;
                        if (dVar4 != null) {
                            dVar4.clear();
                        }
                        this.f52216v = false;
                        this.f52219y = false;
                        L1.d dVar5 = this.f52157p;
                        if (dVar5 != null) {
                            dVar5.clear();
                            if (this.f52151j == -2) {
                                this.f52157p.q0(12);
                                this.f52157p.z0(12);
                                L1.d dVar6 = this.f52158q;
                                if (dVar6 != null && dVar6.length() < this.f52157p.f0() && this.f52144c != 3) {
                                    this.f52157p.m0(this.f52158q);
                                    this.f52158q.clear();
                                    this.f52158q = null;
                                }
                            }
                        }
                        if (this.f52217w || this.f52218x || !((dVar = this.f52158q) == null || dVar.length() == 0)) {
                            D();
                        } else {
                            if (this.f52144c == 3) {
                                this.f52144c = 4;
                            }
                            if (this.f52144c == 4 && (bool = this.f52155n) != null && !bool.booleanValue() && this.f52145d != 100 && this.f52148g == null) {
                                this.f52143b.j();
                            }
                        }
                        i2 = 0;
                        break;
                    case 1:
                        i2 = this.f52143b.i(this.f52158q);
                        break;
                    case 2:
                        i2 = this.f52143b.i(this.f52157p);
                        break;
                    case 3:
                        i2 = this.f52143b.g(this.f52157p, this.f52158q, null);
                        break;
                    case 4:
                        i2 = this.f52143b.i(this.f52156o);
                        break;
                    case 5:
                        i2 = this.f52143b.g(this.f52156o, this.f52158q, null);
                        break;
                    case 6:
                        i2 = this.f52143b.g(this.f52156o, this.f52157p, null);
                        break;
                    case 7:
                        throw new IllegalStateException();
                }
                if (i2 > 0) {
                    i3 += i2;
                }
                int iA2 = A();
                if (i2 > 0 || (iA2 != 0 && iA == 0)) {
                    iA = iA2;
                }
            }
            return i3;
        } catch (IOException e2) {
            f52215z.h(e2);
            if (e2 instanceof EofException) {
                throw e2;
            }
            throw new EofException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x02c3 A[Catch: ArrayIndexOutOfBoundsException -> 0x0084, TryCatch #0 {ArrayIndexOutOfBoundsException -> 0x0084, blocks: (B:21:0x0039, B:23:0x0054, B:26:0x005e, B:30:0x0087, B:32:0x00a9, B:34:0x00ae, B:76:0x01a0, B:78:0x01a6, B:80:0x01aa, B:83:0x01ce, B:85:0x01e3, B:191:0x0373, B:89:0x01ef, B:98:0x0204, B:100:0x020b, B:102:0x0211, B:104:0x021e, B:106:0x022c, B:107:0x0230, B:108:0x023a, B:110:0x0248, B:117:0x0256, B:119:0x025f, B:123:0x026b, B:125:0x0275, B:126:0x027a, B:132:0x028a, B:134:0x0295, B:133:0x0290, B:135:0x029d, B:137:0x02a3, B:138:0x02a9, B:140:0x02ad, B:142:0x02b3, B:144:0x02bd, B:146:0x02c3, B:147:0x02c7, B:149:0x02cf, B:151:0x02d5, B:153:0x02dd, B:156:0x02e8, B:158:0x02f8, B:160:0x02fb, B:162:0x0309, B:166:0x0313, B:168:0x031e, B:190:0x036e, B:167:0x0319, B:169:0x0324, B:171:0x0328, B:173:0x032e, B:175:0x0335, B:177:0x033b, B:178:0x033f, B:180:0x0347, B:182:0x034d, B:184:0x0353, B:187:0x035e, B:189:0x0369, B:188:0x0364, B:194:0x0394, B:239:0x0445, B:242:0x044d, B:244:0x0454, B:246:0x0460, B:247:0x0466, B:248:0x046d, B:249:0x046e, B:250:0x0475, B:252:0x047d, B:254:0x0484, B:256:0x048a, B:259:0x0494, B:261:0x0498, B:263:0x04a1, B:265:0x04cc, B:267:0x04d5, B:269:0x0500, B:271:0x051d, B:273:0x0523, B:275:0x0529, B:276:0x0530, B:200:0x03a4, B:202:0x03aa, B:208:0x03b6, B:209:0x03bf, B:210:0x03cb, B:212:0x03d1, B:214:0x03d5, B:215:0x03dc, B:217:0x03e0, B:219:0x03e6, B:221:0x03ec, B:224:0x03f6, B:226:0x03fa, B:227:0x041e, B:229:0x0426, B:234:0x042f, B:236:0x0437, B:238:0x043f, B:33:0x00ac, B:35:0x00ba, B:37:0x00be, B:39:0x00c7, B:44:0x00d1, B:45:0x00d7, B:47:0x00de, B:51:0x00e6, B:53:0x011d, B:55:0x0145, B:60:0x016e, B:63:0x0174, B:65:0x017c, B:66:0x017f, B:68:0x0185, B:73:0x0195, B:75:0x019d, B:54:0x0140, B:56:0x014d, B:58:0x0151, B:59:0x0159), top: B:280:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02e2  */
    @Override // org.eclipse.jetty.http.a, org.eclipse.jetty.http.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m(org.eclipse.jetty.http.g r32, boolean r33) throws org.eclipse.jetty.io.EofException {
        /*
            Method dump skipped, instructions count: 1368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.h.m(org.eclipse.jetty.http.g, boolean):void");
    }

    @Override // org.eclipse.jetty.http.a, org.eclipse.jetty.http.c
    public void reset() {
        L1.k kVar;
        Boolean bool = this.f52155n;
        if (bool != null && !bool.booleanValue() && (kVar = this.f52143b) != null && !kVar.o()) {
            try {
                this.f52143b.j();
            } catch (IOException e2) {
                f52215z.h(e2);
            }
        }
        super.reset();
        L1.d dVar = this.f52157p;
        if (dVar != null) {
            dVar.clear();
        }
        L1.d dVar2 = this.f52156o;
        if (dVar2 != null) {
            dVar2.clear();
        }
        if (this.f52158q != null) {
            this.f52158q = null;
        }
        this.f52216v = false;
        this.f52217w = false;
        this.f52218x = false;
        this.f52219y = false;
        this.f52148g = null;
        this.f52149h = null;
        this.f52154m = false;
    }

    public String toString() {
        L1.d dVar = this.f52156o;
        L1.d dVar2 = this.f52157p;
        L1.d dVar3 = this.f52158q;
        return String.format("%s{s=%d,h=%d,b=%d,c=%d}", getClass().getSimpleName(), Integer.valueOf(this.f52144c), Integer.valueOf(dVar == null ? -1 : dVar.length()), Integer.valueOf(dVar2 == null ? -1 : dVar2.length()), Integer.valueOf(dVar3 != null ? dVar3.length() : -1));
    }

    @Override // org.eclipse.jetty.http.a
    public boolean u() {
        L1.d dVar;
        if (super.u() || this.f52219y || this.f52216v) {
            return true;
        }
        return this.f52151j == -2 && (dVar = this.f52157p) != null && dVar.f0() < 12;
    }

    @Override // org.eclipse.jetty.http.a
    public boolean v() {
        return this.f52148g != null;
    }

    @Override // org.eclipse.jetty.http.a
    public int y() throws IOException {
        if (this.f52154m || this.f52152k || this.f52144c == 4) {
            return -1;
        }
        L1.d dVar = this.f52158q;
        if ((dVar != null && dVar.length() > 0) || this.f52219y) {
            l();
            if ((dVar != null && dVar.length() > 0) || this.f52219y) {
                throw new IllegalStateException("FULL");
            }
        }
        if (this.f52157p == null) {
            this.f52157p = this.f52142a.getBuffer();
        }
        this.f52150i -= this.f52157p.length();
        if (this.f52153l) {
            return Integer.MAX_VALUE;
        }
        return this.f52157p.f0() - (this.f52151j == -2 ? 12 : 0);
    }
}
