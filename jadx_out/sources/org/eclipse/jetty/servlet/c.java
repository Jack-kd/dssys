package org.eclipse.jetty.servlet;

import N1.k;
import N1.m;
import N1.q;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import javax.servlet.DispatcherType;
import javax.servlet.FilterChain;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.server.handler.d;
import org.eclipse.jetty.server.handler.i;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.MultiException;
import org.eclipse.jetty.util.MultiMap;
import org.eclipse.jetty.util.n;
import org.fourthline.cling.model.ServiceReference;
import t.f;

/* loaded from: classes5.dex */
public class c extends i {

    /* renamed from: C, reason: collision with root package name */
    public static final R1.c f52566C;

    /* renamed from: D, reason: collision with root package name */
    public static final R1.c f52567D;

    /* renamed from: k, reason: collision with root package name */
    public b f52570k;

    /* renamed from: l, reason: collision with root package name */
    public d.C0881d f52571l;

    /* renamed from: n, reason: collision with root package name */
    public Q1.a[] f52573n;

    /* renamed from: u, reason: collision with root package name */
    public Q1.b[] f52580u;

    /* renamed from: w, reason: collision with root package name */
    public List f52582w;

    /* renamed from: x, reason: collision with root package name */
    public MultiMap f52583x;

    /* renamed from: z, reason: collision with root package name */
    public PathMap f52585z;

    /* renamed from: m, reason: collision with root package name */
    public a[] f52572m = new a[0];

    /* renamed from: o, reason: collision with root package name */
    public int f52574o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f52575p = -1;

    /* renamed from: q, reason: collision with root package name */
    public boolean f52576q = true;

    /* renamed from: r, reason: collision with root package name */
    public int f52577r = 512;

    /* renamed from: s, reason: collision with root package name */
    public boolean f52578s = false;

    /* renamed from: t, reason: collision with root package name */
    public d[] f52579t = new d[0];

    /* renamed from: v, reason: collision with root package name */
    public final Map f52581v = new HashMap();

    /* renamed from: y, reason: collision with root package name */
    public final Map f52584y = new HashMap();

    /* renamed from: A, reason: collision with root package name */
    public final ConcurrentMap[] f52568A = new ConcurrentMap[31];

    /* renamed from: B, reason: collision with root package name */
    public final Queue[] f52569B = new Queue[31];

