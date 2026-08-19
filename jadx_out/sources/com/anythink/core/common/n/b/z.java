package com.anythink.core.common.n.b;

import android.os.Build;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.aj;
import com.anythink.core.common.n.b.e;
import com.anythink.core.common.n.b.l;
import com.anythink.core.common.n.b.r;
import com.anythink.core.common.n.b.u;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes2.dex */
public class z implements aj.a, e.a, Cloneable {

    /* renamed from: a, reason: collision with root package name */
    static final List<ab> f6986a = com.anythink.core.common.n.b.a.c.a(ab.HTTP_2, ab.HTTP_1_1);

    /* renamed from: b, reason: collision with root package name */
    static final List<l> f6987b = com.anythink.core.common.n.b.a.c.a(l.f6871b, l.f6873d);

    /* renamed from: A, reason: collision with root package name */
    final int f6988A;

    /* renamed from: B, reason: collision with root package name */
    final int f6989B;

    /* renamed from: C, reason: collision with root package name */
    final int f6990C;

    /* renamed from: D, reason: collision with root package name */
    final int f6991D;

    /* renamed from: c, reason: collision with root package name */
    final p f6992c;

    /* renamed from: d, reason: collision with root package name */
    final Proxy f6993d;

    /* renamed from: e, reason: collision with root package name */
    final List<ab> f6994e;

    /* renamed from: f, reason: collision with root package name */
    final List<l> f6995f;

    /* renamed from: g, reason: collision with root package name */
    final List<w> f6996g;

    /* renamed from: h, reason: collision with root package name */
    final List<w> f6997h;

    /* renamed from: i, reason: collision with root package name */
    final r.a f6998i;

    /* renamed from: j, reason: collision with root package name */
    final ProxySelector f6999j;

    /* renamed from: k, reason: collision with root package name */
    final n f7000k;

    /* renamed from: l, reason: collision with root package name */
    final C1117c f7001l;

    /* renamed from: m, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.a.f f7002m;

    /* renamed from: n, reason: collision with root package name */
    final SocketFactory f7003n;

    /* renamed from: o, reason: collision with root package name */
    final SSLSocketFactory f7004o;

    /* renamed from: p, reason: collision with root package name */
    final com.anythink.core.common.n.b.a.j.c f7005p;

    /* renamed from: q, reason: collision with root package name */
    final HostnameVerifier f7006q;

    /* renamed from: r, reason: collision with root package name */
    final g f7007r;

    /* renamed from: s, reason: collision with root package name */
    final InterfaceC1116b f7008s;

    /* renamed from: t, reason: collision with root package name */
    final InterfaceC1116b f7009t;

    /* renamed from: u, reason: collision with root package name */
    final k f7010u;

    /* renamed from: v, reason: collision with root package name */
    final q f7011v;

    /* renamed from: w, reason: collision with root package name */
    final boolean f7012w;

    /* renamed from: x, reason: collision with root package name */
    final boolean f7013x;

    /* renamed from: y, reason: collision with root package name */
    final boolean f7014y;

    /* renamed from: z, reason: collision with root package name */
    final int f7015z;

    public static final class a {

        /* renamed from: A, reason: collision with root package name */
        int f7016A;

        /* renamed from: B, reason: collision with root package name */
        int f7017B;

        /* renamed from: a, reason: collision with root package name */
        p f7018a;

        /* renamed from: b, reason: collision with root package name */
        Proxy f7019b;

        /* renamed from: c, reason: collision with root package name */
        List<ab> f7020c;

        /* renamed from: d, reason: collision with root package name */
        List<l> f7021d;

        /* renamed from: e, reason: collision with root package name */
        final List<w> f7022e;

        /* renamed from: f, reason: collision with root package name */
        final List<w> f7023f;

        /* renamed from: g, reason: collision with root package name */
        r.a f7024g;

        /* renamed from: h, reason: collision with root package name */
        ProxySelector f7025h;

        /* renamed from: i, reason: collision with root package name */
        n f7026i;

        /* renamed from: j, reason: collision with root package name */
        C1117c f7027j;

        /* renamed from: k, reason: collision with root package name */
        com.anythink.core.common.n.b.a.a.f f7028k;

        /* renamed from: l, reason: collision with root package name */
        SocketFactory f7029l;

        /* renamed from: m, reason: collision with root package name */
        SSLSocketFactory f7030m;

