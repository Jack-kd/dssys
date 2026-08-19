package com.smartdigimkt.z0;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes5.dex */
public final class o implements i {

    /* renamed from: n, reason: collision with root package name */
    public static final Pattern f45394n = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: o, reason: collision with root package name */
    public static final AtomicReference f45395o = new AtomicReference();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f45396a;

    /* renamed from: b, reason: collision with root package name */
    public final int f45397b;

    /* renamed from: c, reason: collision with root package name */
    public final int f45398c;

    /* renamed from: d, reason: collision with root package name */
    public final String f45399d;

    /* renamed from: e, reason: collision with root package name */
    public final u f45400e;

    /* renamed from: f, reason: collision with root package name */
    public final u f45401f;

    /* renamed from: g, reason: collision with root package name */
    public HttpURLConnection f45402g;

    /* renamed from: h, reason: collision with root package name */
    public InputStream f45403h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f45404i;

    /* renamed from: j, reason: collision with root package name */
    public long f45405j;

    /* renamed from: k, reason: collision with root package name */
    public long f45406k;

    /* renamed from: l, reason: collision with root package name */
    public long f45407l;

    /* renamed from: m, reason: collision with root package name */
    public long f45408m;

    public o(String str, int i2, int i3, boolean z2, u uVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f45399d = str;
        this.f45401f = new u();
        this.f45397b = i2;
        this.f45398c = i3;
        this.f45396a = z2;
        this.f45400e = uVar;
    }

