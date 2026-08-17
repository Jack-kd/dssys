package com.octopus.ad.internal.d;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes4.dex */
public class j implements r {

    /* renamed from: a, reason: collision with root package name */
    private final com.octopus.ad.internal.d.b.c f34694a;

    /* renamed from: b, reason: collision with root package name */
    private final f f34695b;

    /* renamed from: c, reason: collision with root package name */
    private s f34696c;

    /* renamed from: d, reason: collision with root package name */
    private HttpURLConnection f34697d;

    /* renamed from: e, reason: collision with root package name */
    private InputStream f34698e;

    public j(String str) {
        this(str, com.octopus.ad.internal.d.b.d.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0098  */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e() throws java.lang.Throwable {
        /*
            r7 = this;
            java.lang.String r0 = com.octopus.ad.internal.c.f.f34582r
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Read content info from "
            r1.append(r2)
            com.octopus.ad.internal.d.s r2 = r7.f34696c
            java.lang.String r2 = r2.f34716a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.octopus.ad.internal.c.f.b(r0, r1)
            r0 = 0
            r2 = 10000(0x2710, float:1.4013E-41)
            r3 = 0
            java.net.HttpURLConnection r0 = r7.a(r0, r2)     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L67
            long r1 = r7.a(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r4 = r0.getContentType()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.io.InputStream r3 = r0.getInputStream()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            com.octopus.ad.internal.d.s r5 = new com.octopus.ad.internal.d.s     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            com.octopus.ad.internal.d.s r6 = r7.f34696c     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r6 = r6.f34716a     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r5.<init>(r6, r1, r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r7.f34696c = r5     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            com.octopus.ad.internal.d.b.c r1 = r7.f34694a     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r2 = r5.f34716a     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r1.a(r2, r5)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r1 = com.octopus.ad.internal.c.f.f34582r     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r2.<init>()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r4 = "Source info fetched: "
            r2.append(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            com.octopus.ad.internal.d.s r4 = r7.f34696c     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r2.append(r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            com.octopus.ad.internal.c.f.b(r1, r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            com.octopus.ad.internal.d.q.a(r3)
            r0.disconnect()
            return
        L60:
            r1 = move-exception
            goto L93
        L62:
            r1 = move-exception
            goto L69
        L64:
            r1 = move-exception
            r0 = r3
            goto L93
        L67:
            r1 = move-exception
            r0 = r3
        L69:
            java.lang.String r2 = com.octopus.ad.internal.c.f.f34582r     // Catch: java.lang.Throwable -> L60
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60
            r4.<init>()     // Catch: java.lang.Throwable -> L60
            java.lang.String r5 = "Error fetching info from "
            r4.append(r5)     // Catch: java.lang.Throwable -> L60
            com.octopus.ad.internal.d.s r5 = r7.f34696c     // Catch: java.lang.Throwable -> L60
            java.lang.String r5 = r5.f34716a     // Catch: java.lang.Throwable -> L60
            r4.append(r5)     // Catch: java.lang.Throwable -> L60
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L60
            r4.append(r1)     // Catch: java.lang.Throwable -> L60
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> L60
            com.octopus.ad.internal.c.f.e(r2, r1)     // Catch: java.lang.Throwable -> L60
            com.octopus.ad.internal.d.q.a(r3)
            if (r0 == 0) goto L92
            r0.disconnect()
        L92:
            return
        L93:
            com.octopus.ad.internal.d.q.a(r3)
            if (r0 == 0) goto L9b
            r0.disconnect()
        L9b:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.d.j.e():void");
    }

    @Override // com.octopus.ad.internal.d.r
    public synchronized long a() throws p {
        try {
            if (this.f34696c.f34717b == -2147483648L) {
                e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f34696c.f34717b;
    }

    @Override // com.octopus.ad.internal.d.r
    public void b() throws p {
        HttpURLConnection httpURLConnection = this.f34697d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e2) {
                com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34582r, "Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(" + e2.getMessage());
            } catch (IllegalArgumentException | NullPointerException unused) {
            }
        }
    }

    public synchronized String c() throws p {
        try {
            if (TextUtils.isEmpty(this.f34696c.f34718c)) {
                e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f34696c.f34718c;
    }

    public String d() {
        return this.f34696c.f34716a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f34696c + "}";
    }

    public j(String str, com.octopus.ad.internal.d.b.c cVar) {
        this(str, cVar, new d());
    }

    public j(String str, com.octopus.ad.internal.d.b.c cVar, f fVar) {
        this.f34694a = (com.octopus.ad.internal.d.b.c) n.a(cVar);
        this.f34695b = (f) n.a(fVar);
        s sVarA = cVar.a(str);
        this.f34696c = sVarA == null ? new s(str, -2147483648L, q.a(str)) : sVarA;
    }

    @Override // com.octopus.ad.internal.d.r
    public void a(long j2) throws p {
        try {
            HttpURLConnection httpURLConnectionA = a(j2, -1);
            this.f34697d = httpURLConnectionA;
            String contentType = httpURLConnectionA.getContentType();
            this.f34698e = new BufferedInputStream(this.f34697d.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f34697d;
            s sVar = new s(this.f34696c.f34716a, a(httpURLConnection, j2, httpURLConnection.getResponseCode()), contentType);
            this.f34696c = sVar;
            this.f34694a.a(sVar.f34716a, sVar);
        } catch (Exception e2) {
            throw new p("Error opening connection for " + this.f34696c.f34716a + " with offset " + j2, e2);
        }
    }

    public j(j jVar) {
        this.f34696c = jVar.f34696c;
        this.f34694a = jVar.f34694a;
        this.f34695b = jVar.f34695b;
    }

    private long a(HttpURLConnection httpURLConnection, long j2, int i2) throws IOException {
        long jA = a(httpURLConnection);
        return i2 == 200 ? jA : i2 == 206 ? jA + j2 : this.f34696c.f34717b;
    }

    private long a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37366e);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.octopus.ad.internal.d.r
    public int a(byte[] bArr) throws p {
        InputStream inputStream = this.f34698e;
        if (inputStream != null) {
            try {
                return inputStream.read(bArr, 0, bArr.length);
            } catch (InterruptedIOException e2) {
                throw new l("Reading source " + this.f34696c.f34716a + " is interrupted", e2);
            } catch (Exception e3) {
                throw new p("Error reading data from " + this.f34696c.f34716a, e3);
            }
        }
        throw new p("Error reading data from " + this.f34696c.f34716a + ": connection is absent!");
    }

    private HttpURLConnection a(long j2, int i2) throws IOException, p {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z2;
        String headerField = this.f34696c.f34716a;
        int i3 = 0;
        do {
            String str2 = com.octopus.ad.internal.c.f.f34582r;
            StringBuilder sb = new StringBuilder();
            sb.append("Open connection ");
            if (j2 > 0) {
                str = " with offset " + j2;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" to ");
            sb.append(headerField);
            com.octopus.ad.internal.c.f.b(str2, sb.toString());
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
                throw new p("Too many redirects: " + i3);
            }
        } while (z2);
        return httpURLConnection;
    }

    private void a(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry<String, String> entry : this.f34695b.a(str).entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }
}
