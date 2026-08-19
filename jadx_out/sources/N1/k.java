package N1;

import N1.c;
import N1.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedReader;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Collections;
import java.util.EventListener;
import java.util.Locale;
import java.util.Map;
import javax.servlet.AsyncListener;
import javax.servlet.DispatcherType;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestListener;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.eclipse.jetty.server.handler.d;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.MultiMap;

/* loaded from: classes5.dex */
public class k implements HttpServletRequest {

    /* renamed from: Q, reason: collision with root package name */
    public static final R1.c f316Q = R1.b.a(k.class);

    /* renamed from: R, reason: collision with root package name */
    public static final Collection f317R = Collections.singleton(Locale.getDefault());

    /* renamed from: A, reason: collision with root package name */
    public String f318A;

    /* renamed from: B, reason: collision with root package name */
    public Object f319B;

    /* renamed from: C, reason: collision with root package name */
    public String f320C;

    /* renamed from: E, reason: collision with root package name */
    public String f322E;

    /* renamed from: F, reason: collision with root package name */
    public Map f323F;

    /* renamed from: H, reason: collision with root package name */
    public q.a f325H;

    /* renamed from: I, reason: collision with root package name */
    public String f326I;

    /* renamed from: J, reason: collision with root package name */
    public String f327J;

    /* renamed from: K, reason: collision with root package name */
    public HttpSession f328K;

    /* renamed from: L, reason: collision with root package name */
    public o f329L;

    /* renamed from: M, reason: collision with root package name */
    public long f330M;

    /* renamed from: N, reason: collision with root package name */
    public L1.d f331N;

    /* renamed from: O, reason: collision with root package name */
    public org.eclipse.jetty.http.o f332O;

    /* renamed from: P, reason: collision with root package name */
    public org.eclipse.jetty.util.k f333P;

    /* renamed from: c, reason: collision with root package name */
    public volatile org.eclipse.jetty.util.b f336c;

    /* renamed from: d, reason: collision with root package name */
    public e f337d;

    /* renamed from: e, reason: collision with root package name */
    public MultiMap f338e;

    /* renamed from: f, reason: collision with root package name */
    public String f339f;

    /* renamed from: g, reason: collision with root package name */
    public c f340g;

    /* renamed from: h, reason: collision with root package name */
    public d.C0881d f341h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f342i;

    /* renamed from: j, reason: collision with root package name */
    public String f343j;

    /* renamed from: l, reason: collision with root package name */
    public DispatcherType f345l;

    /* renamed from: n, reason: collision with root package name */
    public L1.k f347n;

    /* renamed from: q, reason: collision with root package name */
    public String f350q;

    /* renamed from: r, reason: collision with root package name */
    public MultiMap f351r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f352s;

    /* renamed from: t, reason: collision with root package name */
    public String f353t;

    /* renamed from: u, reason: collision with root package name */
    public int f354u;

    /* renamed from: w, reason: collision with root package name */
    public String f356w;

    /* renamed from: x, reason: collision with root package name */
    public String f357x;

    /* renamed from: y, reason: collision with root package name */
    public BufferedReader f358y;

    /* renamed from: z, reason: collision with root package name */
    public String f359z;

    /* renamed from: a, reason: collision with root package name */
    public final d f334a = new d();

    /* renamed from: b, reason: collision with root package name */
    public boolean f335b = true;

    /* renamed from: k, reason: collision with root package name */
    public boolean f344k = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f346m = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f348o = false;

    /* renamed from: p, reason: collision with root package name */
    public int f349p = 0;

    /* renamed from: v, reason: collision with root package name */
    public String f355v = "HTTP/1.1";

    /* renamed from: D, reason: collision with root package name */
    public boolean f321D = false;

    /* renamed from: G, reason: collision with root package name */
    public String f324G = "http";

    public static class a implements ServletRequestListener {
    }

    public k(c cVar) {
        I(cVar);
    }

    public boolean A() {
        return this.f340g.A(this);
    }

    public HttpSession B(Object obj) {
        Map map = this.f323F;
        if (map == null) {
            return null;
        }
        return (HttpSession) map.get(obj);
    }