    @Override // com.smartdigimkt.z0.i
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.f45402g;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final HttpURLConnection b(k kVar) throws IOException {
        URL url = new URL(kVar.f45374a.toString());
        long j2 = kVar.f45376c;
        long j3 = -1;
        boolean z2 = false;
        if (!this.f45396a) {
            return a(url, null, j2, -1L, false, true);
        }
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 > 20) {
                throw new NoRouteToHostException("Too many redirects: " + i3);
            }
            boolean z3 = z2;
            long j4 = j3;
            long j5 = j2;
            HttpURLConnection httpURLConnectionA = a(url, null, j5, j4, z3, false);
            j2 = j5;
            j3 = j4;
            z2 = z3;
            int responseCode = httpURLConnectionA.getResponseCode();
            if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                return httpURLConnectionA;
            }
            String headerField = httpURLConnectionA.getHeaderField("Location");
            httpURLConnectionA.disconnect();
            if (headerField == null) {
                throw new ProtocolException("Null location redirect");
            }
            URL url2 = new URL(url, headerField);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new ProtocolException("Unsupported protocol redirect: " + protocol);
            }
            url = url2;
            i2 = i3;
        }
    }

    public final void c() throws IOException {
        if (this.f45407l == this.f45405j) {
            return;
        }
        byte[] bArr = (byte[]) f45395o.getAndSet(null);
        if (bArr == null) {
            bArr = new byte[4096];
        }
        while (true) {
            long j2 = this.f45407l;
            long j3 = this.f45405j;
            if (j2 == j3) {
                f45395o.set(bArr);
                return;
            }
            int i2 = this.f45403h.read(bArr, 0, (int) Math.min(j3 - j2, bArr.length));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (i2 == -1) {
                throw new EOFException();
            }
            this.f45407l += i2;
        }
    }

    @Override // com.smartdigimkt.z0.i
    public final void close() {
        try {
            if (this.f45403h != null) {
                HttpURLConnection httpURLConnection = this.f45402g;
                long j2 = this.f45406k;
                if (j2 != -1) {
                    j2 -= this.f45408m;
                }
                a(httpURLConnection, j2);
                try {
                    this.f45403h.close();
                } catch (IOException e2) {
                    throw new s(e2);
                }
            }
        } finally {
            this.f45403h = null;
            b();
            if (this.f45404i) {
                this.f45404i = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // com.smartdigimkt.z0.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.smartdigimkt.z0.k r15) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z0.o.a(com.smartdigimkt.z0.k):long");
    }

    public final void b() {
        HttpURLConnection httpURLConnection = this.f45402g;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.f45402g = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002b A[Catch: IOException -> 0x0021, TryCatch #0 {IOException -> 0x0021, blocks: (B:2:0x0000, B:6:0x0007, B:8:0x0010, B:11:0x001a, B:14:0x0023, B:16:0x002b, B:19:0x0032, B:20:0x0037, B:21:0x0038), top: B:25:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0038 A[Catch: IOException -> 0x0021, TRY_LEAVE, TryCatch #0 {IOException -> 0x0021, blocks: (B:2:0x0000, B:6:0x0007, B:8:0x0010, B:11:0x001a, B:14:0x0023, B:16:0x002b, B:19:0x0032, B:20:0x0037, B:21:0x0038), top: B:25:0x0000 }] */
    @Override // com.smartdigimkt.z0.i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(byte[] r9, int r10, int r11) throws java.io.IOException {
        /*
            r8 = this;
            r8.c()     // Catch: java.io.IOException -> L21
            if (r11 != 0) goto L7
            r9 = 0
            return r9
        L7:
            long r0 = r8.f45406k     // Catch: java.io.IOException -> L21
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r5 = -1
            if (r4 == 0) goto L23
            long r6 = r8.f45408m     // Catch: java.io.IOException -> L21
            long r0 = r0 - r6
            r6 = 0
            int r4 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r4 != 0) goto L1a
            goto L31
        L1a:
            long r6 = (long) r11     // Catch: java.io.IOException -> L21
            long r0 = java.lang.Math.min(r6, r0)     // Catch: java.io.IOException -> L21
            int r11 = (int) r0     // Catch: java.io.IOException -> L21
            goto L23
        L21:
            r9 = move-exception
            goto L3f
        L23:
            java.io.InputStream r0 = r8.f45403h     // Catch: java.io.IOException -> L21
            int r9 = r0.read(r9, r10, r11)     // Catch: java.io.IOException -> L21
            if (r9 != r5) goto L38
            long r9 = r8.f45406k     // Catch: java.io.IOException -> L21
            int r9 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r9 != 0) goto L32
        L31:
            return r5
        L32:
            java.io.EOFException r9 = new java.io.EOFException     // Catch: java.io.IOException -> L21
            r9.<init>()     // Catch: java.io.IOException -> L21
            throw r9     // Catch: java.io.IOException -> L21
        L38:
            long r10 = r8.f45408m     // Catch: java.io.IOException -> L21
            long r0 = (long) r9     // Catch: java.io.IOException -> L21
            long r10 = r10 + r0
            r8.f45408m = r10     // Catch: java.io.IOException -> L21
            return r9
        L3f:
            com.smartdigimkt.z0.s r10 = new com.smartdigimkt.z0.s
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.z0.o.a(byte[], int, int):int");
    }

    public final HttpURLConnection a(URL url, byte[] bArr, long j2, long j3, boolean z2, boolean z3) throws IOException {
        Map map;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f45397b);
        httpURLConnection.setReadTimeout(this.f45398c);
        u uVar = this.f45400e;
        if (uVar != null) {
            synchronized (uVar) {
                try {
                    if (uVar.f45418b == null) {
                        uVar.f45418b = Collections.unmodifiableMap(new HashMap(uVar.f45417a));
                    }
                    map = uVar.f45418b;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        for (Map.Entry entry2 : this.f45401f.a().entrySet()) {
            httpURLConnection.setRequestProperty((String) entry2.getKey(), (String) entry2.getValue());
        }
        if (j2 != 0 || j3 != -1) {
            String str = BytesRange.PREFIX + j2 + "-";
            if (j3 != -1) {
                str = str + ((j2 + j3) - 1);
            }
            httpURLConnection.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f45399d);
        if (!z2) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length == 0) {
                httpURLConnection.connect();
                return httpURLConnection;
            }
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            return httpURLConnection;
        }
        httpURLConnection.connect();
        return httpURLConnection;
    }

    public static void a(HttpURLConnection httpURLConnection, long j2) throws IllegalAccessException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2 = com.smartdigimkt.a1.t.f39303a;
        if (i2 == 19 || i2 == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j2 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j2 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, null);
                }
            } catch (Exception unused) {
            }
        }
    }
}
