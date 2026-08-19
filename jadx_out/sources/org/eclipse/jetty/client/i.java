package org.eclipse.jetty.client;

/* loaded from: classes5.dex */
public abstract class i implements h {

    /* renamed from: a, reason: collision with root package name */
    public h f52109a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f52110b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f52111c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f52112d = true;

    /* renamed from: e, reason: collision with root package name */
    public L1.d f52113e;

    /* renamed from: f, reason: collision with root package name */
    public int f52114f;

    /* renamed from: g, reason: collision with root package name */
    public L1.d f52115g;

    public i(h hVar, boolean z2) {
        this.f52109a = hVar;
        this.f52110b = z2;
        this.f52111c = z2;
    }

    @Override // org.eclipse.jetty.client.h
    public void a(Throwable th) {
        if (this.f52110b) {
            this.f52109a.a(th);
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void b() {
        if (this.f52110b) {
            this.f52109a.b();
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void c() {
        if (this.f52111c) {
            this.f52109a.c();
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void d(Throwable th) {
        if (this.f52110b || this.f52111c) {
            this.f52109a.d(th);
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void e() {
        if (this.f52110b) {
            this.f52109a.e();
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void f() {
        if (this.f52110b || this.f52111c) {
            this.f52109a.f();
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void g() {
        if (this.f52110b) {
            this.f52109a.g();
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void h(L1.d dVar, L1.d dVar2) {
        if (this.f52111c) {
            this.f52109a.h(dVar, dVar2);
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void i(L1.d dVar, int i2, L1.d dVar2) {
        if (this.f52111c) {
            this.f52109a.i(dVar, i2, dVar2);
            return;
        }
        this.f52113e = dVar;
        this.f52114f = i2;
        this.f52115g = dVar2;
    }

    @Override // org.eclipse.jetty.client.h
    public void j(L1.d dVar) {
        if (this.f52111c) {
            this.f52109a.j(dVar);
        }
    }

    @Override // org.eclipse.jetty.client.h
    public void k() {
        if (this.f52111c) {
            if (!this.f52112d) {
                this.f52109a.i(this.f52113e, this.f52114f, this.f52115g);
            }
            this.f52109a.k();
        }
    }

    public boolean l() {
        return this.f52111c;
    }

    public void m(boolean z2) {
        this.f52110b = z2;
    }

    public void n(boolean z2) {
        this.f52111c = z2;
    }
}
