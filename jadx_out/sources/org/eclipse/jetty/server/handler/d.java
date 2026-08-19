package org.eclipse.jetty.server.handler;

import N1.k;
import N1.m;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.servlet.DispatcherType;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.jetty.http.q;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.n;
import org.eclipse.jetty.util.o;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public abstract class d extends i implements org.eclipse.jetty.util.b, m.a {

    /* renamed from: N, reason: collision with root package name */
    public static final R1.c f52505N = R1.b.a(d.class);

    /* renamed from: O, reason: collision with root package name */
    public static final ThreadLocal f52506O = new ThreadLocal();

    /* renamed from: C, reason: collision with root package name */
    public Object f52509C;

    /* renamed from: D, reason: collision with root package name */
    public Object f52510D;

    /* renamed from: E, reason: collision with root package name */
    public Object f52511E;

    /* renamed from: F, reason: collision with root package name */
    public Object f52512F;

    /* renamed from: G, reason: collision with root package name */
    public Object f52513G;

    /* renamed from: H, reason: collision with root package name */
    public Map f52514H;

    /* renamed from: I, reason: collision with root package name */
    public String[] f52515I;

    /* renamed from: M, reason: collision with root package name */
    public volatile int f52519M;

    /* renamed from: k, reason: collision with root package name */
    public C0881d f52520k;

    /* renamed from: o, reason: collision with root package name */
    public ClassLoader f52524o;

    /* renamed from: q, reason: collision with root package name */
    public String f52526q;

    /* renamed from: r, reason: collision with root package name */
    public S1.e f52527r;

    /* renamed from: s, reason: collision with root package name */
    public q f52528s;

    /* renamed from: t, reason: collision with root package name */
    public String[] f52529t;

    /* renamed from: u, reason: collision with root package name */
    public Set f52530u;

    /* renamed from: v, reason: collision with root package name */
    public EventListener[] f52531v;

    /* renamed from: w, reason: collision with root package name */
    public R1.c f52532w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f52533x;

    /* renamed from: p, reason: collision with root package name */
    public String f52525p = ServiceReference.DELIMITER;

    /* renamed from: y, reason: collision with root package name */
    public int f52534y = Integer.getInteger("org.eclipse.jetty.server.Request.maxFormKeys", -1).intValue();

    /* renamed from: z, reason: collision with root package name */
    public int f52535z = Integer.getInteger("org.eclipse.jetty.server.Request.maxFormContentSize", -1).intValue();

    /* renamed from: A, reason: collision with root package name */
    public boolean f52507A = false;

    /* renamed from: B, reason: collision with root package name */
    public boolean f52508B = false;

    /* renamed from: J, reason: collision with root package name */
    public final CopyOnWriteArrayList f52516J = new CopyOnWriteArrayList();

    /* renamed from: K, reason: collision with root package name */
    public boolean f52517K = false;

    /* renamed from: L, reason: collision with root package name */
    public boolean f52518L = true;

    /* renamed from: l, reason: collision with root package name */
    public final org.eclipse.jetty.util.c f52521l = new org.eclipse.jetty.util.c();

    /* renamed from: m, reason: collision with root package name */
    public final org.eclipse.jetty.util.c f52522m = new org.eclipse.jetty.util.c();

    /* renamed from: n, reason: collision with root package name */
    public final Map f52523n = new HashMap();

    public interface a {
    }

    public static class b implements a {
    }

    public static class c implements org.eclipse.jetty.util.component.e {

        /* renamed from: b, reason: collision with root package name */
        public final ClassLoader f52536b;

        public c(ClassLoader classLoader) {
            this.f52536b = classLoader;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v7, types: [org.eclipse.jetty.server.handler.d$c] */
        @Override // org.eclipse.jetty.util.component.e
        public void m(Appendable appendable, String str) throws IOException {
            ClassLoader parent;
            appendable.append(String.valueOf(this.f52536b)).append("\n");
            ClassLoader classLoader = this.f52536b;
            if (classLoader == null || (parent = classLoader.getParent()) == null) {
                return;
            }
            if (!(parent instanceof org.eclipse.jetty.util.component.e)) {
                parent = new c(parent);
            }
            ClassLoader classLoader2 = this.f52536b;
            if (classLoader2 instanceof URLClassLoader) {
                org.eclipse.jetty.util.component.b.S(appendable, str, n.a(((URLClassLoader) classLoader2).getURLs()), Collections.singleton(parent));
            } else {
                org.eclipse.jetty.util.component.b.S(appendable, str, Collections.singleton(parent));
            }
        }
    }

    /* renamed from: org.eclipse.jetty.server.handler.d$d, reason: collision with other inner class name */
    public class C0881d implements ServletContext {

        /* renamed from: a, reason: collision with root package name */
        public int f52537a = 3;

        /* renamed from: b, reason: collision with root package name */
        public int f52538b = 0;

        /* renamed from: c, reason: collision with root package name */
        public boolean f52539c = true;

        public C0881d() {
        }

        public synchronized Object a(String str) {
            Object attribute;
            attribute = d.this.getAttribute(str);
            if (attribute == null && d.this.f52522m != null) {
                attribute = d.this.f52522m.getAttribute(str);
            }
            return attribute;
        }

        public synchronized Enumeration b() {
            HashSet hashSet;
            try {
                hashSet = new HashSet();
                if (d.this.f52522m != null) {
                    Enumeration enumerationB = d.this.f52522m.b();
                    while (enumerationB.hasMoreElements()) {
                        hashSet.add(enumerationB.nextElement());
                    }
                }
                Enumeration enumerationB2 = d.this.f52521l.b();
                while (enumerationB2.hasMoreElements()) {
                    hashSet.add(enumerationB2.nextElement());
                }
            } catch (Throwable th) {
                throw th;
            }
            return Collections.enumeration(hashSet);
        }

        public d c() {
            return d.this;
        }

        public String d() {
            return (d.this.f52525p == null || !d.this.f52525p.equals(ServiceReference.DELIMITER)) ? d.this.f52525p : "";
        }

        public String e(String str) {
            return d.this.A0(str);
        }

        public void f(boolean z2) {
            this.f52539c = z2;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00b1 A[PHI: r4 r8
          0x00b1: PHI (r4v6 int) = (r4v2 int), (r4v2 int), (r4v2 int), (r4v9 int), (r4v2 int) binds: [B:6:0x0020, B:21:0x005b, B:23:0x0062, B:86:0x00b1, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]
          0x00b1: PHI (r8v8 java.lang.String) = 
          (r8v1 java.lang.String)
          (r8v1 java.lang.String)
          (r8v1 java.lang.String)
          (r8v12 java.lang.String)
          (r8v1 java.lang.String)
         binds: [B:6:0x0020, B:21:0x005b, B:23:0x0062, B:86:0x00b1, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x00a3 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public javax.servlet.ServletContext getContext(java.lang.String r19) {
            /*
                Method dump skipped, instructions count: 327
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.d.C0881d.getContext(java.lang.String):javax.servlet.ServletContext");
        }

        public String toString() {
            return "ServletContext@" + d.this.toString();
        }
    }

    public d(C0881d c0881d) {
        this.f52520k = c0881d;
        n0(new b());
    }

    public static C0881d w0() {
        return (C0881d) f52506O.get();
    }

    public String A0(String str) {
        return (String) this.f52523n.get(str);
    }

    public C0881d B0() {
        return this.f52520k;
    }

    public String[] C0() {
        return this.f52529t;
    }

    public boolean D0(String str) {
        boolean z2 = false;
        if (str != null && this.f52515I != null) {
            while (str.startsWith("//")) {
                str = o.c(str);
            }
            int i2 = 0;
            while (!z2) {
                String[] strArr = this.f52515I;
                if (i2 >= strArr.length) {
                    break;
                }
                int i3 = i2 + 1;
                boolean zF = org.eclipse.jetty.util.m.f(str, strArr[i2]);
                i2 = i3;
                z2 = zF;
            }
        }
        return z2;
    }

    public S1.e E0(URL url) {
        return S1.e.g(url);
    }

    public final String F0(String str) {
        if (str == null) {
            return null;
        }
        return str.endsWith(com.anythink.core.common.d.i.f2495E) ? str.substring(0, str.length() - 1) : str;
    }

    public void G0(String str) {
        N1.h[] hVarArrF;
        if (str != null && str.length() > 1 && str.endsWith(ServiceReference.DELIMITER)) {
            throw new IllegalArgumentException("ends with /");
        }
        this.f52525p = str;
        if (c() != null) {
            if ((c().isStarting() || c().isStarted()) && (hVarArrF = c().F(e.class)) != null && hVarArrF.length > 0) {
                t.f.a(hVarArrF[0]);
                throw null;
            }
        }
    }

    public void H0(EventListener[] eventListenerArr) {
        this.f52509C = null;
        this.f52510D = null;
        this.f52511E = null;
        this.f52512F = null;
        this.f52531v = eventListenerArr;
        for (int i2 = 0; eventListenerArr != null && i2 < eventListenerArr.length; i2++) {
            EventListener eventListener = this.f52531v[i2];
            if (eventListener instanceof ServletContextListener) {
                this.f52509C = LazyList.add(this.f52509C, eventListener);
            }
            if (eventListener instanceof ServletContextAttributeListener) {
                this.f52510D = LazyList.add(this.f52510D, eventListener);
            }
            if (eventListener instanceof ServletRequestListener) {
                this.f52511E = LazyList.add(this.f52511E, eventListener);
            }
            if (eventListener instanceof ServletRequestAttributeListener) {
                this.f52512F = LazyList.add(this.f52512F, eventListener);
            }
        }
    }

    public void I0(String str, Object obj) {
        c().h0().update((Object) this, this.f52514H.put(str, obj), obj, str, true);
    }

    public void J0() {
        String str = (String) this.f52523n.get("org.eclipse.jetty.server.context.ManagedAttributes");
        if (str != null) {
            this.f52514H = new HashMap();
            for (String str2 : str.split(",")) {
                this.f52514H.put(str2, null);
            }
            Enumeration enumerationB = this.f52520k.b();
            while (enumerationB.hasMoreElements()) {
                String str3 = (String) enumerationB.nextElement();
                r0(str3, this.f52520k.a(str3));
            }
        }
        super.doStart();
        if (this.f52509C != null) {
            ServletContextEvent servletContextEvent = new ServletContextEvent(this.f52520k);
            for (int i2 = 0; i2 < LazyList.size(this.f52509C); i2++) {
                p0((ServletContextListener) LazyList.get(this.f52509C, i2), servletContextEvent);
            }
        }
    }

    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, N1.h
    public void a(m mVar) {
        super.a(mVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x007f  */
    @Override // org.eclipse.jetty.server.handler.i, org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStart() throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            r5.f52519M = r0
            java.lang.String r0 = r5.f52525p
            if (r0 == 0) goto L83
            java.lang.String r0 = r5.x0()
            if (r0 != 0) goto L12
            java.lang.String r0 = r5.v0()
            goto L16
        L12:
            java.lang.String r0 = r5.x0()
        L16:
            R1.c r0 = R1.b.b(r0)
            r5.f52532w = r0
            r0 = 0
            java.lang.ClassLoader r1 = r5.f52524o     // Catch: java.lang.Throwable -> L34
            if (r1 == 0) goto L38
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L34
            java.lang.ClassLoader r2 = r1.getContextClassLoader()     // Catch: java.lang.Throwable -> L31
            java.lang.ClassLoader r3 = r5.f52524o     // Catch: java.lang.Throwable -> L2f
            r1.setContextClassLoader(r3)     // Catch: java.lang.Throwable -> L2f
            goto L3a
        L2f:
            r3 = move-exception
            goto L76
        L31:
            r3 = move-exception
            r2 = r0
            goto L76
        L34:
            r3 = move-exception
            r1 = r0
            r2 = r1
            goto L76
        L38:
            r1 = r0
            r2 = r1
        L3a:
            org.eclipse.jetty.http.q r3 = r5.f52528s     // Catch: java.lang.Throwable -> L2f
            if (r3 != 0) goto L45
            org.eclipse.jetty.http.q r3 = new org.eclipse.jetty.http.q     // Catch: java.lang.Throwable -> L2f
            r3.<init>()     // Catch: java.lang.Throwable -> L2f
            r5.f52528s = r3     // Catch: java.lang.Throwable -> L2f
        L45:
            java.lang.ThreadLocal r3 = org.eclipse.jetty.server.handler.d.f52506O     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r4 = r3.get()     // Catch: java.lang.Throwable -> L2f
            org.eclipse.jetty.server.handler.d$d r4 = (org.eclipse.jetty.server.handler.d.C0881d) r4     // Catch: java.lang.Throwable -> L2f
            org.eclipse.jetty.server.handler.d$d r0 = r5.f52520k     // Catch: java.lang.Throwable -> L74
            r3.set(r0)     // Catch: java.lang.Throwable -> L74
            r5.J0()     // Catch: java.lang.Throwable -> L74
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L74
            boolean r0 = r5.f52517K     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L5c
            r0 = 2
            goto L63
        L5c:
            boolean r0 = r5.f52518L     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L62
            r0 = 1
            goto L63
        L62:
            r0 = 3
        L63:
            r5.f52519M = r0     // Catch: java.lang.Throwable -> L71
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L71
            r3.set(r4)
            java.lang.ClassLoader r0 = r5.f52524o
            if (r0 == 0) goto L70
            r1.setContextClassLoader(r2)
        L70:
            return
        L71:
            r0 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L71
            throw r0     // Catch: java.lang.Throwable -> L74
        L74:
            r3 = move-exception
            r0 = r4
        L76:
            java.lang.ThreadLocal r4 = org.eclipse.jetty.server.handler.d.f52506O
            r4.set(r0)
            java.lang.ClassLoader r0 = r5.f52524o
            if (r0 == 0) goto L82
            r1.setContextClassLoader(r2)
        L82:
            throw r3
        L83:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Null contextPath"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.d.doStart():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ae  */
    @Override // org.eclipse.jetty.server.handler.h, org.eclipse.jetty.server.handler.a, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doStop() throws java.lang.Throwable {
        /*
            r9 = this;
            java.lang.String r0 = "stopped {}"
            r1 = 0
            r9.f52519M = r1
            java.lang.ThreadLocal r1 = org.eclipse.jetty.server.handler.d.f52506O
            java.lang.Object r2 = r1.get()
            org.eclipse.jetty.server.handler.d$d r2 = (org.eclipse.jetty.server.handler.d.C0881d) r2
            org.eclipse.jetty.server.handler.d$d r3 = r9.f52520k
            r1.set(r3)
            r1 = 0
            java.lang.ClassLoader r3 = r9.f52524o     // Catch: java.lang.Throwable -> L2e
            if (r3 == 0) goto L33
            java.lang.Thread r3 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2e
            java.lang.ClassLoader r4 = r3.getContextClassLoader()     // Catch: java.lang.Throwable -> L28
            java.lang.ClassLoader r5 = r9.f52524o     // Catch: java.lang.Throwable -> L25
            r3.setContextClassLoader(r5)     // Catch: java.lang.Throwable -> L25
            goto L35
        L25:
            r1 = move-exception
            goto L9c
        L28:
            r4 = move-exception
            r8 = r4
            r4 = r1
            r1 = r8
            goto L9c
        L2e:
            r3 = move-exception
            r4 = r1
            r1 = r3
            r3 = r4
            goto L9c
        L33:
            r3 = r1
            r4 = r3
        L35:
            super.doStop()     // Catch: java.lang.Throwable -> L25
            java.lang.Object r5 = r9.f52509C     // Catch: java.lang.Throwable -> L25
            if (r5 == 0) goto L5a
            javax.servlet.ServletContextEvent r5 = new javax.servlet.ServletContextEvent     // Catch: java.lang.Throwable -> L25
            org.eclipse.jetty.server.handler.d$d r6 = r9.f52520k     // Catch: java.lang.Throwable -> L25
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L25
            java.lang.Object r6 = r9.f52509C     // Catch: java.lang.Throwable -> L25
            int r6 = org.eclipse.jetty.util.LazyList.size(r6)     // Catch: java.lang.Throwable -> L25
        L49:
            int r7 = r6 + (-1)
            if (r6 <= 0) goto L5a
            java.lang.Object r6 = r9.f52509C     // Catch: java.lang.Throwable -> L25
            java.lang.Object r6 = org.eclipse.jetty.util.LazyList.get(r6, r7)     // Catch: java.lang.Throwable -> L25
            javax.servlet.ServletContextListener r6 = (javax.servlet.ServletContextListener) r6     // Catch: java.lang.Throwable -> L25
            r6.contextDestroyed(r5)     // Catch: java.lang.Throwable -> L25
            r6 = r7
            goto L49
        L5a:
            java.lang.Object r5 = r9.f52513G     // Catch: java.lang.Throwable -> L25
            java.lang.Class<java.util.EventListener> r6 = java.util.EventListener.class
            java.lang.Object r5 = org.eclipse.jetty.util.LazyList.toArray(r5, r6)     // Catch: java.lang.Throwable -> L25
            java.util.EventListener[] r5 = (java.util.EventListener[]) r5     // Catch: java.lang.Throwable -> L25
            java.util.EventListener[] r5 = (java.util.EventListener[]) r5     // Catch: java.lang.Throwable -> L25
            r9.H0(r5)     // Catch: java.lang.Throwable -> L25
            r9.f52513G = r1     // Catch: java.lang.Throwable -> L25
            org.eclipse.jetty.server.handler.d$d r5 = r9.f52520k     // Catch: java.lang.Throwable -> L25
            java.util.Enumeration r5 = r5.b()     // Catch: java.lang.Throwable -> L25
        L71:
            boolean r6 = r5.hasMoreElements()     // Catch: java.lang.Throwable -> L25
            if (r6 == 0) goto L81
            java.lang.Object r6 = r5.nextElement()     // Catch: java.lang.Throwable -> L25
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L25
            r9.r0(r6, r1)     // Catch: java.lang.Throwable -> L25
            goto L71
        L81:
            R1.c r1 = org.eclipse.jetty.server.handler.d.f52505N
            java.lang.Object[] r5 = new java.lang.Object[]{r9}
            r1.k(r0, r5)
            java.lang.ThreadLocal r0 = org.eclipse.jetty.server.handler.d.f52506O
            r0.set(r2)
            java.lang.ClassLoader r0 = r9.f52524o
            if (r0 == 0) goto L96
            r3.setContextClassLoader(r4)
        L96:
            org.eclipse.jetty.util.c r0 = r9.f52522m
            r0.k()
            return
        L9c:
            R1.c r5 = org.eclipse.jetty.server.handler.d.f52505N
            java.lang.Object[] r6 = new java.lang.Object[]{r9}
            r5.k(r0, r6)
            java.lang.ThreadLocal r0 = org.eclipse.jetty.server.handler.d.f52506O
            r0.set(r2)
            java.lang.ClassLoader r0 = r9.f52524o
            if (r0 == 0) goto Lb1
            r3.setContextClassLoader(r4)
        Lb1:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.d.doStop():void");
    }

    @Override // org.eclipse.jetty.server.handler.i
    public void f0(String str, k kVar, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        DispatcherType dispatcherTypeF = kVar.f();
        boolean zF0 = kVar.f0();
        try {
            if (zF0) {
                try {
                    Object obj = this.f52512F;
                    if (obj != null) {
                        int size = LazyList.size(obj);
                        for (int i2 = 0; i2 < size; i2++) {
                            kVar.a((EventListener) LazyList.get(this.f52512F, i2));
                        }
                    }
                    Object obj2 = this.f52511E;
                    if (obj2 != null) {
                        int size2 = LazyList.size(obj2);
                        ServletRequestEvent servletRequestEvent = new ServletRequestEvent(this.f52520k, httpServletRequest);
                        for (int i3 = 0; i3 < size2; i3++) {
                            ((ServletRequestListener) LazyList.get(this.f52511E, i3)).requestInitialized(servletRequestEvent);
                        }
                    }
                } catch (HttpException e2) {
                    f52505N.a(e2);
                    kVar.M(true);
                    httpServletResponse.sendError(e2.getStatus(), e2.getReason());
                    if (!zF0) {
                        return;
                    }
                    if (this.f52511E != null) {
                        ServletRequestEvent servletRequestEvent2 = new ServletRequestEvent(this.f52520k, httpServletRequest);
                        int size3 = LazyList.size(this.f52511E);
                        while (true) {
                            int i4 = size3 - 1;
                            if (size3 <= 0) {
                                break;
                            }
                            ((ServletRequestListener) LazyList.get(this.f52511E, i4)).requestDestroyed(servletRequestEvent2);
                            size3 = i4;
                        }
                    }
                    Object obj3 = this.f52512F;
                    if (obj3 == null) {
                        return;
                    }
                    int size4 = LazyList.size(obj3);
                    while (true) {
                        int i5 = size4 - 1;
                        if (size4 <= 0) {
                            return;
                        }
                        kVar.D((EventListener) LazyList.get(this.f52512F, i5));
                        size4 = i5;
                    }
                }
            }
            if (DispatcherType.REQUEST.equals(dispatcherTypeF) && D0(str)) {
                throw new HttpException(404);
            }
            if (h0()) {
                i0(str, kVar, httpServletRequest, httpServletResponse);
            } else {
                i iVar = this.f52544i;
                if (iVar == null || iVar != this.f52541g) {
                    N1.h hVar = this.f52541g;
                    if (hVar != null) {
                        hVar.l(str, kVar, httpServletRequest, httpServletResponse);
                    }
                } else {
                    iVar.f0(str, kVar, httpServletRequest, httpServletResponse);
                }
            }
            if (!zF0) {
                return;
            }
            if (this.f52511E != null) {
                ServletRequestEvent servletRequestEvent3 = new ServletRequestEvent(this.f52520k, httpServletRequest);
                int size5 = LazyList.size(this.f52511E);
                while (true) {
                    int i6 = size5 - 1;
                    if (size5 <= 0) {
                        break;
                    }
                    ((ServletRequestListener) LazyList.get(this.f52511E, i6)).requestDestroyed(servletRequestEvent3);
                    size5 = i6;
                }
            }
            Object obj4 = this.f52512F;
            if (obj4 == null) {
                return;
            }
            int size6 = LazyList.size(obj4);
            while (true) {
                int i7 = size6 - 1;
                if (size6 <= 0) {
                    return;
                }
                kVar.D((EventListener) LazyList.get(this.f52512F, i7));
                size6 = i7;
            }
        } catch (Throwable th) {
            if (zF0) {
                if (this.f52511E != null) {
                    ServletRequestEvent servletRequestEvent4 = new ServletRequestEvent(this.f52520k, httpServletRequest);
                    int size7 = LazyList.size(this.f52511E);
                    while (true) {
                        int i8 = size7 - 1;
                        if (size7 <= 0) {
                            break;
                        }
                        ((ServletRequestListener) LazyList.get(this.f52511E, i8)).requestDestroyed(servletRequestEvent4);
                        size7 = i8;
                    }
                }
                Object obj5 = this.f52512F;
                if (obj5 != null) {
                    int size8 = LazyList.size(obj5);
                    while (true) {
                        int i9 = size8 - 1;
                        if (size8 <= 0) {
                            break;
                        }
                        kVar.D((EventListener) LazyList.get(this.f52512F, i9));
                        size8 = i9;
                    }
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(10:(23:7|(4:18|(1:20)(1:21)|22|(1:102)(2:25|(2:27|(1:29))(2:30|(1:32)(21:33|34|(1:36)|99|39|96|40|94|41|92|42|43|98|44|(4:48|(1:50)(1:55)|51|56)|57|(1:59)|60|(1:62)(2:63|(1:65)(2:66|(1:68)(1:69)))|70|(4:72|(1:74)|75|76)(1:101)))))(1:16)|17|34|(0)(0)|99|39|96|40|94|41|92|42|43|98|44|(5:46|48|(0)(0)|51|56)|57|(0)|60|(0)(0)|70|(0)(0))(1:38)|98|44|(0)|57|(0)|60|(0)(0)|70|(0)(0))|99|39|96|40|94|41|92|42|43) */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0151, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0152, code lost:
    
        r3 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0154, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0155, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0158, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0159, code lost:
    
        r3 = null;
        r15 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d4 A[Catch: all -> 0x00ea, TryCatch #3 {all -> 0x00ea, blocks: (B:44:0x00c7, B:46:0x00d4, B:48:0x00da, B:50:0x00e3, B:56:0x00f6, B:55:0x00f0, B:57:0x00fc, B:59:0x0102, B:60:0x0117, B:62:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0129, B:68:0x012d, B:69:0x0131), top: B:98:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e3 A[Catch: all -> 0x00ea, TryCatch #3 {all -> 0x00ea, blocks: (B:44:0x00c7, B:46:0x00d4, B:48:0x00da, B:50:0x00e3, B:56:0x00f6, B:55:0x00f0, B:57:0x00fc, B:59:0x0102, B:60:0x0117, B:62:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0129, B:68:0x012d, B:69:0x0131), top: B:98:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f0 A[Catch: all -> 0x00ea, TryCatch #3 {all -> 0x00ea, blocks: (B:44:0x00c7, B:46:0x00d4, B:48:0x00da, B:50:0x00e3, B:56:0x00f6, B:55:0x00f0, B:57:0x00fc, B:59:0x0102, B:60:0x0117, B:62:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0129, B:68:0x012d, B:69:0x0131), top: B:98:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0102 A[Catch: all -> 0x00ea, TryCatch #3 {all -> 0x00ea, blocks: (B:44:0x00c7, B:46:0x00d4, B:48:0x00da, B:50:0x00e3, B:56:0x00f6, B:55:0x00f0, B:57:0x00fc, B:59:0x0102, B:60:0x0117, B:62:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0129, B:68:0x012d, B:69:0x0131), top: B:98:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011d A[Catch: all -> 0x00ea, TryCatch #3 {all -> 0x00ea, blocks: (B:44:0x00c7, B:46:0x00d4, B:48:0x00da, B:50:0x00e3, B:56:0x00f6, B:55:0x00f0, B:57:0x00fc, B:59:0x0102, B:60:0x0117, B:62:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0129, B:68:0x012d, B:69:0x0131), top: B:98:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0121 A[Catch: all -> 0x00ea, TryCatch #3 {all -> 0x00ea, blocks: (B:44:0x00c7, B:46:0x00d4, B:48:0x00da, B:50:0x00e3, B:56:0x00f6, B:55:0x00f0, B:57:0x00fc, B:59:0x0102, B:60:0x0117, B:62:0x011d, B:63:0x0121, B:65:0x0125, B:66:0x0129, B:68:0x012d, B:69:0x0131), top: B:98:0x00c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0138  */
    @Override // org.eclipse.jetty.server.handler.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g0(java.lang.String r17, N1.k r18, javax.servlet.http.HttpServletRequest r19, javax.servlet.http.HttpServletResponse r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.server.handler.d.g0(java.lang.String, N1.k, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse):void");
    }

    @Override // org.eclipse.jetty.util.b
    public Object getAttribute(String str) {
        return this.f52521l.getAttribute(str);
    }

    @Override // N1.m.a
    public void j(boolean z2) {
        synchronized (this) {
            try {
                this.f52517K = z2;
                this.f52519M = isRunning() ? this.f52517K ? 2 : this.f52518L ? 1 : 3 : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.eclipse.jetty.util.b
    public void k() {
        Enumeration enumerationB = this.f52521l.b();
        while (enumerationB.hasMoreElements()) {
            r0((String) enumerationB.nextElement(), null);
        }
        this.f52521l.k();
    }

    @Override // org.eclipse.jetty.server.handler.b, org.eclipse.jetty.util.component.b, org.eclipse.jetty.util.component.e
    public void m(Appendable appendable, String str) {
        V(appendable);
        org.eclipse.jetty.util.component.b.S(appendable, str, Collections.singletonList(new c(t0())), n.a(B()), X(), this.f52523n.entrySet(), this.f52521l.a(), this.f52522m.a());
    }

    public void n0(a aVar) {
        this.f52516J.add(aVar);
    }

    public void o0(EventListener eventListener) {
        if (!isStarted() && !isStarting()) {
            this.f52513G = LazyList.add(this.f52513G, eventListener);
        }
        H0((EventListener[]) LazyList.addToArray(z0(), eventListener, EventListener.class));
    }

    public void p0(ServletContextListener servletContextListener, ServletContextEvent servletContextEvent) {
        servletContextListener.contextInitialized(servletContextEvent);
    }

    public boolean q0(String str, k kVar, HttpServletResponse httpServletResponse) {
        String name;
        DispatcherType dispatcherTypeF = kVar.f();
        int i2 = this.f52519M;
        if (i2 != 0 && i2 != 2) {
            if (i2 != 3) {
                if (DispatcherType.REQUEST.equals(dispatcherTypeF) && kVar.z()) {
                    return false;
                }
                String[] strArr = this.f52529t;
                if (strArr != null && strArr.length > 0) {
                    String strF0 = F0(kVar.p());
                    boolean zRegionMatches = false;
                    int i3 = 0;
                    while (!zRegionMatches) {
                        String[] strArr2 = this.f52529t;
                        if (i3 >= strArr2.length) {
                            break;
                        }
                        String str2 = strArr2[i3];
                        if (str2 != null) {
                            zRegionMatches = str2.startsWith("*.") ? str2.regionMatches(true, 2, strF0, strF0.indexOf(com.anythink.core.common.d.i.f2495E) + 1, str2.length() - 2) : str2.equalsIgnoreCase(strF0);
                        }
                        i3++;
                    }
                    if (!zRegionMatches) {
                        return false;
                    }
                }
                Set set = this.f52530u;
                if (set != null && set.size() > 0 && ((name = N1.c.n().l().getName()) == null || !this.f52530u.contains(name))) {
                    return false;
                }
                if (this.f52525p.length() > 1) {
                    if (!str.startsWith(this.f52525p)) {
                        return false;
                    }
                    if (str.length() > this.f52525p.length() && str.charAt(this.f52525p.length()) != '/') {
                        return false;
                    }
                    if (!this.f52533x && this.f52525p.length() == str.length()) {
                        kVar.M(true);
                        if (kVar.l() != null) {
                            httpServletResponse.sendRedirect(o.a(kVar.m(), ServiceReference.DELIMITER) + "?" + kVar.l());
                        } else {
                            httpServletResponse.sendRedirect(o.a(kVar.m(), ServiceReference.DELIMITER));
                        }
                        return false;
                    }
                }
                return true;
            }
            kVar.M(true);
            httpServletResponse.sendError(503);
        }
        return false;
    }

    public void r0(String str, Object obj) {
        Map map = this.f52514H;
        if (map == null || !map.containsKey(str)) {
            return;
        }
        I0(str, obj);
    }

    public S1.e s0() {
        S1.e eVar = this.f52527r;
        if (eVar == null) {
            return null;
        }
        return eVar;
    }

    @Override // org.eclipse.jetty.util.b
    public void setAttribute(String str, Object obj) {
        r0(str, obj);
        this.f52521l.setAttribute(str, obj);
    }

    public ClassLoader t0() {
        return this.f52524o;
    }

    public String toString() {
        String name;
        String[] strArrC0 = C0();
        StringBuilder sb = new StringBuilder();
        Package r2 = getClass().getPackage();
        if (r2 != null && (name = r2.getName()) != null && name.length() > 0) {
            for (String str : name.split("\\.")) {
                sb.append(str.charAt(0));
                sb.append('.');
            }
        }
        sb.append(getClass().getSimpleName());
        sb.append('{');
        sb.append(v0());
        sb.append(',');
        sb.append(s0());
        if (strArrC0 != null && strArrC0.length > 0) {
            sb.append(',');
            sb.append(strArrC0[0]);
        }
        sb.append('}');
        return sb.toString();
    }

    public String u0() {
        ClassLoader classLoader = this.f52524o;
        if (classLoader == null || !(classLoader instanceof URLClassLoader)) {
            return null;
        }
        URL[] uRLs = ((URLClassLoader) classLoader).getURLs();
        StringBuilder sb = new StringBuilder();
        for (URL url : uRLs) {
            try {
                File fileB = E0(url).b();
                if (fileB != null && fileB.exists()) {
                    if (sb.length() > 0) {
                        sb.append(File.pathSeparatorChar);
                    }
                    sb.append(fileB.getAbsolutePath());
                }
            } catch (IOException e2) {
                f52505N.a(e2);
            }
        }
        if (sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    public String v0() {
        return this.f52525p;
    }

    public String x0() {
        return this.f52526q;
    }

    public f y0() {
        return null;
    }

    public EventListener[] z0() {
        return this.f52531v;
    }
}
