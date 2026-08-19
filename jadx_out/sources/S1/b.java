package S1;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;
import org.eclipse.jetty.util.o;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes5.dex */
public class b extends f {

    /* renamed from: l, reason: collision with root package name */
    public static final R1.c f522l = R1.b.a(b.class);

    /* renamed from: m, reason: collision with root package name */
    public static boolean f523m = true;

    /* renamed from: i, reason: collision with root package name */
    public File f524i;

    /* renamed from: j, reason: collision with root package name */
    public transient URL f525j;

    /* renamed from: k, reason: collision with root package name */
    public transient boolean f526k;

    public b(URL url) throws URISyntaxException, IOException {
        super(url, null);
        this.f525j = null;
        this.f526k = false;
        try {
            this.f524i = new File(new URI(url.toString()));
        } catch (URISyntaxException e2) {
            throw e2;
        } catch (Exception e3) {
            f522l.h(e3);
            try {
                URI uri = new URI("file:" + o.f(url.toString().substring(5)));
                if (uri.getAuthority() == null) {
                    this.f524i = new File(uri);
                } else {
                    this.f524i = new File("//" + uri.getAuthority() + o.d(url.getFile()));
                }
            } catch (Exception e4) {
                f522l.h(e4);
                k();
                Permission permission = this.f544e.getPermission();
                this.f524i = new File(permission == null ? url.getFile() : permission.getName());
            }
        }
        if (!this.f524i.isDirectory()) {
            if (this.f543d.endsWith(ServiceReference.DELIMITER)) {
                this.f543d = this.f543d.substring(0, r6.length() - 1);
                return;
            }
            return;
        }
        if (this.f543d.endsWith(ServiceReference.DELIMITER)) {
            return;
        }
        this.f543d += ServiceReference.DELIMITER;
    }

    @Override // S1.f, S1.e
    public boolean a() {
        return this.f524i.exists();
    }

    @Override // S1.f, S1.e
    public File b() {
        return this.f524i;
    }

    @Override // S1.f, S1.e
    public InputStream c() {
        return new FileInputStream(this.f524i);
    }

    @Override // S1.f, S1.e
    public long d() {
        return this.f524i.lastModified();
    }

    @Override // S1.f, S1.e
    public boolean delete() throws SecurityException {
        return this.f524i.delete();
    }

    @Override // S1.f
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        Object obj2 = ((b) obj).f524i;
        File file = this.f524i;
        return obj2 == file || (file != null && file.equals(obj2));
    }

    @Override // S1.f
    public int hashCode() {
        File file = this.f524i;
        return file == null ? super.hashCode() : file.hashCode();
    }

    public b(URL url, URLConnection uRLConnection, File file) {
        super(url, uRLConnection);
        this.f525j = null;
        this.f526k = false;
        this.f524i = file;
        if (!file.isDirectory() || this.f543d.endsWith(ServiceReference.DELIMITER)) {
            return;
        }
        this.f543d += ServiceReference.DELIMITER;
    }
}
