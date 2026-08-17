package R1;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.eclipse.jetty.util.j;

/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: b, reason: collision with root package name */
    public static String f500b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f501c;

    /* renamed from: e, reason: collision with root package name */
    public static c f503e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f504f;

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentMap f502d = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public static Properties f499a = new Properties();

    public static class a implements PrivilegedAction {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0050  */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Class, java.lang.Class<R1.b>] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v11 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
        @Override // java.security.PrivilegedAction
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object run() throws java.lang.Throwable {
            /*
                r7 = this;
                java.lang.String r0 = "jetty-logging.properties"
                r1 = 1
                java.lang.Class<R1.b> r2 = R1.b.class
                java.net.URL r0 = org.eclipse.jetty.util.j.b(r2, r0, r1)
                r1 = 0
                if (r0 == 0) goto L42
                java.io.InputStream r2 = r0.openStream()     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
                java.util.Properties r3 = R1.b.f499a     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
                r3.load(r2)     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
            L15:
                org.eclipse.jetty.util.i.a(r2)
                goto L42
            L19:
                r0 = move-exception
                r1 = r2
                goto L3e
            L1c:
                r3 = move-exception
                goto L22
            L1e:
                r0 = move-exception
                goto L3e
            L20:
                r3 = move-exception
                r2 = r1
            L22:
                java.io.PrintStream r4 = java.lang.System.err     // Catch: java.lang.Throwable -> L19
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L19
                r5.<init>()     // Catch: java.lang.Throwable -> L19
                java.lang.String r6 = "Unable to load "
                r5.append(r6)     // Catch: java.lang.Throwable -> L19
                r5.append(r0)     // Catch: java.lang.Throwable -> L19
                java.lang.String r0 = r5.toString()     // Catch: java.lang.Throwable -> L19
                r4.println(r0)     // Catch: java.lang.Throwable -> L19
                java.io.PrintStream r0 = java.lang.System.err     // Catch: java.lang.Throwable -> L19
                r3.printStackTrace(r0)     // Catch: java.lang.Throwable -> L19
                goto L15
            L3e:
                org.eclipse.jetty.util.i.a(r1)
                throw r0
            L42:
                java.util.Properties r0 = java.lang.System.getProperties()
                java.util.Enumeration r0 = r0.propertyNames()
            L4a:
                boolean r2 = r0.hasMoreElements()
                if (r2 == 0) goto L62
                java.lang.Object r2 = r0.nextElement()
                java.lang.String r2 = (java.lang.String) r2
                java.lang.String r3 = java.lang.System.getProperty(r2)
                if (r3 == 0) goto L4a
                java.util.Properties r4 = R1.b.f499a
                r4.setProperty(r2, r3)
                goto L4a
            L62:
                java.util.Properties r0 = R1.b.f499a
                java.lang.String r2 = "org.eclipse.jetty.util.log.class"
                java.lang.String r3 = "org.eclipse.jetty.util.log.Slf4jLog"
                java.lang.String r0 = r0.getProperty(r2, r3)
                R1.b.f500b = r0
                java.util.Properties r0 = R1.b.f499a
                java.lang.String r2 = "org.eclipse.jetty.util.log.IGNORED"
                java.lang.String r3 = "false"
                java.lang.String r0 = r0.getProperty(r2, r3)
                boolean r0 = java.lang.Boolean.parseBoolean(r0)
                R1.b.f501c = r0
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: R1.b.a.run():java.lang.Object");
        }
    }

    static {
        AccessController.doPrivileged(new a());
    }

    public static c a(Class cls) {
        return b(cls.getName());
    }

    public static c b(String str) {
        if (!g()) {
            return null;
        }
        if (str == null) {
            return f503e;
        }
        c cVar = (c) f502d.get(str);
        return cVar == null ? f503e.j(str) : cVar;
    }

    public static Map c() {
        return Collections.unmodifiableMap(f502d);
    }

    public static ConcurrentMap d() {
        return f502d;
    }

    public static c e() {
        g();
        return f503e;
    }

    public static void f(Throwable th) {
        if (th != null && f501c) {
            th.printStackTrace();
        }
        if (f503e == null) {
            d dVar = new d();
            f503e = dVar;
            dVar.i("Logging to {} via {}", dVar, d.class.getName());
        }
    }

    public static boolean g() {
        boolean z2 = true;
        if (f503e != null) {
            return true;
        }
        synchronized (b.class) {
            try {
                if (f504f) {
                    if (f503e == null) {
                        z2 = false;
                    }
                    return z2;
                }
                f504f = true;
                try {
                    Class clsC = j.c(b.class, f500b);
                    c cVar = f503e;
                    if (cVar == null || !cVar.getClass().equals(clsC)) {
                        c cVar2 = (c) clsC.newInstance();
                        f503e = cVar2;
                        cVar2.i("Logging to {} via {}", cVar2, clsC.getName());
                    }
                } catch (Throwable th) {
                    f(th);
                }
                return f503e != null;
            } finally {
            }
        }
    }
}
