package org.eclipse.jetty.http;

import L1.e;
import L1.l;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EofException;

/* loaded from: classes5.dex */
public class l implements r {

    /* renamed from: w, reason: collision with root package name */
    public static final R1.c f52307w = R1.b.a(l.class);

    /* renamed from: a, reason: collision with root package name */
    public final a f52308a;

    /* renamed from: b, reason: collision with root package name */
    public final Buffers f52309b;

    /* renamed from: c, reason: collision with root package name */
    public final L1.k f52310c;

    /* renamed from: d, reason: collision with root package name */
    public L1.d f52311d;

    /* renamed from: e, reason: collision with root package name */
    public L1.d f52312e;

    /* renamed from: f, reason: collision with root package name */
    public L1.d f52313f;

    /* renamed from: g, reason: collision with root package name */
    public e.a f52314g;

    /* renamed from: j, reason: collision with root package name */
    public String f52317j;

    /* renamed from: k, reason: collision with root package name */
    public int f52318k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f52319l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f52320m;

    /* renamed from: p, reason: collision with root package name */
    public byte f52323p;

    /* renamed from: q, reason: collision with root package name */
    public int f52324q;

    /* renamed from: r, reason: collision with root package name */
    public long f52325r;

    /* renamed from: s, reason: collision with root package name */
    public long f52326s;

    /* renamed from: t, reason: collision with root package name */
    public int f52327t;

    /* renamed from: u, reason: collision with root package name */
    public int f52328u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f52329v;

    /* renamed from: n, reason: collision with root package name */
    public final L1.l f52321n = new L1.l();

    /* renamed from: o, reason: collision with root package name */
    public int f52322o = -14;

    /* renamed from: h, reason: collision with root package name */
    public final l.a f52315h = new l.a();

    /* renamed from: i, reason: collision with root package name */
    public final l.a f52316i = new l.a();

    public static abstract class a {
        public abstract void a(L1.d dVar);

        public abstract void b();

        public abstract void c();

        public abstract void d(long j2);

        public abstract void e(L1.d dVar, L1.d dVar2);

        public abstract void f(L1.d dVar, L1.d dVar2, L1.d dVar3);

        public abstract void g(L1.d dVar, int i2, L1.d dVar2);
    }

    public l(Buffers buffers, L1.k kVar, a aVar) {
        this.f52309b = buffers;
        this.f52310c = kVar;
        this.f52308a = aVar;
    }

    @Override // org.eclipse.jetty.http.r
    public void a() {
        Buffers buffers;
        Buffers buffers2;
        L1.d dVar = this.f52312e;
        if (dVar != null && !dVar.B0() && this.f52312e.x0() == -1 && (buffers2 = this.f52309b) != null) {
            L1.d dVar2 = this.f52313f;
            L1.d dVar3 = this.f52312e;
            if (dVar2 == dVar3) {
                this.f52313f = this.f52311d;
            }
            if (buffers2 != null) {
                buffers2.b(dVar3);
            }
            this.f52312e = null;
        }
        L1.d dVar4 = this.f52311d;
        if (dVar4 == null || dVar4.B0() || this.f52311d.x0() != -1 || (buffers = this.f52309b) == null) {
            return;
        }
        L1.d dVar5 = this.f52313f;
        L1.d dVar6 = this.f52311d;
        if (dVar5 == dVar6) {
            this.f52313f = null;
        }
        buffers.b(dVar6);
        this.f52311d = null;
    }

    @Override // org.eclipse.jetty.http.r
    public boolean b() {
        return this.f52318k > 0 ? j(0) || j(7) : j(0);
    }

    @Override // org.eclipse.jetty.http.r
    public void c(boolean z2) {
        this.f52320m = z2;
        if (z2) {
            return;
        }
        int i2 = this.f52322o;
        if (i2 == 0 || i2 == -14) {
            this.f52322o = 7;
        }
    }

    @Override // org.eclipse.jetty.http.r
    public boolean d() {
        L1.d dVar;
        boolean z2 = k() > 0;
        while (!b() && (dVar = this.f52313f) != null && dVar.length() > 0 && !this.f52321n.B0()) {
            z2 |= k() > 0;
        }
        return z2;
    }