        /* renamed from: n, reason: collision with root package name */
        com.anythink.core.common.n.b.a.j.c f7031n;

        /* renamed from: o, reason: collision with root package name */
        HostnameVerifier f7032o;

        /* renamed from: p, reason: collision with root package name */
        g f7033p;

        /* renamed from: q, reason: collision with root package name */
        InterfaceC1116b f7034q;

        /* renamed from: r, reason: collision with root package name */
        InterfaceC1116b f7035r;

        /* renamed from: s, reason: collision with root package name */
        k f7036s;

        /* renamed from: t, reason: collision with root package name */
        q f7037t;

        /* renamed from: u, reason: collision with root package name */
        boolean f7038u;

        /* renamed from: v, reason: collision with root package name */
        boolean f7039v;

        /* renamed from: w, reason: collision with root package name */
        boolean f7040w;

        /* renamed from: x, reason: collision with root package name */
        int f7041x;

        /* renamed from: y, reason: collision with root package name */
        int f7042y;

        /* renamed from: z, reason: collision with root package name */
        int f7043z;

        public a() {
            this.f7022e = new ArrayList();
            this.f7023f = new ArrayList();
            this.f7018a = new p();
            this.f7020c = z.f6986a;
            this.f7021d = z.f6987b;
            this.f7024g = r.a(r.f6916a);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.f7025h = proxySelector;
            if (proxySelector == null) {
                this.f7025h = new com.anythink.core.common.n.b.a.h.a();
            }
            this.f7026i = n.f6906a;
            this.f7029l = SocketFactory.getDefault();
            this.f7032o = com.anythink.core.common.n.b.a.j.e.f6566a;
            this.f7033p = g.f6806a;
            InterfaceC1116b interfaceC1116b = InterfaceC1116b.f6740a;
            this.f7034q = interfaceC1116b;
            this.f7035r = interfaceC1116b;
            this.f7036s = new k();
            this.f7037t = q.f6915a;
            this.f7038u = true;
            this.f7039v = true;
            this.f7040w = true;
            this.f7041x = 0;
            this.f7042y = 10000;
            this.f7043z = 10000;
            this.f7016A = 10000;
            this.f7017B = 0;
        }

        private a a(Duration duration) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f7041x = com.anythink.core.common.n.b.a.c.a("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            }
            return this;
        }

        private a b(Duration duration) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f7042y = com.anythink.core.common.n.b.a.c.a("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            }
            return this;
        }

        private a c(Duration duration) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f7043z = com.anythink.core.common.n.b.a.c.a("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            }
            return this;
        }

        private a d(long j2, TimeUnit timeUnit) {
            this.f7041x = com.anythink.core.common.n.b.a.c.a("timeout", j2, timeUnit);
            return this;
        }

        private a e(long j2, TimeUnit timeUnit) {
            this.f7017B = com.anythink.core.common.n.b.a.c.a("interval", j2, timeUnit);
            return this;
        }

        private a d(Duration duration) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f7016A = com.anythink.core.common.n.b.a.c.a("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            }
            return this;
        }

        private a e(Duration duration) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f7017B = com.anythink.core.common.n.b.a.c.a("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            }
            return this;
        }

        public final a a(long j2, TimeUnit timeUnit) {
            this.f7042y = com.anythink.core.common.n.b.a.c.a("timeout", j2, timeUnit);
            return this;
        }

        public final a b(long j2, TimeUnit timeUnit) {
            this.f7043z = com.anythink.core.common.n.b.a.c.a("timeout", j2, timeUnit);
            return this;
        }

        public final a c(long j2, TimeUnit timeUnit) {
            this.f7016A = com.anythink.core.common.n.b.a.c.a("timeout", j2, timeUnit);
            return this;
        }

        private a a(Proxy proxy) {
            this.f7019b = proxy;
            return this;
        }

        private a b(InterfaceC1116b interfaceC1116b) {
            if (interfaceC1116b != null) {
                this.f7034q = interfaceC1116b;
                return this;
            }
            throw new NullPointerException("proxyAuthenticator == null");
        }

        private a c(boolean z2) {
            this.f7040w = z2;
            return this;
        }

        private a a(ProxySelector proxySelector) {
            if (proxySelector != null) {
                this.f7025h = proxySelector;
                return this;
            }
            throw new NullPointerException("proxySelector == null");
        }

        private List<w> c() {
            return this.f7023f;
        }

