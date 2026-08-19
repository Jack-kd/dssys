package com.sigmob.sdk.downloader.core.connection;

import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.i;
import com.sigmob.sdk.downloader.j;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class c implements com.sigmob.sdk.downloader.core.connection.a, a.InterfaceC0769a {

    /* renamed from: f, reason: collision with root package name */
    private static final String f37401f = "DownloadUrlConnection";

    /* renamed from: b, reason: collision with root package name */
    protected URLConnection f37402b;

    /* renamed from: c, reason: collision with root package name */
    private a f37403c;

    /* renamed from: d, reason: collision with root package name */
    private URL f37404d;

    /* renamed from: e, reason: collision with root package name */
    private i f37405e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Proxy f37406a;

        /* renamed from: b, reason: collision with root package name */
        private Integer f37407b;

        /* renamed from: c, reason: collision with root package name */
        private Integer f37408c;

        public a a(int i2) {
            this.f37407b = Integer.valueOf(i2);
            return this;
        }

        public a b(int i2) {
            this.f37408c = Integer.valueOf(i2);
            return this;
        }

        public a a(Proxy proxy) {
            this.f37406a = proxy;
            return this;
        }
    }

    public static class b implements a.b {

        /* renamed from: a, reason: collision with root package name */
        private final a f37409a;

        public b() {
            this(null);
        }

        @Override // com.sigmob.sdk.downloader.core.connection.a.b
        public com.sigmob.sdk.downloader.core.connection.a a(String str) throws IOException {
            return new c(str, this.f37409a);
        }

        public b(a aVar) {
            this.f37409a = aVar;
        }

        public com.sigmob.sdk.downloader.core.connection.a a(URL url) throws IOException {
            return new c(url, this.f37409a);
        }
    }

    /* renamed from: com.sigmob.sdk.downloader.core.connection.c$c, reason: collision with other inner class name */
    public static final class C0770c implements i {

        /* renamed from: a, reason: collision with root package name */
        String f37410a;

        @Override // com.sigmob.sdk.downloader.i
        public String a() {
            return this.f37410a;
        }

        @Override // com.sigmob.sdk.downloader.i
        public void a(com.sigmob.sdk.downloader.core.connection.a aVar, a.InterfaceC0769a interfaceC0769a, Map<String, List<String>> map) throws IOException {
            c cVar = (c) aVar;
            int i2 = 0;
            for (int iD = interfaceC0769a.d(); j.a(iD); iD = cVar.d()) {
                cVar.b();
                i2++;
                if (i2 > 10) {
                    throw new ProtocolException("Too many redirect requests: " + i2);
                }
                String strA = j.a(interfaceC0769a, iD);
                this.f37410a = strA;
                URI uriCreate = URI.create(strA);
                if (uriCreate != null && !uriCreate.isAbsolute()) {
                    try {
                        this.f37410a = ((c) aVar).f37404d.toURI().resolve(uriCreate).toString();
                    } catch (Throwable unused) {
                    }
                }
                cVar.f37404d = new URL(this.f37410a);
                cVar.h();
                com.sigmob.sdk.downloader.core.c.b(map, cVar);
                cVar.f37402b.connect();
            }
        }
    }

    public c(String str) throws IOException {
        this(str, (a) null);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public a.InterfaceC0769a a() throws IOException {
        Map<String, List<String>> mapC = c();
        this.f37402b.connect();
        this.f37405e.a(this, this, mapC);
        return this;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public String b(String str) {
        return this.f37402b.getRequestProperty(str);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public String c(String str) {
        return this.f37402b.getHeaderField(str);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public int d() throws IOException {
        URLConnection uRLConnection = this.f37402b;
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public InputStream e() throws IOException {
        return this.f37402b.getInputStream();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public Map<String, List<String>> f() {
        return this.f37402b.getHeaderFields();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a.InterfaceC0769a
    public String g() {
        return this.f37405e.a();
    }

    public void h() throws IOException {
        com.sigmob.sdk.downloader.core.c.b(f37401f, "config connection for " + this.f37404d);
        a aVar = this.f37403c;
        this.f37402b = (aVar == null || aVar.f37406a == null) ? this.f37404d.openConnection() : this.f37404d.openConnection(this.f37403c.f37406a);
        URLConnection uRLConnection = this.f37402b;
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setInstanceFollowRedirects(false);
        }
        a aVar2 = this.f37403c;
        if (aVar2 != null) {
            if (aVar2.f37407b != null) {
                this.f37402b.setReadTimeout(this.f37403c.f37407b.intValue());
            }
            if (this.f37403c.f37408c != null) {
                this.f37402b.setConnectTimeout(this.f37403c.f37408c.intValue());
            }
        }
    }

    public c(String str, a aVar) throws IOException {
        this(new URL(str), aVar);
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void b() throws IOException {
        try {
            InputStream inputStream = this.f37402b.getInputStream();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException | Exception unused) {
        }
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public Map<String, List<String>> c() {
        return this.f37402b.getRequestProperties();
    }

    public c(URL url, a aVar) throws IOException {
        this(url, aVar, new C0770c());
    }

    public c(URL url, a aVar, i iVar) throws IOException {
        this.f37403c = aVar;
        this.f37404d = url;
        this.f37405e = iVar;
        h();
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public void a(String str, String str2) {
        this.f37402b.addRequestProperty(str, str2);
    }

    public c(URLConnection uRLConnection) {
        this(uRLConnection, new C0770c());
    }

    @Override // com.sigmob.sdk.downloader.core.connection.a
    public boolean a(String str) throws ProtocolException {
        URLConnection uRLConnection = this.f37402b;
        if (!(uRLConnection instanceof HttpURLConnection)) {
            return false;
        }
        ((HttpURLConnection) uRLConnection).setRequestMethod(str);
        return true;
    }

    public c(URLConnection uRLConnection, i iVar) {
        this.f37402b = uRLConnection;
        this.f37404d = uRLConnection.getURL();
        this.f37405e = iVar;
    }
}
