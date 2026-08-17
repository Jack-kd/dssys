package com.fl.saas;

import android.text.TextUtils;
import com.fl.saas.adx.util.LogcatUtil;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes3.dex */
public class X implements V0 {

    /* renamed from: a, reason: collision with root package name */
    private final X0 f30099a;

    /* renamed from: b, reason: collision with root package name */
    private final Q f30100b;

    /* renamed from: c, reason: collision with root package name */
    private W0 f30101c;

    /* renamed from: d, reason: collision with root package name */
    private HttpURLConnection f30102d;

    /* renamed from: e, reason: collision with root package name */
    private InputStream f30103e;

    public X(X x2) {
        this.f30101c = x2.f30101c;
        this.f30099a = x2.f30099a;
        this.f30100b = x2.f30100b;
    }

    private long a(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37366e);
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() throws java.lang.Throwable {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Read content info from "
            r0.append(r1)
            com.fl.saas.W0 r1 = r8.f30101c
            java.lang.String r1 = r1.f30095a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.fl.saas.adx.util.LogcatUtil.d(r0)
            r0 = 0
            r2 = 10000(0x2710, float:1.4013E-41)
            r3 = 0
            java.net.HttpURLConnection r0 = r8.a(r0, r2)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6d
            long r1 = r8.a(r0)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.String r4 = r0.getContentType()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.io.InputStream r3 = r0.getInputStream()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            com.fl.saas.W0 r5 = new com.fl.saas.W0     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            com.fl.saas.W0 r6 = r8.f30101c     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.String r6 = r6.f30095a     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            r5.<init>(r6, r1, r4)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            r8.f30101c = r5     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            com.fl.saas.X0 r1 = r8.f30099a     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.String r2 = r5.f30095a     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            r1.a(r2, r5)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            r1.<init>()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.String r2 = "Source info fetched: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            com.fl.saas.W0 r2 = r8.f30101c     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            r1.append(r2)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            com.fl.saas.adx.util.LogcatUtil.d(r1)     // Catch: java.lang.Throwable -> L60 java.io.IOException -> L65
            com.fl.saas.A0.a(r3)
            r0.disconnect()
            return
        L60:
            r1 = move-exception
            r7 = r3
            r3 = r0
            r0 = r7
            goto L98
        L65:
            r1 = move-exception
            r7 = r3
            r3 = r0
            r0 = r7
            goto L6f
        L6a:
            r1 = move-exception
            r0 = r3
            goto L98
        L6d:
            r1 = move-exception
            r0 = r3
        L6f:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r2.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r4 = "Error fetching info from "
            r2.append(r4)     // Catch: java.lang.Throwable -> L97
            com.fl.saas.W0 r4 = r8.f30101c     // Catch: java.lang.Throwable -> L97
            java.lang.String r4 = r4.f30095a     // Catch: java.lang.Throwable -> L97
            r2.append(r4)     // Catch: java.lang.Throwable -> L97
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L97
            r2.append(r1)     // Catch: java.lang.Throwable -> L97
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Throwable -> L97
            com.fl.saas.adx.util.LogcatUtil.e(r1)     // Catch: java.lang.Throwable -> L97
            com.fl.saas.A0.a(r0)
            if (r3 == 0) goto L96
            r3.disconnect()
        L96:
            return
        L97:
            r1 = move-exception
        L98:
            com.fl.saas.A0.a(r0)
            if (r3 == 0) goto La0
            r3.disconnect()
        La0:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.X.b():void");
    }

    public synchronized String c() {
        try {
            if (TextUtils.isEmpty(this.f30101c.f30097c)) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f30101c.f30097c;
    }

    @Override // com.fl.saas.V0
    public void close() {
        HttpURLConnection httpURLConnection = this.f30102d;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (ArrayIndexOutOfBoundsException e2) {
                LogcatUtil.e("Error closing connection correctly. Should happen only on Android L. If anybody know how to fix it, please visit https://github.com/danikula/AndroidVideoCache/issues/88. Until good solution is not know, just ignore this issue :(", e2.toString());
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            } catch (NullPointerException e4) {
                e = e4;
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please, notify me danikula@gmail.com or create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    public String d() {
        return this.f30101c.f30095a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.f30101c + "}";
    }

    public X(String str) {
        this(str, Y0.a());
    }

    private void a(HttpURLConnection httpURLConnection, String str) {
        for (Map.Entry entry : this.f30100b.a(str).entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
    }

    public X(String str, X0 x02) {
        this(str, x02, new H());
    }

    @Override // com.fl.saas.V0
    public synchronized long a() {
        try {
            if (this.f30101c.f30096b == -2147483648L) {
                b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f30101c.f30096b;
    }

    public X(String str, X0 x02, Q q2) {
        this.f30099a = (X0) AbstractC1228w0.a(x02);
        this.f30100b = (Q) AbstractC1228w0.a(q2);
        W0 w0A = x02.a(str);
        this.f30101c = w0A == null ? new W0(str, -2147483648L, A0.d(str)) : w0A;
    }

    @Override // com.fl.saas.V0
    public void a(long j2) throws C1237z0 {
        try {
            HttpURLConnection httpURLConnectionA = a(j2, -1);
            this.f30102d = httpURLConnectionA;
            String contentType = httpURLConnectionA.getContentType();
            this.f30103e = new BufferedInputStream(this.f30102d.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.f30102d;
            W0 w02 = new W0(this.f30101c.f30095a, a(httpURLConnection, j2, httpURLConnection.getResponseCode()), contentType);
            this.f30101c = w02;
            this.f30099a.a(w02.f30095a, w02);
        } catch (IOException e2) {
            throw new C1237z0("Error opening connection for " + this.f30101c.f30095a + " with offset " + j2, e2);
        }
    }

    private HttpURLConnection a(long j2, int i2) throws IOException, C1237z0 {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z2;
        String headerField = this.f30101c.f30095a;
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
            sb.append(headerField);
            LogcatUtil.d(sb.toString());
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
                throw new C1237z0("Too many redirects: " + i3);
            }
        } while (z2);
        return httpURLConnection;
    }

    @Override // com.fl.saas.V0
    public int a(byte[] bArr) throws C1237z0 {
        InputStream inputStream = this.f30103e;
        if (inputStream == null) {
            throw new C1237z0("Error reading data from " + this.f30101c.f30095a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e2) {
            throw new C1163b0("Reading source " + this.f30101c.f30095a + " is interrupted", e2);
        } catch (IOException e3) {
            throw new C1237z0("Error reading data from " + this.f30101c.f30095a, e3);
        }
    }

    private long a(HttpURLConnection httpURLConnection, long j2, int i2) {
        long jA = a(httpURLConnection);
        return i2 == 200 ? jA : i2 == 206 ? jA + j2 : this.f30101c.f30096b;
    }
}
