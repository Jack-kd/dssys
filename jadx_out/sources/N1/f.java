package N1;

import org.eclipse.jetty.http.HttpException;

/* loaded from: classes5.dex */
public class f extends c {

    /* renamed from: B, reason: collision with root package name */
    public static final R1.c f312B = R1.b.a(f.class);

    public f(g gVar, L1.k kVar, m mVar) {
        super(gVar, kVar, mVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v21, types: [L1.j] */
    /* JADX WARN: Type inference failed for: r4v39, types: [L1.j] */
    @Override // L1.j
    public L1.j handle() {
        L1.k kVar;
        ?? r4;
        ?? r42;
        try {
            c.J(this);
            f fVar = this;
            while (this.f221c.isOpen() && fVar == this) {
                try {
                    try {
                        if (!this.f279i.b() && !this.f221c.s()) {
                            this.f279i.d();
                        }
                        if (this.f282l.e() && !this.f282l.b() && !this.f221c.o()) {
                            this.f282l.l();
                        }
                        this.f221c.flush();
                        if (this.f279i.b() && this.f282l.b()) {
                            I();
                            if (this.f284n.f() == 101 && (r42 = (L1.j) this.f281k.c("org.eclipse.jetty.io.Connection")) != 0) {
                                fVar = r42;
                            }
                            if (!this.f282l.isPersistent() && !this.f221c.o()) {
                                f312B.g("Safety net oshut!!! Please open a bugzilla", new Object[0]);
                                this.f221c.j();
                            }
                        }
                    } catch (HttpException e2) {
                        R1.c cVar = f312B;
                        if (cVar.f()) {
                            cVar.i("uri=" + this.f278h, new Object[0]);
                            cVar.i("fields=" + this.f280j, new Object[0]);
                            cVar.a(e2);
                        }
                        this.f282l.n(e2.getStatus(), e2.getReason(), null, true);
                        this.f279i.reset();
                        this.f221c.j();
                        if (this.f279i.b() && this.f282l.b()) {
                            I();
                            if (this.f284n.f() == 101 && (r4 = (L1.j) this.f281k.c("org.eclipse.jetty.io.Connection")) != 0) {
                                fVar = r4;
                            }
                            if (!this.f282l.isPersistent() && !this.f221c.o()) {
                                cVar.g("Safety net oshut!!! Please open a bugzilla", new Object[0]);
                                this.f221c.j();
                            }
                        }
                        if (this.f221c.s() && this.f282l.isIdle() && !this.f281k.b().o()) {
                            kVar = this.f221c;
                        }
                    }
                    if (this.f221c.s() && this.f282l.isIdle() && !this.f281k.b().o()) {
                        kVar = this.f221c;
                        kVar.close();
                    }
                } finally {
                }
            }
            c.J(null);
            this.f279i.a();
            this.f282l.a();
            return fVar;
        } catch (Throwable th) {
            c.J(null);
            this.f279i.a();
            this.f282l.a();
            throw th;
        }
    }

    @Override // N1.c
    public void y() throws Throwable {
        super.y();
    }
}