    public void C() throws IOException {
        if (this.f349p == 2) {
            try {
                int i2 = this.f358y.read();
                while (i2 != -1) {
                    i2 = this.f358y.read();
                }
            } catch (Exception e2) {
                f316Q.h(e2);
                this.f358y = null;
            }
        }
        G(e.N2);
        this.f334a.q();
        this.f335b = true;
        this.f348o = false;
        if (this.f341h != null) {
            throw new IllegalStateException("Request in context!");
        }
        if (this.f336c != null) {
            this.f336c.k();
        }
        this.f339f = null;
        this.f343j = null;
        this.f344k = false;
        this.f341h = null;
        this.f326I = null;
        this.f350q = null;
        this.f353t = null;
        this.f354u = 0;
        this.f355v = "HTTP/1.1";
        this.f356w = null;
        this.f357x = null;
        this.f320C = null;
        this.f321D = false;
        this.f328K = null;
        this.f329L = null;
        this.f322E = null;
        this.f325H = null;
        this.f324G = "http";
        this.f327J = null;
        this.f330M = 0L;
        this.f331N = null;
        this.f332O = null;
        MultiMap multiMap = this.f338e;
        if (multiMap != null) {
            multiMap.clear();
        }
        this.f351r = null;
        this.f352s = false;
        this.f349p = 0;
        Map map = this.f323F;
        if (map != null) {
            map.clear();
        }
        this.f323F = null;
        this.f333P = null;
    }

    public void D(EventListener eventListener) {
        this.f319B = LazyList.remove(this.f319B, eventListener);
    }

    public void E(boolean z2) {
        this.f335b = z2;
    }

