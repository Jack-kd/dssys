package com.byazt.pn;

import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.hq.cx;
import com.byazt.hq.d;
import com.byazt.hq.ec;
import com.byazt.hq.hq;
import com.byazt.hq.nu;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

@com.byazt.kj.hp(hp = {0, 1, 741, 45})
/* loaded from: classes3.dex */
public final class e implements sz {
    public final cx hp;

    /* renamed from: j, reason: collision with root package name */
    public Object f24446j;
    public com.byazt.tt.eb jx;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f24447l;

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f24448w;

    public e(cx cxVar, boolean z2) {
        this.hp = cxVar;
        this.f24447l = z2;
    }

    public void hp() {
        this.f24448w = true;
        com.byazt.tt.eb ebVar = this.jx;
        if (ebVar != null) {
            ebVar.w();
        }
    }

    public boolean l() {
        return this.f24448w;
    }

    public void hp(Object obj) {
        this.f24446j = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006b  */
    @Override // com.byazt.hq.sz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.byazt.hq.hq hp(com.byazt.hq.sz.hp r21) throws java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.pn.e.hp(com.byazt.hq.sz$hp):com.byazt.hq.hq");
    }

    private com.byazt.hq.hp hp(ec ecVar) {
        SSLSocketFactory sSLSocketFactoryE;
        HostnameVerifier hostnameVerifierGu;
        com.byazt.hq.eb ebVarJl;
        if (ecVar.j()) {
            sSLSocketFactoryE = this.hp.e();
            hostnameVerifierGu = this.hp.gu();
            ebVarJl = this.hp.jl();
        } else {
            sSLSocketFactoryE = null;
            hostnameVerifierGu = null;
            ebVarJl = null;
        }
        return new com.byazt.hq.hp(ecVar.eb(), ecVar.s(), this.hp.s(), this.hp.q(), sSLSocketFactoryE, hostnameVerifierGu, ebVarJl, this.hp.k(), this.hp.j(), this.hp.sz(), this.hp.n(), this.hp.w());
    }

    private boolean hp(IOException iOException, boolean z2, o oVar) throws IOException {
        this.jx.hp(iOException);
        if (this.hp.vv()) {
            return !(z2 && (oVar.j() instanceof jl)) && hp(iOException, z2) && this.jx.a();
        }
        return false;
    }

    private boolean hp(IOException iOException, boolean z2) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z2 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private o hp(hq hqVar) throws IOException {
        String strHp;
        ec ecVarJx;
        Proxy proxyJ;
        if (hqVar != null) {
            com.byazt.tt.jx jxVarL = this.jx.l();
            nu nuVarHp = jxVarL != null ? jxVarL.hp() : null;
            int iJx = hqVar.jx();
            String strL = hqVar.hp().l();
            if (iJx == 307 || iJx == 308) {
                if (!"GET".equals(strL) && !c.f37362a.equals(strL)) {
                    return null;
                }
            } else {
                if (iJx == 401) {
                    return this.hp.zy().hp(nuVarHp, hqVar);
                }
                if (iJx == 407) {
                    if (nuVarHp != null) {
                        proxyJ = nuVarHp.l();
                    } else {
                        proxyJ = this.hp.j();
                    }
                    if (proxyJ.type() == Proxy.Type.HTTP) {
                        return this.hp.k().hp(nuVarHp, hqVar);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                if (iJx == 408) {
                    if (!this.hp.vv() || (hqVar.hp().j() instanceof jl)) {
                        return null;
                    }
                    if (hqVar.gu() == null || hqVar.gu().jx() != 408) {
                        return hqVar.hp();
                    }
                    return null;
                }
                switch (iJx) {
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                        break;
                    default:
                        return null;
                }
            }
            if (!this.hp.xs() || (strHp = hqVar.hp("Location")) == null || (ecVarJx = hqVar.hp().hp().jx(strHp)) == null) {
                return null;
            }
            if (!ecVarJx.jx().equals(hqVar.hp().hp().jx()) && !this.hp.u()) {
                return null;
            }
            o.hp hpVarA = hqVar.hp().a();
            if (a.jx(strL)) {
                boolean zJ = a.j(strL);
                if (a.w(strL)) {
                    hpVarA.hp("GET", (d) null);
                } else {
                    hpVarA.hp(strL, zJ ? hqVar.hp().j() : null);
                }
                if (!zJ) {
                    hpVarA.l(c.f37369h);
                    hpVarA.l(c.f37366e);
                    hpVarA.l(AbstractC1114b.f5589g);
                }
            }
            if (!hp(hqVar, ecVarJx)) {
                hpVarA.l("Authorization");
            }
            return hpVarA.hp(ecVarJx).hp();
        }
        throw new IllegalStateException();
    }

    private boolean hp(hq hqVar, ec ecVar) {
        ec ecVarHp = hqVar.hp().hp();
        return ecVarHp.eb().equals(ecVar.eb()) && ecVarHp.s() == ecVar.s() && ecVarHp.jx().equals(ecVar.jx());
    }
}
