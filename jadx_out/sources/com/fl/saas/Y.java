package com.fl.saas;

import android.accounts.NetworkErrorException;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.fourthline.cling.model.types.BytesRange;

/* loaded from: classes3.dex */
public abstract class Y {

    /* renamed from: a, reason: collision with root package name */
    private List f30105a;

    /* renamed from: b, reason: collision with root package name */
    private List f30106b;

    public class a implements X509TrustManager {
        public a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    public abstract Map b();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void c(java.lang.String r6, com.fl.saas.T r7) {
        /*
            r5 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = new java.util.concurrent.atomic.AtomicInteger
            r0.<init>()
            r1 = 10
            r0.set(r1)
            r1 = 0
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L51
            if (r2 != 0) goto La0
            boolean r2 = r5.a(r6)     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L19
            goto La0
        L19:
            android.net.Uri r6 = android.net.Uri.parse(r6)     // Catch: java.lang.Throwable -> L51
            r2 = 0
            java.net.HttpURLConnection r1 = r5.a(r6, r2, r0)     // Catch: java.lang.Throwable -> L51
            java.lang.String r6 = "GET"
            r1.setRequestMethod(r6)     // Catch: java.lang.Throwable -> L51
            int r6 = r1.getResponseCode()     // Catch: java.lang.Throwable -> L51
            r0 = 200(0xc8, float:2.8E-43)
            if (r6 != r0) goto L66
            java.lang.StringBuffer r6 = new java.lang.StringBuffer     // Catch: java.lang.Throwable -> L51
            r6.<init>()     // Catch: java.lang.Throwable -> L51
            java.io.InputStream r0 = r1.getInputStream()     // Catch: java.lang.Throwable -> L51
            if (r0 == 0) goto L59
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L51
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L51
            java.lang.String r4 = "UTF-8"
            r3.<init>(r0, r4)     // Catch: java.lang.Throwable -> L51
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L51
        L47:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L51
            if (r3 == 0) goto L53
            r6.append(r3)     // Catch: java.lang.Throwable -> L51
            goto L47
        L51:
            r6 = move-exception
            goto Lb4
        L53:
            r2.close()     // Catch: java.lang.Throwable -> L51
            r0.close()     // Catch: java.lang.Throwable -> L51
        L59:
            com.fl.saas.F0 r0 = new com.fl.saas.F0     // Catch: java.lang.Throwable -> L51
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L51
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L51
            r0.b(r6)     // Catch: java.lang.Throwable -> L51
            goto Lb1
        L66:
            int r6 = r1.getResponseCode()     // Catch: java.lang.Throwable -> L51
            r0 = 302(0x12e, float:4.23E-43)
            if (r6 != r0) goto L7d
            java.lang.String r6 = "Location"
            java.lang.String r6 = r1.getHeaderField(r6)     // Catch: java.lang.Throwable -> L51
            com.fl.saas.F0 r0 = new com.fl.saas.F0     // Catch: java.lang.Throwable -> L51
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L51
            r0.a(r6)     // Catch: java.lang.Throwable -> L51
            goto Lb1
        L7d:
            com.fl.saas.F0 r6 = new com.fl.saas.F0     // Catch: java.lang.Throwable -> L51
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L51
            android.accounts.NetworkErrorException r0 = new android.accounts.NetworkErrorException     // Catch: java.lang.Throwable -> L51
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L51
            r2.<init>()     // Catch: java.lang.Throwable -> L51
            java.lang.String r3 = "response err code:"
            r2.append(r3)     // Catch: java.lang.Throwable -> L51
            int r3 = r1.getResponseCode()     // Catch: java.lang.Throwable -> L51
            r2.append(r3)     // Catch: java.lang.Throwable -> L51
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L51
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L51
        L9c:
            r6.a(r0)     // Catch: java.lang.Throwable -> L51
            goto Lb1
        La0:
            if (r7 == 0) goto Lb1
            com.fl.saas.F0 r6 = new com.fl.saas.F0     // Catch: java.lang.Throwable -> L51
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L51
            java.net.HttpRetryException r0 = new java.net.HttpRetryException     // Catch: java.lang.Throwable -> L51
            java.lang.String r2 = "url is fail"
            r3 = 20408(0x4fb8, float:2.8598E-41)
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> L51
            goto L9c
        Lb1:
            if (r1 == 0) goto Ld4
            goto Ld1
        Lb4:
            if (r7 == 0) goto Lcf
            com.fl.saas.F0 r0 = new com.fl.saas.F0     // Catch: java.lang.Throwable -> Lc8
            r0.<init>(r7)     // Catch: java.lang.Throwable -> Lc8
            java.lang.Exception r7 = new java.lang.Exception     // Catch: java.lang.Throwable -> Lc8
            java.lang.String r6 = r6.getMessage()     // Catch: java.lang.Throwable -> Lc8
            r7.<init>(r6)     // Catch: java.lang.Throwable -> Lc8
            r0.a(r7)     // Catch: java.lang.Throwable -> Lc8
            goto Lcf
        Lc8:
            r6 = move-exception
            if (r1 == 0) goto Lce
            r1.disconnect()
        Lce:
            throw r6
        Lcf:
            if (r1 == 0) goto Ld4
        Ld1:
            r1.disconnect()
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.Y.c(java.lang.String, com.fl.saas.T):void");
    }

    public boolean a(String str) {
        if (this.f30105a == null || TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : this.f30105a) {
            if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public boolean b(String str) {
        if (!TextUtils.isEmpty(str)) {
            List list = this.f30106b;
            if (list != null && !list.isEmpty()) {
                for (String str2 : this.f30106b) {
                    if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                        return false;
                    }
                }
                return true;
            }
            List list2 = this.f30105a;
            if (list2 != null && !list2.isEmpty()) {
                for (String str3 : this.f30105a) {
                    if (!TextUtils.isEmpty(str3) && str.contains(str3)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, T t2) {
        HttpURLConnection httpURLConnection = null;
        try {
            URL url = new URL(str);
            httpURLConnection = str.startsWith("https") ? (HttpsURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection();
            if (b() != null && !b().isEmpty()) {
                for (Map.Entry entry : b().entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(2500);
            httpURLConnection.setReadTimeout(2500);
            if (httpURLConnection.getResponseCode() == 200) {
                StringBuffer stringBuffer = new StringBuffer();
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            stringBuffer.append(line);
                        }
                    }
                    bufferedReader.close();
                    inputStream.close();
                }
                new F0(t2).b(stringBuffer.toString());
            } else if (httpURLConnection.getResponseCode() == 302) {
                new F0(t2).a(httpURLConnection.getHeaderField("Location"));
            } else {
                new F0(t2).a((Exception) new NetworkErrorException("response err code:" + httpURLConnection.getResponseCode()));
            }
        } catch (Throwable th) {
            if (t2 != null) {
                try {
                    new F0(t2).a(new Exception(th.getMessage()));
                } finally {
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        }
    }

    public SSLContext a() {
        try {
            SSLContext sSLContext = SSLContext.getInstance("SSL");
            sSLContext.init(null, new TrustManager[]{new a()}, new SecureRandom());
            return sSLContext;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, S s2) {
        HttpURLConnection httpURLConnection = null;
        try {
            URL url = new URL(str);
            httpURLConnection = str.startsWith("https") ? (HttpsURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection();
            if (b() != null && !b().isEmpty()) {
                for (Map.Entry entry : b().entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setConnectTimeout(2500);
            httpURLConnection.setReadTimeout(2500);
            if (httpURLConnection.getResponseCode() != 200) {
                new F0(s2).a((Exception) new NetworkErrorException("response err code:" + httpURLConnection.getResponseCode()));
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i2 = bufferedInputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        } else {
                            byteArrayOutputStream.write(bArr, 0, i2);
                        }
                    }
                    bufferedInputStream.close();
                    inputStream.close();
                }
                new F0(s2).b(byteArrayOutputStream.toByteArray());
            }
        } catch (Throwable th) {
            if (s2 != null) {
                try {
                    new F0(s2).a(new Exception(th.getMessage()));
                } finally {
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        }
    }

    public void a(final String str, final S s2) {
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.G1
            @Override // java.lang.Runnable
            public final void run() {
                this.f29918b.b(str, s2);
            }
        });
    }

    public void a(final String str, final T t2) {
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.I1
            @Override // java.lang.Runnable
            public final void run() {
                this.f29926b.c(str, t2);
            }
        });
    }

    public void b(List list) {
        this.f30106b = list;
    }

    public void a(boolean z2, final String str, final T t2) {
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.F1
            @Override // java.lang.Runnable
            public final void run() {
                this.f29914b.b(str, t2);
            }
        });
    }

    public void a(String str, String str2, T t2) {
        a(str, (Map) null, str2, t2);
    }

    public void a(final String str, final Map map, final String str2, final T t2) {
        C1172d1.a().b(new Runnable() { // from class: com.fl.saas.H1
            @Override // java.lang.Runnable
            public final void run() {
                this.f29921b.a(str, str2, map, t2);
            }
        });
    }

    public HttpURLConnection a(Uri uri, long j2, AtomicInteger atomicInteger) throws IOException {
        HttpURLConnection httpURLConnection;
        URL url = new URL(uri.toString());
        if ("https".equals(uri.getScheme())) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
            SSLContext sSLContextA = a();
            httpURLConnection = httpsURLConnection;
            if (sSLContextA != null) {
                httpsURLConnection.setSSLSocketFactory(sSLContextA.getSocketFactory());
                httpURLConnection = httpsURLConnection;
            }
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        }
        if (b() != null && !b().isEmpty()) {
            for (Map.Entry entry : b().entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!TextUtils.isEmpty(DeviceUtil.getUserAgent())) {
            httpURLConnection.setRequestProperty("User-Agent", DeviceUtil.getUserAgent());
        }
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        httpURLConnection.setConnectTimeout(2500);
        httpURLConnection.setReadTimeout(2500);
        if (j2 > 0) {
            httpURLConnection.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, BytesRange.PREFIX + j2 + "-");
        }
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode != 307) {
            switch (responseCode) {
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return httpURLConnection;
            }
        }
        if (atomicInteger.decrementAndGet() < 0) {
            throw new HttpRetryException("redirects too many times", responseCode);
        }
        LogcatUtil.d("FLSDK-HttpUtils", "statusCode 302 :" + atomicInteger.get());
        String headerField = httpURLConnection.getHeaderField("Location");
        httpURLConnection.disconnect();
        if (TextUtils.isEmpty(headerField) || b(headerField)) {
            throw new HttpRetryException("redirectUrl is null", responseCode);
        }
        return a(Uri.parse(headerField), j2, atomicInteger);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Map map, T t2) {
        LogcatUtil.debug(str + " doPostParams:" + AbstractC1191k.b(str2));
        HttpURLConnection httpURLConnection = null;
        try {
            URL url = new URL(str);
            httpURLConnection = str.startsWith("https") ? (HttpsURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection();
            if (map != null && !map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            httpURLConnection.setRequestProperty("accept", "*/*");
            httpURLConnection.setRequestProperty("Connection", "close");
            httpURLConnection.setRequestProperty(AbstractC1114b.f5589g, "application/json");
            if (b() != null && !b().isEmpty()) {
                for (Map.Entry entry2 : b().entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry2.getKey(), (String) entry2.getValue());
                }
            }
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setConnectTimeout(2500);
            httpURLConnection.setReadTimeout(2500);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8"));
            bufferedWriter.write(str2);
            bufferedWriter.close();
            if (httpURLConnection.getResponseCode() == 200) {
                StringBuffer stringBuffer = new StringBuffer();
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            stringBuffer.append(line);
                        }
                    }
                    bufferedReader.close();
                    inputStream.close();
                }
                String string = stringBuffer.toString();
                new F0(t2).b(string);
                LogcatUtil.debug(str + " response:" + AbstractC1191k.b(string));
            } else {
                new F0(t2).a((Exception) new NetworkErrorException("response err code:" + httpURLConnection.getResponseCode()));
            }
        } catch (Throwable th) {
            try {
                LogcatUtil.debug(th);
                if (t2 != null) {
                    new F0(t2).a(new Exception(th.getMessage()));
                }
            } finally {
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
            }
        }
    }

    public void a(List list) {
        this.f30105a = list;
    }
}
