package N1;

import L1.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletOutputStream;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.jetty.http.l;
import org.eclipse.jetty.http.r;
import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public abstract class c extends L1.b {

    /* renamed from: e, reason: collision with root package name */
    public int f275e;

    /* renamed from: f, reason: collision with root package name */
    public final g f276f;

    /* renamed from: g, reason: collision with root package name */
    public final m f277g;

    /* renamed from: h, reason: collision with root package name */
    public final org.eclipse.jetty.http.o f278h;

    /* renamed from: i, reason: collision with root package name */
    public final r f279i;

    /* renamed from: j, reason: collision with root package name */
    public final org.eclipse.jetty.http.g f280j;

    /* renamed from: k, reason: collision with root package name */
    public final k f281k;

    /* renamed from: l, reason: collision with root package name */
    public final org.eclipse.jetty.http.c f282l;

    /* renamed from: m, reason: collision with root package name */
    public final org.eclipse.jetty.http.g f283m;

    /* renamed from: n, reason: collision with root package name */
    public final l f284n;

    /* renamed from: o, reason: collision with root package name */
    public volatile a f285o;

    /* renamed from: p, reason: collision with root package name */
    public int f286p;

    /* renamed from: q, reason: collision with root package name */
    public int f287q;

    /* renamed from: r, reason: collision with root package name */
    public String f288r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f289s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f290t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f291u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f292v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f293w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f294x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f295y;

    /* renamed from: z, reason: collision with root package name */
    public static final R1.c f274z = R1.b.a(c.class);

    /* renamed from: A, reason: collision with root package name */
    public static final ThreadLocal f273A = new ThreadLocal();

    public class a extends j {
        public a() {
            super(c.this);
        }

        @Override // N1.j
        public void a() throws HttpException {
            if (!this.f314b.e()) {
                c.this.h(false);
            }
            super.a();
        }

        public void e(Object obj) {
            S1.e eVar;
            if (c()) {
                throw new IOException("Closed");
            }
            if (this.f314b.x()) {
                throw new IllegalStateException("!empty");
            }
            if (obj instanceof S1.e) {
                S1.e eVar2 = (S1.e) obj;
                c.this.f283m.y(org.eclipse.jetty.http.j.f52236B, eVar2.d());
                eVar = eVar2;
                obj = eVar2.c();
            } else {
                eVar = null;
            }
            if (obj instanceof L1.d) {
                this.f314b.g((L1.d) obj, true);
                c.this.h(true);
                return;
            }
            if (!(obj instanceof InputStream)) {
                throw new IllegalArgumentException("unknown content type?");
            }
            InputStream inputStream = (InputStream) obj;
            try {
                int iE0 = this.f314b.t().e0(inputStream, this.f314b.y());
                while (iE0 >= 0 && !c.this.f221c.o()) {
                    this.f314b.q();
                    c.this.f285o.a();
                    iE0 = this.f314b.t().e0(inputStream, this.f314b.y());
                }
                this.f314b.q();
                c.this.f285o.a();
                if (eVar != null) {
                    eVar.i();
                } else {
                    inputStream.close();
                }
            } catch (Throwable th) {
                if (eVar != null) {
                    eVar.i();
                } else {
                    inputStream.close();
                }
                throw th;
            }
        }

        public void f(L1.d dVar) {
            ((org.eclipse.jetty.http.h) this.f314b).F(dVar);
        }
    }

    public class b extends l.a {
        public b() {
        }

        @Override // org.eclipse.jetty.http.l.a
        public void a(L1.d dVar) throws Throwable {
            c.this.j(dVar);
        }

        @Override // org.eclipse.jetty.http.l.a
        public void b() {
            c.this.k();
        }

        @Override // org.eclipse.jetty.http.l.a
        public void c() throws Throwable {
            c.this.z();
        }

        @Override // org.eclipse.jetty.http.l.a
        public void d(long j2) throws Throwable {
            c.this.E(j2);
        }

        @Override // org.eclipse.jetty.http.l.a
        public void e(L1.d dVar, L1.d dVar2) {
            c.this.H(dVar, dVar2);
        }

        @Override // org.eclipse.jetty.http.l.a
        public void f(L1.d dVar, L1.d dVar2, L1.d dVar3) throws HttpException {
            c.this.K(dVar, dVar2, dVar3);
        }

        @Override // org.eclipse.jetty.http.l.a
        public void g(L1.d dVar, int i2, L1.d dVar2) {
            if (c.f274z.f()) {
                c.f274z.i("Bad request!: " + dVar + " " + i2 + " " + dVar2, new Object[0]);
            }
        }

        public /* synthetic */ b(c cVar, N1.b bVar) {
            this();
        }
    }

    public c(g gVar, L1.k kVar, m mVar) {
        super(kVar);
        this.f287q = -2;
        this.f289s = false;
        this.f290t = false;
        this.f291u = false;
        this.f292v = false;
        this.f293w = false;
        this.f294x = false;
        this.f295y = false;
        String str = org.eclipse.jetty.util.o.f52684b;
        this.f278h = "UTF-8".equals(str) ? new org.eclipse.jetty.http.o() : new org.eclipse.jetty.http.b(str);
        this.f276f = gVar;
        org.eclipse.jetty.http.d dVar = (org.eclipse.jetty.http.d) gVar;
        this.f279i = G(dVar.z(), kVar, new b(this, null));
        this.f280j = new org.eclipse.jetty.http.g();
        this.f283m = new org.eclipse.jetty.http.g();
        this.f281k = new k(this);
        this.f284n = new l(this);
        org.eclipse.jetty.http.h hVarF = F(dVar.H(), kVar);
        this.f282l = hVarF;
        hVarF.j(mVar.j0());
        this.f277g = mVar;
    }

    public static void J(c cVar) {
        f273A.set(cVar);
    }

    public static c n() {
        return (c) f273A.get();
    }

    public boolean A(k kVar) {
        g gVar = this.f276f;
        return gVar != null && gVar.s(kVar);
    }

    public boolean B() {
        return this.f291u;
    }

    public boolean C() {
        return this.f286p > 0;
    }

    public boolean D() {
        return this.f282l.e();
    }

    public void E(long j2) throws Throwable {
        if (this.f294x) {
            this.f294x = false;
            y();
        }
    }

    public org.eclipse.jetty.http.h F(Buffers buffers, L1.k kVar) {
        return new org.eclipse.jetty.http.h(buffers, kVar);
    }

    public org.eclipse.jetty.http.l G(Buffers buffers, L1.k kVar, l.a aVar) {
        return new org.eclipse.jetty.http.l(buffers, kVar, aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void H(L1.d r8, L1.d r9) {
        /*
            r7 = this;
            org.eclipse.jetty.http.j r0 = org.eclipse.jetty.http.j.f52264d
            int r0 = r0.e(r8)
            r1 = 16
            if (r0 == r1) goto L88
            r1 = 21
            if (r0 == r1) goto L81
            r1 = 24
            r2 = 1
            if (r0 == r1) goto L21
            r1 = 27
            if (r0 == r1) goto L1d
            r1 = 40
            if (r0 == r1) goto L81
            goto L94
        L1d:
            r7.f293w = r2
            goto L94
        L21:
            int r0 = r7.f287q
            r1 = 11
            if (r0 < r1) goto L94
            org.eclipse.jetty.http.i r0 = org.eclipse.jetty.http.i.f52223d
            L1.d r9 = r0.g(r9)
            int r0 = r0.e(r9)
            r1 = 6
            if (r0 == r1) goto L7a
            r3 = 7
            if (r0 == r3) goto L73
            java.lang.String r0 = r9.toString()
            java.lang.String r4 = ","
            java.lang.String[] r0 = r0.split(r4)
            r4 = 0
        L42:
            if (r0 == 0) goto L94
            int r5 = r0.length
            if (r4 >= r5) goto L94
            org.eclipse.jetty.http.i r5 = org.eclipse.jetty.http.i.f52223d
            r6 = r0[r4]
            java.lang.String r6 = r6.trim()
            L1.e$a r5 = r5.c(r6)
            if (r5 != 0) goto L58
            r7.f289s = r2
            goto L70
        L58:
            int r5 = r5.h()
            if (r5 == r1) goto L6a
            if (r5 == r3) goto L63
            r7.f289s = r2
            goto L70
        L63:
            org.eclipse.jetty.http.c r5 = r7.f282l
            boolean r5 = r5 instanceof org.eclipse.jetty.http.h
            r7.f291u = r5
            goto L70
        L6a:
            org.eclipse.jetty.http.c r5 = r7.f282l
            boolean r5 = r5 instanceof org.eclipse.jetty.http.h
            r7.f290t = r5
        L70:
            int r4 = r4 + 1
            goto L42
        L73:
            org.eclipse.jetty.http.c r0 = r7.f282l
            boolean r0 = r0 instanceof org.eclipse.jetty.http.h
            r7.f291u = r0
            goto L94
        L7a:
            org.eclipse.jetty.http.c r0 = r7.f282l
            boolean r0 = r0 instanceof org.eclipse.jetty.http.h
            r7.f290t = r0
            goto L94
        L81:
            org.eclipse.jetty.http.i r0 = org.eclipse.jetty.http.i.f52223d
            L1.d r9 = r0.g(r9)
            goto L94
        L88:
            L1.e r0 = org.eclipse.jetty.http.q.f52355c
            L1.d r9 = r0.g(r9)
            java.lang.String r0 = org.eclipse.jetty.http.q.a(r9)
            r7.f288r = r0
        L94:
            org.eclipse.jetty.http.g r0 = r7.f280j
            r0.d(r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: N1.c.H(L1.d, L1.d):void");
    }

    public void I() throws IOException {
        this.f279i.reset();
        this.f279i.a();
        this.f280j.h();
        this.f281k.C();
        this.f282l.reset();
        this.f282l.a();
        this.f283m.h();
        this.f284n.h();
        this.f278h.a();
        this.f295y = false;
    }

    public void K(L1.d dVar, L1.d dVar2, L1.d dVar3) throws HttpException {
        L1.d dVarC0 = dVar2.C0();
        this.f293w = false;
        this.f289s = false;
        this.f290t = false;
        this.f291u = false;
        this.f294x = false;
        this.f288r = null;
        if (this.f281k.u() == 0) {
            this.f281k.c0(System.currentTimeMillis());
        }
        this.f281k.N(dVar.toString());
        try {
            this.f292v = false;
            int iE = org.eclipse.jetty.http.k.f52297a.e(dVar);
            if (iE == 3) {
                this.f292v = true;
                this.f278h.l(dVarC0.p0(), dVarC0.getIndex(), dVarC0.length());
            } else if (iE != 8) {
                this.f278h.l(dVarC0.p0(), dVarC0.getIndex(), dVarC0.length());
            } else {
                this.f278h.n(dVarC0.p0(), dVarC0.getIndex(), dVarC0.length());
            }
            this.f281k.d0(this.f278h);
            if (dVar3 == null) {
                this.f281k.P("");
                this.f287q = 9;
                return;
            }
            L1.e eVar = org.eclipse.jetty.http.p.f52349a;
            e.a aVarB = eVar.b(dVar3);
            if (aVarB == null) {
                throw new HttpException(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, null);
            }
            int iE2 = eVar.e(aVarB);
            this.f287q = iE2;
            if (iE2 <= 0) {
                this.f287q = 10;
            }
            this.f281k.P(aVarB.toString());
        } catch (Exception e2) {
            f274z.a(e2);
            if (!(e2 instanceof HttpException)) {
                throw new HttpException(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, null, e2);
            }
            throw ((HttpException) e2);
        }
    }

    public void h(boolean z2) throws HttpException {
        if (!this.f282l.e()) {
            this.f282l.d(this.f284n.f(), this.f284n.e());
            try {
                if (this.f290t && this.f284n.f() != 100) {
                    this.f282l.c(false);
                }
                this.f282l.m(this.f283m, z2);
            } catch (RuntimeException e2) {
                f274z.g("header full: " + e2, new Object[0]);
                this.f284n.i();
                this.f282l.reset();
                this.f282l.d(500, null);
                this.f282l.m(this.f283m, true);
                this.f282l.complete();
                throw new HttpException(500);
            }
        }
        if (z2) {
            this.f282l.complete();
        }
    }

    public void i() {
        if (!this.f282l.e()) {
            this.f282l.d(this.f284n.f(), this.f284n.e());
            try {
                this.f282l.m(this.f283m, true);
            } catch (RuntimeException e2) {
                R1.c cVar = f274z;
                cVar.g("header full: " + e2, new Object[0]);
                cVar.a(e2);
                this.f284n.i();
                this.f282l.reset();
                this.f282l.d(500, null);
                this.f282l.m(this.f283m, true);
                this.f282l.complete();
                throw new HttpException(500);
            }
        }
        this.f282l.complete();
    }

    @Override // L1.j
    public boolean isIdle() {
        if (this.f282l.isIdle()) {
            return this.f279i.isIdle() || this.f294x;
        }
        return false;
    }

    public void j(L1.d dVar) throws Throwable {
        if (this.f294x) {
            this.f294x = false;
            y();
        }
    }

    public void k() {
        this.f295y = true;
    }

    public g l() {
        return this.f276f;
    }

    public org.eclipse.jetty.http.c o() {
        return this.f282l;
    }

    @Override // L1.j
    public void onClose() {
        f274z.i("closed {}", this);
    }

    public int p() {
        return (this.f276f.r() && this.f221c.b() == this.f276f.b()) ? this.f276f.D() : this.f221c.b() > 0 ? this.f221c.b() : this.f276f.b();
    }

    public ServletOutputStream q() {
        if (this.f285o == null) {
            this.f285o = new a();
        }
        return this.f285o;
    }

    public k r() {
        return this.f281k;
    }

    public org.eclipse.jetty.http.g s() {
        return this.f280j;
    }

    public int t() {
        return this.f275e;
    }

    @Override // L1.b
    public String toString() {
        return String.format("%s,g=%s,p=%s,r=%d", super.toString(), this.f282l, this.f279i, Integer.valueOf(this.f275e));
    }

    public boolean u() {
        return this.f276f.h();
    }

    public l v() {
        return this.f284n;
    }

    public org.eclipse.jetty.http.g w() {
        return this.f283m;
    }

    public m x() {
        return this.f277g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01f6 A[PHI: r0 r3
      0x01f6: PHI (r0v74 boolean) = (r0v56 boolean), (r0v68 boolean), (r0v82 boolean) binds: [B:162:0x02d8, B:148:0x0292, B:108:0x01f4] A[DONT_GENERATE, DONT_INLINE]
      0x01f6: PHI (r3v18 java.lang.Throwable) = (r3v69 java.lang.Throwable), (r3v70 java.lang.Throwable), (r3v71 java.lang.Throwable) binds: [B:162:0x02d8, B:148:0x0292, B:108:0x01f4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x033a A[Catch: all -> 0x0326, TryCatch #3 {all -> 0x0326, blocks: (B:177:0x0314, B:179:0x031c, B:182:0x0329, B:184:0x033a, B:186:0x0340, B:187:0x0342), top: B:246:0x0314 }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a3 A[PHI: r0 r10
      0x01a3: PHI (r0v115 boolean) = (r0v106 boolean), (r0v138 boolean) binds: [B:174:0x030e, B:87:0x01a1] A[DONT_GENERATE, DONT_INLINE]
      0x01a3: PHI (r10v19 boolean) = (r10v34 boolean), (r10v35 boolean) binds: [B:174:0x030e, B:87:0x01a1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r0v16, types: [N1.d] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r10v49 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v19, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v4, types: [N1.d] */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r3v55, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v67 */
    /* JADX WARN: Type inference failed for: r3v68 */
    /* JADX WARN: Type inference failed for: r9v21, types: [R1.c] */
    /* JADX WARN: Type inference failed for: r9v39, types: [java.lang.Throwable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void y() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1117
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: N1.c.y():void");
    }

    public void z() throws Throwable {
        if (this.f221c.o()) {
            this.f221c.close();
            return;
        }
        this.f275e++;
        this.f282l.setVersion(this.f287q);
        int i2 = this.f287q;
        if (i2 == 10) {
            this.f282l.h(this.f292v);
            if (this.f279i.isPersistent()) {
                this.f283m.d(org.eclipse.jetty.http.j.f52278k, org.eclipse.jetty.http.i.f52228i);
                this.f282l.c(true);
            } else if ("CONNECT".equals(this.f281k.i())) {
                this.f282l.c(true);
                this.f279i.c(true);
                r rVar = this.f279i;
                if (rVar instanceof org.eclipse.jetty.http.l) {
                    ((org.eclipse.jetty.http.l) rVar).m(0);
                }
            }
            if (this.f277g.i0()) {
                this.f282l.i(this.f281k.v());
            }
        } else if (i2 == 11) {
            this.f282l.h(this.f292v);
            if (!this.f279i.isPersistent()) {
                this.f283m.d(org.eclipse.jetty.http.j.f52278k, org.eclipse.jetty.http.i.f52224e);
                this.f282l.c(false);
            }
            if (this.f277g.i0()) {
                this.f282l.i(this.f281k.v());
            }
            if (!this.f293w) {
                f274z.i("!host {}", this);
                this.f282l.d(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, null);
                this.f283m.v(org.eclipse.jetty.http.j.f52278k, org.eclipse.jetty.http.i.f52224e);
                this.f282l.m(this.f283m, true);
                this.f282l.complete();
                return;
            }
            if (this.f289s) {
                f274z.i("!expectation {}", this);
                this.f282l.d(TTAdConstant.LIVE_FEED_URL_CODE, null);
                this.f283m.v(org.eclipse.jetty.http.j.f52278k, org.eclipse.jetty.http.i.f52224e);
                this.f282l.m(this.f283m, true);
                this.f282l.complete();
                return;
            }
        }
        String str = this.f288r;
        if (str != null) {
            this.f281k.H(str);
        }
        if ((((org.eclipse.jetty.http.l) this.f279i).f() > 0 || ((org.eclipse.jetty.http.l) this.f279i).h()) && !this.f290t) {
            this.f294x = true;
        } else {
            y();
        }
    }
}
