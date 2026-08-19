package com.kwad.sdk.core.videocache;

import android.text.TextUtils;
import com.kwad.sdk.core.network.r;
import com.kwad.sdk.utils.az;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public final class h extends p {
    private final com.kwad.sdk.core.videocache.d.c aZN;
    private final com.kwad.sdk.core.videocache.b.b aZO;
    private n bal;
    private HttpURLConnection bam;
    private InputStream ban;

    public h(String str, com.kwad.sdk.core.videocache.d.c cVar, com.kwad.sdk.core.videocache.b.b bVar) {
        this.aZN = (com.kwad.sdk.core.videocache.d.c) az.checkNotNull(cVar);
        this.aZO = (com.kwad.sdk.core.videocache.b.b) az.checkNotNull(bVar);
        n nVarFG = cVar.fG(str);
        this.bal = nVarFG == null ? new n(str, -2147483648L, l.fE(str)) : nVarFG;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.net.URLConnection] */
    private void Pe() throws Throwable {
        HttpURLConnection httpURLConnectionE;
        com.kwad.sdk.core.d.c.d("HttpUrlSource", "Read content info from " + this.bal.url);
        ?? r02 = 10000;
        InputStream inputStream = null;
        try {
            try {
                httpURLConnectionE = e(0L, 10000);
                try {
                    long jD = d(httpURLConnectionE);
                    String contentType = httpURLConnectionE.getContentType();
                    inputStream = httpURLConnectionE.getInputStream();
                    n nVar = new n(this.bal.url, jD, contentType);
                    this.bal = nVar;
                    this.aZN.a(nVar.url, nVar);
                    com.kwad.sdk.core.d.c.d("HttpUrlSource", "Source info fetched: " + this.bal);
                    r02 = httpURLConnectionE;
                } catch (IOException unused) {
                    com.kwad.sdk.core.d.c.e("HttpUrlSource", "Error fetching info from " + this.bal.url);
                    r02 = httpURLConnectionE;
                    com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
                    com.kwad.sdk.crash.utils.b.closeQuietly((URLConnection) r02);
                }
            } catch (Throwable th) {
                th = th;
                com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
                com.kwad.sdk.crash.utils.b.closeQuietly((URLConnection) r02);
                throw th;
            }
        } catch (IOException unused2) {
            httpURLConnectionE = null;
        } catch (Throwable th2) {
            th = th2;
            r02 = 0;
            com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
            com.kwad.sdk.crash.utils.b.closeQuietly((URLConnection) r02);
            throw th;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(inputStream);
        com.kwad.sdk.crash.utils.b.closeQuietly((URLConnection) r02);
    }

    private void Pg() {
        n nVarFG;
        com.kwad.sdk.core.videocache.d.c cVar = this.aZN;
        if (cVar == null || !(cVar instanceof com.kwad.sdk.core.videocache.d.b) || (nVarFG = cVar.fG(getUrl())) == null || TextUtils.isEmpty(nVarFG.baC) || nVarFG.baB == -2147483648L) {
            return;
        }
        this.bal = nVarFG;
    }

    private long a(HttpURLConnection httpURLConnection, long j2, int i2) {
        long jD = d(httpURLConnection);
        return i2 == 200 ? jD : i2 == 206 ? jD + j2 : this.bal.baB;
    }

    private static long d(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37366e);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    private HttpURLConnection e(long j2, int i2) throws NoSuchAlgorithmException, IOException, ProxyCacheException, KeyManagementException {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z2;
        String headerField = this.bal.url;
        int i3 = 0;
        do {
            StringBuilder sb = new StringBuilder("Open connection ");
            if (j2 > 0) {
                str = " with offset " + j2;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" to ");
            sb.append(headerField);
            com.kwad.sdk.core.d.c.d("HttpUrlSource", sb.toString());
            httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
            r.wrapHttpURLConnection(httpURLConnection);
            a(httpURLConnection, headerField);
            if (j2 > 0) {
                httpURLConnection.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
            }
            if (i2 > 0) {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
            }
            com.kwad.sdk.core.network.p.b(httpURLConnection);
            int responseCode = httpURLConnection.getResponseCode();
            z2 = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z2) {
                headerField = httpURLConnection.getHeaderField("Location");
                i3++;
                httpURLConnection.disconnect();
            }
            if (i3 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i3);
            }
        } while (z2);
        return httpURLConnection;
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final synchronized String Pf() {
        try {
            if (TextUtils.isEmpty(this.bal.baC)) {
                Pg();
            }
            if (TextUtils.isEmpty(this.bal.baC)) {
                Pe();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.bal.baC;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final void aP(long j2) throws NoSuchAlgorithmException, ProxyCacheException, KeyManagementException {
        try {
            HttpURLConnection httpURLConnectionE = e(j2, -1);
            this.bam = httpURLConnectionE;
            String contentType = httpURLConnectionE.getContentType();
            this.ban = new BufferedInputStream(this.bam.getInputStream(), 1024);
            HttpURLConnection httpURLConnection = this.bam;
            n nVar = new n(this.bal.url, a(httpURLConnection, j2, httpURLConnection.getResponseCode()), contentType);
            this.bal = nVar;
            this.aZN.a(nVar.url, nVar);
        } catch (IOException e2) {
            throw new ProxyCacheException("Error opening connection for " + this.bal.url + " with offset " + j2, e2);
        }
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final void close() {
        HttpURLConnection httpURLConnection = this.bam;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException unused) {
                com.kwad.sdk.core.d.c.e("HttpUrlSource", "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue.");
            } catch (IllegalArgumentException e2) {
                e = e2;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e3) {
                e = e3;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final String getUrl() {
        return this.bal.url;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final synchronized long length() {
        try {
            if (this.bal.baB == -2147483648L) {
                Pg();
            }
            if (this.bal.baB == -2147483648L) {
                Pe();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.bal.baB;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.ban;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.bal.url + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, 1024);
        } catch (InterruptedIOException e2) {
            throw new InterruptedProxyCacheException("Reading source " + this.bal.url + " is interrupted", e2);
        } catch (IOException e3) {
            throw new ProxyCacheException("Error reading data from " + this.bal.url, e3);
        }
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final String toString() {
        return "HttpUrlSource{sourceInfo='" + this.bal + "}";
    }

    private void a(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry<String, String> entry : this.aZO.Pn().entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    public h(h hVar) {
        this.bal = hVar.bal;
        this.aZN = hVar.aZN;
        this.aZO = hVar.aZO;
    }
}
