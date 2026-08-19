package com.anythink.core.common.n.b.a.b;

import androidx.core.location.LocationRequestCompat;
import com.anythink.core.common.n.b.C1115a;
import com.anythink.core.common.n.b.a.e.f;
import com.anythink.core.common.n.b.a.k.a;
import com.anythink.core.common.n.b.aa;
import com.anythink.core.common.n.b.ab;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.ae;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.ah;
import com.anythink.core.common.n.b.l;
import com.anythink.core.common.n.b.t;
import com.anythink.core.common.n.b.v;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.b.z;
import com.anythink.core.common.n.c.n;
import com.anythink.core.common.n.c.x;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public final class e extends f.c implements com.anythink.core.common.n.b.j {

    /* renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f6154g = true;

    /* renamed from: i, reason: collision with root package name */
    private static final String f6155i = "throw with null exception";

    /* renamed from: j, reason: collision with root package name */
    private static final int f6156j = 21;

    /* renamed from: a, reason: collision with root package name */
    public final f f6157a;

    /* renamed from: b, reason: collision with root package name */
    boolean f6158b;

    /* renamed from: c, reason: collision with root package name */
    int f6159c;

    /* renamed from: d, reason: collision with root package name */
    int f6160d;

    /* renamed from: k, reason: collision with root package name */
    private final ah f6163k;

    /* renamed from: l, reason: collision with root package name */
    private Socket f6164l;

    /* renamed from: m, reason: collision with root package name */
    private Socket f6165m;

    /* renamed from: n, reason: collision with root package name */
    private t f6166n;

    /* renamed from: o, reason: collision with root package name */
    private ab f6167o;

    /* renamed from: p, reason: collision with root package name */
    private com.anythink.core.common.n.b.a.e.f f6168p;

    /* renamed from: q, reason: collision with root package name */
    private com.anythink.core.common.n.c.e f6169q;

    /* renamed from: r, reason: collision with root package name */
    private com.anythink.core.common.n.c.d f6170r;

    /* renamed from: s, reason: collision with root package name */
    private int f6171s;

    /* renamed from: t, reason: collision with root package name */
    private int f6172t = 1;

    /* renamed from: e, reason: collision with root package name */
    final List<Reference<j>> f6161e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    long f6162f = LocationRequestCompat.PASSIVE_INTERVAL;

    public e(f fVar, ah ahVar) {
        this.f6157a = fVar;
        this.f6163k = ahVar;
    }

    private static e a(f fVar, ah ahVar, Socket socket, long j2) {
        e eVar = new e(fVar, ahVar);
        eVar.f6165m = socket;
        eVar.f6162f = j2;
        return eVar;
    }

    private ad h() {
        ad adVarB = new ad.a().a(this.f6163k.a().a()).a("CONNECT", (ae) null).a("Host", com.anythink.core.common.n.b.a.c.a(this.f6163k.a().a(), true)).a("Proxy-Connection", "Keep-Alive").b();
        new af.a().a(adVarB).a(ab.HTTP_1_1).a(407).a("Preemptive Authenticate").a(com.anythink.core.common.n.b.a.c.f6218d).a(-1L).b(-1L).a("Proxy-Authenticate", aa.f6658a + "-Preemptive").a();
        ad adVarA = this.f6163k.a().d().a();
        return adVarA != null ? adVarA : adVarB;
    }

    @Override // com.anythink.core.common.n.b.j
    public final Socket b() {
        return this.f6165m;
    }

    @Override // com.anythink.core.common.n.b.j
    public final t c() {
        return this.f6166n;
    }

    @Override // com.anythink.core.common.n.b.j
    public final ab d() {
        return this.f6167o;
    }

    public final void e() {
        if (!f6154g && Thread.holdsLock(this.f6157a)) {
            throw new AssertionError();
        }
        synchronized (this.f6157a) {
            this.f6158b = true;
        }
    }

    public final void f() throws IOException {
        com.anythink.core.common.n.b.a.c.a(this.f6164l);
    }

    public final boolean g() {
        return this.f6168p != null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.f6163k.a().a().f());
        sb.append(":");
        sb.append(this.f6163k.a().a().g());
        sb.append(", proxy=");
        sb.append(this.f6163k.b());
        sb.append(" hostAddress=");
        sb.append(this.f6163k.c());
        sb.append(" cipherSuite=");
        t tVar = this.f6166n;
        sb.append(tVar != null ? tVar.b() : com.baidu.mobads.sdk.internal.a.f10877a);
        sb.append(" protocol=");
        sb.append(this.f6167o);
        sb.append('}');
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r6, int r7, int r8, int r9, boolean r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.b.e.a(int, int, int, int, boolean):void");
    }

    private void a(int i2, int i3) throws IOException {
        Socket socketCreateSocket;
        Proxy proxyB = this.f6163k.b();
        C1115a c1115aA = this.f6163k.a();
        if (proxyB.type() != Proxy.Type.DIRECT && proxyB.type() != Proxy.Type.HTTP) {
            socketCreateSocket = new Socket(proxyB);
        } else {
            socketCreateSocket = c1115aA.c().createSocket();
        }
        this.f6164l = socketCreateSocket;
        this.f6163k.c();
        this.f6164l.setSoTimeout(i3);
        try {
            com.anythink.core.common.n.b.a.g.c.e().a(this.f6164l, this.f6163k.c(), i2);
            try {
                this.f6169q = n.a(n.b(this.f6164l));
                this.f6170r = n.a(n.a(this.f6164l));
            } catch (NullPointerException e2) {
                if (f6155i.equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f6163k.c());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void a(b bVar, int i2) throws Throwable {
        if (this.f6163k.a().i() == null) {
            List<ab> listE = this.f6163k.a().e();
            ab abVar = ab.H2_PRIOR_KNOWLEDGE;
            if (listE.contains(abVar)) {
                this.f6165m = this.f6164l;
                this.f6167o = abVar;
                a(i2);
                return;
            } else {
                this.f6165m = this.f6164l;
                this.f6167o = ab.HTTP_1_1;
                return;
            }
        }
        a(bVar);
        if (this.f6167o == ab.HTTP_2) {
            a(i2);
        }
    }

    private void a(int i2) throws SocketException {
        this.f6165m.setSoTimeout(0);
        com.anythink.core.common.n.b.a.e.f fVarA = new f.a().a(this.f6165m, this.f6163k.a().a().f(), this.f6169q, this.f6170r).a(this).a(i2).a();
        this.f6168p = fVarA;
        fVarA.b();
    }

    private void a(b bVar) throws Throwable {
        SSLSocket sSLSocket;
        ab abVarA;
        C1115a c1115aA = this.f6163k.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) c1115aA.i().createSocket(this.f6164l, c1115aA.a().f(), c1115aA.a().g(), true);
            } catch (Throwable th) {
                th = th;
            }
        } catch (AssertionError e2) {
            e = e2;
        }
        try {
            l lVarA = bVar.a(sSLSocket);
            if (lVarA.a()) {
                com.anythink.core.common.n.b.a.g.c.e().a(sSLSocket, c1115aA.a().f(), c1115aA.e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            t tVarA = t.a(session);
            if (!c1115aA.j().verify(c1115aA.a().f(), session)) {
                List<Certificate> listC = tVarA.c();
                if (!listC.isEmpty()) {
                    X509Certificate x509Certificate = (X509Certificate) listC.get(0);
                    throw new SSLPeerUnverifiedException("Hostname " + c1115aA.a().f() + " not verified:\n    certificate: " + com.anythink.core.common.n.b.g.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.anythink.core.common.n.b.a.j.e.a(x509Certificate));
                }
                throw new SSLPeerUnverifiedException("Hostname " + c1115aA.a().f() + " not verified (no certificates)");
            }
            c1115aA.k().a(c1115aA.a().f(), tVarA.c());
            String strA = lVarA.a() ? com.anythink.core.common.n.b.a.g.c.e().a(sSLSocket) : null;
            this.f6165m = sSLSocket;
            this.f6169q = n.a(n.b(sSLSocket));
            this.f6170r = n.a(n.a(this.f6165m));
            this.f6166n = tVarA;
            if (strA != null) {
                abVarA = ab.a(strA);
            } else {
                abVarA = ab.HTTP_1_1;
            }
            this.f6167o = abVarA;
            com.anythink.core.common.n.b.a.g.c.e();
        } catch (AssertionError e3) {
            e = e3;
            if (!com.anythink.core.common.n.b.a.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                com.anythink.core.common.n.b.a.g.c.e();
            }
            com.anythink.core.common.n.b.a.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    private ad a(int i2, int i3, ad adVar, v vVar) throws IOException {
        String str = "CONNECT " + com.anythink.core.common.n.b.a.c.a(vVar, true) + " HTTP/1.1";
        while (true) {
            com.anythink.core.common.n.b.a.d.a aVar = new com.anythink.core.common.n.b.a.d.a(null, null, this.f6169q, this.f6170r);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f6169q.a().a(i2, timeUnit);
            this.f6170r.a().a(i3, timeUnit);
            aVar.a(adVar.c(), str);
            aVar.c();
            af afVarA = aVar.a(false).a(adVar).a();
            aVar.c(afVarA);
            int iC = afVarA.c();
            if (iC == 200) {
                if (this.f6169q.d().g() && this.f6170r.c().g()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iC == 407) {
                ad adVarA = this.f6163k.a().d().a();
                if (adVarA != null) {
                    if ("close".equalsIgnoreCase(afVarA.a("Connection"))) {
                        return adVarA;
                    }
                    adVar = adVarA;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + afVarA.c());
            }
        }
    }

    public final boolean a(C1115a c1115a, List<ah> list) {
        if (this.f6161e.size() >= this.f6172t || this.f6158b || !com.anythink.core.common.n.b.a.a.f6042a.a(this.f6163k.a(), c1115a)) {
            return false;
        }
        if (c1115a.a().f().equals(this.f6163k.a().a().f())) {
            return true;
        }
        if (this.f6168p != null && list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                ah ahVar = list.get(i2);
                Proxy.Type type = ahVar.b().type();
                Proxy.Type type2 = Proxy.Type.DIRECT;
                if (type == type2 && this.f6163k.b().type() == type2 && this.f6163k.c().equals(ahVar.c())) {
                    if (c1115a.j() != com.anythink.core.common.n.b.a.j.e.f6566a || !a(c1115a.a())) {
                        return false;
                    }
                    try {
                        c1115a.k().a(c1115a.a().f(), this.f6166n.c());
                        return true;
                    } catch (SSLPeerUnverifiedException unused) {
                        return false;
                    }
                }
            }
        }
        return false;
    }

    private boolean a(List<ah> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ah ahVar = list.get(i2);
            Proxy.Type type = ahVar.b().type();
            Proxy.Type type2 = Proxy.Type.DIRECT;
            if (type == type2 && this.f6163k.b().type() == type2 && this.f6163k.c().equals(ahVar.c())) {
                return true;
            }
        }
        return false;
    }

    public final boolean a(v vVar) {
        if (vVar.g() != this.f6163k.a().a().g()) {
            return false;
        }
        if (vVar.f().equals(this.f6163k.a().a().f())) {
            return true;
        }
        if (this.f6166n != null) {
            com.anythink.core.common.n.b.a.j.e eVar = com.anythink.core.common.n.b.a.j.e.f6566a;
            if (com.anythink.core.common.n.b.a.j.e.a(vVar.f(), (X509Certificate) this.f6166n.c().get(0))) {
                return true;
            }
        }
        return false;
    }

    public final com.anythink.core.common.n.b.a.c.c a(z zVar, w.a aVar) throws SocketException {
        if (this.f6168p != null) {
            return new com.anythink.core.common.n.b.a.e.g(zVar, this, aVar, this.f6168p);
        }
        this.f6165m.setSoTimeout(aVar.e());
        x xVarA = this.f6169q.a();
        long jE = aVar.e();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        xVarA.a(jE, timeUnit);
        this.f6170r.a().a(aVar.f(), timeUnit);
        return new com.anythink.core.common.n.b.a.d.a(zVar, this, this.f6169q, this.f6170r);
    }

    public final a.e a(final c cVar) throws SocketException {
        this.f6165m.setSoTimeout(0);
        e();
        return new a.e(this.f6169q, this.f6170r) { // from class: com.anythink.core.common.n.b.a.b.e.1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                cVar.a(true, true, null);
            }
        };
    }

    @Override // com.anythink.core.common.n.b.j
    public final ah a() {
        return this.f6163k;
    }

    public final boolean a(boolean z2) throws SocketException {
        if (this.f6165m.isClosed() || this.f6165m.isInputShutdown() || this.f6165m.isOutputShutdown()) {
            return false;
        }
        com.anythink.core.common.n.b.a.e.f fVar = this.f6168p;
        if (fVar != null) {
            return fVar.b(System.nanoTime());
        }
        if (z2) {
            try {
                int soTimeout = this.f6165m.getSoTimeout();
                try {
                    this.f6165m.setSoTimeout(1);
                    return !this.f6169q.g();
                } finally {
                    this.f6165m.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.anythink.core.common.n.b.a.e.f.c
    public final void a(com.anythink.core.common.n.b.a.e.i iVar) {
        iVar.a(com.anythink.core.common.n.b.a.e.b.REFUSED_STREAM, (IOException) null);
    }

    @Override // com.anythink.core.common.n.b.a.e.f.c
    public final void a(com.anythink.core.common.n.b.a.e.f fVar) {
        synchronized (this.f6157a) {
            this.f6172t = fVar.a();
        }
    }

    public final void a(IOException iOException) {
        if (!f6154g && Thread.holdsLock(this.f6157a)) {
            throw new AssertionError();
        }
        synchronized (this.f6157a) {
            try {
                if (iOException instanceof com.anythink.core.common.n.b.a.e.n) {
                    com.anythink.core.common.n.b.a.e.b bVar = ((com.anythink.core.common.n.b.a.e.n) iOException).f6525a;
                    if (bVar == com.anythink.core.common.n.b.a.e.b.REFUSED_STREAM) {
                        int i2 = this.f6171s + 1;
                        this.f6171s = i2;
                        if (i2 > 1) {
                            this.f6158b = true;
                            this.f6159c++;
                        }
                    } else if (bVar != com.anythink.core.common.n.b.a.e.b.CANCEL) {
                        this.f6158b = true;
                        this.f6159c++;
                    }
                } else if (!g() || (iOException instanceof com.anythink.core.common.n.b.a.e.a)) {
                    this.f6158b = true;
                    if (this.f6160d == 0) {
                        if (iOException != null) {
                            f fVar = this.f6157a;
                            ah ahVar = this.f6163k;
                            if (ahVar.b().type() != Proxy.Type.DIRECT) {
                                C1115a c1115aA = ahVar.a();
                                c1115aA.g().connectFailed(c1115aA.a().a(), ahVar.b().address(), iOException);
                            }
                            fVar.f6177a.a(ahVar);
                        }
                        this.f6159c++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void a(int i2, int i3, int i4) throws IOException {
        ad adVarB = new ad.a().a(this.f6163k.a().a()).a("CONNECT", (ae) null).a("Host", com.anythink.core.common.n.b.a.c.a(this.f6163k.a().a(), true)).a("Proxy-Connection", "Keep-Alive").b();
        new af.a().a(adVarB).a(ab.HTTP_1_1).a(407).a("Preemptive Authenticate").a(com.anythink.core.common.n.b.a.c.f6218d).a(-1L).b(-1L).a("Proxy-Authenticate", aa.f6658a + "-Preemptive").a();
        ad adVarA = this.f6163k.a().d().a();
        if (adVarA != null) {
            adVarB = adVarA;
        }
        v vVarA = adVarB.a();
        for (int i5 = 0; i5 < 21; i5++) {
            a(i2, i3);
            adVarB = a(i3, i4, adVarB, vVarA);
            if (adVarB == null) {
                return;
            }
            com.anythink.core.common.n.b.a.c.a(this.f6164l);
            this.f6164l = null;
            this.f6170r = null;
            this.f6169q = null;
            this.f6163k.c();
            this.f6163k.b();
        }
    }
}
