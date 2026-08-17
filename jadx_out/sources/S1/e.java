package S1;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes5.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final R1.c f539a = R1.b.a(e.class);

    /* renamed from: b, reason: collision with root package name */
    public static boolean f540b = true;

    public static e e(String str) {
        return f(str, f540b);
    }

    public static e f(String str, boolean z2) throws IOException {
        try {
            return g(new URL(str));
        } catch (MalformedURLException e2) {
            if (str.startsWith("ftp:") || str.startsWith("file:") || str.startsWith("jar:")) {
                f539a.g("Bad Resource: " + str, new Object[0]);
                throw e2;
            }
            try {
                if (str.startsWith("./")) {
                    str = str.substring(2);
                }
                File canonicalFile = new File(str).getCanonicalFile();
                URL urlJ = j(canonicalFile);
                URLConnection uRLConnectionOpenConnection = urlJ.openConnection();
                uRLConnectionOpenConnection.setUseCaches(z2);
                return new b(urlJ, uRLConnectionOpenConnection, canonicalFile);
            } catch (Exception e3) {
                f539a.d("EXCEPTION ", e3);
                throw e2;
            }
        }
    }

    public static e g(URL url) {
        return h(url, f540b);
    }

    public static e h(URL url, boolean z2) {
        if (url == null) {
            return null;
        }
        String externalForm = url.toExternalForm();
        if (!externalForm.startsWith("file:")) {
            return externalForm.startsWith("jar:file:") ? new c(url, z2) : externalForm.startsWith("jar:") ? new d(url, z2) : new f(url, null, z2);
        }
        try {
            return new b(url);
        } catch (Exception e2) {
            f539a.d("EXCEPTION ", e2);
            return new a(url, e2.toString());
        }
    }

    public static URL j(File file) {
        return file.toURI().toURL();
    }

    public abstract boolean a();

    public abstract File b();

    public abstract InputStream c();

    public abstract long d();

    public abstract boolean delete() throws SecurityException;

    public void finalize() {
        i();
    }

    public abstract void i();
}