    public int e() throws IOException {
        L1.d dVar;
        L1.d dVar2;
        if (this.f52313f == null) {
            this.f52313f = g();
        }
        if (this.f52322o > 0) {
            L1.d dVar3 = this.f52313f;
            L1.d dVar4 = this.f52311d;
            if (dVar3 == dVar4 && dVar4 != null && !dVar4.B0() && (dVar2 = this.f52312e) != null && dVar2.B0()) {
                L1.d dVar5 = this.f52312e;
                this.f52313f = dVar5;
                return dVar5.length();
            }
        }
        L1.d dVar6 = this.f52313f;
        L1.d dVar7 = this.f52311d;
        if (dVar6 == dVar7 && this.f52322o > 0 && dVar7.length() == 0 && ((this.f52319l || this.f52325r - this.f52326s > this.f52311d.w0()) && ((dVar = this.f52312e) != null || this.f52309b != null))) {
            if (dVar == null) {
                this.f52312e = this.f52309b.getBuffer();
            }
            this.f52313f = this.f52312e;
        }
        if (this.f52310c == null) {
            return -1;
        }
        L1.d dVar8 = this.f52313f;
        if (dVar8 == this.f52312e || this.f52322o > 0) {
            dVar8.u0();
        }
        if (this.f52313f.f0() == 0) {
            f52307w.g("HttpParser Full for {} ", this.f52310c);
            this.f52313f.clear();
            StringBuilder sb = new StringBuilder();
            sb.append("Request Entity Too Large: ");
            sb.append(this.f52313f == this.f52312e ? "body" : "head");
            throw new HttpException(TTAdConstant.VIDEO_INFO_CODE, sb.toString());
        }
        try {
            return this.f52310c.t(this.f52313f);
        } catch (IOException e2) {
            f52307w.a(e2);
            if (e2 instanceof EofException) {
                throw e2;
            }
            throw new EofException(e2);
        }
    }

    public long f() {
        return this.f52325r;
    }

    public L1.d g() {
        if (this.f52311d == null) {
            L1.d header = this.f52309b.getHeader();
            this.f52311d = header;
            this.f52315h.update(header);
            this.f52316i.update(this.f52311d);
        }
        return this.f52311d;
    }

    public boolean h() {
        return this.f52325r == -2;
    }

    public boolean i() {
        L1.d dVar = this.f52311d;
        if (dVar != null && dVar.B0()) {
            return true;
        }
        L1.d dVar2 = this.f52312e;
        return dVar2 != null && dVar2.B0();
    }

    @Override // org.eclipse.jetty.http.r
    public boolean isIdle() {
        return j(-14);
    }

    @Override // org.eclipse.jetty.http.r
    public boolean isPersistent() {
        return this.f52320m;
    }