        private a b(boolean z2) {
            this.f7039v = z2;
            return this;
        }

        private a a(n nVar) {
            if (nVar != null) {
                this.f7026i = nVar;
                return this;
            }
            throw new NullPointerException("cookieJar == null");
        }

        private a b(List<l> list) {
            this.f7021d = com.anythink.core.common.n.b.a.c.a(list);
            return this;
        }

        private List<w> b() {
            return this.f7022e;
        }

        private a a(C1117c c1117c) {
            this.f7027j = c1117c;
            this.f7028k = null;
            return this;
        }

        private a b(w wVar) {
            if (wVar != null) {
                this.f7023f.add(wVar);
                return this;
            }
            throw new IllegalArgumentException("interceptor == null");
        }

        public final a a(q qVar) {
            this.f7037t = qVar;
            return this;
        }

        private a a(SocketFactory socketFactory) {
            if (socketFactory != null) {
                if (!(socketFactory instanceof SSLSocketFactory)) {
                    this.f7029l = socketFactory;
                    return this;
                }
                throw new IllegalArgumentException("socketFactory instanceof SSLSocketFactory");
            }
            throw new NullPointerException("socketFactory == null");
        }

        private a a(SSLSocketFactory sSLSocketFactory) {
            if (sSLSocketFactory != null) {
                this.f7030m = sSLSocketFactory;
                this.f7031n = com.anythink.core.common.n.b.a.g.c.e().b(sSLSocketFactory);
                return this;
            }
            throw new NullPointerException("sslSocketFactory == null");
        }

        private a a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            if (sSLSocketFactory == null) {
                throw new NullPointerException("sslSocketFactory == null");
            }
            if (x509TrustManager != null) {
                this.f7030m = sSLSocketFactory;
                this.f7031n = com.anythink.core.common.n.b.a.g.c.e().a(x509TrustManager);
                return this;
            }
            throw new NullPointerException("trustManager == null");
        }

        private a a(HostnameVerifier hostnameVerifier) {
            if (hostnameVerifier != null) {
                this.f7032o = hostnameVerifier;
                return this;
            }
            throw new NullPointerException("hostnameVerifier == null");
        }

        public a(z zVar) {
            ArrayList arrayList = new ArrayList();
            this.f7022e = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.f7023f = arrayList2;
            this.f7018a = zVar.f6992c;
            this.f7019b = zVar.f6993d;
            this.f7020c = zVar.f6994e;
            this.f7021d = zVar.f6995f;
            arrayList.addAll(zVar.f6996g);
            arrayList2.addAll(zVar.f6997h);
            this.f7024g = zVar.f6998i;
            this.f7025h = zVar.f6999j;
            this.f7026i = zVar.f7000k;
            this.f7028k = zVar.f7002m;
            this.f7027j = zVar.f7001l;
            this.f7029l = zVar.f7003n;
            this.f7030m = zVar.f7004o;
            this.f7031n = zVar.f7005p;
            this.f7032o = zVar.f7006q;
            this.f7033p = zVar.f7007r;
            this.f7034q = zVar.f7008s;
            this.f7035r = zVar.f7009t;
            this.f7036s = zVar.f7010u;
            this.f7037t = zVar.f7011v;
            this.f7038u = zVar.f7012w;
            this.f7039v = zVar.f7013x;
            this.f7040w = zVar.f7014y;
            this.f7041x = zVar.f7015z;
            this.f7042y = zVar.f6988A;
            this.f7043z = zVar.f6989B;
            this.f7016A = zVar.f6990C;
            this.f7017B = zVar.f6991D;
        }

        private a a(g gVar) {
            if (gVar != null) {
                this.f7033p = gVar;
                return this;
            }
            throw new NullPointerException("certificatePinner == null");
        }

        private a a(InterfaceC1116b interfaceC1116b) {
            if (interfaceC1116b != null) {
                this.f7035r = interfaceC1116b;
                return this;
            }
            throw new NullPointerException("authenticator == null");
        }

        public final a a(k kVar) {
            if (kVar != null) {
                this.f7036s = kVar;
                return this;
            }
            throw new NullPointerException("connectionPool == null");
        }

        private a a(boolean z2) {
            this.f7038u = z2;
            return this;
        }

        public final a a(p pVar) {
            this.f7018a = pVar;
            return this;
        }

