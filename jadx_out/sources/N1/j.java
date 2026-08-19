package N1;

import javax.servlet.ServletOutputStream;

/* loaded from: classes5.dex */
public abstract class j extends ServletOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final c f313a;

    /* renamed from: b, reason: collision with root package name */
    public final org.eclipse.jetty.http.a f314b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f315c;

    public j(c cVar) {
        this.f313a = cVar;
        this.f314b = (org.eclipse.jetty.http.a) cVar.o();
    }

    public void a() {
        this.f314b.r(b());
    }

    public int b() {
        return this.f313a.p();
    }

    public boolean c() {
        return this.f315c;
    }

    public void d() {
        this.f315c = false;
    }
}
