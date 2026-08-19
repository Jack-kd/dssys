package org.eclipse.jetty.servlet;

import N1.k;
import N1.q;
import java.util.Collections;
import java.util.Map;
import java.util.Stack;
import javax.servlet.MultipartConfigElement;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.SingleThreadModel;
import javax.servlet.UnavailableException;
import org.eclipse.jetty.server.handler.d;
import org.eclipse.jetty.servlet.Holder;
import org.eclipse.jetty.servlet.b;
import org.eclipse.jetty.util.j;

/* loaded from: classes5.dex */
public class d extends Holder implements q.a, Comparable {

    /* renamed from: t, reason: collision with root package name */
    public static final R1.c f52586t = R1.b.a(d.class);

    /* renamed from: u, reason: collision with root package name */
    public static final Map f52587u = Collections.EMPTY_MAP;

    /* renamed from: k, reason: collision with root package name */
    public int f52588k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f52589l;

    /* renamed from: m, reason: collision with root package name */
    public String f52590m;

    /* renamed from: n, reason: collision with root package name */
    public ServletRegistration.Dynamic f52591n;

    /* renamed from: o, reason: collision with root package name */
    public transient Servlet f52592o;

    /* renamed from: p, reason: collision with root package name */
    public transient b f52593p;

    /* renamed from: q, reason: collision with root package name */
    public transient long f52594q;

    /* renamed from: r, reason: collision with root package name */
    public transient boolean f52595r;

    /* renamed from: s, reason: collision with root package name */
    public transient UnavailableException f52596s;

