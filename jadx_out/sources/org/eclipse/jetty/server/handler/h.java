package org.eclipse.jetty.server.handler;

import N1.k;
import N1.m;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* loaded from: classes5.dex */
public abstract class h extends b {

    /* renamed from: g, reason: collision with root package name */
    public N1.h f52541g;

    @Override // N1.i
    public N1.h[] B() {
        N1.h hVar = this.f52541g;
        return hVar == null ? new N1.h[0] : new N1.h[]{hVar};
    }

    @Override // org.eclipse.jetty.server.handler.a, N1.h
    public void a(m mVar) {
        m mVarC = c();
        if (mVar == mVarC) {
            return;
        }
        if (isStarted()) {
            throw new IllegalStateException(org.eclipse.jetty.util.component.a.STARTED);
        }
        super.a(mVar);
        N1.h hVarD0 = d0();
        if (hVarD0 != null) {
            hVarD0.a(mVar);
        }
        if (mVar == null || mVar == mVarC) {
            return;
        }
        mVar.h0().update(this, (Object) null, this.f52541g, "handler");
    }

    @Override // org.eclipse.jetty.server.handler.b
    public Object a0(Object obj, Class cls) {
        return b0(this.f52541g, obj, cls);
    }

    public N1.h d0() {
        return this.f52541g;
    }

    @Override // org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.d
    public void destroy() {
        if (!isStopped()) {
            throw new IllegalStateException("!STOPPED");
        }
        N1.h hVarD0 = d0();
        if (hVarD0 != null) {
            e0(null);
            hVarD0.destroy();
        }
        super.destroy();
    }

    @Override // org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        N1.h hVar = this.f52541g;
        if (hVar != null) {
            hVar.start();
        }
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() {
        N1.h hVar = this.f52541g;
        if (hVar != null) {
            hVar.stop();
        }
        super.doStop();
    }

    public void e0(N1.h hVar) {
        if (isStarted()) {
            throw new IllegalStateException(org.eclipse.jetty.util.component.a.STARTED);
        }
        N1.h hVar2 = this.f52541g;
        this.f52541g = hVar;
        if (hVar != null) {
            hVar.a(c());
        }
        if (c() != null) {
            c().h0().update(this, hVar2, hVar, "handler");
        }
    }

    @Override // N1.h
    public void l(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (this.f52541g == null || !isStarted()) {
            return;
        }
        this.f52541g.l(str, kVar, httpServletRequest, httpServletResponse);
    }
}
