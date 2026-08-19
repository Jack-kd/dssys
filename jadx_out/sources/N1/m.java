package N1;

import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.MultiException;

/* loaded from: classes5.dex */
public class m extends org.eclipse.jetty.server.handler.h implements org.eclipse.jetty.util.b {

    /* renamed from: t, reason: collision with root package name */
    public static final R1.c f372t = R1.b.a(m.class);

    /* renamed from: u, reason: collision with root package name */
    public static final String f373u;

    /* renamed from: j, reason: collision with root package name */
    public W1.d f376j;

    /* renamed from: k, reason: collision with root package name */
    public g[] f377k;

    /* renamed from: l, reason: collision with root package name */
    public n f378l;

    /* renamed from: p, reason: collision with root package name */
    public boolean f382p;

    /* renamed from: h, reason: collision with root package name */
    public final org.eclipse.jetty.util.component.c f374h = new org.eclipse.jetty.util.component.c();

    /* renamed from: i, reason: collision with root package name */
    public final org.eclipse.jetty.util.c f375i = new org.eclipse.jetty.util.c();

    /* renamed from: m, reason: collision with root package name */
    public boolean f379m = true;

    /* renamed from: n, reason: collision with root package name */
    public boolean f380n = false;

    /* renamed from: o, reason: collision with root package name */
    public int f381o = 0;

    /* renamed from: q, reason: collision with root package name */
    public boolean f383q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f384r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f385s = false;

    public interface a extends h {
        void j(boolean z2);
    }

    static {
        if (m.class.getPackage() == null || !"Eclipse.org - Jetty".equals(m.class.getPackage().getImplementationVendor()) || m.class.getPackage().getImplementationVersion() == null) {
            f373u = System.getProperty("jetty.version", "8.y.z-SNAPSHOT");
        } else {
            f373u = m.class.getPackage().getImplementationVersion();
        }
    }

    public m() {
        a(this);
    }

    public static String n0() {
        return f373u;
    }

    @Override // org.eclipse.jetty.util.component.b
    public boolean P(Object obj) {
        if (!super.P(obj)) {
            return false;
        }
        this.f374h.b(obj);
        return true;
    }

    @Override // org.eclipse.jetty.util.component.b
    public boolean Z(Object obj) {
        if (!super.Z(obj)) {
            return false;
        }
        this.f374h.d(obj);
        return true;
    }

    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        int i2 = 0;
        if (l0()) {
            W1.c.d(this);
        }
        p.q().r();
        R1.c cVar = f372t;
        StringBuilder sb = new StringBuilder();
        sb.append("jetty-");
        String str = f373u;
        sb.append(str);
        cVar.k(sb.toString(), new Object[0]);
        org.eclipse.jetty.http.h.G(str);
        MultiException multiException = new MultiException();
        if (this.f376j == null) {
            w0(new W1.b());
        }
        try {
            super.doStart();
        } catch (Throwable th) {
            multiException.add(th);
        }
        if (this.f377k != null && multiException.size() == 0) {
            while (true) {
                g[] gVarArr = this.f377k;
                if (i2 >= gVarArr.length) {
                    break;
                }
                try {
                    gVarArr[i2].start();
                } catch (Throwable th2) {
                    multiException.add(th2);
                }
                i2++;
            }
        }
        if (q0()) {
            U();
        }
        multiException.ifExceptionThrow();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(1:4)|5|(6:7|(2:9|(2:10|(5:12|41|13|49|17)(1:47)))(0)|18|(2:21|19)|50|22)|23|(5:25|(2:26|(4:45|28|52|32)(0))|33|37|(2:39|40)(1:53))(0)|43|33|37|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0077, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
    
