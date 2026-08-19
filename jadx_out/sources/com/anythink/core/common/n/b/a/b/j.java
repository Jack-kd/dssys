package com.anythink.core.common.n.b.a.b;

import com.anythink.core.common.n.b.C1115a;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.r;
import com.anythink.core.common.n.b.v;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.b.z;
import com.anythink.core.common.n.c.C1118a;
import com.anythink.core.common.n.c.x;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f6197b = true;

    /* renamed from: a, reason: collision with root package name */
    public e f6198a;

    /* renamed from: c, reason: collision with root package name */
    private final z f6199c;

    /* renamed from: d, reason: collision with root package name */
    private final f f6200d;

    /* renamed from: e, reason: collision with root package name */
    private final com.anythink.core.common.n.b.e f6201e;

    /* renamed from: f, reason: collision with root package name */
    private final r f6202f;

    /* renamed from: g, reason: collision with root package name */
    private final C1118a f6203g;

    /* renamed from: h, reason: collision with root package name */
    private Object f6204h;

    /* renamed from: i, reason: collision with root package name */
    private ad f6205i;

    /* renamed from: j, reason: collision with root package name */
    private d f6206j;

    /* renamed from: k, reason: collision with root package name */
    private c f6207k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f6208l;

    /* renamed from: m, reason: collision with root package name */
    private boolean f6209m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f6210n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f6211o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f6212p;

    public static final class a extends WeakReference<j> {

        /* renamed from: a, reason: collision with root package name */
        final Object f6214a;

        public a(j jVar, Object obj) {
            super(jVar);
            this.f6214a = obj;
        }
    }

    public j(z zVar, com.anythink.core.common.n.b.e eVar) {
        C1118a c1118a = new C1118a() { // from class: com.anythink.core.common.n.b.a.b.j.1
            @Override // com.anythink.core.common.n.c.C1118a
            public final void a() throws IOException {
                j.this.i();
            }
        };
        this.f6203g = c1118a;
        this.f6199c = zVar;
        this.f6200d = com.anythink.core.common.n.b.a.a.f6042a.a(zVar.m());
        this.f6201e = eVar;
        this.f6202f = zVar.s().a();
        c1118a.a(zVar.a(), TimeUnit.MILLISECONDS);
    }

    public final x a() {
        return this.f6203g;
    }

    public final void b() {
        this.f6203g.c();
    }

    public final void c() {
        if (this.f6211o) {
            throw new IllegalStateException();
        }
        this.f6211o = true;
        this.f6203g.d();
    }

    public final void d() {
        this.f6204h = com.anythink.core.common.n.b.a.g.c.e().a("response.body().close()");
    }

    public final Socket e() {
        if (!f6197b && !Thread.holdsLock(this.f6200d)) {
            throw new AssertionError();
        }
        int size = this.f6198a.f6161e.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            }
            if (this.f6198a.f6161e.get(i2).get() == this) {
                break;
            }
            i2++;
        }
        if (i2 == -1) {
            throw new IllegalStateException();
        }
        e eVar = this.f6198a;
        eVar.f6161e.remove(i2);
        this.f6198a = null;
        if (eVar.f6161e.isEmpty()) {
            eVar.f6162f = System.nanoTime();
            if (this.f6200d.b(eVar)) {
                return eVar.b();
            }
        }
        return null;
    }

    public final void f() {
        synchronized (this.f6200d) {
            try {
                if (this.f6212p) {
                    throw new IllegalStateException();
                }
                this.f6207k = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean g() {
        return this.f6206j.c() && this.f6206j.d();
    }

    public final boolean h() {
        boolean z2;
        synchronized (this.f6200d) {
            z2 = this.f6207k != null;
        }
        return z2;
    }

    public final void i() throws IOException {
        c cVar;
        e eVarA;
        synchronized (this.f6200d) {
            try {
                this.f6210n = true;
                cVar = this.f6207k;
                d dVar = this.f6206j;
                eVarA = (dVar == null || dVar.a() == null) ? this.f6198a : this.f6206j.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (cVar != null) {
            cVar.f6131e.e();
        } else if (eVarA != null) {
            eVarA.f();
        }
    }

    public final boolean j() {
        boolean z2;
        synchronized (this.f6200d) {
            z2 = this.f6210n;
        }
        return z2;
    }

    private IOException b(IOException iOException) {
        if (this.f6211o || !this.f6203g.d()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void a(ad adVar) throws IOException {
        SSLSocketFactory sSLSocketFactoryH;
        HostnameVerifier hostnameVerifierI;
        com.anythink.core.common.n.b.g gVarJ;
        ad adVar2 = this.f6205i;
        if (adVar2 != null) {
            if (com.anythink.core.common.n.b.a.c.a(adVar2.a(), adVar.a()) && this.f6206j.d()) {
                return;
            }
            if (this.f6207k != null) {
                throw new IllegalStateException();
            }
            if (this.f6206j != null) {
                a((IOException) null, true);
                this.f6206j = null;
            }
        }
        this.f6205i = adVar;
        f fVar = this.f6200d;
        v vVarA = adVar.a();
        if (vVarA.c()) {
            sSLSocketFactoryH = this.f6199c.h();
            hostnameVerifierI = this.f6199c.i();
            gVarJ = this.f6199c.j();
        } else {
            sSLSocketFactoryH = null;
            hostnameVerifierI = null;
            gVarJ = null;
        }
        this.f6206j = new d(this, fVar, new C1115a(vVarA.f(), vVarA.g(), this.f6199c.f(), this.f6199c.g(), sSLSocketFactoryH, hostnameVerifierI, gVarJ, this.f6199c.l(), this.f6199c.c(), this.f6199c.q(), this.f6199c.r(), this.f6199c.d()), this.f6201e, this.f6202f);
    }

    private C1115a a(v vVar) {
        SSLSocketFactory sSLSocketFactoryH;
        HostnameVerifier hostnameVerifierI;
        com.anythink.core.common.n.b.g gVarJ;
        if (vVar.c()) {
            sSLSocketFactoryH = this.f6199c.h();
            hostnameVerifierI = this.f6199c.i();
            gVarJ = this.f6199c.j();
        } else {
            sSLSocketFactoryH = null;
            hostnameVerifierI = null;
            gVarJ = null;
        }
        return new C1115a(vVar.f(), vVar.g(), this.f6199c.f(), this.f6199c.g(), sSLSocketFactoryH, hostnameVerifierI, gVarJ, this.f6199c.l(), this.f6199c.c(), this.f6199c.q(), this.f6199c.r(), this.f6199c.d());
    }

    public final c a(w.a aVar, boolean z2) throws Throwable {
        synchronized (this.f6200d) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!this.f6212p) {
                    if (this.f6207k == null) {
                        c cVar = new c(this, this.f6201e, this.f6202f, this.f6206j, this.f6206j.a(this.f6199c, aVar, z2));
                        synchronized (this.f6200d) {
                            this.f6207k = cVar;
                            this.f6208l = false;
                            this.f6209m = false;
                        }
                        return cVar;
                    }
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                }
                throw new IllegalStateException("released");
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    public final void a(e eVar) {
        if (!f6197b && !Thread.holdsLock(this.f6200d)) {
            throw new AssertionError();
        }
        if (this.f6198a == null) {
            this.f6198a = eVar;
            eVar.f6161e.add(new a(this, this.f6204h));
            return;
        }
        throw new IllegalStateException();
    }

    public final IOException a(c cVar, boolean z2, boolean z3, IOException iOException) {
        boolean z4;
        synchronized (this.f6200d) {
            try {
                c cVar2 = this.f6207k;
                if (cVar != cVar2) {
                    return iOException;
                }
                boolean z5 = true;
                if (z2) {
                    z4 = !this.f6208l;
                    this.f6208l = true;
                } else {
                    z4 = false;
                }
                if (z3) {
                    if (!this.f6209m) {
                        z4 = true;
                    }
                    this.f6209m = true;
                }
                if (this.f6208l && this.f6209m && z4) {
                    cVar2.a().f6160d++;
                    this.f6207k = null;
                } else {
                    z5 = false;
                }
                return z5 ? a(iOException, false) : iOException;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final IOException a(IOException iOException) {
        synchronized (this.f6200d) {
            this.f6212p = true;
        }
        return a(iOException, false);
    }

    private IOException a(IOException iOException, boolean z2) throws IOException {
        Socket socketE;
        boolean z3;
        synchronized (this.f6200d) {
            if (z2) {
                try {
                    if (this.f6207k != null) {
                        throw new IllegalStateException("cannot release connection while it is in use");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            socketE = (this.f6198a != null && this.f6207k == null && (z2 || this.f6212p)) ? e() : null;
            z3 = this.f6212p && this.f6207k == null;
        }
        com.anythink.core.common.n.b.a.c.a(socketE);
        if (!z3 || this.f6211o || !this.f6203g.d()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }
}
