package com.ubix.ssp.ad.e.b0.h;

import android.net.TrafficStats;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes5.dex */
public class h implements p {

    /* renamed from: a, reason: collision with root package name */
    private final com.ubix.ssp.ad.e.b0.h.u.c f46723a;

    /* renamed from: b, reason: collision with root package name */
    private final com.ubix.ssp.ad.e.b0.h.t.b f46724b;

    /* renamed from: c, reason: collision with root package name */
    private q f46725c;

    /* renamed from: d, reason: collision with root package name */
    private HttpURLConnection f46726d;

    /* renamed from: e, reason: collision with root package name */
    private InputStream f46727e;

    public h(h hVar) {
        this.f46725c = hVar.f46725c;
        this.f46723a = hVar.f46723a;
        this.f46724b = hVar.f46724b;
    }

    private void b() throws Throwable {
        InputStream inputStream;
        InputStream inputStream2;
        HttpURLConnection httpURLConnection = null;
        inputStream = null;
        InputStream inputStream3 = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            HttpURLConnection httpURLConnectionA = a(0L, 10000);
            try {
                long jA = a(httpURLConnectionA);
                String contentType = httpURLConnectionA.getContentType();
                inputStream3 = httpURLConnectionA.getInputStream();
                q qVar = new q(this.f46725c.f46747a, jA, contentType);
                this.f46725c = qVar;
                this.f46723a.a(qVar.f46747a, qVar);
                o.a(inputStream3);
                httpURLConnectionA.disconnect();
            } catch (IOException unused) {
                InputStream inputStream4 = inputStream3;
                httpURLConnection2 = httpURLConnectionA;
                inputStream2 = inputStream4;
                o.a(inputStream2);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            } catch (Throwable th) {
                th = th;
                InputStream inputStream5 = inputStream3;
                httpURLConnection = httpURLConnectionA;
                inputStream = inputStream5;
                o.a(inputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (IOException unused2) {
            inputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.h.p
    public int a(byte[] bArr) throws n {
        InputStream inputStream = this.f46727e;
        if (inputStream == null) {
            throw new n("Error reading data from " + this.f46725c.f46747a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e2) {
            throw new j("Reading source " + this.f46725c.f46747a + " is interrupted", e2);
        } catch (IOException e3) {
            throw new n("Error reading data from " + this.f46725c.f46747a, e3);
        }
    }

    public synchronized String c() {
        try {
            if (TextUtils.isEmpty(this.f46725c.f46749c)) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f46725c.f46749c;
    }

    @Override // com.ubix.ssp.ad.e.b0.h.p
    public void close() {
        HttpURLConnection httpURLConnection = this.f46726d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException unused) {
            } catch (IllegalArgumentException e2) {
                e = e2;
                throw new RuntimeException("Wait... ", e);
            } catch (NullPointerException e3) {
                e = e3;
                throw new RuntimeException("Wait... ", e);
            }
        }
    }

    public String d() {
        return this.f46725c.f46747a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f46725c + "}";
    }

    public h(String str) {
        this(str, com.ubix.ssp.ad.e.b0.h.u.d.a());
    }

    @Override // com.ubix.ssp.ad.e.b0.h.p
    public synchronized long a() {
        try {
            if (this.f46725c.f46748b == -2147483648L) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f46725c.f46748b;
    }

    public h(String str, com.ubix.ssp.ad.e.b0.h.u.c cVar) {
        this(str, cVar, new com.ubix.ssp.ad.e.b0.h.t.a());
    }

    private long a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37366e);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    public h(String str, com.ubix.ssp.ad.e.b0.h.u.c cVar, com.ubix.ssp.ad.e.b0.h.t.b bVar) {
        this.f46723a = (com.ubix.ssp.ad.e.b0.h.u.c) l.a(cVar);
        this.f46724b = (com.ubix.ssp.ad.e.b0.h.t.b) l.a(bVar);
        q qVarA = cVar.a(str);
        this.f46725c = qVarA == null ? new q(str, -2147483648L, o.d(str)) : qVarA;
    }

    private long a(HttpURLConnection httpURLConnection, long j2, int i2) {
        long jA = a(httpURLConnection);
        return i2 == 200 ? jA : i2 == 206 ? jA + j2 : this.f46725c.f46748b;
    }

    private HttpURLConnection a(long j2, int i2) throws IOException, n {
        HttpURLConnection httpURLConnection;
        boolean z2;
        String headerField = this.f46725c.f46747a;
        if (TrafficStats.getThreadStatsTag() == -1) {
            TrafficStats.setThreadStatsTag(1);
        }
        int i3 = 0;
        do {
            httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
            a(httpURLConnection, headerField);
            if (j2 > 0) {
                httpURLConnection.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
            }
            if (i2 > 0) {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z2 = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z2) {
                headerField = httpURLConnection.getHeaderField("Location");
                i3++;
                httpURLConnection.disconnect();
            }
            if (i3 > 5) {
                throw new n("Too many redirects: " + i3);
            }
        } while (z2);
        return httpURLConnection;
    }

    @Override // com.ubix.ssp.ad.e.b0.h.p
    public void a(long j2) throws n {
        try {
            HttpURLConnection httpURLConnectionA = a(j2, -1);
            this.f46726d = httpURLConnectionA;
            String contentType = httpURLConnectionA.getContentType();
            this.f46727e = new BufferedInputStream(this.f46726d.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f46726d;
            q qVar = new q(this.f46725c.f46747a, a(httpURLConnection, j2, httpURLConnection.getResponseCode()), contentType);
            this.f46725c = qVar;
            this.f46723a.a(qVar.f46747a, qVar);
        } catch (IOException e2) {
            throw new n("Error opening connection for " + this.f46725c.f46747a + " with offset " + j2, e2);
        }
    }

    private void a(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry<String, String> entry : this.f46724b.a(str).entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }
}
