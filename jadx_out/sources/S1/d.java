package S1;

import java.io.File;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import org.eclipse.jetty.util.i;

/* loaded from: classes5.dex */
public class d extends f {

    /* renamed from: j, reason: collision with root package name */
    public static final R1.c f536j = R1.b.a(d.class);

    /* renamed from: i, reason: collision with root package name */
    public JarURLConnection f537i;

    public class a extends FilterInputStream {
        public a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            ((FilterInputStream) this).in = i.f();
        }
    }

    public d(URL url, boolean z2) {
        super(url, null, z2);
    }

    @Override // S1.f, S1.e
    public boolean a() {
        return this.f543d.endsWith("!/") ? k() : super.a();
    }

    @Override // S1.f, S1.e
    public File b() {
        return null;
    }

    @Override // S1.f, S1.e
    public InputStream c() {
        k();
        if (!this.f543d.endsWith("!/")) {
            return new a(super.c());
        }
        return new URL(this.f543d.substring(4, r1.length() - 2)).openStream();
    }

    @Override // S1.f, S1.e
    public synchronized void i() {
        this.f537i = null;
        super.i();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001f  */
    @Override // S1.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean k() {
        /*
            r2 = this;
            monitor-enter(r2)
            super.k()     // Catch: java.lang.Throwable -> Le
            java.net.JarURLConnection r0 = r2.f537i     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            java.net.URLConnection r1 = r2.f544e     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            if (r0 == r1) goto L19
            r2.m()     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            goto L19
        Le:
            r0 = move-exception
            goto L22
        L10:
            r0 = move-exception
            R1.c r1 = S1.d.f536j     // Catch: java.lang.Throwable -> Le
            r1.h(r0)     // Catch: java.lang.Throwable -> Le
            r0 = 0
            r2.f537i = r0     // Catch: java.lang.Throwable -> Le
        L19:
            java.net.JarURLConnection r0 = r2.f537i     // Catch: java.lang.Throwable -> Le
            if (r0 == 0) goto L1f
            r0 = 1
            goto L20
        L1f:
            r0 = 0
        L20:
            monitor-exit(r2)
            return r0
        L22:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Le
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: S1.d.k():boolean");
    }

    public void m() {
        this.f537i = (JarURLConnection) this.f544e;
    }
}
