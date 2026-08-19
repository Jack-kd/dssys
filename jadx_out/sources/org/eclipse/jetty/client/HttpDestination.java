package org.eclipse.jetty.client;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import org.eclipse.jetty.client.g;
import org.eclipse.jetty.client.k;
import org.eclipse.jetty.http.PathMap;

/* loaded from: classes5.dex */
public class HttpDestination implements org.eclipse.jetty.util.component.e {

    /* renamed from: s, reason: collision with root package name */
    public static final R1.c f52038s = R1.b.a(HttpDestination.class);

    /* renamed from: f, reason: collision with root package name */
    public final g f52043f;

    /* renamed from: g, reason: collision with root package name */
    public final b f52044g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f52045h;

    /* renamed from: i, reason: collision with root package name */
    public final U1.b f52046i;

    /* renamed from: j, reason: collision with root package name */
    public final L1.h f52047j;

    /* renamed from: k, reason: collision with root package name */
    public volatile int f52048k;

    /* renamed from: l, reason: collision with root package name */
    public volatile int f52049l;

    /* renamed from: o, reason: collision with root package name */
    public volatile b f52052o;

    /* renamed from: p, reason: collision with root package name */
    public J1.a f52053p;

    /* renamed from: q, reason: collision with root package name */
    public PathMap f52054q;

    /* renamed from: r, reason: collision with root package name */
    public List f52055r;

    /* renamed from: b, reason: collision with root package name */
    public final List f52039b = new LinkedList();

    /* renamed from: c, reason: collision with root package name */
    public final List f52040c = new LinkedList();

    /* renamed from: d, reason: collision with root package name */
    public final BlockingQueue f52041d = new ArrayBlockingQueue(10, true);

    /* renamed from: e, reason: collision with root package name */
    public final List f52042e = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public int f52050m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f52051n = 0;

    public class a extends f {

        /* renamed from: a, reason: collision with root package name */
        public final k.c f52056a;

        public a(b bVar, k.c cVar) {
            this.f52056a = cVar;
            setMethod("CONNECT");
            String string = bVar.toString();
            setRequestURI(string);
            addRequestHeader("Host", string);
            addRequestHeader("Proxy-Connection", "keep-alive");
            addRequestHeader("User-Agent", "Jetty-Client");
        }

        @Override // org.eclipse.jetty.client.j
        public void onConnectionFailed(Throwable th) throws InterruptedException {
            HttpDestination.this.o(th);
        }

