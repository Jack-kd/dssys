package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* loaded from: classes2.dex */
public class an {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11003a = "OAdURLConnection";

    /* renamed from: b, reason: collision with root package name */
    public static final String f11004b = "POST";

    /* renamed from: c, reason: collision with root package name */
    public static final String f11005c = "GET";

    /* renamed from: d, reason: collision with root package name */
    public static final String f11006d = "application/json";

    /* renamed from: e, reason: collision with root package name */
    public static final String f11007e = "text/plain";

    /* renamed from: f, reason: collision with root package name */
    private HttpURLConnection f11008f;

    /* renamed from: g, reason: collision with root package name */
    private bv f11009g;

    /* renamed from: h, reason: collision with root package name */
    private b f11010h;

    /* renamed from: i, reason: collision with root package name */
    private c f11011i;

    /* renamed from: j, reason: collision with root package name */
    private String f11012j;

    /* renamed from: k, reason: collision with root package name */
    private String f11013k;

    /* renamed from: l, reason: collision with root package name */
    private String f11014l;

    /* renamed from: m, reason: collision with root package name */
    private String f11015m;

    /* renamed from: n, reason: collision with root package name */
    private int f11016n;

    /* renamed from: o, reason: collision with root package name */
    private int f11017o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f11018p;

    /* renamed from: q, reason: collision with root package name */
    private Uri.Builder f11019q;

    public class a extends j {
        public a() {
        }

        @Override // com.baidu.mobads.sdk.internal.j
        public Object i() throws Throwable {
            an.this.e();
            an.this.f();
            return null;
        }
    }

    public interface b {
        void a(String str, int i2);

        void a(String str, String str2);
    }

    public interface c {
        void a(InputStream inputStream, String str);

        void a(String str, int i2);
    }