        r0.add(r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStop() throws java.lang.Exception {
        /*
            r7 = this;
            boolean r0 = r7.r0()
            if (r0 == 0) goto L9
            r7.U()
        L9:
            org.eclipse.jetty.util.MultiException r0 = new org.eclipse.jetty.util.MultiException
            r0.<init>()
            int r1 = r7.f381o
            if (r1 <= 0) goto L5c
            N1.g[] r1 = r7.f377k
            java.lang.String r2 = "Graceful shutdown {}"
            if (r1 == 0) goto L38
            int r1 = r1.length
        L19:
            int r3 = r1 + (-1)
            if (r1 <= 0) goto L38
            R1.c r1 = N1.m.f372t
            N1.g[] r4 = r7.f377k
            r4 = r4[r3]
            java.lang.Object[] r4 = new java.lang.Object[]{r4}
            r1.k(r2, r4)
            N1.g[] r1 = r7.f377k     // Catch: java.lang.Throwable -> L32
            r1 = r1[r3]     // Catch: java.lang.Throwable -> L32
            r1.close()     // Catch: java.lang.Throwable -> L32
            goto L36
        L32:
            r1 = move-exception
            r0.add(r1)
        L36:
            r1 = r3
            goto L19
        L38:
            java.lang.Class<N1.m$a> r1 = N1.m.a.class
            N1.h[] r1 = r7.F(r1)
            r3 = 0
        L3f:
            int r4 = r1.length
            if (r3 >= r4) goto L56
            r4 = r1[r3]
            N1.m$a r4 = (N1.m.a) r4
            R1.c r5 = N1.m.f372t
            java.lang.Object[] r6 = new java.lang.Object[]{r4}
            r5.k(r2, r6)
            r5 = 1
            r4.j(r5)
            int r3 = r3 + 1
            goto L3f
        L56:
            int r1 = r7.f381o
            long r1 = (long) r1
            java.lang.Thread.sleep(r1)
        L5c:
            N1.g[] r1 = r7.f377k
            if (r1 == 0) goto L73
            int r1 = r1.length
        L61:
            int r2 = r1 + (-1)
            if (r1 <= 0) goto L73
            N1.g[] r1 = r7.f377k     // Catch: java.lang.Throwable -> L6d
            r1 = r1[r2]     // Catch: java.lang.Throwable -> L6d
            r1.stop()     // Catch: java.lang.Throwable -> L6d
            goto L71
        L6d:
            r1 = move-exception
            r0.add(r1)
        L71:
            r1 = r2
            goto L61
        L73:
            super.doStop()     // Catch: java.lang.Throwable -> L77
            goto L7b
        L77:
            r1 = move-exception
            r0.add(r1)
        L7b:
            r0.ifExceptionThrow()
            boolean r0 = r7.l0()
            if (r0 == 0) goto L87
            W1.c.a(r7)
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: N1.m.doStop():void");
    }

    public void f0(g gVar) {
        t0((g[]) LazyList.addToArray(g0(), gVar, g.class));
    }

    public g[] g0() {
        return this.f377k;
    }

    @Override // org.eclipse.jetty.util.b
    public Object getAttribute(String str) {
        return this.f375i.getAttribute(str);
    }

    public org.eclipse.jetty.util.component.c h0() {
        return this.f374h;
    }

    public boolean i0() {
        return this.f380n;
    }

    public boolean j0() {
        return this.f379m;
    }

    @Override // org.eclipse.jetty.util.b
    public void k() {
        this.f375i.k();
    }

    public n k0() {
        return this.f378l;
    }

    public boolean l0() {
        return this.f382p;
    }

    @Override // org.eclipse.jetty.server.handler.b, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) {
        V(appendable);
        org.eclipse.jetty.util.component.b.S(appendable, str, org.eclipse.jetty.util.n.a(B()), X(), org.eclipse.jetty.util.n.a(this.f377k));
    }

    public W1.d m0() {
        return this.f376j;
    }

    public void o0(c cVar) {
        String strJ = cVar.r().j();
        k kVarR = cVar.r();
        l lVarV = cVar.v();
        R1.c cVar2 = f372t;
        if (!cVar2.f()) {
            l(strJ, kVarR, kVarR, lVarV);
            return;
        }
        cVar2.i("REQUEST " + strJ + " on " + cVar, new Object[0]);
        l(strJ, kVarR, kVarR, lVarV);
        cVar2.i("RESPONSE " + strJ + "  " + cVar.v().f() + " handled=" + kVarR.z(), new Object[0]);
    }

    public void p0(c cVar) {
        cVar.r().b().g();
        cVar.r();
        throw null;
    }

    public boolean q0() {
        return this.f383q;
    }

    public boolean r0() {
        return this.f384r;
    }

    public void s0(g gVar) {
        t0((g[]) LazyList.removeFromArray(g0(), gVar));
    }

    @Override // org.eclipse.jetty.util.b
    public void setAttribute(String str, Object obj) {
        this.f375i.setAttribute(str, obj);
    }

    public void t0(g[] gVarArr) {
        if (gVarArr != null) {
            for (g gVar : gVarArr) {
                gVar.a(this);
            }
        }
        this.f374h.update((Object) this, (Object[]) this.f377k, (Object[]) gVarArr, "connector");
        this.f377k = gVarArr;
    }

    public String toString() {
        return getClass().getName() + "@" + Integer.toHexString(hashCode());
    }

    public void u0(int i2) {
        this.f381o = i2;
    }

    public void v0(n nVar) {
        n nVar2 = this.f378l;
        if (nVar2 != null) {
            Z(nVar2);
        }
        this.f374h.update((Object) this, (Object) this.f378l, (Object) nVar, "sessionIdManager", false);
        this.f378l = nVar;
        if (nVar != null) {
            P(nVar);
        }
    }

    public void w0(W1.d dVar) {
        W1.d dVar2 = this.f376j;
        if (dVar2 != null) {
            Z(dVar2);
        }
        this.f374h.update((Object) this, (Object) this.f376j, (Object) dVar, "threadpool", false);
        this.f376j = dVar;
        if (dVar != null) {
            P(dVar);
        }
    }
}
