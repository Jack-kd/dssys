package com.ubix.ssp.ad.e.x;

import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.Base64;
import com.ubix.ssp.ad.e.a0.u;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static int f47408a = 10000;

    public static HttpURLConnection b(String str, int i2) {
        return a(str, "GET", i2, null, true);
    }

    public d a(String str, int i2) {
        HttpURLConnection httpURLConnectionB = null;
        try {
            u.b("requestURL=" + str);
            httpURLConnectionB = b(str, i2);
            return a(httpURLConnectionB);
        } catch (Exception e2) {
            return a(httpURLConnectionB, e2);
        }
    }

    public static HttpURLConnection b(HttpURLConnection httpURLConnection) {
        return a(httpURLConnection, (HashMap<String, String>) null);
    }

    public d a(String str, Map<String, String> map) {
        HttpURLConnection httpURLConnectionA = null;
        try {
            u.b("requestURL=" + str);
            httpURLConnectionA = a(str, "GET", map);
            return a(httpURLConnectionA);
        } catch (Exception e2) {
            return a(httpURLConnectionA, e2);
        }
    }

    public d a(String str, byte[] bArr, Map<String, String> map) {
        HttpURLConnection httpURLConnectionA = null;
        try {
            httpURLConnectionA = a(str, "POST", 10000, map, false);
            httpURLConnectionA.setRequestProperty("Content-Encoding", "gzip");
            httpURLConnectionA.setRequestProperty("Accept-Encoding", "gzip");
            httpURLConnectionA.setRequestProperty("U-SEC-Encoding", "base64");
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(httpURLConnectionA.getOutputStream());
            try {
                gZIPOutputStream.write(Base64.encode(bArr, 0));
                gZIPOutputStream.flush();
                gZIPOutputStream.finish();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return a(httpURLConnectionA);
        } catch (Exception e2) {
            e2.printStackTrace();
            return a(httpURLConnectionA, e2);
        }
    }

    private d a(HttpURLConnection httpURLConnection) throws IOException {
        d dVar = new d();
        dVar.f47411c = httpURLConnection.getResponseCode();
        dVar.f47412d = httpURLConnection.getContentLength();
        dVar.f47409a = httpURLConnection.getInputStream();
        dVar.f47410b = httpURLConnection.getErrorStream();
        String contentEncoding = httpURLConnection.getContentEncoding();
        dVar.f47415g = contentEncoding;
        if (TextUtils.isEmpty(contentEncoding) || !dVar.f47415g.toLowerCase().equals("gzip")) {
            dVar.f47414f = a(httpURLConnection.getInputStream());
        } else {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(dVar.f47409a);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = gZIPInputStream.read(bArr);
                if (i2 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
            dVar.f47414f = byteArrayOutputStream.toByteArray();
        }
        try {
            if (httpURLConnection.getInputStream() != null) {
                httpURLConnection.getInputStream().close();
            }
            if (httpURLConnection.getErrorStream() != null) {
                httpURLConnection.getErrorStream().close();
            }
            return dVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return dVar;
        }
    }

    private d a(HttpURLConnection httpURLConnection, Exception exc) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        d dVar = new d();
        dVar.f47413e = exc;
        return dVar;
    }

    public static HttpURLConnection a(String str) {
        return a(str, "GET", f47408a, null, true);
    }

    public static HttpURLConnection a(String str, String str2, int i2, Map<String, String> map, boolean z2) throws ProtocolException {
        URL url = new URL(str);
        try {
            if (TrafficStats.getThreadStatsTag() == -1) {
                TrafficStats.setThreadStatsTag(1);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (str.startsWith("https")) {
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
                httpsURLConnection.setRequestProperty("User-Agent", com.ubix.ssp.ad.d.b.f45809p);
                httpsURLConnection.setHostnameVerifier(new e());
                httpsURLConnection.setInstanceFollowRedirects(true);
                httpsURLConnection.setConnectTimeout(i2);
                httpsURLConnection.setReadTimeout(i2);
                httpsURLConnection.setRequestMethod(str2);
                if (str2 == "POST") {
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setUseCaches(false);
                }
                if (map != null) {
                    for (String str3 : map.keySet()) {
                        httpsURLConnection.setRequestProperty(str3, map.get(str3));
                    }
                }
                return z2 ? (HttpsURLConnection) b(httpsURLConnection) : httpsURLConnection;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", com.ubix.ssp.ad.d.b.f45809p);
        httpURLConnection.setConnectTimeout(i2);
        httpURLConnection.setReadTimeout(i2);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setRequestMethod(str2);
        if (str2 == "POST") {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
        }
        if (map != null) {
            for (String str4 : map.keySet()) {
                httpURLConnection.setRequestProperty(str4, map.get(str4));
            }
        }
        return z2 ? b(httpURLConnection) : httpURLConnection;
    }

    public static HttpURLConnection a(String str, String str2, Map<String, String> map) {
        return a(str, str2, f47408a, map, true);
    }

    public static HttpURLConnection a(HttpURLConnection httpURLConnection, HashMap<String, String> map) throws IOException {
        HttpURLConnection httpURLConnection2;
        Exception e2;
        while (true) {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 300 || responseCode >= 400) {
                    break;
                }
                httpURLConnection2 = (HttpURLConnection) new URL(httpURLConnection.getHeaderField("Location")).openConnection();
                if (map != null) {
                    try {
                        for (String str : map.keySet()) {
                            httpURLConnection2.setRequestProperty(str, map.get(str));
                        }
                    } catch (Exception e3) {
                        e2 = e3;
                        e2.printStackTrace();
                        return httpURLConnection2;
                    }
                }
                httpURLConnection = httpURLConnection2;
            } catch (Exception e4) {
                httpURLConnection2 = httpURLConnection;
                e2 = e4;
            }
        }
        return httpURLConnection;
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (-1 == i2) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }
}