    public an(String str) {
        this(str, "GET");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() throws Throwable {
        if (TextUtils.isEmpty(this.f11012j) || !cs.a().f(this.f11012j)) {
            return;
        }
        try {
            HttpURLConnection httpURLConnectionA = cs.a().a(new URL(this.f11012j));
            this.f11008f = httpURLConnectionA;
            httpURLConnectionA.setConnectTimeout(this.f11016n);
            if (Integer.parseInt(bn.a((Context) null).b()) < 8) {
                System.setProperty("http.keepAlive", "false");
            }
            this.f11008f.setRequestMethod(this.f11013k);
            this.f11008f.setUseCaches(this.f11018p);
            if (!TextUtils.isEmpty(this.f11014l)) {
                this.f11008f.setRequestProperty("User-Agent", this.f11014l);
            }
            this.f11008f.setRequestProperty("Content-type", this.f11015m);
            this.f11008f.setRequestProperty("Connection", "keep-alive");
            this.f11008f.setRequestProperty("Cache-Control", "no-cache");
            if (this.f11013k.equals("POST")) {
                this.f11008f.setDoInput(true);
                this.f11008f.setDoOutput(true);
                Uri.Builder builder = this.f11019q;
                if (builder != null) {
                    a(builder.build().getEncodedQuery(), this.f11008f);
                }
            }
        } catch (Exception e2) {
            b bVar = this.f11010h;
            if (bVar != null) {
                bVar.a("Net Create RuntimeError: " + e2.toString(), 0);
            }
            c cVar = this.f11011i;
            if (cVar != null) {
                cVar.a("Net Create RuntimeError: " + e2.toString(), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            try {
                this.f11008f.connect();
                this.f11009g.a(f11003a, this.f11008f.getRequestMethod() + " connect code :" + this.f11008f.getResponseCode());
                int responseCode = this.f11008f.getResponseCode();
                if (responseCode == 302 || responseCode == 301) {
                    this.f11008f.setInstanceFollowRedirects(false);
                    HttpURLConnection httpURLConnectionA = a(this.f11008f);
                    this.f11008f = httpURLConnectionA;
                    responseCode = httpURLConnectionA.getResponseCode();
                }
                if (responseCode / 100 != 2) {
                    b bVar = this.f11010h;
                    if (bVar != null) {
                        bVar.a(this.f11008f.getResponseMessage(), responseCode);
                    }
                    c cVar = this.f11011i;
                    if (cVar != null) {
                        cVar.a(this.f11008f.getResponseMessage(), responseCode);
                    }
                } else {
                    String strG = cs.a().g(this.f11012j);
                    b bVar2 = this.f11010h;
                    if (bVar2 != null) {
                        bVar2.a(c(), strG);
                    }
                    c cVar2 = this.f11011i;
                    if (cVar2 != null) {
                        cVar2.a(this.f11008f.getInputStream(), strG);
                    }
                }
                HttpURLConnection httpURLConnection = this.f11008f;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Exception e2) {
                b bVar3 = this.f11010h;
                if (bVar3 != null) {
                    bVar3.a("Net Connect RuntimeError: " + e2.toString(), 0);
                }
                c cVar3 = this.f11011i;
                if (cVar3 != null) {
                    cVar3.a("Net Connect RuntimeError: " + e2.toString(), 0);
                }
                HttpURLConnection httpURLConnection2 = this.f11008f;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
            }
        } catch (Throwable th) {
            HttpURLConnection httpURLConnection3 = this.f11008f;
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
            throw th;
        }
    }

    public String c() throws Exception {
        InputStream inputStream = null;
        try {
            inputStream = this.f11008f.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[128];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    byteArrayOutputStream.flush();
                    String string = byteArrayOutputStream.toString();
                    inputStream.close();
                    return string;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public void d() throws IOException {
        HttpURLConnection httpURLConnection = this.f11008f;
        if (httpURLConnection != null) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Exception e2) {
                az.h(f11003a).f(e2.toString());
            }
        }
    }

    public an(String str, String str2) {
        this.f11009g = bv.a();
        this.f11010h = null;
        this.f11011i = null;
        this.f11015m = "text/plain";
        this.f11016n = 10000;
        this.f11017o = 10000;
        this.f11018p = false;
        this.f11019q = null;
        this.f11012j = str;
        this.f11013k = str2;
    }

    public String a() throws Throwable {
        e();
        HttpURLConnection httpURLConnection = this.f11008f;
        if (httpURLConnection != null) {
            try {
                if (httpURLConnection.getResponseCode() / 100 != 2) {
                    HttpURLConnection httpURLConnection2 = this.f11008f;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return null;
                }
                String strC = c();
                HttpURLConnection httpURLConnection3 = this.f11008f;
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                return strC;
            } catch (Throwable unused) {
                HttpURLConnection httpURLConnection4 = this.f11008f;
                if (httpURLConnection4 != null) {
                    httpURLConnection4.disconnect();
                }
            }
        }
        return null;
    }

    public void b() {
        try {
            be.a().a((j) new a());
        } catch (Exception unused) {
        }
    }

    public void b(int i2) {
        this.f11017o = i2;
    }

    private void a(String str, HttpURLConnection httpURLConnection) throws Throwable {
        OutputStream outputStream;
        BufferedWriter bufferedWriter = null;
        try {
            outputStream = httpURLConnection.getOutputStream();
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                try {
                    bufferedWriter2.write(str);
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
        }
    }

    public void a(Map<String, String> map) {
        if (this.f11008f != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f11008f.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    private HttpURLConnection a(HttpURLConnection httpURLConnection) throws IOException {
        while (true) {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 302 && responseCode != 301) {
                    return httpURLConnection;
                }
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(httpURLConnection.getHeaderField("Location")).openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(httpURLConnection2.getConnectTimeout());
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setRequestProperty(com.sigmob.sdk.downloader.core.c.f37363b, "bytes=0-");
                    httpURLConnection = httpURLConnection2;
                } catch (Exception unused) {
                    return httpURLConnection2;
                }
            } catch (Exception unused2) {
                return httpURLConnection;
            }
        }
    }

    public void a(b bVar) {
        this.f11010h = bVar;
    }

    public void a(c cVar) {
        this.f11011i = cVar;
    }

    public void a(int i2) {
        this.f11016n = i2;
    }

    public void a(Uri.Builder builder) {
        this.f11019q = builder;
    }

    public void a(String str) {
        this.f11015m = str;
    }
}
