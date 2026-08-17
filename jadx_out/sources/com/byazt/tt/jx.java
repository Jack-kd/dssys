package com.byazt.tt;

import androidx.core.location.LocationRequestCompat;
import com.byazt.cd.eb;
import com.byazt.hq.b;
import com.byazt.hq.cx;
import com.byazt.hq.e;
import com.byazt.hq.ec;
import com.byazt.hq.gu;
import com.byazt.hq.hq;
import com.byazt.hq.nu;
import com.byazt.hq.o;
import com.byazt.hq.q;
import com.byazt.hq.sz;
import com.byazt.hq.u;
import com.byazt.hq.xs;
import com.byazt.raq.jl;
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
import javax.net.ssl.SSLSocket;

@com.byazt.kj.hp(hp = {0, 1, 1478, 30})
/* loaded from: classes3.dex */
public final class jx extends eb.l implements q {

    /* renamed from: e, reason: collision with root package name */
    public Socket f25987e;
    public final e eb;
    public xs gu;
    public boolean hp;
    public b jl;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.raq.w f25989k;

    /* renamed from: l, reason: collision with root package name */
    public int f25990l;

    /* renamed from: q, reason: collision with root package name */
    public Socket f25991q;

    /* renamed from: s, reason: collision with root package name */
    public final nu f25992s;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.raq.j f25993v;
    public com.byazt.cd.eb zy;
    public int jx = 1;

    /* renamed from: j, reason: collision with root package name */
    public final List<Reference<eb>> f25988j = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public long f25994w = LocationRequestCompat.PASSIVE_INTERVAL;

    public jx(e eVar, nu nuVar) {
        this.eb = eVar;
        this.f25992s = nuVar;
    }

    private o a() {
        return new o.hp().hp(this.f25992s.hp().hp()).hp("Host", com.byazt.ru.jx.hp(this.f25992s.hp().hp(), true)).hp("Proxy-Connection", "Keep-Alive").hp("User-Agent", com.byazt.ru.j.hp()).hp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c5 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r1v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v2, types: [javax.net.ssl.SSLSocketFactory] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(int r11, int r12, int r13, boolean r14, com.byazt.hq.w r15, com.byazt.hq.u r16) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tt.jx.hp(int, int, int, boolean, com.byazt.hq.w, com.byazt.hq.u):void");
    }

    public xs j() {
        return this.gu;
    }

    public Socket jx() {
        return this.f25987e;
    }

    public void l() {
        com.byazt.ru.jx.hp(this.f25991q);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(this.f25992s.hp().hp().eb());
        sb.append(":");
        sb.append(this.f25992s.hp().hp().s());
        sb.append(", proxy=");
        sb.append(this.f25992s.l());
        sb.append(" hostAddress=");
        sb.append(this.f25992s.jx());
        sb.append(" cipherSuite=");
        xs xsVar = this.gu;
        sb.append(xsVar != null ? xsVar.l() : com.baidu.mobads.sdk.internal.a.f10877a);
        sb.append(" protocol=");
        sb.append(this.jl);
        sb.append('}');
        return sb.toString();
    }

    public boolean w() {
        return this.zy != null;
    }

    private void hp(int i2, int i3, int i4, com.byazt.hq.w wVar, u uVar) throws IOException {
        o oVarA = a();
        ec ecVarHp = oVarA.hp();
        for (int i5 = 0; i5 < 21; i5++) {
            hp(i2, i3, wVar, uVar);
            oVarA = hp(i3, i4, oVarA, ecVarHp);
            if (oVarA == null) {
                return;
            }
            com.byazt.ru.jx.hp(this.f25991q);
            this.f25991q = null;
            this.f25993v = null;
            this.f25989k = null;
        }
    }