        public final a a(List<ab> list) {
            ArrayList arrayList = new ArrayList(list);
            ab abVar = ab.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(abVar) && !arrayList.contains(ab.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols must contain h2_prior_knowledge or http/1.1: ".concat(String.valueOf(arrayList)));
            }
            if (arrayList.contains(abVar) && arrayList.size() > 1) {
                throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: ".concat(String.valueOf(arrayList)));
            }
            if (!arrayList.contains(ab.HTTP_1_0)) {
                if (!arrayList.contains(null)) {
                    arrayList.remove(ab.SPDY_3);
                    this.f7020c = Collections.unmodifiableList(arrayList);
                    return this;
                }
                throw new IllegalArgumentException("protocols must not contain null");
            }
            throw new IllegalArgumentException("protocols must not contain http/1.0: ".concat(String.valueOf(arrayList)));
        }

        private a a(w wVar) {
            if (wVar != null) {
                this.f7022e.add(wVar);
                return this;
            }
            throw new IllegalArgumentException("interceptor == null");
        }

        public final a a(r rVar) {
            if (rVar != null) {
                this.f7024g = r.a(rVar);
                return this;
            }
            throw new NullPointerException("eventListener == null");
        }

        private a a(r.a aVar) {
            if (aVar != null) {
                this.f7024g = aVar;
                return this;
            }
            throw new NullPointerException("eventListenerFactory == null");
        }

