package org.eclipse.jetty.client;

import W1.e;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.http.m;
import org.eclipse.jetty.io.Buffers;

/* loaded from: classes5.dex */
public class g extends org.eclipse.jetty.util.component.b implements org.eclipse.jetty.http.d, org.eclipse.jetty.util.b, org.eclipse.jetty.util.component.e {

    /* renamed from: A, reason: collision with root package name */
    public final org.eclipse.jetty.http.e f52085A;

    /* renamed from: e, reason: collision with root package name */
    public int f52086e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f52087f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f52088g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f52089h;

    /* renamed from: i, reason: collision with root package name */
    public int f52090i;

    /* renamed from: j, reason: collision with root package name */
    public int f52091j;

    /* renamed from: k, reason: collision with root package name */
    public ConcurrentMap f52092k;

    /* renamed from: l, reason: collision with root package name */
    public W1.d f52093l;

    /* renamed from: m, reason: collision with root package name */
    public b f52094m;

    /* renamed from: n, reason: collision with root package name */
    public long f52095n;

    /* renamed from: o, reason: collision with root package name */
    public long f52096o;

    /* renamed from: p, reason: collision with root package name */
    public int f52097p;

    /* renamed from: q, reason: collision with root package name */
    public W1.e f52098q;

    /* renamed from: r, reason: collision with root package name */
    public W1.e f52099r;

    /* renamed from: s, reason: collision with root package name */
    public org.eclipse.jetty.client.b f52100s;

    /* renamed from: t, reason: collision with root package name */
    public J1.a f52101t;

    /* renamed from: u, reason: collision with root package name */
    public Set f52102u;

    /* renamed from: v, reason: collision with root package name */
    public int f52103v;

    /* renamed from: w, reason: collision with root package name */
    public int f52104w;

    /* renamed from: x, reason: collision with root package name */
    public LinkedList f52105x;

    /* renamed from: y, reason: collision with root package name */
    public final U1.b f52106y;

    /* renamed from: z, reason: collision with root package name */
    public org.eclipse.jetty.util.c f52107z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            while (g.this.isRunning()) {
                g.this.f52098q.m(System.currentTimeMillis());
                g.this.f52099r.m(g.this.f52098q.e());
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public interface b extends org.eclipse.jetty.util.component.f {
        void t(HttpDestination httpDestination);
    }

    public static class c extends W1.b {
        public c() {
        }

        public /* synthetic */ c(a aVar) {
            this();
        }
    }

    public g() {
        this(new U1.b());
    }

    public void A0(W1.d dVar) {
        Z(this.f52093l);
        this.f52093l = dVar;
        P(dVar);
    }

    public void B0(long j2) {
        this.f52096o = j2;
    }

    @Override // org.eclipse.jetty.http.d
    public Buffers H() {
        return this.f52085A.H();
    }

    public void c0(e.a aVar) {
        aVar.c();
    }

    public int d0() {
        return this.f52097p;
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        x0();
        this.f52098q.i(this.f52096o);
        this.f52098q.j();
        this.f52099r.i(this.f52095n);
        this.f52099r.j();
        if (this.f52093l == null) {
            c cVar = new c(null);
            cVar.e0(16);
            cVar.d0(true);
            cVar.f0("HttpClient");
            this.f52093l = cVar;
            Q(cVar, true);
        }
        b kVar = this.f52086e == 2 ? new k(this) : new l(this);
        this.f52094m = kVar;
        Q(kVar, true);
        super.doStart();
        this.f52093l.dispatch(new a());
    }

    @Override // org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() {
        Iterator it = this.f52092k.values().iterator();
        while (it.hasNext()) {
            ((HttpDestination) it.next()).b();
        }
        this.f52098q.b();
        this.f52099r.b();
        super.doStop();
        W1.d dVar = this.f52093l;
        if (dVar instanceof c) {
            Z(dVar);
            this.f52093l = null;
        }
        Z(this.f52094m);
    }

    public HttpDestination e0(org.eclipse.jetty.client.b bVar, boolean z2) {
        return f0(bVar, z2, l0());
    }

