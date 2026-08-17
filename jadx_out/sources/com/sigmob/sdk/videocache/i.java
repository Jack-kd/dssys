package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public class i implements t {

    /* renamed from: a, reason: collision with root package name */
    private static final int f38919a = 5;

    /* renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.sourcestorage.c f38920b;

    /* renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.videocache.headers.b f38921c;

    /* renamed from: d, reason: collision with root package name */
    private u f38922d;

    /* renamed from: e, reason: collision with root package name */
    private HttpURLConnection f38923e;

    /* renamed from: f, reason: collision with root package name */
    private InputStream f38924f;

    public i(t tVar) {
        this.f38922d = tVar.d();
        this.f38920b = tVar.e();
        this.f38921c = tVar.f();
    }

    private void h() throws p {
        SigmobLog.d("Read content info from " + this.f38922d.f38968a);
        try {
            HttpURLConnection httpURLConnectionA = a(0L, 3000);
            u uVar = new u(this.f38922d.f38968a, a(httpURLConnectionA), httpURLConnectionA.getContentType());
            this.f38922d = uVar;
            this.f38920b.a(uVar.f38968a, uVar);
            SigmobLog.d("Source info fetched: " + this.f38922d);
        } catch (IOException e2) {
            SigmobLog.e("Error fetching info from " + this.f38922d.f38968a, e2);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public int a(byte[] bArr) throws p {
        InputStream inputStream = this.f38924f;
        if (inputStream == null) {
            throw new p("Error reading data from " + this.f38922d.f38968a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e2) {
            throw new k("Reading source " + this.f38922d.f38968a + " is interrupted", e2);
        } catch (IOException e3) {
            throw new p("Error reading data from " + this.f38922d.f38968a, e3);
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public void b() throws p {
        HttpURLConnection httpURLConnection = this.f38923e;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e2) {
                SigmobLog.e("Error closing connection correctly. Should happen only on SigmobAndroid L. Until good solution is not know, just ignore this issue :(", e2);
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Wait... but why? WTF!? ", e);
            } catch (NullPointerException e4) {
                e = e4;
                throw new RuntimeException("Wait... but why? WTF!? ", e);
            }
        }
    }

    @Override // com.sigmob.sdk.videocache.t
    public synchronized String c() throws p {
        try {
            if (TextUtils.isEmpty(this.f38922d.f38970c)) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f38922d.f38970c;
    }

    @Override // com.sigmob.sdk.videocache.t
    public u d() {
        return this.f38922d;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.sourcestorage.c e() {
        return this.f38920b;
    }

    @Override // com.sigmob.sdk.videocache.t
    public com.sigmob.sdk.videocache.headers.b f() {
        return this.f38921c;
    }

    @Override // com.sigmob.sdk.videocache.t
    public String g() {
        return this.f38922d.f38968a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f38922d + "}";
    }

    public i(String str) {
        this(str, com.sigmob.sdk.videocache.sourcestorage.d.a());
    }

    @Override // com.sigmob.sdk.videocache.t
    public synchronized long a() throws p {
        try {
            if (this.f38922d.f38969b == -2147483648L) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f38922d.f38969b;
    }

    public i(String str, com.sigmob.sdk.videocache.sourcestorage.c cVar) {
        this(str, cVar, new com.sigmob.sdk.videocache.headers.a());
    }

    private long a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37366e);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    public i(String str, com.sigmob.sdk.videocache.sourcestorage.c cVar, com.sigmob.sdk.videocache.headers.b bVar) {
        this.f38920b = (com.sigmob.sdk.videocache.sourcestorage.c) n.a(cVar);
        this.f38921c = (com.sigmob.sdk.videocache.headers.b) n.a(bVar);
        u uVarA = cVar.a(str);
        this.f38922d = uVarA == null ? new u(str, -2147483648L, q.a(str)) : uVarA;
    }

    private long a(HttpURLConnection httpURLConnection, long j2, int i2) throws IOException {
        long jA = a(httpURLConnection);
        return i2 == 200 ? jA : i2 == 206 ? jA + j2 : this.f38922d.f38969b;
    }

    private HttpURLConnection a(long j2, int i2) throws p, IOException {
        String str;
        boolean z2;
        String str2 = this.f38922d.f38968a;
        HttpURLConnection httpURLConnection = this.f38923e;
        if (httpURLConnection != null && j2 > 0 && httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable unused) {
            }
            this.f38923e = null;
            q.a(this.f38924f);
        }
        if (this.f38923e == null) {
            int i3 = 0;
            do {
                StringBuilder sb = new StringBuilder();
                sb.append("Open connection ");
                if (j2 > 0) {
                    str = " with offset " + j2;
                } else {
                    str = "";
                }
                sb.append(str);
                sb.append(" to ");
                sb.append(str2);
                SigmobLog.d(sb.toString());
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str2).openConnection();
                this.f38923e = httpURLConnection2;
                a(httpURLConnection2, str2);
                if (j2 > 0) {
                    this.f38923e.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
                }
                if (i2 > 0) {
                    this.f38923e.setConnectTimeout(i2);
                    this.f38923e.setReadTimeout(i2);
                }
                int responseCode = this.f38923e.getResponseCode();
                z2 = responseCode == 301 || responseCode == 302 || responseCode == 303;
                if (z2) {
                    String headerField = this.f38923e.getHeaderField("Location");
                    URI uriCreate = URI.create(headerField);
                    if (uriCreate != null && !uriCreate.isAbsolute()) {
                        try {
                            URI uriCreate2 = URI.create(str2);
                            if (uriCreate2 != null) {
                                headerField = uriCreate2.resolve(uriCreate).toString();
                            }
                        } catch (Throwable unused2) {
                        }
                    }
                    i3++;
                    this.f38923e.disconnect();
                    str2 = headerField;
                }
                if (i3 > 5) {
                    throw new p("Too many redirects: " + i3);
                }
            } while (z2);
        }
        return this.f38923e;
    }

    @Override // com.sigmob.sdk.videocache.t
    public void a(long j2) throws p {
        try {
            HttpURLConnection httpURLConnectionA = a(j2, 3000);
            this.f38923e = httpURLConnectionA;
            String contentType = httpURLConnectionA.getContentType();
            this.f38924f = new BufferedInputStream(this.f38923e.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f38923e;
            u uVar = new u(this.f38922d.f38968a, a(httpURLConnection, j2, httpURLConnection.getResponseCode()), contentType);
            this.f38922d = uVar;
            this.f38920b.a(uVar.f38968a, uVar);
        } catch (IOException e2) {
            throw new p("Error opening connection for " + this.f38922d.f38968a + " with offset " + j2, e2);
        }
    }

    private void a(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry<String, String> entry : this.f38921c.a(str).entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }
}