        public final z a() {
            return new z(this);
        }
    }

    static {
        com.anythink.core.common.n.b.a.a.f6042a = new com.anythink.core.common.n.b.a.a() { // from class: com.anythink.core.common.n.b.z.1
            @Override // com.anythink.core.common.n.b.a.a
            public final void a(u.a aVar, String str) {
                aVar.a(str);
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final void a(u.a aVar, String str, String str2) {
                aVar.c(str, str2);
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final com.anythink.core.common.n.b.a.b.f a(k kVar) {
                return kVar.f6869a;
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final boolean a(C1115a c1115a, C1115a c1115a2) {
                return c1115a.a(c1115a2);
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final int a(af.a aVar) {
                return aVar.f6711c;
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final e a(z zVar, ad adVar) {
                return ac.a(zVar, adVar, true);
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final com.anythink.core.common.n.b.a.b.c a(af afVar) {
                return afVar.f6707m;
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final void a(l lVar, SSLSocket sSLSocket, boolean z2) {
                String[] enabledCipherSuites;
                String[] enabledProtocols;
                if (lVar.f6878g != null) {
                    enabledCipherSuites = com.anythink.core.common.n.b.a.c.a(i.f6843a, sSLSocket.getEnabledCipherSuites(), lVar.f6878g);
                } else {
                    enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
                }
                if (lVar.f6879h != null) {
                    enabledProtocols = com.anythink.core.common.n.b.a.c.a(com.anythink.core.common.n.b.a.c.f6221g, sSLSocket.getEnabledProtocols(), lVar.f6879h);
                } else {
                    enabledProtocols = sSLSocket.getEnabledProtocols();
                }
                String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
                int iA = com.anythink.core.common.n.b.a.c.a(i.f6843a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
                if (z2 && iA != -1) {
                    enabledCipherSuites = com.anythink.core.common.n.b.a.c.a(enabledCipherSuites, supportedCipherSuites[iA]);
                }
                l lVarB = new l.a(lVar).a(enabledCipherSuites).b(enabledProtocols).b();
                String[] strArr = lVarB.f6879h;
                if (strArr != null) {
                    sSLSocket.setEnabledProtocols(strArr);
                }
                String[] strArr2 = lVarB.f6878g;
                if (strArr2 != null) {
                    sSLSocket.setEnabledCipherSuites(strArr2);
                }
            }

            @Override // com.anythink.core.common.n.b.a.a
            public final void a(af.a aVar, com.anythink.core.common.n.b.a.b.c cVar) {
                aVar.f6721m = cVar;
            }
        };
    }

    public z() {
        this(new a());
    }

    private List<w> A() {
        return this.f6996g;
    }

    private List<w> B() {
        return this.f6997h;
    }

    private static SSLSocketFactory a(X509TrustManager x509TrustManager) throws KeyManagementException {
        try {
            SSLContext sSLContextC = com.anythink.core.common.n.b.a.g.c.e().c();
            sSLContextC.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContextC.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw new AssertionError("No System TLS", e2);
        }
    }

    private int u() {
        return this.f6988A;
    }

    private int v() {
        return this.f6989B;
    }

    private int w() {
        return this.f6990C;
    }

    private C1117c x() {
        return this.f7001l;
    }

    private com.anythink.core.common.n.b.a.a.f y() {
        C1117c c1117c = this.f7001l;
        return c1117c != null ? c1117c.f6745a : this.f7002m;
    }

    private p z() {
        return this.f6992c;
    }

    public final int b() {
        return this.f6991D;
    }

    public final Proxy c() {
        return this.f6993d;
    }

    public final ProxySelector d() {
        return this.f6999j;
    }

    public final n e() {
        return this.f7000k;
    }

    public final q f() {
        return this.f7011v;
    }

    public final SocketFactory g() {
        return this.f7003n;
    }

    public final SSLSocketFactory h() {
        return this.f7004o;
    }

    public final HostnameVerifier i() {
        return this.f7006q;
    }

    public final g j() {
        return this.f7007r;
    }

    public final InterfaceC1116b k() {
        return this.f7009t;
    }

    public final InterfaceC1116b l() {
        return this.f7008s;
    }

    public final k m() {
        return this.f7010u;
    }

    public final boolean n() {
        return this.f7012w;
    }

    public final boolean o() {
        return this.f7013x;
    }

    public final boolean p() {
        return this.f7014y;
    }

    public final List<ab> q() {
        return this.f6994e;
    }

    public final List<l> r() {
        return this.f6995f;
    }

    public final r.a s() {
        return this.f6998i;
    }

    public final a t() {
        return new a(this);
    }

    public z(a aVar) throws NoSuchAlgorithmException, KeyStoreException {
        boolean z2;
        this.f6992c = aVar.f7018a;
        this.f6993d = aVar.f7019b;
        this.f6994e = aVar.f7020c;
        List<l> list = aVar.f7021d;
        this.f6995f = list;
        this.f6996g = com.anythink.core.common.n.b.a.c.a(aVar.f7022e);
        this.f6997h = com.anythink.core.common.n.b.a.c.a(aVar.f7023f);
        this.f6998i = aVar.f7024g;
        this.f6999j = aVar.f7025h;
        this.f7000k = aVar.f7026i;
        this.f7001l = aVar.f7027j;
        this.f7002m = aVar.f7028k;
        this.f7003n = aVar.f7029l;
        Iterator<l> it = list.iterator();
        loop0: while (true) {
            z2 = false;
            while (it.hasNext()) {
                z2 = (z2 || it.next().f6876e) ? true : z2;
            }
        }
        SSLSocketFactory sSLSocketFactory = aVar.f7030m;
        if (sSLSocketFactory == null && z2) {
            X509TrustManager x509TrustManagerA = com.anythink.core.common.n.b.a.c.a();
            this.f7004o = a(x509TrustManagerA);
            this.f7005p = com.anythink.core.common.n.b.a.g.c.e().a(x509TrustManagerA);
        } else {
            this.f7004o = sSLSocketFactory;
            this.f7005p = aVar.f7031n;
        }
        if (this.f7004o != null) {
            com.anythink.core.common.n.b.a.g.c.e();
        }
        this.f7006q = aVar.f7032o;
        this.f7007r = aVar.f7033p.a(this.f7005p);
        this.f7008s = aVar.f7034q;
        this.f7009t = aVar.f7035r;
        this.f7010u = aVar.f7036s;
        this.f7011v = aVar.f7037t;
        this.f7012w = aVar.f7038u;
        this.f7013x = aVar.f7039v;
        this.f7014y = aVar.f7040w;
        this.f7015z = aVar.f7041x;
        this.f6988A = aVar.f7042y;
        this.f6989B = aVar.f7043z;
        this.f6990C = aVar.f7016A;
        this.f6991D = aVar.f7017B;
        if (this.f6996g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f6996g);
        }
        if (this.f6997h.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f6997h);
        }
    }

    public final int a() {
        return this.f7015z;
    }

    @Override // com.anythink.core.common.n.b.e.a
    public final e a(ad adVar) {
        return ac.a(this, adVar, false);
    }

    @Override // com.anythink.core.common.n.b.aj.a
    public final aj a(ad adVar, ak akVar) {
        com.anythink.core.common.n.b.a.k.a aVar = new com.anythink.core.common.n.b.a.k.a(adVar, akVar, new Random(), this.f6991D);
        aVar.a(this);
        return aVar;
    }
}
