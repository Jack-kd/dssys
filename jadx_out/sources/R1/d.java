package R1;

import java.io.PrintStream;
import java.security.AccessControlException;
import java.util.Properties;
import org.eclipse.jetty.util.h;

/* loaded from: classes5.dex */
public class d extends a {

    /* renamed from: i, reason: collision with root package name */
    public static final String f505i = System.getProperty("line.separator");

    /* renamed from: j, reason: collision with root package name */
    public static h f506j;

    /* renamed from: k, reason: collision with root package name */
    public static final Properties f507k;

    /* renamed from: l, reason: collision with root package name */
    public static final boolean f508l;

    /* renamed from: m, reason: collision with root package name */
    public static final boolean f509m;

    /* renamed from: a, reason: collision with root package name */
    public int f510a;

    /* renamed from: b, reason: collision with root package name */
    public int f511b;

    /* renamed from: c, reason: collision with root package name */
    public PrintStream f512c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f513d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f514e;

    /* renamed from: f, reason: collision with root package name */
    public final String f515f;

    /* renamed from: g, reason: collision with root package name */
    public final String f516g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f517h;

    static {
        Properties properties = new Properties();
        f507k = properties;
        Properties properties2 = b.f499a;
        f508l = Boolean.parseBoolean(properties2.getProperty("org.eclipse.jetty.util.log.SOURCE", properties2.getProperty("org.eclipse.jetty.util.log.stderr.SOURCE", "false")));
        f509m = Boolean.parseBoolean(b.f499a.getProperty("org.eclipse.jetty.util.log.stderr.LONG", "false"));
        properties.putAll(b.f499a);
        String[] strArr = {"DEBUG", "org.eclipse.jetty.util.log.DEBUG", "org.eclipse.jetty.util.log.stderr.DEBUG"};
        for (int i2 = 0; i2 < 3; i2++) {
            String str = strArr[i2];
            if (System.getProperty(str) != null) {
                System.err.printf("System Property [%s] has been deprecated! (Use org.eclipse.jetty.LEVEL=DEBUG instead)%n", str);
            }
        }
        try {
            f506j = new h("yyyy-MM-dd HH:mm:ss");
        } catch (Exception e2) {
            e2.printStackTrace(System.err);
        }
    }

    public d() {
        this(null);
    }

