package com.smartdigimkt.p4;

import android.text.TextUtils;
import com.smartdigimkt.o4.c;
import com.smartdigimkt.o4.d;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.o4.a f42610a;

    public a(com.smartdigimkt.o4.a aVar) {
        this.f42610a = aVar;
    }

    public final d a(c cVar) {
        int i2;
        Map<String, List<String>> map;
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        Throwable th;
        Map<String, List<String>> headerFields;
        int responseCode;
        b bVar;
        HttpURLConnection httpURLConnection2;
        byte[] bArr;
        Throwable th2 = null;
        try {
            httpURLConnection2 = (HttpURLConnection) new URL(cVar.f42273a).openConnection();
            try {
                String str = cVar.f42274b;
                if (TextUtils.isEmpty(str)) {
                    str = "GET";
                }
                httpURLConnection2.setRequestMethod(str);
                if ("POST".equals(str)) {
                    httpURLConnection2.setDoInput(true);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setUseCaches(false);
                } else if ("GET".equals(str)) {
                    httpURLConnection2.setInstanceFollowRedirects(false);
                }
                httpURLConnection2.setConnectTimeout((int) this.f42610a.f42266b);
                httpURLConnection2.setReadTimeout((int) this.f42610a.f42265a);
                Map map2 = cVar.f42276d;
                if (map2 != null && !map2.isEmpty()) {
                    for (Map.Entry entry : cVar.f42276d.entrySet()) {
                        httpURLConnection2.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                httpURLConnection2.connect();
                if ("POST".equals(str) && (bArr = cVar.f42275c) != null) {
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    outputStream.write(bArr);
                    outputStream.flush();
                    outputStream.close();
                }
                responseCode = httpURLConnection2.getResponseCode();
            } catch (Throwable th3) {
                th = th3;
                i2 = 0;
                map = null;
                httpURLConnection = httpURLConnection2;
                inputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            i2 = 0;
            map = null;
            inputStream = null;
            httpURLConnection = null;
        }
        if (responseCode == 200) {
            InputStream inputStreamA = a(httpURLConnection2);
            try {
                bVar = new b(httpURLConnection2, inputStreamA);
                headerFields = null;
            } catch (Throwable th5) {
                httpURLConnection = httpURLConnection2;
                inputStream = inputStreamA;
                th = th5;
                i2 = responseCode;
                map = null;
            }
            d dVar = new d();
            dVar.f42278a = cVar;
            dVar.f42279b = responseCode;
            dVar.f42280c = th2;
            dVar.f42281d = bVar;
            dVar.f42282e = headerFields;
            return dVar;
        }
        if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
            headerFields = httpURLConnection2.getHeaderFields();
        } else if (cVar.f42277e) {
            String headerField = httpURLConnection2.getHeaderField("Location");
            if (headerField != null && headerField.toLowerCase().startsWith("http")) {
                cVar.f42273a = headerField;
                httpURLConnection2.disconnect();
                return a(cVar);
            }
            headerFields = null;
        } else {
            headerFields = httpURLConnection2.getHeaderFields();
        }
        try {
            httpURLConnection2.disconnect();
            try {
                d dVar2 = new d();
                dVar2.f42278a = cVar;
                dVar2.f42279b = responseCode;
                dVar2.f42280c = null;
                dVar2.f42281d = null;
                dVar2.f42282e = headerFields;
                return dVar2;
            } catch (Throwable th6) {
                th = th6;
                httpURLConnection = httpURLConnection2;
                inputStream = null;
            }
        } catch (Throwable th7) {
            map = headerFields;
            th = th7;
            i2 = responseCode;
            httpURLConnection = httpURLConnection2;
            inputStream = null;
        }
        int i3 = i2;
        th = th;
        headerFields = map;
        responseCode = i3;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Throwable unused) {
            }
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        Throwable th8 = th;
        bVar = null;
        th2 = th8;
        d dVar3 = new d();
        dVar3.f42278a = cVar;
        dVar3.f42279b = responseCode;
        dVar3.f42280c = th2;
        dVar3.f42281d = bVar;
        dVar3.f42282e = headerFields;
        return dVar3;
    }

    public static InputStream a(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (Exception unused) {
            inputStream = null;
        }
        if (!"gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"))) {
            return inputStream;
        }
        try {
            byte[] bArr = new byte[2];
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedInputStream.mark(2);
            int i2 = bufferedInputStream.read(bArr);
            bufferedInputStream.reset();
            return (i2 == -1 || (((bArr[1] & 255) << 8) | (bArr[0] & 255)) != 35615) ? bufferedInputStream : new GZIPInputStream(bufferedInputStream);
        } catch (Exception unused2) {
            return inputStream;
        }
    }
}
