package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.m.AbstractC1114b;
import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.ae;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.ah;
import com.anythink.core.common.n.b.v;
import com.anythink.core.common.n.b.w;
import com.anythink.core.common.n.b.z;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;

/* loaded from: classes2.dex */
public final class j implements w {

    /* renamed from: a, reason: collision with root package name */
    private static final int f6251a = 20;

    /* renamed from: b, reason: collision with root package name */
    private final z f6252b;

    public j(z zVar) {
        this.f6252b = zVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x019c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e8 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a8  */
    @Override // com.anythink.core.common.n.b.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.anythink.core.common.n.b.af a(com.anythink.core.common.n.b.w.a r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.c.j.a(com.anythink.core.common.n.b.w$a):com.anythink.core.common.n.b.af");
    }

    private boolean a(IOException iOException, com.anythink.core.common.n.b.a.b.j jVar, boolean z2, ad adVar) {
        if (this.f6252b.p()) {
            return !(z2 && a(iOException, adVar)) && a(iOException, z2) && jVar.g();
        }
        return false;
    }

    private static boolean a(IOException iOException, ad adVar) {
        adVar.d();
        return iOException instanceof FileNotFoundException;
    }

    private static boolean a(IOException iOException, boolean z2) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z2 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private ad a(af afVar, ah ahVar) throws ProtocolException {
        String strA;
        v vVarC;
        Proxy proxyC;
        if (afVar != null) {
            int iC = afVar.c();
            String strB = afVar.a().b();
            if (iC == 307 || iC == 308) {
                if (!strB.equals("GET") && !strB.equals(com.sigmob.sdk.downloader.core.c.f37362a)) {
                    return null;
                }
            } else {
                if (iC == 401) {
                    return this.f6252b.k().a();
                }
                if (iC == 503) {
                    if ((afVar.j() == null || afVar.j().c() != 503) && a(afVar, Integer.MAX_VALUE) == 0) {
                        return afVar.a();
                    }
                    return null;
                }
                if (iC == 407) {
                    if (ahVar != null) {
                        proxyC = ahVar.b();
                    } else {
                        proxyC = this.f6252b.c();
                    }
                    if (proxyC.type() == Proxy.Type.HTTP) {
                        return this.f6252b.l().a();
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                if (iC == 408) {
                    if (!this.f6252b.p()) {
                        return null;
                    }
                    afVar.a().d();
                    if ((afVar.j() == null || afVar.j().c() != 408) && a(afVar, 0) <= 0) {
                        return afVar.a();
                    }
                    return null;
                }
                switch (iC) {
                    case 300:
                    case 301:
                    case 302:
                    case 303:
                        break;
                    default:
                        return null;
                }
            }
            if (!this.f6252b.o() || (strA = afVar.a("Location")) == null || (vVarC = afVar.a().a().c(strA)) == null) {
                return null;
            }
            if (!vVarC.b().equals(afVar.a().a().b()) && !this.f6252b.n()) {
                return null;
            }
            ad.a aVarE = afVar.a().e();
            if (f.c(strB)) {
                boolean zEquals = strB.equals("PROPFIND");
                if (!strB.equals("PROPFIND")) {
                    aVarE.a("GET", (ae) null);
                } else {
                    aVarE.a(strB, zEquals ? afVar.a().d() : null);
                }
                if (!zEquals) {
                    aVarE.b(com.sigmob.sdk.downloader.core.c.f37369h);
                    aVarE.b(com.sigmob.sdk.downloader.core.c.f37366e);
                    aVarE.b(AbstractC1114b.f5589g);
                }
            }
            if (!com.anythink.core.common.n.b.a.c.a(afVar.a().a(), vVarC)) {
                aVarE.b("Authorization");
            }
            return aVarE.a(vVarC).b();
        }
        throw new IllegalStateException();
    }

    private static int a(af afVar, int i2) {
        String strA = afVar.a("Retry-After");
        if (strA == null) {
            return i2;
        }
        if (strA.matches("\\d+")) {
            return Integer.valueOf(strA).intValue();
        }
        return Integer.MAX_VALUE;
    }
}