    public HttpDestination f0(org.eclipse.jetty.client.b bVar, boolean z2, U1.b bVar2) throws UnknownHostException {
        Set set;
        if (bVar == null) {
            throw new UnknownHostException("Remote socket address cannot be null.");
        }
        HttpDestination httpDestination = (HttpDestination) this.f52092k.get(bVar);
        if (httpDestination == null) {
            httpDestination = new HttpDestination(this, bVar, z2, bVar2);
            if (this.f52100s != null && ((set = this.f52102u) == null || !set.contains(bVar.a()))) {
                httpDestination.w(this.f52100s);
                J1.a aVar = this.f52101t;
                if (aVar != null) {
                    httpDestination.x(aVar);
                }
            }
            HttpDestination httpDestination2 = (HttpDestination) this.f52092k.putIfAbsent(bVar, httpDestination);
            if (httpDestination2 != null) {
                return httpDestination2;
            }
        }
        return httpDestination;
    }

    public long g0() {
        return this.f52095n;
    }

    @Override // org.eclipse.jetty.util.b
    public Object getAttribute(String str) {
        return this.f52107z.getAttribute(str);
    }

    public int h0() {
        return this.f52090i;
    }

    public int i0() {
        return this.f52091j;
    }

    public J1.b j0() {
        return null;
    }

    @Override // org.eclipse.jetty.util.b
    public void k() {
        this.f52107z.k();
    }

    public LinkedList k0() {
        return this.f52105x;
    }

    public U1.b l0() {
        return this.f52106y;
    }

    public W1.d m0() {
        return this.f52093l;
    }

    public long n0() {
        return this.f52096o;
    }

    public boolean o0() {
        return false;
    }

    public boolean p0() {
        return this.f52088g;
    }

    public boolean q0() {
        return this.f52089h;
    }

    public int r0() {
        return this.f52103v;
    }

    public void s0(HttpDestination httpDestination) {
        this.f52092k.remove(httpDestination.e(), httpDestination);
    }

    @Override // org.eclipse.jetty.util.b
    public void setAttribute(String str, Object obj) {
        this.f52107z.setAttribute(str, obj);
    }

    public void t0(e.a aVar) {
        this.f52098q.g(aVar);
    }

    public void u0(e.a aVar, long j2) {
        W1.e eVar = this.f52098q;
        eVar.h(aVar, j2 - eVar.d());
    }

    public void v0(e.a aVar) {
        this.f52099r.g(aVar);
    }

    public void w0(j jVar) throws IOException {
        e0(jVar.getAddress(), m.f52331b.A0(jVar.getScheme())).v(jVar);
    }

    public final void x0() {
        if (this.f52086e == 0) {
            org.eclipse.jetty.http.e eVar = this.f52085A;
            Buffers.Type type = Buffers.Type.BYTE_ARRAY;
            eVar.Q(type);
            this.f52085A.R(type);
            this.f52085A.S(type);
            this.f52085A.T(type);
            return;
        }
        org.eclipse.jetty.http.e eVar2 = this.f52085A;
        Buffers.Type type2 = Buffers.Type.DIRECT;
        eVar2.Q(type2);
        this.f52085A.R(this.f52087f ? type2 : Buffers.Type.INDIRECT);
        this.f52085A.S(type2);
        org.eclipse.jetty.http.e eVar3 = this.f52085A;
        if (!this.f52087f) {
            type2 = Buffers.Type.INDIRECT;
        }
        eVar3.T(type2);
    }

    public void y0(int i2) {
        this.f52097p = i2;
    }

    @Override // org.eclipse.jetty.http.d
    public Buffers z() {
        return this.f52085A.z();
    }

    public void z0(int i2) {
        this.f52103v = i2;
    }

    public g(U1.b bVar) {
        this.f52086e = 2;
        this.f52087f = true;
        this.f52088g = true;
        this.f52089h = false;
        this.f52090i = Integer.MAX_VALUE;
        this.f52091j = Integer.MAX_VALUE;
        this.f52092k = new ConcurrentHashMap();
        this.f52095n = 20000L;
        this.f52096o = 320000L;
        this.f52097p = 75000;
        this.f52098q = new W1.e();
        this.f52099r = new W1.e();
        this.f52103v = 3;
        this.f52104w = 20;
        this.f52107z = new org.eclipse.jetty.util.c();
        org.eclipse.jetty.http.e eVar = new org.eclipse.jetty.http.e();
        this.f52085A = eVar;
        this.f52106y = bVar;
        P(bVar);
        P(eVar);
    }
}
