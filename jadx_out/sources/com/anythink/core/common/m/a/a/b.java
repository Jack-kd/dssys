package com.anythink.core.common.m.a.a;

import android.text.TextUtils;
import com.anythink.core.common.m.a.i;
import com.anythink.core.common.m.a.j;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public final class b extends com.anythink.core.common.m.a.a {

    /* renamed from: b, reason: collision with root package name */
    private static final String f5523b = "POST";

    /* renamed from: c, reason: collision with root package name */
    private static final String f5524c = "GET";

    /* renamed from: d, reason: collision with root package name */
    private boolean f5525d;

    public b(com.anythink.core.common.m.a.f fVar) {
        super(fVar);
    }

    private j b(i iVar) {
        HttpURLConnection httpURLConnection;
        int responseCode;
        byte[] bArr;
        j.a aVarA = new j.a().a(iVar);
        InputStream inputStream = null;
        try {
        } catch (Throwable th) {
            th = th;
            httpURLConnection = null;
        }
        if (this.f5525d) {
            aVarA.a(new InterruptedException("canceled"));
            return aVarA.a();
        }
        httpURLConnection = (HttpURLConnection) new URL(iVar.f5563a).openConnection();
        try {
            String str = iVar.f5564b;
            if (TextUtils.isEmpty(str)) {
                str = "GET";
            }
            httpURLConnection.setRequestMethod(str);
            if ("POST".equals(str)) {
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setUseCaches(false);
            } else if ("GET".equals(str)) {
                httpURLConnection.setInstanceFollowRedirects(false);
            }
            httpURLConnection.setConnectTimeout((int) this.f5516a.f5549e);
            httpURLConnection.setReadTimeout((int) this.f5516a.f5545a);
            Map<String, String> map = iVar.f5567e;
            if (map != null && !map.isEmpty()) {
                for (Map.Entry<String, String> entry : iVar.f5567e.entrySet()) {
                    httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            httpURLConnection.connect();
            if ("POST".equals(str) && (bArr = iVar.f5565c) != null) {
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.flush();
                outputStream.close();
            }
            responseCode = httpURLConnection.getResponseCode();
            aVarA.a(responseCode);
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (Throwable unused) {
                    aVarA.a(th);
                    return aVarA.a();
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            aVarA.a(th);
            return aVarA.a();
        }
        if (responseCode == 200) {
            if (!this.f5525d) {
                aVarA.a(new c(httpURLConnection, a(httpURLConnection)));
                return aVarA.a();
            }
            aVarA.a(new InterruptedException("canceled"));
            httpURLConnection.disconnect();
            return aVarA.a();
        }
        if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
            aVarA.a(httpURLConnection.getHeaderFields());
        } else if (this.f5525d) {
            aVarA.a(new InterruptedException("canceled"));
        } else {
            String headerField = httpURLConnection.getHeaderField("Location");
            if (headerField != null && headerField.toLowerCase().startsWith("http")) {
                iVar.f5563a = headerField;
                httpURLConnection.disconnect();
                return b(iVar);
            }
        }
        httpURLConnection.disconnect();
        return aVarA.a();
    }

    @Override // com.anythink.core.common.m.a.b
    public final void a(i iVar, com.anythink.core.common.m.a.c cVar) {
    }

    @Override // com.anythink.core.common.m.a.b
    public final j a(i iVar) {
        return b(iVar);
    }

    @Override // com.anythink.core.common.m.a.b
    public final void a() {
        this.f5525d = true;
    }

    private static InputStream a(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (Exception unused) {
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
