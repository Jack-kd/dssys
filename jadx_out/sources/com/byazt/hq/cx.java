package com.byazt.hq;

import android.os.Bundle;
import com.byazt.hq.hq;
import com.byazt.hq.u;
import com.byazt.hq.vv;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

@com.byazt.kj.hp(hp = {0, 1, 158, 301})
/* loaded from: classes2.dex */
public class cx implements Cloneable {
    public static final List<b> hp = com.byazt.ru.jx.hp(b.HTTP_2, b.HTTP_1_1);

    /* renamed from: l, reason: collision with root package name */
    public static final List<gu> f20781l = com.byazt.ru.jx.hp(gu.hp, gu.jx);

    /* renamed from: a, reason: collision with root package name */
    public final List<gu> f20782a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f20783b;
    public final boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public final int f20784d;
    public final boolean di;

    /* renamed from: e, reason: collision with root package name */
    public final ProxySelector f20785e;
    public final List<sz> eb;
    public final l ec;
    public final zy gu;
    public final int hq;

    /* renamed from: j, reason: collision with root package name */
    public final Proxy f20786j;
    public final jx jl;
    public final k jx;

    /* renamed from: k, reason: collision with root package name */
    public final SocketFactory f20787k;

    /* renamed from: n, reason: collision with root package name */
    public final e f20788n;
    public final v ns;

    /* renamed from: o, reason: collision with root package name */
    public final int f20789o;

    /* renamed from: q, reason: collision with root package name */
    public final u.hp f20790q;

    /* renamed from: s, reason: collision with root package name */
    public final List<sz> f20791s;
    public final l sz;

    /* renamed from: u, reason: collision with root package name */
    public final com.byazt.cmb.jx f20792u;
    public Set<String> ud;

    /* renamed from: v, reason: collision with root package name */
    public final SSLSocketFactory f20793v;
    public final eb vv;

    /* renamed from: w, reason: collision with root package name */
    public final List<b> f20794w;
    public final int wv;
    public final HostnameVerifier xs;
    public final com.byazt.sv.a zy;

    @com.byazt.kj.hp(hp = {0, 1, 158, 2111})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public final List<sz> f20795a;

        /* renamed from: b, reason: collision with root package name */
        public int f20796b;
        public boolean cx;

        /* renamed from: d, reason: collision with root package name */
        public int f20797d;
        public int di;
        public TimeUnit dy;

        /* renamed from: e, reason: collision with root package name */
        public jx f20798e;
        public u.hp eb;
        public e ec;
        public com.byazt.sv.a gu;
        public k hp;
        public Set<String> hq;

        /* renamed from: j, reason: collision with root package name */
        public List<gu> f20799j;
        public SocketFactory jl;
        public List<b> jx;

        /* renamed from: k, reason: collision with root package name */
        public com.byazt.cmb.jx f20800k;

        /* renamed from: l, reason: collision with root package name */
        public Proxy f20801l;

        /* renamed from: n, reason: collision with root package name */
        public boolean f20802n;
        public boolean ns;
        public TimeUnit nu;

        /* renamed from: o, reason: collision with root package name */
        public int f20803o;

        /* renamed from: q, reason: collision with root package name */
        public zy f20804q;

        /* renamed from: s, reason: collision with root package name */
        public ProxySelector f20805s;
        public v sz;

        /* renamed from: u, reason: collision with root package name */
        public eb f20806u;
        public TimeUnit ud;

        /* renamed from: v, reason: collision with root package name */
        public HostnameVerifier f20807v;
        public l vv;

        /* renamed from: w, reason: collision with root package name */
        public final List<sz> f20808w;
        public Bundle wv;
        public l xs;
        public SSLSocketFactory zy;

        public hp() {
            this("");
        }

        public hp hp(sz szVar) {
            if (szVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.f20808w.add(szVar);
            return this;
        }

        public hp(String str) {
            this.f20808w = new ArrayList();
            this.f20795a = new ArrayList();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.ud = timeUnit;
            this.nu = timeUnit;
            this.dy = timeUnit;
            this.hp = new k(str);
            this.jx = cx.hp;
            this.f20799j = cx.f20781l;
            this.eb = u.hp(u.hp);
            this.f20805s = ProxySelector.getDefault();
            this.f20804q = zy.hp;
            this.jl = SocketFactory.getDefault();
            this.f20807v = com.byazt.cmb.w.hp;
            this.f20806u = eb.hp;
            l lVar = l.hp;
            this.xs = lVar;
            this.vv = lVar;
            this.ec = new e();
            this.sz = v.hp;
            this.f20802n = true;
            this.ns = true;
            this.cx = true;
            this.f20796b = 10000;
            this.di = 10000;
            this.f20803o = 10000;
            this.f20797d = 0;
        }

        public hp hp(u uVar) {
            if (uVar != null) {
                this.eb = u.hp(uVar);
                return this;
            }
            throw new NullPointerException("eventListener == null");
        }

        public cx hp() {
            return new cx(this);
        }
    }