    private void hp(int i2, int i3, com.byazt.hq.w wVar, u uVar) throws IOException {
        Proxy proxyL = this.f25992s.l();
        Socket socketCreateSocket = (proxyL.type() == Proxy.Type.DIRECT || proxyL.type() == Proxy.Type.HTTP) ? this.f25992s.hp().jx().createSocket() : new Socket(proxyL);
        this.f25991q = socketCreateSocket;
        socketCreateSocket.setSoTimeout(i3);
        try {
            com.byazt.ksw.w.l().hp(this.f25991q, this.f25992s.jx(), i2);
            try {
                this.f25989k = jl.hp(jl.l(this.f25991q));
                this.f25993v = jl.hp(jl.hp(this.f25991q));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f25992s.jx());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void hp(l lVar, com.byazt.hq.w wVar, u uVar) throws Throwable {
        if (this.f25992s.hp().q() == null) {
            this.jl = b.HTTP_1_1;
            this.f25987e = this.f25991q;
            return;
        }
        hp(lVar);
        try {
            if (this.jl == b.HTTP_2) {
                this.f25987e.setSoTimeout(0);
                com.byazt.cd.eb ebVarHp = new eb.hp(true).hp(this.f25987e, this.f25992s.hp().hp().eb(), this.f25989k, this.f25993v).hp(this).hp();
                this.zy = ebVarHp;
                ebVarHp.jx();
            }
        } catch (Throwable unused) {
        }
    }

    private void hp(l lVar) throws Throwable {
        SSLSocket sSLSocket;
        com.byazt.hq.hp hpVarHp = this.f25992s.hp();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) hpVarHp.q().createSocket(this.f25991q, hpVarHp.hp().eb(), hpVarHp.hp().s(), true);
            } catch (AssertionError e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            gu guVarHp = lVar.hp(sSLSocket);
            if (guVarHp.j()) {
                com.byazt.ksw.w.l().hp(sSLSocket, hpVarHp.hp().eb(), hpVarHp.w());
            }
            try {
                sSLSocket.startHandshake();
            } catch (Throwable unused) {
            }
            xs xsVarHp = xs.hp(sSLSocket.getSession());
            if (hpVarHp.e().verify(hpVarHp.hp().eb(), sSLSocket.getSession())) {
                hpVarHp.gu().hp(hpVarHp.hp().eb(), xsVarHp.jx());
                String strHp = guVarHp.j() ? com.byazt.ksw.w.l().hp(sSLSocket) : null;
                this.f25987e = sSLSocket;
                this.f25989k = jl.hp(jl.l(sSLSocket));
                this.f25993v = jl.hp(jl.hp(this.f25987e));
                this.gu = xsVarHp;
                this.jl = strHp != null ? b.hp(strHp) : b.HTTP_1_1;
                com.byazt.ksw.w.l().l(sSLSocket);
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) xsVarHp.jx().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + hpVarHp.hp().eb() + " not verified:\n    certificate: " + com.byazt.hq.eb.hp((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.byazt.cmb.w.hp(x509Certificate));
        } catch (AssertionError e3) {
            e = e3;
            if (!com.byazt.ru.jx.hp(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                com.byazt.ksw.w.l().l(sSLSocket2);
            }
            com.byazt.ru.jx.hp((Socket) sSLSocket2);
            throw th;
        }
    }

    private o hp(int i2, int i3, o oVar, ec ecVar) throws IOException {
        String str = "CONNECT " + com.byazt.ru.jx.hp(ecVar, true) + " HTTP/1.1";
        while (true) {
            com.byazt.jfu.hp hpVar = new com.byazt.jfu.hp(null, null, this.f25989k, this.f25993v);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f25989k.hp().hp(i2, timeUnit);
            this.f25993v.hp().hp(i3, timeUnit);
            hpVar.hp(oVar.jx(), str);
            hpVar.l();
            hq hqVarHp = hpVar.hp(false).hp(oVar).hp();
            long jHp = com.byazt.pn.w.hp(hqVarHp);
            if (jHp == -1) {
                jHp = 0;
            }
            com.byazt.raq.ec ecVarL = hpVar.l(jHp);
            com.byazt.ru.jx.l(ecVarL, Integer.MAX_VALUE, timeUnit);
            ecVarL.close();
            int iJx = hqVarHp.jx();
            if (iJx == 200) {
                if (this.f25989k.jx().w() && this.f25993v.jx().w()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iJx == 407) {
                o oVarHp = this.f25992s.hp().j().hp(this.f25992s, hqVarHp);
                if (oVarHp != null) {
                    if ("close".equalsIgnoreCase(hqVarHp.hp("Connection"))) {
                        return oVarHp;
                    }
                    oVar = oVarHp;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + hqVarHp.jx());
            }
        }
    }

    public boolean hp(com.byazt.hq.hp hpVar, nu nuVar) {
        if (this.f25988j.size() >= this.jx || this.hp || !com.byazt.ru.hp.hp.hp(this.f25992s.hp(), hpVar)) {
            return false;
        }
        if (hpVar.hp().eb().equals(hp().hp().hp().eb())) {
            return true;
        }
        if (this.zy == null || nuVar == null) {
            return false;
        }
        Proxy.Type type = nuVar.l().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type != type2 || this.f25992s.l().type() != type2 || !this.f25992s.jx().equals(nuVar.jx()) || nuVar.hp().e() != com.byazt.cmb.w.hp || !hp(hpVar.hp())) {
            return false;
        }
        try {
            hpVar.gu().hp(hpVar.hp().eb(), j().jx());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean hp(ec ecVar) {
        if (ecVar.s() != this.f25992s.hp().hp().s()) {
            return false;
        }
        if (ecVar.eb().equals(this.f25992s.hp().hp().eb())) {
            return true;
        }
        return this.gu != null && com.byazt.cmb.w.hp.hp(ecVar.eb(), (X509Certificate) this.gu.jx().get(0));
    }

    public com.byazt.pn.jx hp(cx cxVar, sz.hp hpVar, eb ebVar) throws SocketException {
        if (this.zy != null) {
            return new com.byazt.cd.a(cxVar, hpVar, ebVar, this.zy);
        }
        this.f25987e.setSoTimeout(hpVar.jx());
        com.byazt.raq.sz szVarHp = this.f25989k.hp();
        long jJx = hpVar.jx();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        szVarHp.hp(jJx, timeUnit);
        this.f25993v.hp().hp(hpVar.j(), timeUnit);
        return new com.byazt.jfu.hp(cxVar, ebVar, this.f25989k, this.f25993v);
    }

    @Override // com.byazt.hq.q
    public nu hp() {
        return this.f25992s;
    }

    public boolean hp(boolean z2) throws SocketException {
        if (this.f25987e.isClosed() || this.f25987e.isInputShutdown() || this.f25987e.isOutputShutdown()) {
            return false;
        }
        com.byazt.cd.eb ebVar = this.zy;
        if (ebVar != null) {
            return !ebVar.j();
        }
        if (z2) {
            try {
                int soTimeout = this.f25987e.getSoTimeout();
                try {
                    this.f25987e.setSoTimeout(1);
                    return !this.f25989k.w();
                } finally {
                    this.f25987e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.byazt.cd.eb.l
    public void hp(com.byazt.cd.q qVar) throws IOException {
        qVar.hp(com.byazt.cd.l.REFUSED_STREAM);
    }

    @Override // com.byazt.cd.eb.l
    public void hp(com.byazt.cd.eb ebVar) {
        synchronized (this.eb) {
            this.jx = ebVar.hp();
        }
    }
}
