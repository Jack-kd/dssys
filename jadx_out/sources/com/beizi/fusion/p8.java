package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.xi;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public class p8 extends sa {
    public p8(me meVar, ua uaVar) {
        super(meVar, uaVar);
    }

    private void a(HttpURLConnection httpURLConnection) throws IOException {
        if (httpURLConnection == null) {
            a(xi.a.ERROR_UNEXPECTED);
            return;
        }
        InputStream inputStream = null;
        try {
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
        } catch (Throwable th) {
            be.a((Closeable) null);
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
