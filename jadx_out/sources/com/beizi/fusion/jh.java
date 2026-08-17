package com.beizi.fusion;

import android.text.TextUtils;
import com.beizi.fusion.xi;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;

/* loaded from: classes2.dex */
public class jh extends sa {

    /* renamed from: e, reason: collision with root package name */
    private File f14668e;

    public jh(me meVar, ua uaVar) {
        super(meVar, uaVar);
    }

    public void a(File file) {
        this.f14668e = file;
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
                httpURLConnectionA.setConnectTimeout(5000);
                httpURLConnectionA.setReadTimeout(5000);
                a(httpURLConnectionA);
                httpURLConnectionA.disconnect();
            } catch (Exception e2) {
                a(new xi(-100, e2.getMessage()));
                if (httpURLConnectionA != null) {
                    httpURLConnectionA.disconnect();
                }
            }
        } catch (Throwable th) {
            if (httpURLConnectionA != null) {
                httpURLConnectionA.disconnect();
            }
            throw th;
        }
    }

    private void a(HttpURLConnection httpURLConnection) throws Throwable {
        OutputStream outputStream;
        OutputStream fileOutputStream;
        InputStream inputStream;
        Throwable th;
        if (httpURLConnection == null) {
            a(xi.a.ERROR_UNEXPECTED);
            return;
        }
        InputStream inputStream2 = null;
        try {
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                String contentEncoding = httpURLConnection.getContentEncoding();
                inputStream = (TextUtils.isEmpty(contentEncoding) || !contentEncoding.contains("gzip")) ? httpURLConnection.getInputStream() : new GZIPInputStream(httpURLConnection.getInputStream());
                try {
                    File file = this.f14668e;
                    if (file != null) {
                        if (!file.exists()) {
                            this.f14668e.createNewFile();
                        }
                        if (this.f14668e.canWrite()) {
                            fileOutputStream = new FileOutputStream(this.f14668e);
                            try {
                                a(inputStream, fileOutputStream);
                            } catch (Throwable th2) {
                                th = th2;
                                be.a((Closeable) inputStream);
                                be.a(fileOutputStream);
                                throw th;
                            }
                        } else {
                            fileOutputStream = null;
                        }
                        try {
                            a(responseCode, (InputStream) null);
                            inputStream2 = fileOutputStream;
                        } catch (Throwable th3) {
                            outputStream = fileOutputStream;
                            th = th3;
                            inputStream2 = inputStream;
                            inputStream = inputStream2;
                            th = th;
                            fileOutputStream = outputStream;
                            be.a((Closeable) inputStream);
                            be.a(fileOutputStream);
                            throw th;
                        }
                    } else {
                        a(xi.a.ERROR_UNEXPECTED);
                    }
                } catch (Throwable th4) {
                    th = th4;
                    outputStream = null;
                }
            } else {
                if (responseCode == 302) {
                    a(httpURLConnection.getHeaderField("Location"), responseCode);
                } else {
                    a(new xi(responseCode, "request failed..."));
                }
                inputStream = null;
            }
            be.a((Closeable) inputStream);
            be.a((Closeable) inputStream2);
        } catch (Throwable th5) {
            th = th5;
            outputStream = null;
        }
    }

    private void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            return;
        }
        be.a(inputStream, outputStream);
    }
}
