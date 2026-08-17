package org.eclipse.jetty.server.handler;

import N1.k;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* loaded from: classes5.dex */
public abstract class i extends h {

    /* renamed from: j, reason: collision with root package name */
    public static final ThreadLocal f52542j = new ThreadLocal();

    /* renamed from: h, reason: collision with root package name */
    public i f52543h;

    /* renamed from: i, reason: collision with root package name */
    public i f52544i;

    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() {
        try {
            ThreadLocal threadLocal = f52542j;
            i iVar = (i) threadLocal.get();
            this.f52543h = iVar;
            if (iVar == null) {
                threadLocal.set(this);
            }
            super.doStart();
            this.f52544i = (i) c0(i.class);
            if (this.f52543h == null) {
                threadLocal.set(null);
            }
        } catch (Throwable th) {
            if (this.f52543h == null) {
                f52542j.set(null);
            }
            throw th;
        }
    }

    public abstract void f0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse);

    public abstract void g0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse);

    public boolean h0() {
        return false;
    }

    public final void i0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        i iVar = this.f52544i;
        if (iVar != null && iVar == this.f52541g) {
            iVar.f0(str, kVar, httpServletRequest, httpServletResponse);
            return;
        }
        N1.h hVar = this.f52541g;
        if (hVar != null) {
            hVar.l(str, kVar, httpServletRequest, httpServletResponse);
        }
    }

    public final void j0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        i iVar = this.f52544i;
        if (iVar != null) {
            iVar.g0(str, kVar, httpServletRequest, httpServletResponse);
            return;
        }
        i iVar2 = this.f52543h;
        if (iVar2 != null) {
            iVar2.f0(str, kVar, httpServletRequest, httpServletResponse);
        } else {
            f0(str, kVar, httpServletRequest, httpServletResponse);
        }
    }

    @Override // org.eclipse.jetty.server.handler.h, N1.h
    public final void l(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (this.f52543h == null) {
            g0(str, kVar, httpServletRequest, httpServletResponse);
        } else {
            f0(str, kVar, httpServletRequest, httpServletResponse);
        }
    }
}