        @Override // org.eclipse.jetty.client.j
        public void onException(Throwable th) {
            j jVar;
            synchronized (HttpDestination.this) {
                try {
                    jVar = !HttpDestination.this.f52039b.isEmpty() ? (j) HttpDestination.this.f52039b.remove(0) : null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (jVar == null || !jVar.setStatus(9)) {
                return;
            }
            jVar.getEventListener().d(th);
        }

        @Override // org.eclipse.jetty.client.j
        public void onExpire() {
            j jVar;
            synchronized (HttpDestination.this) {
                try {
                    jVar = !HttpDestination.this.f52039b.isEmpty() ? (j) HttpDestination.this.f52039b.remove(0) : null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (jVar == null || !jVar.setStatus(8)) {
                return;
            }
            jVar.getEventListener().f();
        }

        @Override // org.eclipse.jetty.client.j
        public void onResponseComplete() {
            int responseStatus = getResponseStatus();
            if (responseStatus == 200) {
                this.f52056a.u();
                return;
            }
            if (responseStatus == 504) {
                onExpire();
                return;
            }
            onException(new ProtocolException("Proxy: " + this.f52056a.p() + ":" + this.f52056a.getRemotePort() + " didn't return http return code 200, but " + responseStatus));
        }
    }

    public HttpDestination(g gVar, b bVar, boolean z2, U1.b bVar2) {
        this.f52043f = gVar;
        this.f52044g = bVar;
        this.f52045h = z2;
        this.f52046i = bVar2;
        this.f52048k = gVar.h0();
        this.f52049l = gVar.i0();
        String strA = bVar.a();
        if (bVar.b() != (z2 ? 443 : 80)) {
            strA = strA + ":" + bVar.b();
        }
        this.f52047j = new L1.h(strA);
    }

    public void b() {
        synchronized (this) {
            try {
                Iterator it = this.f52040c.iterator();
                while (it.hasNext()) {
                    ((org.eclipse.jetty.client.a) it.next()).k();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(j jVar) {
        boolean z2;
        J1.a aVar;
        synchronized (this) {
            try {
                List<org.eclipse.jetty.http.f> list = this.f52055r;
                if (list != null) {
                    StringBuilder sb = null;
                    for (org.eclipse.jetty.http.f fVar : list) {
                        if (sb == null) {
                            sb = new StringBuilder();
                        } else {
                            sb.append("; ");
                        }
                        sb.append(fVar.d());
                        sb.append("=");
                        sb.append(fVar.f());
                    }
                    if (sb != null) {
                        jVar.addRequestHeader(com.sigmob.sdk.base.e.f36239a, sb.toString());
                    }
                }
            } finally {
            }
        }
        PathMap pathMap = this.f52054q;
        if (pathMap != null && (aVar = (J1.a) pathMap.match(jVar.getRequestURI())) != null) {
            aVar.a(jVar);
        }
        jVar.scheduleTimeout(this);
        org.eclipse.jetty.client.a aVarH = h();
        if (aVarH != null) {
            u(aVarH, jVar);
            return;
        }
        synchronized (this) {
            if (this.f52039b.size() == this.f52049l) {
                throw new RejectedExecutionException("Queue full for address " + this.f52044g);
            }
            this.f52039b.add(jVar);
            z2 = this.f52040c.size() + this.f52050m < this.f52048k;
        }
        if (z2) {
            y();
        }
    }

    public void d(j jVar) {
        synchronized (this) {
            this.f52039b.remove(jVar);
        }
    }

    public b e() {
        return this.f52044g;
    }

    public L1.d f() {
        return this.f52047j;
    }

    public g g() {
        return this.f52043f;
    }

    public org.eclipse.jetty.client.a h() {
        org.eclipse.jetty.client.a aVar = null;
        do {
            synchronized (this) {
                if (aVar != null) {
                    try {
                        this.f52040c.remove(aVar);
                        aVar.k();
                        aVar = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (this.f52042e.size() > 0) {
                    aVar = (org.eclipse.jetty.client.a) this.f52042e.remove(r1.size() - 1);
                }
            }
            if (aVar == null) {
                return null;
            }
        } while (!aVar.j());
        return aVar;
    }

    public b i() {
        return this.f52052o;
    }

    public J1.a j() {
        return this.f52053p;
    }

    public U1.b k() {
        return this.f52046i;
    }

    public boolean l() {
        return this.f52052o != null;
    }

    @Override // org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) {
        synchronized (this) {
            appendable.append(String.valueOf(this));
            appendable.append("idle=");
            appendable.append(String.valueOf(this.f52042e.size()));
            appendable.append(" pending=");
            appendable.append(String.valueOf(this.f52050m));
            appendable.append("\n");
            org.eclipse.jetty.util.component.b.S(appendable, str, this.f52040c);
        }
    }

    public boolean n() {
        return this.f52045h;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void o(java.lang.Throwable r6) throws java.lang.InterruptedException {
        /*
            r5 = this;
            monitor-enter(r5)
            int r0 = r5.f52050m     // Catch: java.lang.Throwable -> L11
            r1 = 1
            int r0 = r0 - r1
            r5.f52050m = r0     // Catch: java.lang.Throwable -> L11
            int r0 = r5.f52051n     // Catch: java.lang.Throwable -> L11
            r2 = 0
            if (r0 <= 0) goto L13
            int r0 = r0 - r1
            r5.f52051n = r0     // Catch: java.lang.Throwable -> L11
            r1 = r2
            goto L47
        L11:
            r6 = move-exception
            goto L5c
        L13:
            java.util.List r0 = r5.f52039b     // Catch: java.lang.Throwable -> L11
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L11
            r3 = 0
            if (r0 <= 0) goto L45
            java.util.List r0 = r5.f52039b     // Catch: java.lang.Throwable -> L11
            java.lang.Object r0 = r0.remove(r2)     // Catch: java.lang.Throwable -> L11
            org.eclipse.jetty.client.j r0 = (org.eclipse.jetty.client.j) r0     // Catch: java.lang.Throwable -> L11
            r4 = 9
            boolean r4 = r0.setStatus(r4)     // Catch: java.lang.Throwable -> L11
            if (r4 == 0) goto L33
            org.eclipse.jetty.client.h r0 = r0.getEventListener()     // Catch: java.lang.Throwable -> L11
            r0.a(r6)     // Catch: java.lang.Throwable -> L11
        L33:
            java.util.List r6 = r5.f52039b     // Catch: java.lang.Throwable -> L11
            boolean r6 = r6.isEmpty()     // Catch: java.lang.Throwable -> L11
            if (r6 != 0) goto L45
            org.eclipse.jetty.client.g r6 = r5.f52043f     // Catch: java.lang.Throwable -> L11
            boolean r6 = r6.isStarted()     // Catch: java.lang.Throwable -> L11
            if (r6 == 0) goto L45
        L43:
            r6 = r3
            goto L47
        L45:
            r1 = r2
            goto L43
        L47:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L11
            if (r1 == 0) goto L4d
            r5.y()
        L4d:
            if (r6 == 0) goto L5b
            java.util.concurrent.BlockingQueue r0 = r5.f52041d     // Catch: java.lang.InterruptedException -> L55
            r0.put(r6)     // Catch: java.lang.InterruptedException -> L55
            return
        L55:
            r6 = move-exception
            R1.c r0 = org.eclipse.jetty.client.HttpDestination.f52038s
            r0.h(r6)
        L5b:
            return
        L5c:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L11
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.HttpDestination.o(java.lang.Throwable):void");
    }

    public void p(Throwable th) {
        synchronized (this) {
            try {
                this.f52050m--;
                if (this.f52039b.size() > 0) {
                    j jVar = (j) this.f52039b.remove(0);
                    if (jVar.setStatus(9)) {
                        jVar.getEventListener().d(th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void q(org.eclipse.jetty.client.a aVar) throws InterruptedException {
        synchronized (this) {
            try {
                this.f52050m--;
                this.f52040c.add(aVar);
                int i2 = this.f52051n;
                if (i2 > 0) {
                    this.f52051n = i2 - 1;
                } else {
                    L1.k kVarE = aVar.e();
                    if (l() && (kVarE instanceof k.c)) {
                        a aVar2 = new a(e(), (k.c) kVarE);
                        aVar2.setAddress(i());
                        f52038s.i("Establishing tunnel to {} via {}", e(), i());
                        u(aVar, aVar2);
                    } else if (this.f52039b.size() == 0) {
                        f52038s.i("No exchanges for new connection {}", aVar);
                        aVar.s();
                        this.f52042e.add(aVar);
                    } else {
                        u(aVar, (j) this.f52039b.remove(0));
                    }
                    aVar = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (aVar != null) {
            try {
                this.f52041d.put(aVar);
            } catch (InterruptedException e2) {
                f52038s.h(e2);
            }
        }
    }

    public void r(j jVar) {
        jVar.getEventListener().b();
        jVar.reset();
        c(jVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(org.eclipse.jetty.client.a r5, boolean r6) {
        /*
            r4 = this;
            boolean r0 = r5.o()
            r1 = 0
            if (r0 == 0) goto La
            r5.t(r1)
        La:
            if (r6 == 0) goto L16
            r5.k()     // Catch: java.io.IOException -> L10
            goto L16
        L10:
            r0 = move-exception
            R1.c r2 = org.eclipse.jetty.client.HttpDestination.f52038s
            r2.h(r0)
        L16:
            org.eclipse.jetty.client.g r0 = r4.f52043f
            boolean r0 = r0.isStarted()
            if (r0 != 0) goto L20
            goto La1
        L20:
            if (r6 != 0) goto L52
            L1.k r6 = r5.e()
            boolean r6 = r6.isOpen()
            if (r6 == 0) goto L52
            monitor-enter(r4)
            java.util.List r6 = r4.f52039b     // Catch: java.lang.Throwable -> L3e
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L3e
            if (r6 != 0) goto L40
            r5.s()     // Catch: java.lang.Throwable -> L3e
            java.util.List r6 = r4.f52042e     // Catch: java.lang.Throwable -> L3e
            r6.add(r5)     // Catch: java.lang.Throwable -> L3e
            goto L4b
        L3e:
            r5 = move-exception
            goto L50
        L40:
            java.util.List r6 = r4.f52039b     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r6 = r6.remove(r1)     // Catch: java.lang.Throwable -> L3e
            org.eclipse.jetty.client.j r6 = (org.eclipse.jetty.client.j) r6     // Catch: java.lang.Throwable -> L3e
            r4.u(r5, r6)     // Catch: java.lang.Throwable -> L3e
        L4b:
            r4.notifyAll()     // Catch: java.lang.Throwable -> L3e
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3e
            goto La1
        L50:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3e
            throw r5
        L52:
            monitor-enter(r4)
            java.util.List r6 = r4.f52040c     // Catch: java.lang.Throwable -> L74
            r6.remove(r5)     // Catch: java.lang.Throwable -> L74
            java.util.List r5 = r4.f52039b     // Catch: java.lang.Throwable -> L74
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L74
            r6 = 1
            if (r5 == 0) goto L87
            org.eclipse.jetty.client.g r5 = r4.f52043f     // Catch: java.lang.Throwable -> L74
            boolean r5 = r5.q0()     // Catch: java.lang.Throwable -> L74
            if (r5 == 0) goto L93
            java.util.List r5 = r4.f52055r     // Catch: java.lang.Throwable -> L74
            if (r5 == 0) goto L76
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r5 == 0) goto L93
            goto L76
        L74:
            r5 = move-exception
            goto La2
        L76:
            java.util.List r5 = r4.f52040c     // Catch: java.lang.Throwable -> L74
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r5 == 0) goto L93
            java.util.List r5 = r4.f52042e     // Catch: java.lang.Throwable -> L74
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r5 == 0) goto L93
            goto L94
        L87:
            org.eclipse.jetty.client.g r5 = r4.f52043f     // Catch: java.lang.Throwable -> L74
            boolean r5 = r5.isStarted()     // Catch: java.lang.Throwable -> L74
            if (r5 == 0) goto L93
            r3 = r1
            r1 = r6
            r6 = r3
            goto L94
        L93:
            r6 = r1
        L94:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L9a
            r4.y()
        L9a:
            if (r6 == 0) goto La1
            org.eclipse.jetty.client.g r5 = r4.f52043f
            r5.s0(r4)
        La1:
            return
        La2:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L74
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.HttpDestination.s(org.eclipse.jetty.client.a, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void t(org.eclipse.jetty.client.a r4) {
        /*
            r3 = this;
            L1.k r0 = r4.e()
            if (r0 == 0) goto L10
            L1.k r0 = r4.e()
            int r0 = r0.b()
            long r0 = (long) r0
            goto L12
        L10:
            r0 = -1
        L12:
            r4.a(r0)
            monitor-enter(r3)
            java.util.List r0 = r3.f52042e     // Catch: java.lang.Throwable -> L3d
            r0.remove(r4)     // Catch: java.lang.Throwable -> L3d
            java.util.List r0 = r3.f52040c     // Catch: java.lang.Throwable -> L3d
            r0.remove(r4)     // Catch: java.lang.Throwable -> L3d
            java.util.List r4 = r3.f52039b     // Catch: java.lang.Throwable -> L3d
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L3d
            r0 = 1
            r1 = 0
            if (r4 == 0) goto L55
            org.eclipse.jetty.client.g r4 = r3.f52043f     // Catch: java.lang.Throwable -> L3d
            boolean r4 = r4.q0()     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L50
            java.util.List r4 = r3.f52055r     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L3f
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L50
            goto L3f
        L3d:
            r4 = move-exception
            goto L6d
        L3f:
            java.util.List r4 = r3.f52040c     // Catch: java.lang.Throwable -> L3d
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L50
            java.util.List r4 = r3.f52042e     // Catch: java.lang.Throwable -> L3d
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L50
            goto L51
        L50:
            r0 = r1
        L51:
            r2 = r1
            r1 = r0
            r0 = r2
            goto L5f
        L55:
            org.eclipse.jetty.client.g r4 = r3.f52043f     // Catch: java.lang.Throwable -> L3d
            boolean r4 = r4.isStarted()     // Catch: java.lang.Throwable -> L3d
            if (r4 == 0) goto L5e
            goto L5f
        L5e:
            r0 = r1
        L5f:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3d
            if (r0 == 0) goto L65
            r3.y()
        L65:
            if (r1 == 0) goto L6c
            org.eclipse.jetty.client.g r4 = r3.f52043f
            r4.s0(r3)
        L6c:
            return
        L6d:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L3d
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.HttpDestination.t(org.eclipse.jetty.client.a):void");
    }

    public synchronized String toString() {
        return String.format("HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n", Integer.valueOf(hashCode()), this.f52044g.a(), Integer.valueOf(this.f52044g.b()), Integer.valueOf(this.f52040c.size()), Integer.valueOf(this.f52048k), Integer.valueOf(this.f52042e.size()), Integer.valueOf(this.f52039b.size()), Integer.valueOf(this.f52049l));
    }

    public void u(org.eclipse.jetty.client.a aVar, j jVar) {
        synchronized (this) {
            try {
                if (!aVar.q(jVar)) {
                    if (jVar.getStatus() <= 1) {
                        this.f52039b.add(0, jVar);
                    }
                    t(aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void v(j jVar) throws IOException {
        jVar.setStatus(1);
        LinkedList linkedListK0 = this.f52043f.k0();
        if (linkedListK0 != null) {
            for (int size = linkedListK0.size(); size > 0; size--) {
                String str = (String) linkedListK0.get(size - 1);
                try {
                    jVar.setEventListener((h) Class.forName(str).getDeclaredConstructor(HttpDestination.class, j.class).newInstance(this, jVar));
                } catch (Exception e2) {
                    throw new IOException("Unable to instantiate registered listener for destination: " + str, e2) { // from class: org.eclipse.jetty.client.HttpDestination.1
                        final /* synthetic */ Exception val$e;

                        {
                            this.val$e = e2;
                            initCause(e2);
                        }
                    };
                }
            }
        }
        if (this.f52043f.o0()) {
            jVar.setEventListener(new J1.c(this, jVar));
        }
        c(jVar);
    }

    public void w(b bVar) {
        this.f52052o = bVar;
    }

    public void x(J1.a aVar) {
        this.f52053p = aVar;
    }

    public void y() {
        try {
            synchronized (this) {
                this.f52050m++;
            }
            g.b bVar = this.f52043f.f52094m;
            if (bVar != null) {
                bVar.t(this);
            }
        } catch (Exception e2) {
            f52038s.a(e2);
            o(e2);
        }
    }
}
