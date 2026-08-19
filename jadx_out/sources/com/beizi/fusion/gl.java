package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.xi;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public class gl extends sa {
    public gl(me meVar, ua uaVar) {
        super(meVar, uaVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(HttpURLConnection httpURLConnection) throws Throwable {
        Closeable closeable;
        OutputStream outputStream;
        if (httpURLConnection == null) {
            a(xi.a.ERROR_UNEXPECTED);
            return;
        }
        InputStream inputStream = null;
        try {
            outputStream = httpURLConnection.getOutputStream();
        } catch (Throwable th) {
            th = th;
            closeable = null;
        }
        try {
            outputStream.write(this.f16224a.c());
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                String contentEncoding = httpURLConnection.getContentEncoding();
                inputStream = (TextUtils.isEmpty(contentEncoding) || !contentEncoding.contains("gzip")) ? httpURLConnection.getInputStream() : new GZIPInputStream(httpURLConnection.getInputStream());
                a(responseCode, inputStream);
            } else if (responseCode == 302) {
                a(httpURLConnection.getHeaderField("Location"), responseCode);
            } else {
                a(new xi(responseCode, "request failed..."));
            }
            be.a((Closeable) inputStream);
            be.a(outputStream);
        } catch (Throwable th2) {
            th = th2;
            closeable = null;
            inputStream = outputStream;
            be.a(closeable);
            be.a((Closeable) inputStream);
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        me meVar = this.f16224a;
        if (meVar == null) {
            a(xi.a.ERROR_INVALID_URL);
            return;
        }
        HttpURLConnection httpURLConnectionA = null;
        try {
            try {
                httpURLConnectionA = a6.a(meVar);
                a(this.f16224a.a());
                a(httpURLConnectionA);
                if (httpURLConnectionA == null) {
                    return;
                }
            } catch (Exception e2) {
                a(new xi(-100, e2.getMessage()));
                if (httpURLConnectionA == null) {
                    return;
                }
            }
            httpURLConnectionA.disconnect();
        } catch (Throwable th) {
            if (httpURLConnectionA != null) {
                httpURLConnectionA.disconnect();
            }
            throw th;
        }
    }
}
