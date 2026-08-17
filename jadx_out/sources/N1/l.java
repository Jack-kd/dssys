package N1;

import L1.e;
import com.anythink.core.common.m.AbstractC1114b;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.server.handler.d;

/* loaded from: classes5.dex */
public class l implements HttpServletResponse {

    /* renamed from: l, reason: collision with root package name */
    public static final R1.c f360l = R1.b.a(l.class);

    /* renamed from: a, reason: collision with root package name */
    public final c f361a;

    /* renamed from: b, reason: collision with root package name */
    public int f362b = 200;

    /* renamed from: c, reason: collision with root package name */
    public String f363c;

    /* renamed from: d, reason: collision with root package name */
    public Locale f364d;

    /* renamed from: e, reason: collision with root package name */
    public String f365e;

    /* renamed from: f, reason: collision with root package name */
    public e.a f366f;

    /* renamed from: g, reason: collision with root package name */
    public String f367g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f368h;

    /* renamed from: i, reason: collision with root package name */
    public String f369i;

    /* renamed from: j, reason: collision with root package name */
    public volatile int f370j;

    /* renamed from: k, reason: collision with root package name */
    public PrintWriter f371k;

    public l(c cVar) {
        this.f361a = cVar;
    }

    public void a(org.eclipse.jetty.http.f fVar) {
        this.f361a.w().g(fVar);
    }

    public void b() {
        this.f361a.i();
    }

    public void c() {
        j();
        this.f371k = null;
        this.f370j = 0;
    }

    public ServletOutputStream d() {
        if (this.f370j != 0 && this.f370j != 1) {
            throw new IllegalStateException("WRITER");
        }
        ServletOutputStream servletOutputStreamQ = this.f361a.q();
        this.f370j = 1;
        return servletOutputStreamQ;
    }

    public String e() {
        return this.f363c;
    }

    public int f() {
        return this.f362b;
    }

    public boolean g() {
        return this.f361a.D();
    }

    public void h() {
        this.f362b = 200;
        this.f363c = null;
        this.f364d = null;
        this.f365e = null;
        this.f366f = null;
        this.f367g = null;
        this.f368h = false;
        this.f369i = null;
        this.f371k = null;
        this.f370j = 0;
    }

    public void i() {
        j();
        c();
        this.f362b = 200;
        this.f363c = null;
        org.eclipse.jetty.http.g gVarW = this.f361a.w();
        gVarW.h();
        String strS = this.f361a.s().s(org.eclipse.jetty.http.j.f52278k);
        if (strS != null) {
            String[] strArrSplit = strS.split(",");
            for (int i2 = 0; strArrSplit != null && i2 < strArrSplit.length; i2++) {
                e.a aVarC = org.eclipse.jetty.http.i.f52223d.c(strArrSplit[0].trim());
                if (aVarC != null) {
                    int iH = aVarC.h();
                    if (iH == 1) {
                        gVarW.v(org.eclipse.jetty.http.j.f52278k, org.eclipse.jetty.http.i.f52224e);
                    } else if (iH != 5) {
                        if (iH == 8) {
                            gVarW.w(org.eclipse.jetty.http.j.f52278k, "TE");
                        }
                    } else if ("HTTP/1.0".equalsIgnoreCase(this.f361a.r().k())) {
                        gVarW.w(org.eclipse.jetty.http.j.f52278k, "keep-alive");
                    }
                }
            }
        }
    }

    public void j() {
        if (g()) {
            throw new IllegalStateException("Committed");
        }
        this.f361a.o().f();
    }

    public void k(int i2) throws IOException {
        if (i2 == -1) {
            this.f361a.e().close();
        } else if (i2 != 102) {
            l(i2, null);
        } else {
            m();
        }
    }

