package org.eclipse.jetty.client;

import W1.e;
import java.io.IOException;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import org.eclipse.jetty.http.l;
import org.eclipse.jetty.http.p;
import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EofException;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public abstract class a extends L1.b implements org.eclipse.jetty.util.component.e {

    /* renamed from: p, reason: collision with root package name */
    public static final R1.c f52058p = R1.b.a(a.class);

    /* renamed from: e, reason: collision with root package name */
    public HttpDestination f52059e;

    /* renamed from: f, reason: collision with root package name */
    public org.eclipse.jetty.http.h f52060f;

    /* renamed from: g, reason: collision with root package name */
    public org.eclipse.jetty.http.l f52061g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f52062h;

    /* renamed from: i, reason: collision with root package name */
    public int f52063i;

    /* renamed from: j, reason: collision with root package name */
    public L1.d f52064j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f52065k;

    /* renamed from: l, reason: collision with root package name */
    public volatile j f52066l;

    /* renamed from: m, reason: collision with root package name */
    public j f52067m;

    /* renamed from: n, reason: collision with root package name */
    public final e.a f52068n;

    /* renamed from: o, reason: collision with root package name */
    public AtomicBoolean f52069o;

    public class b extends e.a {
        public b() {
        }

        @Override // W1.e.a
        public void e() {
            if (a.this.f52069o.compareAndSet(true, false)) {
                a aVar = a.this;
                aVar.f52059e.t(aVar);
            }
        }
    }

    public a(Buffers buffers, Buffers buffers2, L1.k kVar) {
        super(kVar);
        this.f52062h = true;
        this.f52068n = new b();
        this.f52069o = new AtomicBoolean(false);
        this.f52060f = new org.eclipse.jetty.http.h(buffers, kVar);
        this.f52061g = new org.eclipse.jetty.http.l(buffers2, kVar, new c());
    }

    @Override // L1.j
    public boolean b() {
        return false;
    }

    public final void i() {
        long timeout = this.f52066l.getTimeout();
        if (timeout <= 0) {
            timeout = this.f52059e.g().n0();
        }
        long jB = this.f221c.b();
        if (timeout <= 0 || timeout <= jB) {
            return;
        }
        this.f221c.l(((int) timeout) * 2);
    }

    @Override // L1.j
    public boolean isIdle() {
        boolean z2;
        synchronized (this) {
            z2 = this.f52066l == null;
        }
        return z2;
    }

    public boolean j() {
        synchronized (this) {
            try {
                if (!this.f52069o.compareAndSet(true, false)) {
                    return false;
                }
                this.f52059e.g().c0(this.f52068n);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k() {
        /*
            r6 = this;
            org.eclipse.jetty.client.j r0 = r6.f52066l
            r1 = 1
            if (r0 == 0) goto L63
            boolean r2 = r0.isDone()
            if (r2 != 0) goto L63
            int r2 = r0.getStatus()
            switch(r2) {
                case 6: goto L13;
                case 7: goto L63;
                case 8: goto L63;
                case 9: goto L63;
                case 10: goto L63;
                case 11: goto L63;
                default: goto L12;
            }
        L12:
            goto L24
        L13:
            L1.k r2 = r6.f221c
            boolean r2 = r2.s()
            if (r2 == 0) goto L24
            org.eclipse.jetty.http.l r2 = r6.f52061g
            boolean r2 = r2.j(r1)
            if (r2 == 0) goto L24
            goto L63
        L24:
            java.lang.String r2 = r0.toString()
            L1.k r3 = r6.f221c
            boolean r3 = r3.isOpen()
            if (r3 == 0) goto L3e
            L1.k r3 = r6.f221c
            boolean r3 = r3.s()
            if (r3 == 0) goto L3b
            java.lang.String r3 = "half closed: "
            goto L40
        L3b:
            java.lang.String r3 = "local close: "
            goto L40
        L3e:
            java.lang.String r3 = "closed: "
        L40:
            r4 = 9
            boolean r4 = r0.setStatus(r4)
            if (r4 == 0) goto L63
            org.eclipse.jetty.client.h r0 = r0.getEventListener()
            org.eclipse.jetty.io.EofException r4 = new org.eclipse.jetty.io.EofException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            r5.append(r2)
            java.lang.String r2 = r5.toString()
            r4.<init>(r2)
            r0.d(r4)
        L63:
            L1.k r0 = r6.f221c
            boolean r0 = r0.isOpen()
            if (r0 == 0) goto L75
            L1.k r0 = r6.f221c
            r0.close()
            org.eclipse.jetty.client.HttpDestination r0 = r6.f52059e
            r0.s(r6, r1)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.a.k():void");
    }

    public void l() {
        synchronized (this) {
            try {
                this.f52063i = 0;
                if (this.f52066l.getStatus() != 2) {
                    throw new IllegalStateException();
                }
                this.f52066l.setStatus(3);
                this.f52060f.setVersion(this.f52066l.getVersion());
                String method = this.f52066l.getMethod();
                String requestURI = this.f52066l.getRequestURI();
                if (this.f52059e.l()) {
                    if (!"CONNECT".equals(method) && requestURI.startsWith(ServiceReference.DELIMITER)) {
                        boolean zN = this.f52059e.n();
                        String strA = this.f52059e.e().a();
                        int iB = this.f52059e.e().b();
                        StringBuilder sb = new StringBuilder();
                        sb.append(zN ? "https" : "http");
                        sb.append("://");
                        sb.append(strA);
                        if ((!zN || iB != 443) && (zN || iB != 80)) {
                            sb.append(":");
                            sb.append(iB);
                        }
                        sb.append(requestURI);
                        requestURI = sb.toString();
                    }
                    J1.a aVarJ = this.f52059e.j();
                    if (aVarJ != null) {
                        aVarJ.a(this.f52066l);
                    }
                }
                this.f52060f.z(method, requestURI);
                this.f52061g.l(com.sigmob.sdk.downloader.core.c.f37362a.equalsIgnoreCase(method));
                org.eclipse.jetty.http.g requestFields = this.f52066l.getRequestFields();
                if (this.f52066l.getVersion() >= 11) {
                    L1.d dVar = org.eclipse.jetty.http.j.f52266e;
                    if (!requestFields.i(dVar)) {
                        requestFields.d(dVar, this.f52059e.f());
                    }
                }
                L1.d requestContent = this.f52066l.getRequestContent();
                if (requestContent != null) {
                    requestFields.z(com.sigmob.sdk.downloader.core.c.f37366e, requestContent.length());
                    this.f52060f.m(requestFields, false);
                    this.f52060f.g(new L1.l(requestContent), true);
                    this.f52066l.setStatus(4);
                } else if (this.f52066l.getRequestContentSource() != null) {
                    this.f52060f.m(requestFields, false);
                } else {
                    requestFields.B(com.sigmob.sdk.downloader.core.c.f37366e);
                    this.f52060f.m(requestFields, true);
                    this.f52066l.setStatus(4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) {
        synchronized (this) {
            appendable.append(String.valueOf(this)).append("\n");
            org.eclipse.jetty.util.component.b.S(appendable, str, Collections.singletonList(this.f221c));
        }
    }

    public void n(j jVar) {
        synchronized (this) {
            if (this.f52066l == jVar) {
                try {
                    this.f52059e.s(this, true);
                } catch (IOException e2) {
                    f52058p.h(e2);
                }
            }
        }
    }

    public boolean o() {
        return this.f52065k;
    }

    @Override // L1.j
    public void onClose() {
    }

    public void p() {
        this.f52064j = null;
        this.f52061g.reset();
        this.f52060f.reset();
        this.f52062h = true;
    }

    public boolean q(j jVar) {
        f52058p.i("Send {} on {}", jVar, this);
        synchronized (this) {
            try {
                if (this.f52066l != null) {
                    if (this.f52067m == null) {
                        this.f52067m = jVar;
                        return true;
                    }
                    throw new IllegalStateException(this + " PIPELINED!!!  _exchange=" + this.f52066l);
                }
                this.f52066l = jVar;
                this.f52066l.associate(this);
                if (this.f221c.isOpen()) {
                    this.f52066l.setStatus(2);
                    i();
                    return true;
                }
                this.f52066l.disassociate();
                this.f52066l = null;
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void r(HttpDestination httpDestination) {
        this.f52059e = httpDestination;
    }

    public void s() {
        synchronized (this) {
            try {
                if (!this.f52069o.compareAndSet(false, true)) {
                    throw new IllegalStateException();
                }
                this.f52059e.g().v0(this.f52068n);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void t(boolean z2) {
        this.f52065k = z2;
    }

    @Override // L1.b
    public String toString() {
        String string = super.toString();
        HttpDestination httpDestination = this.f52059e;
        return String.format("%s %s g=%s p=%s", string, httpDestination == null ? "?.?.?.?:??" : httpDestination.e(), this.f52060f, this.f52061g);
    }

    public class d implements h {

        /* renamed from: a, reason: collision with root package name */
        public final j f52072a;

        /* renamed from: b, reason: collision with root package name */
        public final h f52073b;

        public d(j jVar) {
            this.f52072a = jVar;
            this.f52073b = jVar.getEventListener();
        }

        @Override // org.eclipse.jetty.client.h
        public void a(Throwable th) {
            this.f52072a.setEventListener(this.f52073b);
            this.f52073b.a(th);
        }

        @Override // org.eclipse.jetty.client.h
        public void b() {
            this.f52072a.setEventListener(this.f52073b);
            this.f52073b.b();
        }

        @Override // org.eclipse.jetty.client.h
        public void c() {
            this.f52073b.c();
        }

        @Override // org.eclipse.jetty.client.h
        public void d(Throwable th) {
            this.f52072a.setEventListener(this.f52073b);
            this.f52073b.d(th);
        }

        @Override // org.eclipse.jetty.client.h
        public void e() {
        }

        @Override // org.eclipse.jetty.client.h
        public void f() {
            this.f52072a.setEventListener(this.f52073b);
            this.f52073b.f();
        }

        @Override // org.eclipse.jetty.client.h
        public void g() {
        }

        @Override // org.eclipse.jetty.client.h
        public void h(L1.d dVar, L1.d dVar2) {
            this.f52073b.h(dVar, dVar2);
        }

        @Override // org.eclipse.jetty.client.h
        public void k() {
            this.f52072a.setEventListener(this.f52073b);
            this.f52072a.setStatus(4);
            a.this.f52061g.reset();
        }

        @Override // org.eclipse.jetty.client.h
        public void j(L1.d dVar) {
        }

        @Override // org.eclipse.jetty.client.h
        public void i(L1.d dVar, int i2, L1.d dVar2) {
        }
    }

    public class c extends l.a {
        public c() {
        }

        @Override // org.eclipse.jetty.http.l.a
        public void a(L1.d dVar) {
            j jVar = a.this.f52066l;
            if (jVar != null) {
                jVar.getEventListener().j(dVar);
            }
        }

        @Override // org.eclipse.jetty.http.l.a
        public void b() {
            j jVar = a.this.f52066l;
            if (jVar == null || jVar.isDone() || !jVar.setStatus(9)) {
                return;
            }
            jVar.getEventListener().d(new EofException("early EOF"));
        }

        @Override // org.eclipse.jetty.http.l.a
        public void c() {
            j jVar = a.this.f52066l;
            if (jVar != null) {
                jVar.setStatus(6);
                if ("CONNECT".equalsIgnoreCase(jVar.getMethod())) {
                    a.this.f52061g.c(true);
                }
            }
        }

        @Override // org.eclipse.jetty.http.l.a
        public void d(long j2) {
            j jVar = a.this.f52066l;
            if (jVar != null) {
                jVar.setStatus(7);
            }
        }

        @Override // org.eclipse.jetty.http.l.a
        public void e(L1.d dVar, L1.d dVar2) {
            j jVar = a.this.f52066l;
            if (jVar != null) {
                if (org.eclipse.jetty.http.j.f52264d.e(dVar) == 1) {
                    a.this.f52064j = org.eclipse.jetty.http.i.f52223d.g(dVar2);
                }
                jVar.getEventListener().h(dVar, dVar2);
            }
        }

        @Override // org.eclipse.jetty.http.l.a
        public void g(L1.d dVar, int i2, L1.d dVar2) {
            j jVar = a.this.f52066l;
            if (jVar == null) {
                a.f52058p.g("No exchange for response", new Object[0]);
                a.this.f221c.close();
                return;
            }
            if (i2 == 100 || i2 == 102) {
                jVar.setEventListener(a.this.new d(jVar));
            } else if (i2 == 200 && "CONNECT".equalsIgnoreCase(jVar.getMethod())) {
                a.this.f52061g.l(true);
            }
            a.this.f52062h = p.f52352d.equals(dVar);
            a.this.f52063i = i2;
            jVar.getEventListener().i(dVar, i2, dVar2);
            jVar.setStatus(5);
        }

        @Override // org.eclipse.jetty.http.l.a
        public void f(L1.d dVar, L1.d dVar2, L1.d dVar3) {
        }
    }
}