    static {
        com.byazt.ru.hp.hp = new com.byazt.ru.hp() { // from class: com.byazt.hq.cx.1
            @Override // com.byazt.ru.hp
            public void hp(vv.hp hpVar, String str) {
                hpVar.hp(str);
            }

            @Override // com.byazt.ru.hp
            public void l(e eVar, com.byazt.tt.jx jxVar) {
                eVar.hp(jxVar);
            }

            @Override // com.byazt.ru.hp
            public void hp(vv.hp hpVar, String str, String str2) {
                hpVar.l(str, str2);
            }

            @Override // com.byazt.ru.hp
            public boolean hp(e eVar, com.byazt.tt.jx jxVar) {
                return eVar.l(jxVar);
            }

            @Override // com.byazt.ru.hp
            public com.byazt.tt.jx hp(e eVar, com.byazt.hq.hp hpVar, com.byazt.tt.eb ebVar, nu nuVar) {
                return eVar.hp(hpVar, ebVar, nuVar);
            }

            @Override // com.byazt.ru.hp
            public boolean hp(com.byazt.hq.hp hpVar, com.byazt.hq.hp hpVar2) {
                return hpVar.hp(hpVar2);
            }

            @Override // com.byazt.ru.hp
            public Socket hp(e eVar, com.byazt.hq.hp hpVar, com.byazt.tt.eb ebVar) {
                return eVar.hp(hpVar, ebVar);
            }

            @Override // com.byazt.ru.hp
            public com.byazt.tt.j hp(e eVar) {
                return eVar.hp;
            }

            @Override // com.byazt.ru.hp
            public int hp(hq.hp hpVar) {
                return hpVar.jx;
            }

            @Override // com.byazt.ru.hp
            public void hp(gu guVar, SSLSocket sSLSocket, boolean z2) {
                guVar.hp(sSLSocket, z2);
            }
        };
    }

    public cx() {
        this(new hp());
    }

    private X509TrustManager di() throws NoSuchAlgorithmException, KeyStoreException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e2) {
            throw com.byazt.ru.jx.hp("No System TLS", (Exception) e2);
        }
    }

    private SSLSocketFactory hp(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyManagementException {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw com.byazt.ru.jx.hp("No System TLS", (Exception) e2);
        }
    }

    public zy a() {
        return this.gu;
    }

    public u.hp b() {
        return this.f20790q;
    }

    public List<sz> cx() {
        return this.f20791s;
    }

    public SSLSocketFactory e() {
        return this.f20793v;
    }

    public com.byazt.sv.a eb() {
        jx jxVar = this.jl;
        return jxVar != null ? jxVar.hp : this.zy;
    }

    public k ec() {
        return this.jx;
    }

    public HostnameVerifier gu() {
        return this.xs;
    }

    public Proxy j() {
        return this.f20786j;
    }

    public eb jl() {
        return this.vv;
    }

    public int jx() {
        return this.wv;
    }

    public l k() {
        return this.ec;
    }

    public int l() {
        return this.f20784d;
    }

    public List<gu> n() {
        return this.f20782a;
    }

    public List<sz> ns() {
        return this.eb;
    }

    public SocketFactory q() {
        return this.f20787k;
    }

    public v s() {
        return this.ns;
    }

    public List<b> sz() {
        return this.f20794w;
    }

    public boolean u() {
        return this.cx;
    }

    public e v() {
        return this.f20788n;
    }

    public boolean vv() {
        return this.di;
    }

    public ProxySelector w() {
        return this.f20785e;
    }

    public boolean xs() {
        return this.f20783b;
    }

    public l zy() {
        return this.sz;
    }

    public cx(hp hpVar) throws NoSuchAlgorithmException, KeyStoreException {
        boolean z2;
        this.jx = hpVar.hp;
        this.f20786j = hpVar.f20801l;
        this.f20794w = hpVar.jx;
        List<gu> list = hpVar.f20799j;
        this.f20782a = list;
        this.eb = com.byazt.ru.jx.hp(hpVar.f20808w);
        this.f20791s = com.byazt.ru.jx.hp(hpVar.f20795a);
        this.f20790q = hpVar.eb;
        this.f20785e = hpVar.f20805s;
        this.gu = hpVar.f20804q;
        this.jl = hpVar.f20798e;
        this.zy = hpVar.gu;
        this.f20787k = hpVar.jl;
        this.ud = hpVar.hq;
        Iterator<gu> it = list.iterator();
        loop0: while (true) {
            z2 = false;
            while (it.hasNext()) {
                z2 = (z2 || it.next().hp()) ? true : z2;
            }
        }
        SSLSocketFactory sSLSocketFactory = hpVar.zy;
        if (sSLSocketFactory == null && z2) {
            X509TrustManager x509TrustManagerDi = di();
            this.f20793v = hp(x509TrustManagerDi);
            this.f20792u = com.byazt.cmb.jx.hp(x509TrustManagerDi);
        } else {
            this.f20793v = sSLSocketFactory;
            this.f20792u = hpVar.f20800k;
        }
        this.xs = hpVar.f20807v;
        this.vv = hpVar.f20806u.hp(this.f20792u);
        this.ec = hpVar.xs;
        this.sz = hpVar.vv;
        e eVar = hpVar.ec;
        this.f20788n = eVar;
        if (eVar != null) {
            eVar.hp(hpVar.wv);
        }
        this.ns = hpVar.sz;
        this.cx = hpVar.f20802n;
        this.f20783b = hpVar.ns;
        this.di = hpVar.cx;
        this.f20789o = hpVar.f20796b;
        this.f20784d = hpVar.di;
        this.wv = hpVar.f20803o;
        this.hq = hpVar.f20797d;
        if (this.eb.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.eb);
        }
        if (this.f20791s.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.f20791s);
        }
    }

    public int hp() {
        return this.f20789o;
    }

    public w hp(o oVar) {
        return di.hp(this, oVar, false);
    }
}