    public class a extends UnavailableException {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Throwable f52597a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, int i2, Throwable th) {
            super(str, i2);
            this.f52597a = th;
            initCause(th);
        }
    }

    public class b extends Holder.b implements ServletConfig {
        public b() {
            super();
        }
    }

    public class c extends Holder.c implements ServletRegistration.Dynamic {

        /* renamed from: b, reason: collision with root package name */
        public MultipartConfigElement f52600b;

        public c() {
            super();
        }

        public MultipartConfigElement a() {
            return this.f52600b;
        }
    }

    public d(Holder.Source source) {
        super(source);
        this.f52589l = false;
        this.f52595r = true;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.UnavailableException */
    public void a0() throws UnavailableException {
        Class cls = this.f52547c;
        if (cls == null || !Servlet.class.isAssignableFrom(cls)) {
            throw new UnavailableException("Servlet " + this.f52547c + " is not a javax.servlet.Servlet");
        }
    }

    public void b0(Object obj) {
        if (obj == null) {
            return;
        }
        Servlet servlet = (Servlet) obj;
        S().l0(servlet);
        servlet.destroy();
    }

    public String c0() {
        return this.f52590m;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        String str;
        if (!(obj instanceof d)) {
            return 1;
        }
        d dVar = (d) obj;
        int iCompareTo = 0;
        if (dVar == this) {
            return 0;
        }
        int i2 = dVar.f52588k;
        int i3 = this.f52588k;
        if (i2 < i3) {
            return 1;
        }
        if (i2 > i3) {
            return -1;
        }
        String str2 = this.f52549e;
        if (str2 != null && (str = dVar.f52549e) != null) {
            iCompareTo = str2.compareTo(str);
        }
        return iCompareTo == 0 ? this.f52552h.compareTo(dVar.f52552h) : iCompareTo;
    }

    public ServletRegistration.Dynamic d0() {
        if (this.f52591n == null) {
            this.f52591n = new c();
        }
        return this.f52591n;
    }

    @Override // org.eclipse.jetty.servlet.Holder, org.eclipse.jetty.util.component.a
    public void doStart() throws Exception {
        this.f52594q = 0L;
        if (this.f52595r) {
            try {
                super.doStart();
                try {
                    a0();
                    this.f52553i.q0();
                    this.f52593p = new b();
                    Class cls = this.f52547c;
                    if (cls != null && SingleThreadModel.class.isAssignableFrom(cls)) {
                        this.f52592o = new C0882d(this, null);
                    }
                    if (this.f52550f || this.f52589l) {
                        try {
                            i0();
                        } catch (Exception e2) {
                            if (!this.f52553i.w0()) {
                                throw e2;
                            }
                            f52586t.h(e2);
                        }
                    }
                } catch (UnavailableException e3) {
                    n0(e3);
                    if (!this.f52553i.w0()) {
                        throw e3;
                    }
                    f52586t.h(e3);
                }
            } catch (UnavailableException e4) {
                n0(e4);
                if (!this.f52553i.w0()) {
                    throw e4;
                }
                f52586t.h(e4);
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.a
    public void doStop() {
        Servlet servlet = this.f52592o;
        if (servlet != null) {
            try {
                b0(servlet);
            } catch (Exception e2) {
                f52586t.e(e2);
            }
        }
        if (!this.f52550f) {
            this.f52592o = null;
        }
        this.f52593p = null;
    }

    public synchronized Servlet e0() {
        try {
            long j2 = this.f52594q;
            if (j2 != 0) {
                if (j2 < 0 || (j2 > 0 && System.currentTimeMillis() < this.f52594q)) {
                    throw this.f52596s;
                }
                this.f52594q = 0L;
                this.f52596s = null;
            }
            if (this.f52592o == null) {
                i0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f52592o;
    }

    public boolean equals(Object obj) {
        return compareTo(obj) == 0;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.UnavailableException */
    public void f0(k kVar, ServletRequest servletRequest, ServletResponse servletResponse) throws UnavailableException {
        if (this.f52547c == null) {
            throw new UnavailableException("Servlet Not Initialized");
        }
        Servlet servletE0 = this.f52592o;
        synchronized (this) {
            try {
                if (!isStarted()) {
                    throw new UnavailableException("Servlet not initialized", -1);
                }
                if (this.f52594q != 0 || !this.f52589l) {
                    servletE0 = e0();
                }
                if (servletE0 == null) {
                    throw new UnavailableException("Could not instantiate " + this.f52547c);
                }
            } finally {
            }
        }
        boolean zY = kVar.y();
        try {
            try {
                String str = this.f52590m;
                if (str != null) {
                    servletRequest.setAttribute("org.apache.catalina.jsp_file", str);
                }
                if (!U()) {
                    kVar.E(false);
                }
                MultipartConfigElement multipartConfigElementA = ((c) d0()).a();
                if (multipartConfigElementA != null) {
                    servletRequest.setAttribute("org.eclipse.multipartConfig", multipartConfigElementA);
                }
                servletE0.service(servletRequest, servletResponse);
                kVar.E(zY);
            } catch (UnavailableException e2) {
                n0(e2);
                throw this.f52596s;
            }
        } catch (Throwable th) {
            kVar.E(zY);
            servletRequest.setAttribute("javax.servlet.error.servlet_name", getName());
            throw th;
        }
    }

    public void g0() {
        org.eclipse.jetty.server.handler.d dVarC = ((d.C0881d) S().r0()).c();
        dVarC.setAttribute("org.apache.catalina.jsp_classpath", dVarC.u0());
        X("com.sun.appserv.jsp.classpath", j.a(dVarC.t0().getParent()));
        if ("?".equals(R("classpath"))) {
            String strU0 = dVarC.u0();
            f52586t.i("classpath=" + strU0, new Object[0]);
            if (strU0 != null) {
                X("classpath", strU0);
            }
        }
    }

    public void h0() {
        if (((c) d0()).a() != null) {
            ((d.C0881d) S().r0()).c().o0(new k.a());
        }
    }

    public int hashCode() {
        String str = this.f52552h;
        return str == null ? System.identityHashCode(this) : str.hashCode();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.UnavailableException */
    public final void i0() throws UnavailableException, ServletException {
        try {
            if (this.f52592o == null) {
                this.f52592o = o0();
            }
            if (this.f52593p == null) {
                this.f52593p = new b();
            }
            if (k0()) {
                g0();
            }
            h0();
            this.f52592o.init(this.f52593p);
        } catch (Exception e2) {
            m0(e2);
            this.f52592o = null;
            this.f52593p = null;
            throw new ServletException(toString(), e2);
        } catch (ServletException e3) {
            m0(e3.getCause() == null ? e3 : e3.getCause());
            this.f52592o = null;
            this.f52593p = null;
            throw e3;
        } catch (UnavailableException e4) {
            n0(e4);
            this.f52592o = null;
            this.f52593p = null;
            throw e4;
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean j0() {
        return this.f52595r;
    }

    public final boolean k0() {
        Servlet servlet = this.f52592o;
        boolean zL0 = false;
        if (servlet == null) {
            return false;
        }
        for (Class<?> superclass = servlet.getClass(); superclass != null && !zL0; superclass = superclass.getSuperclass()) {
            zL0 = l0(superclass.getName());
        }
        return zL0;
    }

    public final boolean l0(String str) {
        if (str == null) {
            return false;
        }
        return "org.apache.jasper.servlet.JspServlet".equals(str);
    }

    public final void m0(Throwable th) {
        ServletContext servletContextR0 = this.f52553i.r0();
        if (servletContextR0 == null) {
            f52586t.b("unavailable", th);
        } else {
            servletContextR0.log("unavailable", th);
        }
        this.f52596s = new a(String.valueOf(th), -1, th);
        this.f52594q = -1L;
    }

    public final void n0(UnavailableException unavailableException) {
        if (this.f52596s != unavailableException || this.f52594q == 0) {
            this.f52553i.r0().log("unavailable", unavailableException);
            this.f52596s = unavailableException;
            this.f52594q = -1L;
            if (unavailableException.isPermanent()) {
                this.f52594q = -1L;
            } else if (this.f52596s.getUnavailableSeconds() > 0) {
                this.f52594q = System.currentTimeMillis() + (this.f52596s.getUnavailableSeconds() * 1000);
            } else {
                this.f52594q = System.currentTimeMillis() + 5000;
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
    public Servlet o0() throws IllegalAccessException, ServletException, InstantiationException {
        try {
            ServletContext servletContextR0 = S().r0();
            return servletContextR0 == null ? (Servlet) Q().newInstance() : ((b.a) servletContextR0).g(Q());
        } catch (ServletException e2) {
            Throwable rootCause = e2.getRootCause();
            if (rootCause instanceof InstantiationException) {
                throw ((InstantiationException) rootCause);
            }
            if (rootCause instanceof IllegalAccessException) {
                throw ((IllegalAccessException) rootCause);
            }
            throw e2;
        }
    }

    public synchronized void p0(Servlet servlet) {
        if (servlet != null) {
            if (!(servlet instanceof SingleThreadModel)) {
                this.f52550f = true;
                this.f52592o = servlet;
                W(servlet.getClass());
                if (getName() == null) {
                    Y(servlet.getClass().getName() + "-" + super.hashCode());
                }
            }
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: org.eclipse.jetty.servlet.d$d, reason: collision with other inner class name */
    public class C0882d implements Servlet {

        /* renamed from: a, reason: collision with root package name */
        public Stack f52602a;

        public C0882d() {
            this.f52602a = new Stack();
        }

        public /* synthetic */ C0882d(d dVar, a aVar) {
            this();
        }
    }

    public d(Servlet servlet) {
        this(Holder.Source.EMBEDDED);
        p0(servlet);
    }
}