    public static String n(String str) {
        String[] strArrSplit = str.split("\\.");
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strArrSplit.length - 1; i2++) {
            sb.append(strArrSplit[i2].charAt(0));
        }
        if (sb.length() > 0) {
            sb.append('.');
        }
        sb.append(strArrSplit[strArrSplit.length - 1]);
        return sb.toString();
    }

    public static int t(String str, String str2) {
        if (str2 == null) {
            return -1;
        }
        String strTrim = str2.trim();
        if ("ALL".equalsIgnoreCase(strTrim)) {
            return 0;
        }
        if ("DEBUG".equalsIgnoreCase(strTrim)) {
            return 1;
        }
        if ("INFO".equalsIgnoreCase(strTrim)) {
            return 2;
        }
        if ("WARN".equalsIgnoreCase(strTrim)) {
            return 3;
        }
        System.err.println("Unknown StdErrLog level [" + str + "]=[" + strTrim + "], expecting only [ALL, DEBUG, INFO, WARN] as values.");
        return -1;
    }

    public static int u(Properties properties, String str) {
        while (str != null && str.length() > 0) {
            int iT = t(str + ".LEVEL", properties.getProperty(str + ".LEVEL"));
            if (iT != -1) {
                return iT;
            }
            int iLastIndexOf = str.lastIndexOf(46);
            str = iLastIndexOf >= 0 ? str.substring(0, iLastIndexOf) : null;
        }
        return t("log.LEVEL", properties.getProperty("log.LEVEL", "INFO"));
    }

    @Override // R1.c
    public void a(Throwable th) {
        d("", th);
    }

    @Override // R1.c
    public void b(String str, Throwable th) {
        if (this.f510a <= 2) {
            StringBuilder sb = new StringBuilder(64);
            p(sb, ":INFO:", str, th);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.c
    public void c(String str, Throwable th) {
        if (this.f510a <= 3) {
            StringBuilder sb = new StringBuilder(64);
            p(sb, ":WARN:", str, th);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.c
    public void d(String str, Throwable th) {
        if (this.f510a <= 1) {
            StringBuilder sb = new StringBuilder(64);
            p(sb, ":DBUG:", str, th);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.c
    public void e(Throwable th) {
        c("", th);
    }

    @Override // R1.c
    public boolean f() {
        return this.f510a <= 1;
    }

    @Override // R1.c
    public void g(String str, Object... objArr) {
        if (this.f510a <= 3) {
            StringBuilder sb = new StringBuilder(64);
            q(sb, ":WARN:", str, objArr);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.c
    public String getName() {
        return this.f515f;
    }

    @Override // R1.c
    public void h(Throwable th) {
        if (this.f510a <= 0) {
            StringBuilder sb = new StringBuilder(64);
            p(sb, ":IGNORED:", "", th);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.c
    public void i(String str, Object... objArr) {
        if (this.f510a <= 1) {
            StringBuilder sb = new StringBuilder(64);
            q(sb, ":DBUG:", str, objArr);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.c
    public void k(String str, Object... objArr) {
        if (this.f510a <= 2) {
            StringBuilder sb = new StringBuilder(64);
            q(sb, ":INFO:", str, objArr);
            PrintStream printStream = this.f512c;
            if (printStream == null) {
                printStream = System.err;
            }
            printStream.println(sb);
        }
    }

    @Override // R1.a
    public c m(String str) {
        d dVar = new d(str);
        dVar.w(this.f514e);
        dVar.x(this.f513d);
        dVar.f512c = this.f512c;
        int i2 = this.f510a;
        if (i2 != this.f511b) {
            dVar.f510a = i2;
        }
        return dVar;
    }

    public final void o(StringBuilder sb, String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (!Character.isISOControl(cCharAt)) {
                sb.append(cCharAt);
            } else if (cCharAt == '\n') {
                sb.append('|');
            } else if (cCharAt == '\r') {
                sb.append('<');
            } else {
                sb.append('?');
            }
        }
    }

    public final void p(StringBuilder sb, String str, String str2, Throwable th) {
        q(sb, str, str2, new Object[0]);
        if (v()) {
            r(sb, String.valueOf(th), new Object[0]);
        } else {
            s(sb, th);
        }
    }

    public final void q(StringBuilder sb, String str, String str2, Object... objArr) {
        y(sb, f506j.c(), f506j.b(), str);
        r(sb, str2, objArr);
    }

    public final void r(StringBuilder sb, String str, Object... objArr) {
        if (str == null) {
            str = "";
            for (int i2 = 0; i2 < objArr.length; i2++) {
                str = str + "{} ";
            }
        }
        int length = 0;
        for (Object obj : objArr) {
            int iIndexOf = str.indexOf("{}", length);
            if (iIndexOf < 0) {
                o(sb, str.substring(length));
                sb.append(" ");
                sb.append(obj);
                length = str.length();
            } else {
                o(sb, str.substring(length, iIndexOf));
                sb.append(String.valueOf(obj));
                length = iIndexOf + 2;
            }
        }
        o(sb, str.substring(length));
    }

    public final void s(StringBuilder sb, Throwable th) {
        if (th == null) {
            sb.append("null");
            return;
        }
        sb.append(f505i);
        r(sb, th.toString(), new Object[0]);
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (int i2 = 0; stackTrace != null && i2 < stackTrace.length; i2++) {
            sb.append(f505i);
            sb.append("\tat ");
            r(sb, stackTrace[i2].toString(), new Object[0]);
        }
        Throwable cause = th.getCause();
        if (cause == null || cause == th) {
            return;
        }
        sb.append(f505i);
        sb.append("Caused by: ");
        s(sb, cause);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StdErrLog:");
        sb.append(this.f515f);
        sb.append(":LEVEL=");
        int i2 = this.f510a;
        if (i2 == 0) {
            sb.append("ALL");
        } else if (i2 == 1) {
            sb.append("DEBUG");
        } else if (i2 == 2) {
            sb.append("INFO");
        } else if (i2 != 3) {
            sb.append("?");
        } else {
            sb.append("WARN");
        }
        return sb.toString();
    }

    public boolean v() {
        return this.f517h;
    }

    public void w(boolean z2) {
        this.f514e = z2;
    }

    public void x(boolean z2) {
        this.f513d = z2;
    }

    public final void y(StringBuilder sb, String str, int i2, String str2) {
        sb.setLength(0);
        sb.append(str);
        if (i2 > 99) {
            sb.append('.');
        } else if (i2 > 9) {
            sb.append(".0");
        } else {
            sb.append(".00");
        }
        sb.append(i2);
        sb.append(str2);
        if (this.f514e) {
            sb.append(this.f515f);
        } else {
            sb.append(this.f516g);
        }
        sb.append(':');
        if (this.f513d) {
            for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
                String className = stackTraceElement.getClassName();
                if (!className.equals(d.class.getName()) && !className.equals(b.class.getName())) {
                    if (this.f514e || !className.startsWith("org.eclipse.jetty.")) {
                        sb.append(className);
                    } else {
                        sb.append(n(className));
                    }
                    sb.append('#');
                    sb.append(stackTraceElement.getMethodName());
                    if (stackTraceElement.getFileName() != null) {
                        sb.append('(');
                        sb.append(stackTraceElement.getFileName());
                        sb.append(':');
                        sb.append(stackTraceElement.getLineNumber());
                        sb.append(')');
                    }
                    sb.append(':');
                    return;
                }
            }
        }
    }

    public d(String str) {
        this(str, f507k);
    }

    public d(String str, Properties properties) {
        Properties properties2;
        this.f510a = 2;
        this.f512c = null;
        this.f513d = f508l;
        this.f514e = f509m;
        this.f517h = false;
        if (properties != null && properties != (properties2 = f507k)) {
            properties2.putAll(properties);
        }
        str = str == null ? "" : str;
        this.f515f = str;
        this.f516g = n(str);
        int iU = u(properties, str);
        this.f510a = iU;
        this.f511b = iU;
        try {
            this.f513d = Boolean.parseBoolean(properties.getProperty(str + ".SOURCE", Boolean.toString(this.f513d)));
        } catch (AccessControlException unused) {
            this.f513d = f508l;
        }
    }
}
