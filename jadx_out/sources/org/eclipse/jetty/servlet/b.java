package org.eclipse.jetty.servlet;

import N1.i;
import P1.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.Servlet;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import org.eclipse.jetty.server.handler.d;
import org.eclipse.jetty.server.handler.h;
import org.eclipse.jetty.util.LazyList;
import t.f;

/* loaded from: classes5.dex */
public class b extends org.eclipse.jetty.server.handler.d {

    /* renamed from: P, reason: collision with root package name */
    public final List f52557P;

    /* renamed from: Q, reason: collision with root package name */
    public Class f52558Q;

    /* renamed from: R, reason: collision with root package name */
    public g f52559R;

    /* renamed from: S, reason: collision with root package name */
    public c f52560S;

    /* renamed from: T, reason: collision with root package name */
    public h f52561T;

    /* renamed from: U, reason: collision with root package name */
    public int f52562U;

    /* renamed from: V, reason: collision with root package name */
    public Object f52563V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f52564W;

    public class a extends d.C0881d {
        public a() {
            super();
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
        public Servlet g(Class cls) throws ServletException {
            try {
                Servlet servlet = (Servlet) cls.newInstance();
                int size = b.this.f52557P.size() - 1;
                if (size < 0) {
                    return servlet;
                }
                f.a(b.this.f52557P.get(size));
                throw null;
            } catch (IllegalAccessException e2) {
                throw new ServletException(e2);
            } catch (InstantiationException e3) {
                throw new ServletException(e3);
            }
        }
    }

    public b(int i2) {
        this(null, null, i2);
    }

    @Override // org.eclipse.jetty.server.handler.d
    public void J0() throws Exception {
        O0();
        M0();
        N0();
        h hVar = this.f52560S;
        g gVar = this.f52559R;
        if (gVar != null) {
            gVar.e0(hVar);
            hVar = this.f52559R;
        }
        this.f52561T = this;
        while (true) {
            h hVar2 = this.f52561T;
            if (hVar2 == hVar || !(hVar2.d0() instanceof h)) {
                break;
            } else {
                this.f52561T = (h) this.f52561T.d0();
            }
        }
        h hVar3 = this.f52561T;
        if (hVar3 != hVar) {
            if (hVar3.d0() != null) {
                throw new IllegalStateException("!ScopedHandler");
            }
            this.f52561T.e0(hVar);
        }
        super.J0();
        c cVar = this.f52560S;
        if (cVar == null || !cVar.isStarted()) {
            return;
        }
        for (int size = this.f52557P.size() - 1; size >= 0; size--) {
            f.a(this.f52557P.get(size));
            if (this.f52560S.o0() != null) {
                org.eclipse.jetty.servlet.a[] aVarArrO0 = this.f52560S.o0();
                if (aVarArrO0.length > 0) {
                    org.eclipse.jetty.servlet.a aVar = aVarArrO0[0];
                    throw null;
                }
            }
            if (this.f52560S.t0() != null) {
                d[] dVarArrT0 = this.f52560S.t0();
                if (dVarArrT0.length > 0) {
                    d dVar = dVarArrT0[0];
                    throw null;
                }
            }
        }
        this.f52560S.u0();
    }

    public void K0(d dVar, String str) throws Throwable {
        N0().k0(dVar, str);
    }

    public void L0(Servlet servlet) {
        Iterator it = this.f52557P.iterator();
        if (it.hasNext()) {
            f.a(it.next());
            throw null;
        }
    }

    public M1.c M0() {
        if ((this.f52562U & 2) == 0 || isStarted()) {
            return null;
        }
        P0();
        return null;
    }

    public c N0() {
        if (this.f52560S == null && !isStarted()) {
            this.f52560S = Q0();
        }
        return this.f52560S;
    }

    public g O0() {
        if (this.f52559R == null && (this.f52562U & 1) != 0 && !isStarted()) {
            this.f52559R = R0();
        }
        return this.f52559R;
    }

    public M1.c P0() {
        try {
            f.a(this.f52558Q.newInstance());
            return null;
        } catch (Exception e2) {
            throw new IllegalStateException(e2);
        }
    }

    public c Q0() {
        return new c();
    }

    public g R0() {
        return new g();
    }

    @Override // org.eclipse.jetty.server.handler.d, org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() throws Throwable {
        super.doStop();
        List list = this.f52557P;
        if (list != null) {
            list.clear();
        }
        h hVar = this.f52561T;
        if (hVar != null) {
            hVar.e0(null);
        }
    }

    @Override // org.eclipse.jetty.server.handler.d
    public void p0(ServletContextListener servletContextListener, ServletContextEvent servletContextEvent) {
        try {
            if (LazyList.contains(this.f52563V, servletContextListener)) {
                B0().f(false);
            }
            super.p0(servletContextListener, servletContextEvent);
            B0().f(true);
        } catch (Throwable th) {
            B0().f(true);
            throw th;
        }
    }

    public b(i iVar, String str, int i2) {
        this(iVar, str, null, null, null, null);
        this.f52562U = i2;
    }

    public b(i iVar, String str, g gVar, M1.c cVar, c cVar2, org.eclipse.jetty.server.handler.f fVar) {
        super(null);
        this.f52557P = new ArrayList();
        this.f52558Q = M1.a.class;
        this.f52564W = true;
        this.f52520k = new a();
        this.f52559R = gVar;
        this.f52560S = cVar2;
        if (str != null) {
            G0(str);
        }
        if (iVar instanceof h) {
            ((h) iVar).e0(this);
        }
    }
}