    public void l(int i2, String str) throws IOException {
        if (this.f361a.C()) {
            return;
        }
        if (g()) {
            f360l.g("Committed before " + i2 + " " + str, new Object[0]);
        }
        j();
        this.f367g = null;
        p("Expires", null);
        p("Last-Modified", null);
        p("Cache-Control", null);
        p(AbstractC1114b.f5589g, null);
        p(com.sigmob.sdk.downloader.core.c.f37366e, null);
        this.f370j = 0;
        q(i2, str);
        if (str == null) {
            str = HttpStatus.b(i2);
        }
        if (i2 != 204 && i2 != 304 && i2 != 206 && i2 >= 200) {
            k kVarR = this.f361a.r();
            d.C0881d context = kVarR.getContext();
            if (context != null) {
                context.c().y0();
            }
            t.f.a(this.f361a.l().c().W(org.eclipse.jetty.server.handler.f.class));
            p("Cache-Control", "must-revalidate,no-cache,no-store");
            o("text/html;charset=ISO-8859-1");
            org.eclipse.jetty.util.e eVar = new org.eclipse.jetty.util.e(2048);
            if (str != null) {
                str = org.eclipse.jetty.util.m.e(org.eclipse.jetty.util.m.e(org.eclipse.jetty.util.m.e(str, "&", "&amp;"), "<", "&lt;"), ">", "&gt;");
            }
            String strM = kVarR.m();
            if (strM != null) {
                strM = org.eclipse.jetty.util.m.e(org.eclipse.jetty.util.m.e(org.eclipse.jetty.util.m.e(strM, "&", "&amp;"), "<", "&lt;"), ">", "&gt;");
            }
            eVar.write("<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html;charset=ISO-8859-1\"/>\n");
            eVar.write("<title>Error ");
            eVar.write(Integer.toString(i2));
            eVar.A(' ');
            if (str == null) {
                str = HttpStatus.b(i2);
            }
            eVar.write(str);
            eVar.write("</title>\n</head>\n<body>\n<h2>HTTP ERROR: ");
            eVar.write(Integer.toString(i2));
            eVar.write("</h2>\n<p>Problem accessing ");
            eVar.write(strM);
            eVar.write(". Reason:\n<pre>    ");
            eVar.write(str);
            eVar.write("</pre>");
            eVar.write("</p>\n");
            if (this.f361a.x().j0()) {
                eVar.write("<hr /><i><small>Powered by Jetty:// ");
                eVar.write(m.n0());
                eVar.write("</small></i>");
            }
            for (int i3 = 0; i3 < 20; i3++) {
                eVar.write("\n                                                ");
            }
            eVar.write("\n</body>\n</html>\n");
            eVar.flush();
            n(eVar.z());
            eVar.C(d());
            eVar.b();
        } else if (i2 != 206) {
            this.f361a.s().A(org.eclipse.jetty.http.j.f52296z);
            this.f361a.s().A(org.eclipse.jetty.http.j.f52276j);
            this.f367g = null;
            this.f365e = null;
            this.f366f = null;
        }
        b();
    }

    public void m() {
        if (!this.f361a.B() || g()) {
            return;
        }
        ((org.eclipse.jetty.http.h) this.f361a.o()).E(102);
    }

