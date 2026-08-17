package com.anythink.core.common.n.b;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
final class ac implements e {

    /* renamed from: a, reason: collision with root package name */
    final z f6667a;

    /* renamed from: b, reason: collision with root package name */
    final ad f6668b;

    /* renamed from: c, reason: collision with root package name */
    final boolean f6669c;

    /* renamed from: d, reason: collision with root package name */
    private com.anythink.core.common.n.b.a.b.j f6670d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f6671e;

    public final class a extends com.anythink.core.common.n.b.a.b {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f6672a = true;

        /* renamed from: d, reason: collision with root package name */
        private final f f6674d;

        /* renamed from: e, reason: collision with root package name */
        private volatile AtomicInteger f6675e;

        public a(f fVar) {
            super("%s %s", aa.f6658a, ac.this.i());
            this.f6675e = new AtomicInteger(0);
            this.f6674d = fVar;
        }

        private ad d() {
            return ac.this.f6668b;
        }

        private ac e() {
            return ac.this;
        }

        public final AtomicInteger a() {
            return this.f6675e;
        }

        public final String b() {
            return ac.this.f6668b.f6676a.f6943m;
        }

        @Override // com.anythink.core.common.n.b.a.b
        public final void c() {
            boolean z2;
            Throwable th;
            IOException e2;
            p pVar;
            ac.this.f6670d.b();
            try {
                try {
                    z2 = true;
                    try {
                        this.f6674d.a(ac.this.j());
                        pVar = ac.this.f6667a.f6992c;
                    } catch (IOException e3) {
                        e2 = e3;
                        if (z2) {
                            com.anythink.core.common.n.b.a.g.c.e().a(4, "Callback failure for " + ac.this.h(), e2);
                        } else {
                            this.f6674d.a(e2);
                        }
                        pVar = ac.this.f6667a.f6992c;
                        pVar.b(this);
                    } catch (Throwable th2) {
                        th = th2;
                        ac.this.c();
                        if (!z2) {
                            IOException iOException = new IOException("canceled due to ".concat(String.valueOf(th)));
                            iOException.addSuppressed(th);
                            this.f6674d.a(iOException);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    ac.this.f6667a.f6992c.b(this);
                    throw th3;
                }
            } catch (IOException e4) {
                z2 = false;
                e2 = e4;
            } catch (Throwable th4) {
                z2 = false;
                th = th4;
            }
            pVar.b(this);
        }

        public final void a(a aVar) {
            this.f6675e = aVar.f6675e;
        }

        public final void a(ExecutorService executorService) {
            if (!f6672a && Thread.holdsLock(ac.this.f6667a.f6992c)) {
                throw new AssertionError();
            }
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e2) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e2);
                    ac.this.f6670d.a(interruptedIOException);
                    this.f6674d.a(interruptedIOException);
                    ac.this.f6667a.f6992c.b(this);
                }
            } catch (Throwable th) {
                ac.this.f6667a.f6992c.b(this);
                throw th;
            }
        }
    }

    private ac(z zVar, ad adVar, boolean z2) {
        this.f6667a = zVar;
        this.f6668b = adVar;
        this.f6669c = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.anythink.core.common.n.b.e
    /* renamed from: k, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public ac g() {
        return a(this.f6667a, this.f6668b, this.f6669c);
    }

    @Override // com.anythink.core.common.n.b.e
    public final af b() {
        synchronized (this) {
            if (this.f6671e) {
                throw new IllegalStateException("Already Executed");
            }
            this.f6671e = true;
        }
        this.f6670d.b();
        this.f6670d.d();
        try {
            this.f6667a.f6992c.a(this);
            return j();
        } finally {
            this.f6667a.f6992c.b(this);
        }
    }

    @Override // com.anythink.core.common.n.b.e
    public final void c() throws IOException {
        this.f6670d.i();
    }

    @Override // com.anythink.core.common.n.b.e
    public final synchronized boolean d() {
        return this.f6671e;
    }

    @Override // com.anythink.core.common.n.b.e
    public final boolean e() {
        return this.f6670d.j();
    }

    @Override // com.anythink.core.common.n.b.e
    public final com.anythink.core.common.n.c.x f() {
        return this.f6670d.a();
    }

    public final String h() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6670d.j() ? "canceled " : "");
        sb.append(this.f6669c ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(i());
        return sb.toString();
    }

    public final String i() {
        return this.f6668b.f6676a.l();
    }

    public final af j() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f6667a.f6996g);
        arrayList.add(new com.anythink.core.common.n.b.a.c.j(this.f6667a));
        arrayList.add(new com.anythink.core.common.n.b.a.c.a(this.f6667a.f7000k));
        z zVar = this.f6667a;
        C1117c c1117c = zVar.f7001l;
        arrayList.add(new com.anythink.core.common.n.b.a.a.a(c1117c != null ? c1117c.f6745a : zVar.f7002m));
        arrayList.add(new com.anythink.core.common.n.b.a.b.a(this.f6667a));
        if (!this.f6669c) {
            arrayList.addAll(this.f6667a.f6997h);
        }
        arrayList.add(new com.anythink.core.common.n.b.a.c.b(this.f6669c));
        com.anythink.core.common.n.b.a.b.j jVar = this.f6670d;
        ad adVar = this.f6668b;
        z zVar2 = this.f6667a;
        try {
            try {
                af afVarA = new com.anythink.core.common.n.b.a.c.g(arrayList, jVar, null, 0, adVar, this, zVar2.f6988A, zVar2.f6989B, zVar2.f6990C).a(this.f6668b);
                if (this.f6670d.j()) {
                    com.anythink.core.common.n.b.a.c.a(afVarA);
                    throw new IOException("Canceled");
                }
                this.f6670d.a((IOException) null);
                return afVarA;
            } catch (IOException e2) {
                throw this.f6670d.a(e2);
            }
        } catch (Throwable th) {
            if (0 == 0) {
                this.f6670d.a((IOException) null);
            }
            throw th;
        }
    }

    public static ac a(z zVar, ad adVar, boolean z2) {
        ac acVar = new ac(zVar, adVar, z2);
        acVar.f6670d = new com.anythink.core.common.n.b.a.b.j(zVar, acVar);
        return acVar;
    }

    @Override // com.anythink.core.common.n.b.e
    public final ad a() {
        return this.f6668b;
    }

    @Override // com.anythink.core.common.n.b.e
    public final void a(f fVar) {
        synchronized (this) {
            if (!this.f6671e) {
                this.f6671e = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        this.f6670d.d();
        this.f6667a.f6992c.a(new a(fVar));
    }
}