    static {
        R1.c cVarA = R1.b.a(c.class);
        f52566C = cVarA;
        f52567D = cVarA.j("unhandled");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x013e A[Catch: all -> 0x000c, Exception -> 0x0132, TRY_LEAVE, TryCatch #1 {Exception -> 0x0132, blocks: (B:48:0x0127, B:50:0x012b, B:59:0x013e, B:55:0x0134, B:57:0x0138), top: B:69:0x0127, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void A0() {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.c.A0():void");
    }

    public synchronized void B0() {
        try {
            this.f52581v.clear();
            a[] aVarArr = this.f52572m;
            int i2 = 0;
            if (aVarArr != null && aVarArr.length > 0) {
                a aVar = aVarArr[0];
                throw null;
            }
            this.f52584y.clear();
            if (this.f52579t != null) {
                while (true) {
                    d[] dVarArr = this.f52579t;
                    if (i2 >= dVarArr.length) {
                        break;
                    }
                    this.f52584y.put(dVarArr[i2].getName(), this.f52579t[i2]);
                    this.f52579t[i2].Z(this);
                    i2++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, N1.h
    public void a(m mVar) {
        c cVar;
        m mVarC = c();
        if (mVarC == null || mVarC == mVar) {
            cVar = this;
        } else {
            c().h0().update((Object) this, (Object[]) this.f52572m, (Object[]) null, "filter", true);
            cVar = this;
            c().h0().update((Object) cVar, (Object[]) cVar.f52573n, (Object[]) null, "filterMapping", true);
            c().h0().update((Object) cVar, (Object[]) cVar.f52579t, (Object[]) null, "servlet", true);
            c().h0().update((Object) cVar, (Object[]) cVar.f52580u, (Object[]) null, "servletMapping", true);
        }
        super.a(mVar);
        if (mVar == null || mVarC == mVar) {
            return;
        }
        mVar.h0().update((Object) cVar, (Object[]) null, (Object[]) cVar.f52572m, "filter", true);
        mVar.h0().update((Object) cVar, (Object[]) null, (Object[]) cVar.f52573n, "filterMapping", true);
        mVar.h0().update((Object) cVar, (Object[]) null, (Object[]) cVar.f52579t, "servlet", true);
        mVar.h0().update((Object) cVar, (Object[]) null, (Object[]) cVar.f52580u, "servletMapping", true);
    }

    @Override // org.eclipse.jetty.server.handler.i, org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public synchronized void doStart() {
        try {
            d.C0881d c0881dW0 = org.eclipse.jetty.server.handler.d.w0();
            this.f52571l = c0881dW0;
            b bVar = (b) (c0881dW0 == null ? null : c0881dW0.c());
            this.f52570k = bVar;
            if (bVar != null) {
                f.a(bVar.c0(M1.c.class));
            }
            B0();
            A0();
            if (this.f52576q) {
                this.f52568A[1] = new ConcurrentHashMap();
                this.f52568A[2] = new ConcurrentHashMap();
                this.f52568A[4] = new ConcurrentHashMap();
                this.f52568A[8] = new ConcurrentHashMap();
                this.f52568A[16] = new ConcurrentHashMap();
                this.f52569B[1] = new ConcurrentLinkedQueue();
                this.f52569B[2] = new ConcurrentLinkedQueue();
                this.f52569B[4] = new ConcurrentLinkedQueue();
                this.f52569B[8] = new ConcurrentLinkedQueue();
                this.f52569B[16] = new ConcurrentLinkedQueue();
            }
            super.doStart();
            b bVar2 = this.f52570k;
            if (bVar2 == null || bVar2 == null) {
                u0();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d A[Catch: all -> 0x001d, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0014, B:9:0x001a, B:10:0x001c, B:14:0x0021, B:15:0x002c, B:16:0x002d, B:18:0x0044, B:21:0x0048, B:23:0x004d, B:25:0x0060, B:28:0x0065, B:32:0x0075, B:34:0x0081, B:35:0x0092, B:37:0x0098, B:39:0x00b0, B:40:0x00b4, B:31:0x006e, B:42:0x00bd), top: B:51:0x0001, inners: #0, #1 }] */
    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void doStop() {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.c.doStop():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    @Override // org.eclipse.jetty.server.handler.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f0(java.lang.String r17, N1.k r18, javax.servlet.http.HttpServletRequest r19, javax.servlet.http.HttpServletResponse r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.servlet.c.f0(java.lang.String, N1.k, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse):void");
    }

    @Override // org.eclipse.jetty.server.handler.i
    public void g0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        d dVar;
        String strQ = kVar.q();
        String strJ = kVar.j();
        DispatcherType dispatcherTypeF = kVar.f();
        if (str.startsWith(ServiceReference.DELIMITER)) {
            PathMap.a aVarP0 = p0(str);
            if (aVarP0 != null) {
                dVar = (d) aVarP0.getValue();
                String str2 = (String) aVarP0.getKey();
                String strA = aVarP0.a() != null ? aVarP0.a() : PathMap.pathMatch(str2, str);
                String strPathInfo = PathMap.pathInfo(str2, str);
                if (DispatcherType.INCLUDE.equals(dispatcherTypeF)) {
                    kVar.F("javax.servlet.include.servlet_path", strA);
                    kVar.F("javax.servlet.include.path_info", strPathInfo);
                } else {
                    kVar.Z(strA);
                    kVar.O(strPathInfo);
                }
            } else {
                dVar = null;
            }
        } else {
            dVar = (d) this.f52584y.get(str);
        }
        R1.c cVar = f52566C;
        if (cVar.f()) {
            cVar.i("servlet {}|{}|{} -> {}", kVar.e(), kVar.q(), kVar.j(), dVar);
        }
        try {
            q.a aVarW = kVar.w();
            kVar.e0(dVar);
            if (h0()) {
                j0(str, kVar, httpServletRequest, httpServletResponse);
            } else {
                i iVar = this.f52544i;
                if (iVar != null) {
                    iVar.g0(str, kVar, httpServletRequest, httpServletResponse);
                } else {
                    i iVar2 = this.f52543h;
                    if (iVar2 != null) {
                        iVar2.f0(str, kVar, httpServletRequest, httpServletResponse);
                    } else {
                        f0(str, kVar, httpServletRequest, httpServletResponse);
                    }
                }
            }
            if (aVarW != null) {
                kVar.e0(aVarW);
            }
            if (DispatcherType.INCLUDE.equals(dispatcherTypeF)) {
                return;
            }
            kVar.Z(strQ);
            kVar.O(strJ);
        } catch (Throwable th) {
            if (0 != 0) {
                kVar.e0(null);
            }
            if (!DispatcherType.INCLUDE.equals(dispatcherTypeF)) {
                kVar.Z(strQ);
                kVar.O(strJ);
            }
            throw th;
        }
    }

    public void k0(d dVar, String str) throws Throwable {
        d[] dVarArrT0 = t0();
        if (dVarArrT0 != null) {
            dVarArrT0 = (d[]) dVarArrT0.clone();
        }
        try {
            z0((d[]) LazyList.addToArray(dVarArrT0, dVar, d.class));
            Q1.b bVar = new Q1.b();
            bVar.d(dVar.getName());
            bVar.c(str);
            y0((Q1.b[]) LazyList.addToArray(s0(), bVar, Q1.b.class));
        } catch (Exception e2) {
            z0(dVarArrT0);
            if (!(e2 instanceof RuntimeException)) {
                throw new RuntimeException(e2);
            }
            throw ((RuntimeException) e2);
        }
    }

    public void l0(Servlet servlet) {
        b bVar = this.f52570k;
        if (bVar != null) {
            bVar.L0(servlet);
        }
    }

    @Override // org.eclipse.jetty.server.handler.b, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) {
        super.V(appendable);
        org.eclipse.jetty.util.component.b.S(appendable, str, n.a(B()), X(), n.a(n0()), n.a(o0()), n.a(s0()), n.a(t0()));
    }

    public FilterChain m0(k kVar, String str, d dVar) {
        MultiMap multiMap;
        List list;
        ConcurrentMap[] concurrentMapArr;
        FilterChain filterChain;
        String name = str == null ? dVar.getName() : str;
        int iA = Q1.a.a(kVar.f());
        if (this.f52576q && (concurrentMapArr = this.f52568A) != null && (filterChain = (FilterChain) concurrentMapArr[iA].get(name)) != null) {
            return filterChain;
        }
        if (str != null && (list = this.f52582w) != null && list.size() > 0) {
            f.a(this.f52582w.get(0));
            throw null;
        }
        if (dVar != null && (multiMap = this.f52583x) != null && multiMap.size() > 0 && this.f52583x.size() > 0) {
            Object obj = this.f52583x.get(dVar.getName());
            if (LazyList.size(obj) > 0) {
                f.a(LazyList.get(obj, 0));
                throw null;
            }
            Object obj2 = this.f52583x.get("*");
            if (LazyList.size(obj2) > 0) {
                f.a(LazyList.get(obj2, 0));
                throw null;
            }
        }
        return null;
    }

    public Q1.a[] n0() {
        return this.f52573n;
    }

    public a[] o0() {
        return this.f52572m;
    }

    public PathMap.a p0(String str) {
        PathMap pathMap = this.f52585z;
        if (pathMap == null) {
            return null;
        }
        return pathMap.getMatch(str);
    }

    public M1.b q0() {
        return null;
    }

    public ServletContext r0() {
        return this.f52571l;
    }

    public Q1.b[] s0() {
        return this.f52580u;
    }

    public d[] t0() {
        return this.f52579t;
    }

    public void u0() throws Exception {
        MultiException multiException = new MultiException();
        a[] aVarArr = this.f52572m;
        if (aVarArr != null && aVarArr.length > 0) {
            a aVar = aVarArr[0];
            throw null;
        }
        d[] dVarArr = this.f52579t;
        if (dVarArr != null) {
            d[] dVarArr2 = (d[]) dVarArr.clone();
            Arrays.sort(dVarArr2);
            for (int i2 = 0; i2 < dVarArr2.length; i2++) {
                try {
                    if (dVarArr2[i2].P() != null || dVarArr2[i2].c0() == null) {
                        dVarArr2[i2].start();
                    } else {
                        d dVar = (d) this.f52585z.match(dVarArr2[i2].c0());
                        if (dVar != null && dVar.P() != null) {
                            dVarArr2[i2].V(dVar.P());
                            dVarArr2[i2].start();
                        }
                        multiException.add(new IllegalStateException("No forced path servlet for " + dVarArr2[i2].c0()));
                    }
                } catch (Throwable th) {
                    f52566C.d("EXCEPTION ", th);
                    multiException.add(th);
                }
            }
            multiException.ifExceptionThrow();
        }
    }

    public void v0() {
        Queue queue = this.f52569B[1];
        if (queue != null) {
            queue.clear();
            this.f52569B[2].clear();
            this.f52569B[4].clear();
            this.f52569B[8].clear();
            this.f52569B[16].clear();
            this.f52568A[1].clear();
            this.f52568A[2].clear();
            this.f52568A[4].clear();
            this.f52568A[8].clear();
            this.f52568A[16].clear();
        }
    }

    public boolean w0() {
        return this.f52578s;
    }

    public void x0(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        R1.c cVar = f52566C;
        if (cVar.f()) {
            cVar.i("Not Found " + httpServletRequest.getRequestURI(), new Object[0]);
        }
    }

    public void y0(Q1.b[] bVarArr) {
        c cVar;
        Q1.b[] bVarArr2;
        if (c() != null) {
            cVar = this;
            bVarArr2 = bVarArr;
            c().h0().update((Object) cVar, (Object[]) this.f52580u, (Object[]) bVarArr2, "servletMapping", true);
        } else {
            cVar = this;
            bVarArr2 = bVarArr;
        }
        cVar.f52580u = bVarArr2;
        A0();
        v0();
    }

    public synchronized void z0(d[] dVarArr) throws Throwable {
        c cVar;
        d[] dVarArr2;
        try {
            try {
                if (c() != null) {
                    cVar = this;
                    dVarArr2 = dVarArr;
                    c().h0().update((Object) cVar, (Object[]) this.f52579t, (Object[]) dVarArr2, "servlet", true);
                } else {
                    cVar = this;
                    dVarArr2 = dVarArr;
                }
                cVar.f52579t = dVarArr2;
                B0();
                v0();
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }
}
