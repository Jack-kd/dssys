package com.baidu.passbqt.http;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* loaded from: classes2.dex */
public class e {

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f11870c = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* renamed from: a, reason: collision with root package name */
    public String f11871a = "AgzTBLLDxWSdvY0AbyfzsK8KCwpuSV";

    /* renamed from: b, reason: collision with root package name */
    public boolean f11872b = false;

    public e a(b bVar) {
        return this;
    }

    public final String b(a aVar) {
        StringBuilder sb = new StringBuilder();
        if (aVar != null && aVar.a() != null) {
            for (Map.Entry entry : aVar.a().entrySet()) {
                if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                    try {
                        sb.append(URLEncoder.encode((String) entry.getKey(), "UTF-8"));
                        sb.append("=");
                        sb.append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                        sb.append("&");
                    } catch (UnsupportedEncodingException e2) {
                        k.a(e2.getMessage());
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(sb)) {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    public final HttpURLConnection c(j jVar) throws ProtocolException {
        String strB = b(jVar.f11890d);
        if (!TextUtils.isEmpty(strB)) {
            jVar.f11887a += "?" + strB;
        }
        URL url = new URL(jVar.f11887a);
        HttpURLConnection httpURLConnection = TextUtils.isEmpty(jVar.f11895i) ? (HttpURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(jVar.f11895i, jVar.f11896j)));
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setUseCaches(false);
        return httpURLConnection;
    }

    public final HashMap d(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i2 = 0; i2 < size; i2++) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i2);
            String headerField = httpURLConnection.getHeaderField(i2);
            if ("Set-Cookie".equals(headerFieldKey) && !TextUtils.isEmpty(headerField) && headerField.contains("=")) {
                headerFieldKey = headerField.substring(0, headerField.indexOf("="));
            }
            map.put(headerFieldKey, headerField);
        }
        return map;
    }

    public final void e() {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i2 = 0; i2 < 30; i2++) {
            char[] cArr = f11870c;
            sb.append(cArr[random.nextInt(cArr.length)]);
        }
        this.f11871a = sb.toString();
    }

    public void f(h hVar) throws IOException {
        HttpURLConnection httpURLConnectionC;
        byte[] bArrK;
        c cVar;
        if (hVar == null || hVar.f11885g) {
            return;
        }
        e();
        int i2 = d.f11869a[hVar.f11883e.ordinal()];
        OutputStream outputStream = null;
        if (i2 == 1) {
            httpURLConnectionC = c(hVar.f11882d);
            bArrK = null;
        } else {
            if (i2 != 2) {
                throw new IllegalArgumentException(hVar.f11883e + " method not support");
            }
            httpURLConnectionC = l(hVar.f11882d);
            bArrK = k(httpURLConnectionC, hVar.f11882d);
        }
        g(httpURLConnectionC, hVar.f11882d.f11891e);
        h(httpURLConnectionC, hVar.f11882d.f11889c);
        i(httpURLConnectionC, hVar.f11882d.f11894h);
        i.b(hVar.f11880b, httpURLConnectionC, hVar.f11882d);
        if (bArrK != null) {
            try {
                outputStream = httpURLConnectionC.getOutputStream();
                if (outputStream != null) {
                    outputStream.write(bArrK);
                    outputStream.flush();
                }
            } catch (Exception unused) {
                if (outputStream != null) {
                }
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused3) {
                }
            }
        }
        InputStream inputStream = httpURLConnectionC.getInputStream();
        int responseCode = httpURLConnectionC.getResponseCode();
        HashMap mapD = d(httpURLConnectionC);
        byte[] bArrJ = j(inputStream);
        try {
            inputStream.close();
        } catch (Exception unused4) {
        }
        i.f(hVar.f11880b, httpURLConnectionC, hVar.f11882d);
        if (hVar.f11885g || (cVar = hVar.f11881c) == null) {
            return;
        }
        cVar.i(responseCode, mapD, bArrJ);
    }

    public final void g(HttpURLConnection httpURLConnection, int i2) {
        httpURLConnection.setConnectTimeout(i2 == 0 ? 15000 : i2);
        if (i2 == 0) {
            i2 = 15000;
        }
        httpURLConnection.setReadTimeout(i2);
    }

    public void h(HttpURLConnection httpURLConnection, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        httpURLConnection.setRequestProperty("User-Agent", str);
    }

    public final void i(HttpURLConnection httpURLConnection, HashMap map) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public final byte[] j(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        byte[] bArr = new byte[8192];
        while (true) {
            try {
                try {
                    int i2 = bufferedInputStream.read(bArr);
                    if (i2 <= 0) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, i2);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    return null;
                }
            } finally {
            }
        }
        bufferedOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            bufferedOutputStream.close();
        } catch (IOException e6) {
            e6.printStackTrace();
        }
        try {
            bufferedInputStream.close();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
        try {
            byteArrayOutputStream.close();
            return byteArray;
        } catch (IOException e8) {
            e8.printStackTrace();
            return byteArray;
        }
    }

    public final byte[] k(HttpURLConnection httpURLConnection, j jVar) {
        if (jVar.f11890d != null) {
            return b(jVar.f11890d).getBytes("UTF-8");
        }
        return null;
    }

    public final HttpURLConnection l(j jVar) throws ProtocolException {
        URL url = new URL(jVar.f11887a);
        HttpURLConnection httpURLConnection = TextUtils.isEmpty(jVar.f11895i) ? (HttpURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(jVar.f11895i, jVar.f11896j)));
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        return httpURLConnection;
    }
}