    public void F(String str, Object obj) {
        Object attribute = this.f336c == null ? null : this.f336c.getAttribute(str);
        if (str.startsWith("org.eclipse.jetty.")) {
            if ("org.eclipse.jetty.server.Request.queryEncoding".equals(str)) {
                Q(obj != null ? obj.toString() : null);
            } else if ("org.eclipse.jetty.server.sendContent".equals(str)) {
                try {
                    ((c.a) r().getOutputStream()).e(obj);
                } catch (IOException e2) {
                    throw new RuntimeException(e2);
                }
            } else if ("org.eclipse.jetty.server.ResponseBuffer".equals(str)) {
                try {
                    ByteBuffer byteBuffer = (ByteBuffer) obj;
                    synchronized (byteBuffer) {
                        try {
                            ((c.a) r().getOutputStream()).f(byteBuffer.isDirect() ? new org.eclipse.jetty.io.nio.c(byteBuffer, true) : new org.eclipse.jetty.io.nio.d(byteBuffer, true));
                        } finally {
                        }
                    }
                } catch (IOException e3) {
                    throw new RuntimeException(e3);
                }
            } else if ("org.eclipse.jetty.io.EndPoint.maxIdleTime".equalsIgnoreCase(str)) {
                try {
                    d().e().l(Integer.valueOf(obj.toString()).intValue());
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }
        if (this.f336c == null) {
            this.f336c = new org.eclipse.jetty.util.c();
        }
        this.f336c.setAttribute(str, obj);
        if (this.f319B != null) {
            ServletRequestAttributeEvent servletRequestAttributeEvent = new ServletRequestAttributeEvent(this.f341h, this, str, attribute == null ? obj : attribute);
            int size = LazyList.size(this.f319B);
            for (int i2 = 0; i2 < size; i2++) {
                ServletRequestAttributeListener servletRequestAttributeListener = (ServletRequestAttributeListener) LazyList.get(this.f319B, i2);
                if (servletRequestAttributeListener instanceof ServletRequestAttributeListener) {
                    if (attribute == null) {
                        servletRequestAttributeListener.attributeAdded(servletRequestAttributeEvent);
                    } else if (obj == null) {
                        servletRequestAttributeListener.attributeRemoved(servletRequestAttributeEvent);
                    } else {
                        servletRequestAttributeListener.attributeReplaced(servletRequestAttributeEvent);
                    }
                }
            }
        }
    }

    public void G(e eVar) {
        this.f337d = eVar;
    }

    public void H(String str) {
        this.f339f = str;
    }

    public final void I(c cVar) {
        this.f340g = cVar;
        this.f334a.t(cVar);
        this.f347n = cVar.e();
        this.f346m = cVar.u();
    }

    public void J(d.C0881d c0881d) {
        this.f342i = this.f341h != c0881d;
        this.f341h = c0881d;
    }

    public void K(String str) {
        this.f343j = str;
    }

    public void L(DispatcherType dispatcherType) {
        this.f345l = dispatcherType;
    }

    public void M(boolean z2) {
        this.f348o = z2;
    }

    public void N(String str) {
        this.f350q = str;
    }

    public void O(String str) {
        this.f353t = str;
    }

    public void P(String str) {
        this.f355v = str;
    }

    public void Q(String str) {
        this.f356w = str;
        this.f357x = null;
    }

    public void R(String str) {
        this.f359z = str;
    }

    public void S(String str) {
        this.f318A = str;
    }

    public void T(String str) {
        this.f322E = str;
    }

    public void U(String str) {
        this.f320C = str;
    }

    public void V(boolean z2) {
        this.f321D = z2;
    }

    public void W(String str) {
        this.f324G = str;
    }

    public void X(String str) {
        this.f326I = str;
    }

    public void Y(int i2) {
        this.f354u = i2;
    }

    public void Z(String str) {
        this.f327J = str;
    }

    public void a(EventListener eventListener) {
        if (eventListener instanceof ServletRequestAttributeListener) {
            this.f319B = LazyList.add(this.f319B, eventListener);
        }
        if (eventListener instanceof K1.a) {
            throw new IllegalArgumentException(eventListener.getClass().toString());
        }
        if (eventListener instanceof AsyncListener) {
            throw new IllegalArgumentException(eventListener.getClass().toString());
        }
    }

    public void a0(HttpSession httpSession) {
        this.f328K = httpSession;
    }

    public d b() {
        return this.f334a;
    }

    public void b0(o oVar) {
        this.f329L = oVar;
    }

    public Object c(String str) {
        if ("org.eclipse.jetty.io.EndPoint.maxIdleTime".equalsIgnoreCase(str)) {
            return new Long(d().e().b());
        }
        Object attribute = this.f336c == null ? null : this.f336c.getAttribute(str);
        return (attribute == null && "org.eclipse.jetty.continuation".equals(str)) ? this.f334a : attribute;
    }

    public void c0(long j2) {
        this.f330M = j2;
    }

    public c d() {
        return this.f340g;
    }

    public void d0(org.eclipse.jetty.http.o oVar) {
        this.f332O = oVar;
    }

    public String e() {
        return this.f343j;
    }

    public void e0(q.a aVar) {
        this.f325H = aVar;
    }

    public DispatcherType f() {
        return this.f345l;
    }

    public boolean f0() {
        boolean z2 = this.f342i;
        this.f342i = false;
        return z2;
    }

    public String g() {
        L1.k kVar = this.f347n;
        if (kVar == null) {
            return null;
        }
        if (this.f346m) {
            return kVar.n();
        }
        String strD = kVar.d();
        if (strD == null || strD.indexOf(58) < 0) {
            return strD;
        }
        return "[" + strD + "]";
    }

    public d.C0881d getContext() {
        return this.f341h;
    }

    public int h() {
        L1.k kVar = this.f347n;
        if (kVar == null) {
            return 0;
        }
        return kVar.getLocalPort();
    }

    public String i() {
        return this.f350q;
    }

    public String j() {
        return this.f353t;
    }

    public String k() {
        return this.f355v;
    }

    public String l() {
        org.eclipse.jetty.http.o oVar;
        if (this.f357x == null && (oVar = this.f332O) != null) {
            String str = this.f356w;
            if (str == null) {
                this.f357x = oVar.h();
            } else {
                this.f357x = oVar.i(str);
            }
        }
        return this.f357x;
    }

    public String m() {
        org.eclipse.jetty.http.o oVar;
        if (this.f322E == null && (oVar = this.f332O) != null) {
            this.f322E = oVar.f();
        }
        return this.f322E;
    }

    public l n() {
        return this.f340g.f284n;
    }

    public String o() {
        return this.f324G;
    }

    public String p() {
        String str = this.f326I;
        if (str != null) {
            return str;
        }
        org.eclipse.jetty.http.o oVar = this.f332O;
        if (oVar == null) {
            throw new IllegalStateException("No uri");
        }
        this.f326I = oVar.e();
        this.f354u = this.f332O.g();
        String str2 = this.f326I;
        if (str2 != null) {
            return str2;
        }
        L1.d dVarN = this.f340g.s().n(org.eclipse.jetty.http.j.f52266e);
        if (dVarN == null) {
            if (this.f340g != null) {
                this.f326I = g();
                this.f354u = h();
                String str3 = this.f326I;
                if (str3 != null && !"0.0.0.0".equals(str3)) {
                    return this.f326I;
                }
            }
            try {
                this.f326I = InetAddress.getLocalHost().getHostAddress();
            } catch (UnknownHostException e2) {
                f316Q.h(e2);
            }
            return this.f326I;
        }
        int iN0 = dVarN.n0();
        while (true) {
            int i2 = iN0 - 1;
            if (iN0 <= dVarN.getIndex()) {
                break;
            }
            char cK0 = (char) (dVarN.k0(i2) & 255);
            if (cK0 == ':') {
                this.f326I = L1.g.f(dVarN.h0(dVarN.getIndex(), i2 - dVarN.getIndex()));
                try {
                    try {
                        this.f354u = L1.g.h(dVarN.h0(iN0, (dVarN.n0() - i2) - 1));
                    } catch (NumberFormatException unused) {
                        c cVar = this.f340g;
                        if (cVar != null) {
                            cVar.f282l.n(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "Bad Host header", null, true);
                        }
                    }
                    return this.f326I;
                } catch (IOException e3) {
                    throw new RuntimeException(e3);
                }
            }
            if (cK0 == ']') {
                break;
            }
            iN0 = i2;
        }
        if (this.f326I == null || this.f354u < 0) {
            this.f326I = L1.g.f(dVarN);
            this.f354u = 0;
        }
        return this.f326I;
    }

    public String q() {
        if (this.f327J == null) {
            this.f327J = "";
        }
        return this.f327J;
    }

    public ServletResponse r() {
        return this.f340g.v();
    }

    public HttpSession s(boolean z2) {
        HttpSession httpSession = this.f328K;
        if (httpSession != null) {
            o oVar = this.f329L;
            if (oVar == null || oVar.q(httpSession)) {
                return this.f328K;
            }
            this.f328K = null;
        }
        if (!z2) {
            return null;
        }
        o oVar2 = this.f329L;
        if (oVar2 == null) {
            throw new IllegalStateException("No SessionManager");
        }
        HttpSession httpSessionX = oVar2.x(this);
        this.f328K = httpSessionX;
        org.eclipse.jetty.http.f fVarE = this.f329L.E(httpSessionX, e(), A());
        if (fVarE != null) {
            this.f340g.v().a(fVarE);
        }
        return this.f328K;
    }

    public o t() {
        return this.f329L;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f348o ? "[" : "(");
        sb.append(i());
        sb.append(" ");
        sb.append(this.f332O);
        sb.append(this.f348o ? "]@" : ")@");
        sb.append(hashCode());
        sb.append(" ");
        sb.append(super.toString());
        return sb.toString();
    }

    public long u() {
        return this.f330M;
    }

    public L1.d v() {
        if (this.f331N == null) {
            long j2 = this.f330M;
            if (j2 > 0) {
                this.f331N = org.eclipse.jetty.http.g.f52184e.g(j2);
            }
        }
        return this.f331N;
    }

    public q.a w() {
        return this.f325H;
    }

    public boolean x() {
        return this.f334a.k();
    }

    public boolean y() {
        return this.f335b;
    }

    public boolean z() {
        return this.f348o;
    }
}