    public boolean j(int i2) {
        return this.f52322o == i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x043e, code lost:
    
        r0 = r21.f52318k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0440, code lost:
    
        if (r0 <= 0) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0444, code lost:
    
        if (r0 == 304) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0448, code lost:
    
        if (r0 == 204) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x044c, code lost:
    
        if (r0 >= 200) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x044e, code lost:
    
        r21.f52325r = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0452, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x045b, code lost:
    
        if (r21.f52325r != (-3)) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x045d, code lost:
    
        if (r0 == 0) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x0461, code lost:
    
        if (r0 == 304) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0465, code lost:
    
        if (r0 == 204) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0469, code lost:
    
        if (r0 >= 200) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x046b, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x046e, code lost:
    
        r21.f52325r = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0473, code lost:
    
        r21.f52325r = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0475, code lost:
    
        r21.f52326s = r5;
        r21.f52323p = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0479, code lost:
    
        if (r11 != 13) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0481, code lost:
    
        if (r21.f52313f.B0() == false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x048b, code lost:
    
        if (r21.f52313f.peek() != 10) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x048d, code lost:
    
        r21.f52323p = r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0495, code lost:
    
        r2 = r21.f52325r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x049c, code lost:
    
        if (r2 <= 2147483647L) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x049e, code lost:
    
        r0 = Integer.MAX_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x04a3, code lost:
    
        r0 = (int) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x04a5, code lost:
    
        if (r0 == (-2)) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x04a7, code lost:
    
        if (r0 == (-1)) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x04a9, code lost:
    
        if (r0 == 0) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x04ab, code lost:
    
        r21.f52322o = 2;
        r21.f52308a.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x04b8, code lost:
    
        if (r21.f52320m != false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x04ba, code lost:
    
        r0 = r21.f52318k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x04be, code lost:
    
        if (r0 < 100) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x04c2, code lost:
    
        if (r0 >= 200) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x04c5, code lost:
    
        r0 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x04c7, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x04c8, code lost:
    
        r21.f52322o = r0;
        r21.f52308a.c();
        r21.f52308a.d(r21.f52326s);
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x04d8, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x04d9, code lost:
    
        r21.f52322o = 1;
        r21.f52308a.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x04e2, code lost:
    
        r21.f52322o = 3;
        r21.f52308a.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x04eb, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06ef, code lost:
    
        r3 = r21.f52318k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x06f1, code lost:
    
        if (r3 <= 0) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x06f5, code lost:
    
        if (r21.f52329v == false) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x06f9, code lost:
    
        if (r21.f52320m != false) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x06fd, code lost:
    
        if (r3 < 100) goto L369;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0701, code lost:
    
        if (r3 >= 200) goto L369;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x0704, code lost:
    
        r3 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0706, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x0707, code lost:
    
        r21.f52322o = r3;
        r21.f52308a.d(r21.f52325r);
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0710, code lost:
    
        r3 = r21.f52313f.length();
        r5 = r21.f52322o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0718, code lost:
    
        r6 = r21.f52322o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x071a, code lost:
    
        if (r6 <= 0) goto L528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x071c, code lost:
    
        if (r3 <= 0) goto L529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x071e, code lost:
    
        if (r5 == r6) goto L378;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0720, code lost:
    
        r0 = r0 + 1;
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x0725, code lost:
    
        if (r21.f52323p != 13) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x072f, code lost:
    
        if (r21.f52313f.peek() != 10) goto L531;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0731, code lost:
    
        r21.f52323p = r21.f52313f.get();
        r3 = r21.f52313f.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0740, code lost:
    
        r21.f52323p = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x0745, code lost:
    
        switch(r21.f52322o) {
            case 1: goto L533;
            case 2: goto L532;
            case 3: goto L469;
            case 4: goto L426;
            case 5: goto L405;
            case 6: goto L398;
            case 7: goto L386;
            default: goto L385;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0757, code lost:
    
        if (r21.f52313f.length() <= 2) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0759, code lost:
    
        r21.f52322o = 0;
        r21.f52310c.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x0767, code lost:
    
        if (r21.f52313f.length() <= 0) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0773, code lost:
    
        if (java.lang.Character.isWhitespace(r21.f52313f.get()) != false) goto L546;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0775, code lost:
    
        r21.f52322o = 0;
        r21.f52310c.close();
        r21.f52313f.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0783, code lost:
    
        r21.f52313f.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x078f, code lost:
    
        r6 = r21.f52327t - r21.f52328u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0795, code lost:
    
        if (r6 != 0) goto L534;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0797, code lost:
    
        r21.f52322o = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x079b, code lost:
    
        if (r3 <= r6) goto L403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x079d, code lost:
    
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x079e, code lost:
    
        r0 = r21.f52313f.get(r3);
        r21.f52326s += r0.length();
        r21.f52328u += r0.length();
        r21.f52321n.update(r0);
        r21.f52308a.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x07c3, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x07c4, code lost:
    
        r3 = r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x07cb, code lost:
    
        if (r3 == 13) goto L411;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x07cf, code lost:
    
        if (r3 != 10) goto L410;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x07d5, code lost:
    
        r21.f52323p = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x07d9, code lost:
    
        if (r21.f52327t != 0) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x07db, code lost:
    
        if (r3 != 13) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x07e3, code lost:
    
        if (r21.f52313f.B0() == false) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x07ed, code lost:
    
        if (r21.f52313f.peek() != 10) goto L419;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x07ef, code lost:
    
        r21.f52323p = r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x07f9, code lost:
    
        if (r21.f52320m == false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x07fb, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x07fd, code lost:
    
        r0 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x07fe, code lost:
    
        r21.f52322o = r0;
        r21.f52308a.d(r21.f52326s);
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0809, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x080a, code lost:
    
        r21.f52322o = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x080f, code lost:
    
        r3 = r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x0816, code lost:
    
        if (r3 == 13) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x081a, code lost:
    
        if (r3 != 10) goto L431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0820, code lost:
    
        if (r3 <= 32) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x0824, code lost:
    
        if (r3 != 59) goto L435;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x082c, code lost:
    
        if (r3 < 48) goto L440;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0830, code lost:
    
        if (r3 > 57) goto L440;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0832, code lost:
    
        r21.f52327t = (r21.f52327t * 16) + (r3 - 48);
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x083f, code lost:
    
        if (r3 < 97) goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x0843, code lost:
    
        if (r3 > 102) goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x0845, code lost:
    
        r21.f52327t = (r21.f52327t * 16) + (r3 - 87);
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0852, code lost:
    
        if (r3 < 65) goto L536;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0856, code lost:
    
        if (r3 > 70) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0858, code lost:
    
        r21.f52327t = (r21.f52327t * 16) + (r3 - 55);
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x0879, code lost:
    
        throw new java.io.IOException("bad chunk char: " + ((int) r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x087a, code lost:
    
        r21.f52322o = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x087f, code lost:
    
        r21.f52323p = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x0883, code lost:
    
        if (r21.f52327t != 0) goto L468;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x0885, code lost:
    
        if (r3 != 13) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x088d, code lost:
    
        if (r21.f52313f.B0() == false) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0897, code lost:
    
        if (r21.f52313f.peek() != 10) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0899, code lost:
    
        r21.f52323p = r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x08a3, code lost:
    
        if (r21.f52320m == false) goto L465;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x08a5, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x08a7, code lost:
    
        r0 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x08a8, code lost:
    
        r21.f52322o = r0;
        r21.f52308a.d(r21.f52326s);
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x08b3, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x08b4, code lost:
    
        r21.f52322o = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x08b8, code lost:
    
        r3 = r21.f52313f.peek();
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x08c4, code lost:
    
        if (r3 == 13) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:471:0x08c6, code lost:
    
        if (r3 != 10) goto L473;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x08c9, code lost:
    
        if (r3 > 32) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x08cb, code lost:
    
        r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x08d1, code lost:
    
        r21.f52327t = 0;
        r21.f52328u = 0;
        r21.f52322o = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x08da, code lost:
    
        r21.f52323p = r21.f52313f.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x08e2, code lost:
    
        r3 = r21.f52313f.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x08ea, code lost:
    
        r4 = r21.f52325r;
        r6 = r21.f52326s;
        r4 = r4 - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x08f3, code lost:
    
        if (r4 != 0) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x08f7, code lost:
    
        if (r21.f52320m == false) goto L483;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x08f9, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x08fb, code lost:
    
        r5 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x08fc, code lost:
    
        r21.f52322o = r5;
        r21.f52308a.d(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x0905, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0909, code lost:
    
        if (r3 <= r4) goto L489;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x090b, code lost:
    
        r3 = (int) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x090c, code lost:
    
        r0 = r21.f52313f.get(r3);
        r21.f52326s += r0.length();
        r21.f52321n.update(r0);
        r21.f52308a.a(r0);
        r2 = r21.f52326s;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x092c, code lost:
    
        if (r2 != r21.f52325r) goto L548;
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x0930, code lost:
    
        if (r21.f52320m == false) goto L494;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x0932, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0934, code lost:
    
        r5 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0935, code lost:
    
        r21.f52322o = r5;
        r21.f52308a.d(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x093c, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x093f, code lost:
    
        r0 = r21.f52313f;
        r0 = r0.get(r0.length());
        r21.f52326s += r0.length();
        r21.f52321n.update(r0);
        r21.f52308a.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x095d, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x0960, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:?, code lost:
    
        return 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0281 A[Catch: HttpException -> 0x013a, TryCatch #4 {HttpException -> 0x013a, blocks: (B:3:0x0004, B:6:0x0009, B:12:0x0018, B:19:0x002e, B:64:0x00e2, B:65:0x00ea, B:67:0x00f4, B:70:0x00fa, B:71:0x00fd, B:78:0x0117, B:86:0x0133, B:89:0x013e, B:91:0x0142, B:93:0x014a, B:94:0x015f, B:96:0x0163, B:97:0x016b, B:98:0x019b, B:99:0x01a0, B:104:0x01ab, B:106:0x01af, B:107:0x01b4, B:108:0x01c7, B:110:0x01cb, B:112:0x01d3, B:113:0x01e8, B:115:0x01ec, B:116:0x01f4, B:117:0x0224, B:124:0x0236, B:125:0x0241, B:127:0x0245, B:129:0x0249, B:130:0x025d, B:131:0x0263, B:133:0x0267, B:134:0x027b, B:135:0x0281, B:142:0x0292, B:144:0x0299, B:145:0x029e, B:146:0x02b2, B:148:0x02b6, B:150:0x02ba, B:151:0x02ce, B:152:0x02d4, B:154:0x02d8, B:155:0x02ec, B:160:0x02fa, B:162:0x02fe, B:164:0x0306, B:166:0x030e, B:227:0x03f9, B:232:0x0405, B:234:0x0412, B:236:0x0422, B:237:0x043e, B:245:0x044e, B:259:0x0475, B:261:0x047b, B:263:0x0483, B:265:0x048d, B:266:0x0495, B:274:0x04ab, B:276:0x04b6, B:278:0x04ba, B:285:0x04c8, B:287:0x04d9, B:288:0x04e2, B:270:0x04a3, B:247:0x0455, B:257:0x046e, B:258:0x0473, B:168:0x0312, B:172:0x0321, B:174:0x0327, B:176:0x0331, B:185:0x0348, B:188:0x034e, B:192:0x035a, B:194:0x035f, B:195:0x036b, B:196:0x036c, B:198:0x0379, B:199:0x037c, B:201:0x0388, B:202:0x038b, B:205:0x0394, B:206:0x039c, B:207:0x039d, B:214:0x03ac, B:215:0x03af, B:216:0x03b3, B:218:0x03c1, B:225:0x03da, B:223:0x03d4, B:224:0x03d7, B:226:0x03df, B:175:0x032a, B:171:0x0318, B:290:0x04ec, B:294:0x04f9, B:296:0x04fd, B:298:0x052f, B:302:0x053e, B:297:0x0513, B:307:0x0560, B:309:0x0564, B:310:0x058f, B:312:0x05b4, B:314:0x05c0, B:317:0x05df, B:320:0x060a, B:325:0x062d, B:328:0x063e, B:329:0x0668, B:335:0x0679, B:336:0x0680, B:337:0x0681, B:339:0x068a, B:340:0x0694, B:342:0x069c, B:346:0x06be, B:352:0x06d2, B:353:0x06d9, B:354:0x06da, B:357:0x06e5, B:358:0x06ef, B:360:0x06f3, B:362:0x06f7, B:371:0x0707, B:372:0x0710, B:373:0x0718, B:377:0x0720, B:378:0x0723, B:380:0x0727, B:382:0x0731, B:383:0x0740, B:384:0x0745, B:477:0x08e2, B:386:0x0750, B:388:0x0759, B:394:0x0783, B:389:0x0761, B:391:0x0769, B:393:0x0775, B:398:0x078f, B:400:0x0797, B:403:0x079e, B:405:0x07c4, B:411:0x07d5, B:414:0x07dd, B:416:0x07e5, B:418:0x07ef, B:419:0x07f7, B:423:0x07fe, B:425:0x080a, B:426:0x080f, B:439:0x0832, B:444:0x0845, B:449:0x0858, B:450:0x0863, B:451:0x0879, B:452:0x087a, B:454:0x087f, B:457:0x0887, B:459:0x088f, B:461:0x0899, B:462:0x08a1, B:466:0x08a8, B:468:0x08b4, B:469:0x08b8, B:474:0x08cb, B:475:0x08d1, B:476:0x08da, B:478:0x08ea, B:480:0x08f5, B:484:0x08fc, B:486:0x0906, B:488:0x090b, B:489:0x090c, B:491:0x092e, B:495:0x0935, B:498:0x093f), top: B:511:0x0004, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bf A[Catch: HttpException -> 0x0014, TryCatch #1 {HttpException -> 0x0014, blocks: (B:8:0x000d, B:15:0x001e, B:17:0x0026, B:61:0x00d9, B:75:0x010d, B:76:0x0111, B:77:0x0116, B:33:0x006a, B:35:0x0070, B:37:0x0078, B:39:0x007c, B:40:0x009a, B:44:0x00a2, B:46:0x00a8, B:47:0x00ad, B:51:0x00c3, B:53:0x00c9, B:56:0x00d0, B:57:0x00d5, B:59:0x00d7, B:48:0x00b5, B:49:0x00bf, B:29:0x005a), top: B:506:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:512:0x06ef A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f4 A[Catch: HttpException -> 0x013a, TryCatch #4 {HttpException -> 0x013a, blocks: (B:3:0x0004, B:6:0x0009, B:12:0x0018, B:19:0x002e, B:64:0x00e2, B:65:0x00ea, B:67:0x00f4, B:70:0x00fa, B:71:0x00fd, B:78:0x0117, B:86:0x0133, B:89:0x013e, B:91:0x0142, B:93:0x014a, B:94:0x015f, B:96:0x0163, B:97:0x016b, B:98:0x019b, B:99:0x01a0, B:104:0x01ab, B:106:0x01af, B:107:0x01b4, B:108:0x01c7, B:110:0x01cb, B:112:0x01d3, B:113:0x01e8, B:115:0x01ec, B:116:0x01f4, B:117:0x0224, B:124:0x0236, B:125:0x0241, B:127:0x0245, B:129:0x0249, B:130:0x025d, B:131:0x0263, B:133:0x0267, B:134:0x027b, B:135:0x0281, B:142:0x0292, B:144:0x0299, B:145:0x029e, B:146:0x02b2, B:148:0x02b6, B:150:0x02ba, B:151:0x02ce, B:152:0x02d4, B:154:0x02d8, B:155:0x02ec, B:160:0x02fa, B:162:0x02fe, B:164:0x0306, B:166:0x030e, B:227:0x03f9, B:232:0x0405, B:234:0x0412, B:236:0x0422, B:237:0x043e, B:245:0x044e, B:259:0x0475, B:261:0x047b, B:263:0x0483, B:265:0x048d, B:266:0x0495, B:274:0x04ab, B:276:0x04b6, B:278:0x04ba, B:285:0x04c8, B:287:0x04d9, B:288:0x04e2, B:270:0x04a3, B:247:0x0455, B:257:0x046e, B:258:0x0473, B:168:0x0312, B:172:0x0321, B:174:0x0327, B:176:0x0331, B:185:0x0348, B:188:0x034e, B:192:0x035a, B:194:0x035f, B:195:0x036b, B:196:0x036c, B:198:0x0379, B:199:0x037c, B:201:0x0388, B:202:0x038b, B:205:0x0394, B:206:0x039c, B:207:0x039d, B:214:0x03ac, B:215:0x03af, B:216:0x03b3, B:218:0x03c1, B:225:0x03da, B:223:0x03d4, B:224:0x03d7, B:226:0x03df, B:175:0x032a, B:171:0x0318, B:290:0x04ec, B:294:0x04f9, B:296:0x04fd, B:298:0x052f, B:302:0x053e, B:297:0x0513, B:307:0x0560, B:309:0x0564, B:310:0x058f, B:312:0x05b4, B:314:0x05c0, B:317:0x05df, B:320:0x060a, B:325:0x062d, B:328:0x063e, B:329:0x0668, B:335:0x0679, B:336:0x0680, B:337:0x0681, B:339:0x068a, B:340:0x0694, B:342:0x069c, B:346:0x06be, B:352:0x06d2, B:353:0x06d9, B:354:0x06da, B:357:0x06e5, B:358:0x06ef, B:360:0x06f3, B:362:0x06f7, B:371:0x0707, B:372:0x0710, B:373:0x0718, B:377:0x0720, B:378:0x0723, B:380:0x0727, B:382:0x0731, B:383:0x0740, B:384:0x0745, B:477:0x08e2, B:386:0x0750, B:388:0x0759, B:394:0x0783, B:389:0x0761, B:391:0x0769, B:393:0x0775, B:398:0x078f, B:400:0x0797, B:403:0x079e, B:405:0x07c4, B:411:0x07d5, B:414:0x07dd, B:416:0x07e5, B:418:0x07ef, B:419:0x07f7, B:423:0x07fe, B:425:0x080a, B:426:0x080f, B:439:0x0832, B:444:0x0845, B:449:0x0858, B:450:0x0863, B:451:0x0879, B:452:0x087a, B:454:0x087f, B:457:0x0887, B:459:0x088f, B:461:0x0899, B:462:0x08a1, B:466:0x08a8, B:468:0x08b4, B:469:0x08b8, B:474:0x08cb, B:475:0x08d1, B:476:0x08da, B:478:0x08ea, B:480:0x08f5, B:484:0x08fc, B:486:0x0906, B:488:0x090b, B:489:0x090c, B:491:0x092e, B:495:0x0935, B:498:0x093f), top: B:511:0x0004, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01a0 A[Catch: HttpException -> 0x013a, TryCatch #4 {HttpException -> 0x013a, blocks: (B:3:0x0004, B:6:0x0009, B:12:0x0018, B:19:0x002e, B:64:0x00e2, B:65:0x00ea, B:67:0x00f4, B:70:0x00fa, B:71:0x00fd, B:78:0x0117, B:86:0x0133, B:89:0x013e, B:91:0x0142, B:93:0x014a, B:94:0x015f, B:96:0x0163, B:97:0x016b, B:98:0x019b, B:99:0x01a0, B:104:0x01ab, B:106:0x01af, B:107:0x01b4, B:108:0x01c7, B:110:0x01cb, B:112:0x01d3, B:113:0x01e8, B:115:0x01ec, B:116:0x01f4, B:117:0x0224, B:124:0x0236, B:125:0x0241, B:127:0x0245, B:129:0x0249, B:130:0x025d, B:131:0x0263, B:133:0x0267, B:134:0x027b, B:135:0x0281, B:142:0x0292, B:144:0x0299, B:145:0x029e, B:146:0x02b2, B:148:0x02b6, B:150:0x02ba, B:151:0x02ce, B:152:0x02d4, B:154:0x02d8, B:155:0x02ec, B:160:0x02fa, B:162:0x02fe, B:164:0x0306, B:166:0x030e, B:227:0x03f9, B:232:0x0405, B:234:0x0412, B:236:0x0422, B:237:0x043e, B:245:0x044e, B:259:0x0475, B:261:0x047b, B:263:0x0483, B:265:0x048d, B:266:0x0495, B:274:0x04ab, B:276:0x04b6, B:278:0x04ba, B:285:0x04c8, B:287:0x04d9, B:288:0x04e2, B:270:0x04a3, B:247:0x0455, B:257:0x046e, B:258:0x0473, B:168:0x0312, B:172:0x0321, B:174:0x0327, B:176:0x0331, B:185:0x0348, B:188:0x034e, B:192:0x035a, B:194:0x035f, B:195:0x036b, B:196:0x036c, B:198:0x0379, B:199:0x037c, B:201:0x0388, B:202:0x038b, B:205:0x0394, B:206:0x039c, B:207:0x039d, B:214:0x03ac, B:215:0x03af, B:216:0x03b3, B:218:0x03c1, B:225:0x03da, B:223:0x03d4, B:224:0x03d7, B:226:0x03df, B:175:0x032a, B:171:0x0318, B:290:0x04ec, B:294:0x04f9, B:296:0x04fd, B:298:0x052f, B:302:0x053e, B:297:0x0513, B:307:0x0560, B:309:0x0564, B:310:0x058f, B:312:0x05b4, B:314:0x05c0, B:317:0x05df, B:320:0x060a, B:325:0x062d, B:328:0x063e, B:329:0x0668, B:335:0x0679, B:336:0x0680, B:337:0x0681, B:339:0x068a, B:340:0x0694, B:342:0x069c, B:346:0x06be, B:352:0x06d2, B:353:0x06d9, B:354:0x06da, B:357:0x06e5, B:358:0x06ef, B:360:0x06f3, B:362:0x06f7, B:371:0x0707, B:372:0x0710, B:373:0x0718, B:377:0x0720, B:378:0x0723, B:380:0x0727, B:382:0x0731, B:383:0x0740, B:384:0x0745, B:477:0x08e2, B:386:0x0750, B:388:0x0759, B:394:0x0783, B:389:0x0761, B:391:0x0769, B:393:0x0775, B:398:0x078f, B:400:0x0797, B:403:0x079e, B:405:0x07c4, B:411:0x07d5, B:414:0x07dd, B:416:0x07e5, B:418:0x07ef, B:419:0x07f7, B:423:0x07fe, B:425:0x080a, B:426:0x080f, B:439:0x0832, B:444:0x0845, B:449:0x0858, B:450:0x0863, B:451:0x0879, B:452:0x087a, B:454:0x087f, B:457:0x0887, B:459:0x088f, B:461:0x0899, B:462:0x08a1, B:466:0x08a8, B:468:0x08b4, B:469:0x08b8, B:474:0x08cb, B:475:0x08d1, B:476:0x08da, B:478:0x08ea, B:480:0x08f5, B:484:0x08fc, B:486:0x0906, B:488:0x090b, B:489:0x090c, B:491:0x092e, B:495:0x0935, B:498:0x093f), top: B:511:0x0004, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int k() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.http.l.k():int");
    }

    public void l(boolean z2) {
        this.f52329v = z2;
    }

    public void m(int i2) {
        this.f52322o = i2;
        this.f52325r = -3L;
    }

    @Override // org.eclipse.jetty.http.r
    public void reset() {
        L1.d dVar;
        L1.l lVar = this.f52321n;
        lVar.z0(lVar.n0());
        this.f52322o = this.f52320m ? -14 : this.f52310c.s() ? 0 : 7;
        this.f52325r = -3L;
        this.f52326s = 0L;
        this.f52324q = 0;
        this.f52318k = 0;
        if (this.f52323p == 13 && (dVar = this.f52313f) != null && dVar.B0() && this.f52313f.peek() == 10) {
            this.f52323p = this.f52313f.get();
        }
        L1.d dVar2 = this.f52312e;
        if (dVar2 != null && dVar2.B0()) {
            L1.d dVar3 = this.f52311d;
            if (dVar3 == null) {
                g();
            } else {
                dVar3.o0(-1);
                this.f52311d.u0();
            }
            int iF0 = this.f52311d.f0();
            if (iF0 > this.f52312e.length()) {
                iF0 = this.f52312e.length();
            }
            L1.d dVar4 = this.f52312e;
            dVar4.h0(dVar4.getIndex(), iF0);
            L1.d dVar5 = this.f52312e;
            dVar5.skip(this.f52311d.m0(dVar5.h0(dVar5.getIndex(), iF0)));
        }
        L1.d dVar6 = this.f52311d;
        if (dVar6 != null) {
            dVar6.o0(-1);
            this.f52311d.u0();
        }
        L1.d dVar7 = this.f52312e;
        if (dVar7 != null) {
            dVar7.o0(-1);
        }
        this.f52313f = this.f52311d;
        a();
    }

    public String toString() {
        return String.format("%s{s=%d,l=%d,c=%d}", getClass().getSimpleName(), Integer.valueOf(this.f52322o), Integer.valueOf(this.f52324q), Long.valueOf(this.f52325r));
    }
}
