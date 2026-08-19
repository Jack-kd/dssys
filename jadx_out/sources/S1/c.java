package S1;

import java.io.File;
import java.io.IOException;
import java.net.JarURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Enumeration;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class c extends d {

    /* renamed from: s, reason: collision with root package name */
    public static final R1.c f527s = R1.b.a(c.class);

    /* renamed from: k, reason: collision with root package name */
    public JarFile f528k;

    /* renamed from: l, reason: collision with root package name */
    public File f529l;

    /* renamed from: m, reason: collision with root package name */
    public String[] f530m;

    /* renamed from: n, reason: collision with root package name */
    public JarEntry f531n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f532o;

    /* renamed from: p, reason: collision with root package name */
    public String f533p;

    /* renamed from: q, reason: collision with root package name */
    public String f534q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f535r;

    public c(URL url, boolean z2) {
        super(url, z2);
    }

    @Override // S1.d, S1.f, S1.e
    public boolean a() throws IOException {
        JarFile jarFile;
        boolean z2 = true;
        if (this.f535r) {
            return true;
        }
        if (this.f543d.endsWith("!/")) {
            try {
                return e.e(this.f543d.substring(4, r0.length() - 2)).a();
            } catch (Exception e2) {
                f527s.h(e2);
                return false;
            }
        }
        boolean zK = k();
        if (this.f533p != null && this.f534q == null) {
            this.f532o = zK;
            return true;
        }
        if (zK) {
            jarFile = this.f528k;
        } else {
            try {
                JarURLConnection jarURLConnection = (JarURLConnection) new URL(this.f533p).openConnection();
                jarURLConnection.setUseCaches(l());
                jarFile = jarURLConnection.getJarFile();
            } catch (Exception e3) {
                f527s.h(e3);
                jarFile = null;
            }
        }
        if (jarFile != null && this.f531n == null && !this.f532o) {
            Enumeration<JarEntry> enumerationEntries = jarFile.entries();
            while (true) {
                if (!enumerationEntries.hasMoreElements()) {
                    break;
                }
                JarEntry jarEntryNextElement = enumerationEntries.nextElement();
                String strReplace = jarEntryNextElement.getName().replace('\\', '/');
                if (!strReplace.equals(this.f534q)) {
                    if (!this.f534q.endsWith(ServiceReference.DELIMITER)) {
                        if (strReplace.startsWith(this.f534q) && strReplace.length() > this.f534q.length() && strReplace.charAt(this.f534q.length()) == '/') {
                            this.f532o = true;
                            break;
                        }
                    } else if (strReplace.startsWith(this.f534q)) {
                        this.f532o = true;
                        break;
                    }
                } else {
                    this.f531n = jarEntryNextElement;
                    this.f532o = this.f534q.endsWith(ServiceReference.DELIMITER);
                    break;
                }
            }
            if (this.f532o && !this.f543d.endsWith(ServiceReference.DELIMITER)) {
                this.f543d += ServiceReference.DELIMITER;
                try {
                    this.f542c = new URL(this.f543d);
                } catch (MalformedURLException e4) {
                    f527s.e(e4);
                }
            }
        }
        if (!this.f532o && this.f531n == null) {
            z2 = false;
        }
        this.f535r = z2;
        return z2;
    }

    @Override // S1.f, S1.e
    public long d() {
        JarEntry jarEntry;
        if (!k() || this.f529l == null) {
            return -1L;
        }
        return (!a() || (jarEntry = this.f531n) == null) ? this.f529l.lastModified() : jarEntry.getTime();
    }

    @Override // S1.d, S1.f, S1.e
    public synchronized void i() {
        this.f530m = null;
        this.f531n = null;
        this.f529l = null;
        if (l() || this.f528k == null) {
            this.f528k = null;
            super.i();
        } else {
            try {
                f527s.i("Closing JarFile " + this.f528k.getName(), new Object[0]);
                this.f528k.close();
            } catch (IOException e2) {
                f527s.h(e2);
            }
            this.f528k = null;
            super.i();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // S1.d, S1.f
    public boolean k() {
        try {
            super.k();
            return this.f528k != null;
        } finally {
            if (this.f537i == null) {
                this.f531n = null;
                this.f529l = null;
                this.f528k = null;
                this.f530m = null;
            }
        }
    }

    @Override // S1.d
    public synchronized void m() {
        try {
            super.m();
            this.f531n = null;
            this.f529l = null;
            this.f528k = null;
            this.f530m = null;
            int iIndexOf = this.f543d.indexOf("!/") + 2;
            this.f533p = this.f543d.substring(0, iIndexOf);
            String strSubstring = this.f543d.substring(iIndexOf);
            this.f534q = strSubstring;
            if (strSubstring.length() == 0) {
                this.f534q = null;
            }
            this.f528k = this.f537i.getJarFile();
            this.f529l = new File(this.f528k.getName());
        } catch (Throwable th) {
            throw th;
        }
    }
}
