package S1;

import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.Permission;

/* loaded from: classes5.dex */
public class f extends e {

    /* renamed from: h, reason: collision with root package name */
    public static final R1.c f541h = R1.b.a(f.class);

    /* renamed from: c, reason: collision with root package name */
    public URL f542c;

    /* renamed from: d, reason: collision with root package name */
    public String f543d;

    /* renamed from: e, reason: collision with root package name */
    public URLConnection f544e;

    /* renamed from: f, reason: collision with root package name */
    public InputStream f545f;

    /* renamed from: g, reason: collision with root package name */
    public transient boolean f546g;

    public f(URL url, URLConnection uRLConnection) {
        this.f545f = null;
        this.f546g = e.f540b;
        this.f542c = url;
        this.f543d = url.toString();
        this.f544e = uRLConnection;
    }

    @Override // S1.e
    public boolean a() {
        try {
            synchronized (this) {
                try {
                    if (k() && this.f545f == null) {
                        this.f545f = this.f544e.getInputStream();
                    }
                } finally {
                }
            }
        } catch (IOException e2) {
            f541h.h(e2);
        }
        return this.f545f != null;
    }

    @Override // S1.e
    public File b() throws IOException {
        if (k()) {
            Permission permission = this.f544e.getPermission();
            if (permission instanceof FilePermission) {
                return new File(permission.getName());
            }
        }
        try {
            return new File(this.f542c.getFile());
        } catch (Exception e2) {
            f541h.h(e2);
            return null;
        }
    }

    @Override // S1.e
    public synchronized InputStream c() {
        if (!k()) {
            throw new IOException("Invalid resource");
        }
        try {
            InputStream inputStream = this.f545f;
            if (inputStream != null) {
                this.f545f = null;
                return inputStream;
            }
            return this.f544e.getInputStream();
        } finally {
            this.f544e = null;
        }
    }

    @Override // S1.e
    public long d() {
        if (k()) {
            return this.f544e.getLastModified();
        }
        return -1L;
    }

    @Override // S1.e
    public boolean delete() throws SecurityException {
        throw new SecurityException("Delete not supported");
    }

    public boolean equals(Object obj) {
        return (obj instanceof f) && this.f543d.equals(((f) obj).f543d);
    }

    public int hashCode() {
        return this.f543d.hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0018 A[Catch: all -> 0x000a, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0006, B:12:0x0012, B:13:0x0014, B:15:0x0018, B:11:0x000d), top: B:20:0x0001, inners: #1 }] */
    @Override // S1.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void i() {
        /*
            r3 = this;
            monitor-enter(r3)
            java.io.InputStream r0 = r3.f545f     // Catch: java.lang.Throwable -> La
            r1 = 0
            if (r0 == 0) goto L14
            r0.close()     // Catch: java.lang.Throwable -> La java.io.IOException -> Lc
            goto L12
        La:
            r0 = move-exception
            goto L1c
        Lc:
            r0 = move-exception
            R1.c r2 = S1.f.f541h     // Catch: java.lang.Throwable -> La
            r2.h(r0)     // Catch: java.lang.Throwable -> La
        L12:
            r3.f545f = r1     // Catch: java.lang.Throwable -> La
        L14:
            java.net.URLConnection r0 = r3.f544e     // Catch: java.lang.Throwable -> La
            if (r0 == 0) goto L1a
            r3.f544e = r1     // Catch: java.lang.Throwable -> La
        L1a:
            monitor-exit(r3)
            return
        L1c:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> La
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: S1.f.i():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean k() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.net.URLConnection r0 = r2.f544e     // Catch: java.lang.Throwable -> L13
            if (r0 != 0) goto L1b
            java.net.URL r0 = r2.f542c     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L15
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L15
            r2.f544e = r0     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L15
            boolean r1 = r2.f546g     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L15
            r0.setUseCaches(r1)     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L15
            goto L1b
        L13:
            r0 = move-exception
            goto L24
        L15:
            r0 = move-exception
            R1.c r1 = S1.f.f541h     // Catch: java.lang.Throwable -> L13
            r1.h(r0)     // Catch: java.lang.Throwable -> L13
        L1b:
            java.net.URLConnection r0 = r2.f544e     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L21
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            monitor-exit(r2)
            return r0
        L24:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: S1.f.k():boolean");
    }

    public boolean l() {
        return this.f546g;
    }

    public String toString() {
        return this.f543d;
    }

    public f(URL url, URLConnection uRLConnection, boolean z2) {
        this(url, uRLConnection);
        this.f546g = z2;
    }
}