    public void n(int i2) {
        if (g() || this.f361a.C()) {
            return;
        }
        long j2 = i2;
        this.f361a.f282l.o(j2);
        if (i2 > 0) {
            this.f361a.w().z(com.sigmob.sdk.downloader.core.c.f37366e, j2);
            if (this.f361a.f282l.k()) {
                if (this.f370j == 2) {
                    this.f371k.close();
                } else if (this.f370j == 1) {
                    try {
                        d().close();
                    } catch (IOException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
        }
    }

    public void o(String str) {
        if (g() || this.f361a.C()) {
            return;
        }
        if (str == null) {
            if (this.f364d == null) {
                this.f367g = null;
            }
            this.f365e = null;
            this.f366f = null;
            this.f369i = null;
            this.f361a.w().A(org.eclipse.jetty.http.j.f52296z);
            return;
        }
        int iIndexOf = str.indexOf(59);
        if (iIndexOf <= 0) {
            this.f365e = str;
            e.a aVarC = org.eclipse.jetty.http.q.f52355c.c(str);
            this.f366f = aVarC;
            String str2 = this.f367g;
            if (str2 == null) {
                if (aVarC != null) {
                    this.f369i = aVarC.toString();
                    this.f361a.w().v(org.eclipse.jetty.http.j.f52296z, this.f366f);
                    return;
                } else {
                    this.f369i = str;
                    this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                    return;
                }
            }
            if (aVarC == null) {
                this.f369i = str + ";charset=" + org.eclipse.jetty.util.l.c(this.f367g, ";= ");
                this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                return;
            }
            e.a aVarD = aVarC.d(str2);
            if (aVarD != null) {
                this.f369i = aVarD.toString();
                this.f361a.w().v(org.eclipse.jetty.http.j.f52296z, aVarD);
                return;
            }
            this.f369i = this.f365e + ";charset=" + org.eclipse.jetty.util.l.c(this.f367g, ";= ");
            this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
            return;
        }
        String strTrim = str.substring(0, iIndexOf).trim();
        this.f365e = strTrim;
        L1.e eVar = org.eclipse.jetty.http.q.f52355c;
        this.f366f = eVar.c(strTrim);
        int i2 = iIndexOf + 1;
        int iIndexOf2 = str.indexOf("charset=", i2);
        if (iIndexOf2 < 0) {
            this.f366f = null;
            if (this.f367g != null) {
                str = str + ";charset=" + org.eclipse.jetty.util.l.c(this.f367g, ";= ");
            }
            this.f369i = str;
            this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
            return;
        }
        this.f368h = true;
        int i3 = iIndexOf2 + 8;
        int iIndexOf3 = str.indexOf(32, i3);
        if (this.f370j != 2) {
            if ((iIndexOf2 != i2 || iIndexOf3 >= 0) && !(iIndexOf2 == iIndexOf + 2 && iIndexOf3 < 0 && str.charAt(i2) == ' ')) {
                if (iIndexOf3 > 0) {
                    this.f367g = org.eclipse.jetty.util.l.e(str.substring(i3, iIndexOf3));
                    this.f369i = str;
                    this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                    return;
                } else {
                    this.f367g = org.eclipse.jetty.util.l.e(str.substring(i3));
                    this.f369i = str;
                    this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                    return;
                }
            }
            this.f366f = eVar.c(this.f365e);
            String strE = org.eclipse.jetty.util.l.e(str.substring(i3));
            this.f367g = strE;
            e.a aVar = this.f366f;
            if (aVar == null) {
                this.f369i = str;
                this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                return;
            }
            e.a aVarD2 = aVar.d(strE);
            if (aVarD2 != null) {
                this.f369i = aVarD2.toString();
                this.f361a.w().v(org.eclipse.jetty.http.j.f52296z, aVarD2);
                return;
            } else {
                this.f369i = str;
                this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                return;
            }
        }
        if ((iIndexOf2 != i2 || iIndexOf3 >= 0) && !(iIndexOf2 == iIndexOf + 2 && iIndexOf3 < 0 && str.charAt(i2) == ' ')) {
            if (iIndexOf3 < 0) {
                this.f369i = str.substring(0, iIndexOf2) + ";charset=" + org.eclipse.jetty.util.l.c(this.f367g, ";= ");
                this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
                return;
            }
            this.f369i = str.substring(0, iIndexOf2) + str.substring(iIndexOf3) + ";charset=" + org.eclipse.jetty.util.l.c(this.f367g, ";= ");
            this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
            return;
        }
        e.a aVar2 = this.f366f;
        if (aVar2 == null) {
            this.f369i = this.f365e + ";charset=" + this.f367g;
            this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
            return;
        }
        e.a aVarD3 = aVar2.d(this.f367g);
        if (aVarD3 != null) {
            this.f369i = aVarD3.toString();
            this.f361a.w().v(org.eclipse.jetty.http.j.f52296z, aVarD3);
            return;
        }
        this.f369i = this.f365e + ";charset=" + this.f367g;
        this.f361a.w().w(org.eclipse.jetty.http.j.f52296z, this.f369i);
    }

    public void p(String str, String str2) {
        if (AbstractC1114b.f5589g.equalsIgnoreCase(str)) {
            o(str2);
            return;
        }
        if (this.f361a.C()) {
            if (!str.startsWith("org.eclipse.jetty.server.include.")) {
                return;
            } else {
                str = str.substring(33);
            }
        }
        this.f361a.w().x(str, str2);
        if (com.sigmob.sdk.downloader.core.c.f37366e.equalsIgnoreCase(str)) {
            if (str2 == null) {
                this.f361a.f282l.o(-1L);
            } else {
                this.f361a.f282l.o(Long.parseLong(str2));
            }
        }
    }

    public void q(int i2, String str) {
        if (i2 <= 0) {
            throw new IllegalArgumentException();
        }
        if (this.f361a.C()) {
            return;
        }
        this.f362b = i2;
        this.f363c = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("HTTP/1.1 ");
        sb.append(this.f362b);
        sb.append(" ");
        String str = this.f363c;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append(System.getProperty("line.separator"));
        sb.append(this.f361a.w().toString());
        return sb.toString();
    }
}
