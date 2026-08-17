package P1;

import N1.h;
import N1.k;
import N1.m;
import N1.o;
import java.util.EnumSet;
import javax.servlet.DispatcherType;
import javax.servlet.SessionTrackingMode;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.eclipse.jetty.server.handler.i;

/* loaded from: classes5.dex */
public class g extends i {

    /* renamed from: l, reason: collision with root package name */
    public static final R1.c f483l = R1.b.b("org.eclipse.jetty.server.session");

    /* renamed from: m, reason: collision with root package name */
    public static final EnumSet f484m = EnumSet.of(SessionTrackingMode.COOKIE, SessionTrackingMode.URL);

    /* renamed from: k, reason: collision with root package name */
    public o f485k;

    public g() {
        this(new e());
    }

    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, N1.h
    public void a(m mVar) {
        g gVar;
        m mVarC = c();
        if (mVarC == null || mVarC == mVar) {
            gVar = this;
        } else {
            gVar = this;
            mVarC.h0().update((Object) gVar, (Object) this.f485k, (Object) null, "sessionManager", true);
        }
        super.a(mVar);
        if (mVar == null || mVar == mVarC) {
            return;
        }
        mVar.h0().update((Object) gVar, (Object) null, (Object) gVar.f485k, "sessionManager", true);
    }

    @Override // org.eclipse.jetty.server.handler.i, org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStart() {
        this.f485k.start();
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    public void doStop() {
        this.f485k.stop();
        super.doStop();
    }

