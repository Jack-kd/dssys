package P1;

import N1.m;
import N1.n;
import N1.o;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.servlet.SessionCookieConfig;
import javax.servlet.SessionTrackingMode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.eclipse.jetty.server.handler.d;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public abstract class c extends org.eclipse.jetty.util.component.a implements o {

    /* renamed from: C, reason: collision with root package name */
    public static final R1.c f431C = g.f483l;

    /* renamed from: D, reason: collision with root package name */
    public static final HttpSessionContext f432D = new a();

    /* renamed from: e, reason: collision with root package name */
    public g f438e;

    /* renamed from: g, reason: collision with root package name */
    public n f440g;

    /* renamed from: l, reason: collision with root package name */
    public ClassLoader f445l;

    /* renamed from: m, reason: collision with root package name */
    public d.C0881d f446m;

    /* renamed from: q, reason: collision with root package name */
    public String f450q;

    /* renamed from: r, reason: collision with root package name */
    public String f451r;

    /* renamed from: t, reason: collision with root package name */
    public int f453t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f454u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f455v;

    /* renamed from: w, reason: collision with root package name */
    public String f456w;

    /* renamed from: x, reason: collision with root package name */
    public Set f457x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f458y;

    /* renamed from: b, reason: collision with root package name */
    public Set f435b = Collections.unmodifiableSet(new HashSet(Arrays.asList(SessionTrackingMode.COOKIE, SessionTrackingMode.URL)));

    /* renamed from: c, reason: collision with root package name */
    public boolean f436c = true;

    /* renamed from: d, reason: collision with root package name */
    public int f437d = -1;

    /* renamed from: f, reason: collision with root package name */
    public boolean f439f = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f441h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f442i = true;

    /* renamed from: j, reason: collision with root package name */
    public final List f443j = new CopyOnWriteArrayList();

    /* renamed from: k, reason: collision with root package name */
    public final List f444k = new CopyOnWriteArrayList();

    /* renamed from: n, reason: collision with root package name */
    public String f447n = "JSESSIONID";

    /* renamed from: o, reason: collision with root package name */
    public String f448o = "jsessionid";

    /* renamed from: p, reason: collision with root package name */
    public String f449p = ";" + this.f448o + "=";

    /* renamed from: s, reason: collision with root package name */
    public int f452s = -1;

    /* renamed from: z, reason: collision with root package name */
    public final V1.a f459z = new V1.a();

    /* renamed from: A, reason: collision with root package name */
    public final V1.b f433A = new V1.b();

    /* renamed from: B, reason: collision with root package name */
    public SessionCookieConfig f434B = new b();

    public static class a implements HttpSessionContext {
    }

    public class b implements SessionCookieConfig {
        public b() {
        }
    }

    /* renamed from: P1.c$c, reason: collision with other inner class name */
    public interface InterfaceC0009c extends HttpSession {
        P1.a a();
    }

    public c() {
        d0(this.f435b);
    }

    @Override // N1.o
    public boolean C() {
        return this.f436c;
    }

    @Override // N1.o
    public org.eclipse.jetty.http.f E(HttpSession httpSession, String str, boolean z2) {
        if (!C()) {
            return null;
        }
        String str2 = this.f451r;
        if (str2 != null) {
            str = str2;
        }
        if (str == null || str.length() == 0) {
            str = ServiceReference.DELIMITER;
        }
        String str3 = str;
        String strS = S(httpSession);
        if (this.f456w == null) {
            return new org.eclipse.jetty.http.f(this.f447n, strS, this.f450q, str3, this.f434B.getMaxAge(), this.f434B.isHttpOnly(), this.f434B.isSecure() || (Y() && z2));
        }
        return new org.eclipse.jetty.http.f(this.f447n, strS, this.f450q, str3, this.f434B.getMaxAge(), this.f434B.isHttpOnly(), this.f434B.isSecure() || (Y() && z2), this.f456w, 1);
    }

    @Override // N1.o
    public String I() {
        return this.f449p;
    }

    public abstract void P(P1.a aVar);

    public void Q(P1.a aVar, boolean z2) {
        synchronized (this.f440g) {
            this.f440g.A(aVar);
            P(aVar);
        }
        if (z2) {
            this.f459z.c();
            if (this.f444k != null) {
                HttpSessionEvent httpSessionEvent = new HttpSessionEvent(aVar);
                Iterator it = this.f444k.iterator();
                while (it.hasNext()) {
                    ((HttpSessionListener) it.next()).sessionCreated(httpSessionEvent);
                }
            }
        }
    }

    public void R(P1.a aVar, String str, Object obj, Object obj2) {
        if (this.f443j.isEmpty()) {
            return;
        }
        HttpSessionBindingEvent httpSessionBindingEvent = new HttpSessionBindingEvent(aVar, str, obj == null ? obj2 : obj);
        for (HttpSessionAttributeListener httpSessionAttributeListener : this.f443j) {
            if (obj == null) {
                httpSessionAttributeListener.attributeAdded(httpSessionBindingEvent);
            } else if (obj2 == null) {
                httpSessionAttributeListener.attributeRemoved(httpSessionBindingEvent);
            } else {
                httpSessionAttributeListener.attributeReplaced(httpSessionBindingEvent);
            }
        }
    }

    public String S(HttpSession httpSession) {
        return ((InterfaceC0009c) httpSession).a().t();
    }

    public int T() {
        return this.f453t;
    }

    public abstract P1.a U(String str);

    public g V() {
        return this.f438e;
    }

    public n W() {
        return this.f440g;
    }

    public abstract void X();

    public boolean Y() {
        return this.f442i;
    }

    public abstract P1.a Z(HttpServletRequest httpServletRequest);

    public void a0(P1.a aVar, boolean z2) {
        if (b0(aVar.o())) {
            this.f459z.b();
            this.f433A.a(Math.round((System.currentTimeMillis() - aVar.q()) / 1000.0d));
            this.f440g.G(aVar);
            if (z2) {
                this.f440g.p(aVar.o());
            }
            if (!z2 || this.f444k == null) {
                return;
            }
            HttpSessionEvent httpSessionEvent = new HttpSessionEvent(aVar);
            Iterator it = this.f444k.iterator();
            while (it.hasNext()) {
                ((HttpSessionListener) it.next()).sessionDestroyed(httpSessionEvent);
            }
        }
    }

    public abstract boolean b0(String str);

    public void c0(String str) {
        String str2 = null;
        this.f448o = (str == null || com.baidu.mobads.sdk.internal.a.f10877a.equals(str)) ? null : str;
        if (str != null && !com.baidu.mobads.sdk.internal.a.f10877a.equals(str)) {
            str2 = ";" + this.f448o + "=";
        }
        this.f449p = str2;
    }

    @Override // N1.o
    public HttpSession d(String str) {
        P1.a aVarU = U(W().J(str));
        if (aVarU != null && !aVarU.t().equals(str)) {
            aVarU.z(true);
        }
        return aVarU;
    }

    public void d0(Set set) {
        HashSet hashSet = new HashSet(set);
        this.f457x = hashSet;
        this.f436c = hashSet.contains(SessionTrackingMode.COOKIE);
        this.f458y = this.f457x.contains(SessionTrackingMode.URL);
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        String strE;
        this.f446m = org.eclipse.jetty.server.handler.d.w0();
        this.f445l = Thread.currentThread().getContextClassLoader();
        if (this.f440g == null) {
            m mVarC = V().c();
            synchronized (mVarC) {
                try {
                    n nVarK0 = mVarC.k0();
                    this.f440g = nVarK0;
                    if (nVarK0 == null) {
                        d dVar = new d();
                        this.f440g = dVar;
                        mVarC.v0(dVar);
                    }
                } finally {
                }
            }
        }
        if (!this.f440g.isStarted()) {
            this.f440g.start();
        }
        d.C0881d c0881d = this.f446m;
        if (c0881d != null) {
            String strE2 = c0881d.e("org.eclipse.jetty.servlet.SessionCookie");
            if (strE2 != null) {
                this.f447n = strE2;
            }
            String strE3 = this.f446m.e("org.eclipse.jetty.servlet.SessionIdPathParameterName");
            if (strE3 != null) {
                c0(strE3);
            }
            if (this.f452s == -1 && (strE = this.f446m.e("org.eclipse.jetty.servlet.MaxAge")) != null) {
                this.f452s = Integer.parseInt(strE.trim());
            }
            if (this.f450q == null) {
                this.f450q = this.f446m.e("org.eclipse.jetty.servlet.SessionDomain");
            }
            if (this.f451r == null) {
                this.f451r = this.f446m.e("org.eclipse.jetty.servlet.SessionPath");
            }
            String strE4 = this.f446m.e("org.eclipse.jetty.servlet.CheckingRemoteSessionIdEncoding");
            if (strE4 != null) {
                this.f455v = Boolean.parseBoolean(strE4);
            }
        }
        super.doStart();
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() {
        super.doStop();
        X();
        this.f445l = null;
    }

    @Override // N1.o
    public void e(HttpSession httpSession) {
        ((InterfaceC0009c) httpSession).a().f();
    }

    @Override // N1.o
    public void g(g gVar) {
        this.f438e = gVar;
    }

    public d.C0881d getContext() {
        return this.f446m;
    }

    @Override // N1.o
    public SessionCookieConfig n() {
        return this.f434B;
    }

    @Override // N1.o
    public boolean q(HttpSession httpSession) {
        return ((InterfaceC0009c) httpSession).a().x();
    }

    @Override // N1.o
    public org.eclipse.jetty.http.f w(HttpSession httpSession, boolean z2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        P1.a aVarA = ((InterfaceC0009c) httpSession).a();
        if (!aVarA.b(jCurrentTimeMillis) || !C()) {
            return null;
        }
        if (!aVarA.w() && (n().getMaxAge() <= 0 || T() <= 0 || (jCurrentTimeMillis - aVarA.p()) / 1000 <= T())) {
            return null;
        }
        d.C0881d c0881d = this.f446m;
        org.eclipse.jetty.http.f fVarE = E(httpSession, c0881d == null ? ServiceReference.DELIMITER : c0881d.d(), z2);
        aVarA.g();
        aVarA.z(false);
        return fVarE;
    }

    @Override // N1.o
    public HttpSession x(HttpServletRequest httpServletRequest) {
        P1.a aVarZ = Z(httpServletRequest);
        aVarZ.A(this.f437d);
        Q(aVarZ, true);
        return aVarZ;
    }
}
