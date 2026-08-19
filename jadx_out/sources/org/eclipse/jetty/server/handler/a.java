package org.eclipse.jetty.server.handler;

import N1.m;

/* loaded from: classes5.dex */
public abstract class a extends org.eclipse.jetty.util.component.b implements N1.h {

    /* renamed from: f, reason: collision with root package name */
    public static final R1.c f52503f = R1.b.a(a.class);

    /* renamed from: e, reason: collision with root package name */
    public m f52504e;

    @Override // org.eclipse.jetty.util.component.b
    public void V(Appendable appendable) {
        appendable.append(toString()).append(" - ").append(getState()).append('\n');
    }

    public void a(m mVar) {
        m mVar2 = this.f52504e;
        if (mVar2 != null && mVar2 != mVar) {
            mVar2.h0().d(this);
        }
        this.f52504e = mVar;
        if (mVar == null || mVar == mVar2) {
            return;
        }
        mVar.h0().b(this);
    }

    public m c() {
        return this.f52504e;
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.d
    public void destroy() {
        if (!isStopped()) {
            throw new IllegalStateException("!STOPPED");
        }
        super.destroy();
        m mVar = this.f52504e;
        if (mVar != null) {
            mVar.h0().d(this);
        }
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        f52503f.i("starting {}", this);
        super.doStart();
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() {
        f52503f.i("stopping {}", this);
        super.doStop();
    }
}