    @Override // org.eclipse.jetty.server.handler.i
    public void f0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (h0()) {
            i0(str, kVar, httpServletRequest, httpServletResponse);
            return;
        }
        i iVar = this.f52544i;
        if (iVar != null && iVar == this.f52541g) {
            iVar.f0(str, kVar, httpServletRequest, httpServletResponse);
            return;
        }
        h hVar = this.f52541g;
        if (hVar != null) {
            hVar.l(str, kVar, httpServletRequest, httpServletResponse);
        }
    }

    @Override // org.eclipse.jetty.server.handler.i
    public void g0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Throwable {
        o oVarT;
        HttpSession httpSessionS;
        HttpSession httpSessionS2;
        HttpSession httpSession = null;
        try {
            oVarT = kVar.t();
            try {
                httpSessionS = kVar.s(false);
                try {
                    o oVar = this.f485k;
                    if (oVarT != oVar) {
                        kVar.b0(oVar);
                        kVar.a0(null);
                        k0(kVar, httpServletRequest);
                    }
                    if (this.f485k != null) {
                        httpSessionS2 = kVar.s(false);
                        if (httpSessionS2 == null) {
                            httpSessionS2 = kVar.B(this.f485k);
                            if (httpSessionS2 != null) {
                                kVar.a0(httpSessionS2);
                            }
                        } else if (httpSessionS2 != httpSessionS) {
                            try {
                                org.eclipse.jetty.http.f fVarW = this.f485k.w(httpSessionS2, httpServletRequest.isSecure());
                                if (fVarW != null) {
                                    kVar.n().a(fVarW);
                                }
                                httpSession = httpSessionS2;
                            } catch (Throwable th) {
                                th = th;
                                httpSession = httpSessionS2;
                                if (httpSession != null) {
                                    this.f485k.e(httpSession);
                                }
                                HttpSession httpSessionS3 = kVar.s(false);
                                if (httpSessionS3 != null && httpSessionS == null && httpSessionS3 != httpSession) {
                                    this.f485k.e(httpSessionS3);
                                }
                                if (oVarT != null && oVarT != this.f485k) {
                                    kVar.b0(oVarT);
                                    kVar.a0(httpSessionS);
                                }
                                throw th;
                            }
                        }
                        HttpSession httpSession2 = httpSessionS2;
                        httpSessionS2 = null;
                        httpSession = httpSession2;
                    } else {
                        httpSessionS2 = null;
                    }
                    R1.c cVar = f483l;
                    if (cVar.f()) {
                        cVar.i("sessionManager=" + this.f485k, new Object[0]);
                        cVar.i("session=" + httpSession, new Object[0]);
                    }
                    i iVar = this.f52544i;
                    if (iVar != null) {
                        iVar.g0(str, kVar, httpServletRequest, httpServletResponse);
                    } else {
                        i iVar2 = this.f52543h;
                        if (iVar2 != null) {
                            iVar2.f0(str, kVar, httpServletRequest, httpServletResponse);
                        } else {
                            f0(str, kVar, httpServletRequest, httpServletResponse);
                        }
                    }
                    if (httpSessionS2 != null) {
                        this.f485k.e(httpSessionS2);
                    }
                    HttpSession httpSessionS4 = kVar.s(false);
                    if (httpSessionS4 != null && httpSessionS == null && httpSessionS4 != httpSessionS2) {
                        this.f485k.e(httpSessionS4);
                    }
                    if (oVarT == null || oVarT == this.f485k) {
                        return;
                    }
                    kVar.b0(oVarT);
                    kVar.a0(httpSessionS);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                httpSessionS = null;
            }
        } catch (Throwable th4) {
            th = th4;
            oVarT = null;
            httpSessionS = null;
        }
    }

    public void k0(k kVar, HttpServletRequest httpServletRequest) {
        boolean z2;
        int iIndexOf;
        char cCharAt;
        Cookie[] cookies;
        String requestedSessionId = httpServletRequest.getRequestedSessionId();
        o oVarL0 = l0();
        if (requestedSessionId != null && oVarL0 != null) {
            HttpSession httpSessionD = oVarL0.d(requestedSessionId);
            if (httpSessionD == null || !oVarL0.q(httpSessionD)) {
                return;
            }
            kVar.a0(httpSessionD);
            return;
        }
        if (DispatcherType.REQUEST.equals(kVar.f())) {
            HttpSession httpSessionD2 = null;
            if (!this.f485k.C() || (cookies = httpServletRequest.getCookies()) == null || cookies.length <= 0) {
                z2 = false;
            } else {
                String name = oVarL0.n().getName();
                int i2 = 0;
                z2 = false;
                while (true) {
                    if (i2 >= cookies.length) {
                        break;
                    }
                    if (name.equalsIgnoreCase(cookies[i2].getName())) {
                        requestedSessionId = cookies[i2].getValue();
                        R1.c cVar = f483l;
                        cVar.i("Got Session ID {} from cookie", requestedSessionId);
                        if (requestedSessionId != null) {
                            httpSessionD2 = oVarL0.d(requestedSessionId);
                            if (httpSessionD2 != null && oVarL0.q(httpSessionD2)) {
                                z2 = true;
                                break;
                            }
                        } else {
                            cVar.g("null session id from cookie", new Object[0]);
                        }
                        z2 = true;
                    }
                    i2++;
                }
            }
            if (requestedSessionId == null || httpSessionD2 == null) {
                String requestURI = httpServletRequest.getRequestURI();
                String strI = oVarL0.I();
                if (strI != null && (iIndexOf = requestURI.indexOf(strI)) >= 0) {
                    int length = iIndexOf + strI.length();
                    int i3 = length;
                    while (i3 < requestURI.length() && (cCharAt = requestURI.charAt(i3)) != ';' && cCharAt != '#' && cCharAt != '?' && cCharAt != '/') {
                        i3++;
                    }
                    requestedSessionId = requestURI.substring(length, i3);
                    httpSessionD2 = oVarL0.d(requestedSessionId);
                    R1.c cVar2 = f483l;
                    if (cVar2.f()) {
                        cVar2.i("Got Session ID {} from URL", requestedSessionId);
                    }
                    z2 = false;
                }
            }
            kVar.U(requestedSessionId);
            kVar.V(requestedSessionId != null && z2);
            if (httpSessionD2 == null || !oVarL0.q(httpSessionD2)) {
                return;
            }
            kVar.a0(httpSessionD2);
        }
    }

    public o l0() {
        return this.f485k;
    }

    public void m0(o oVar) {
        g gVar;
        o oVar2;
        if (isStarted()) {
            throw new IllegalStateException();
        }
        o oVar3 = this.f485k;
        if (c() != null) {
            gVar = this;
            oVar2 = oVar;
            c().h0().update((Object) gVar, (Object) oVar3, (Object) oVar2, "sessionManager", true);
        } else {
            gVar = this;
            oVar2 = oVar;
        }
        if (oVar2 != null) {
            oVar2.g(this);
        }
        gVar.f485k = oVar2;
        if (oVar3 != null) {
            oVar3.g(null);
        }
    }

    public g(o oVar) {
        m0(oVar);
    }
}
