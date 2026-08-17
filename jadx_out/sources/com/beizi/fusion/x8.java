package com.beizi.fusion;

import android.os.AsyncTask;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/* loaded from: classes2.dex */
public abstract class x8 extends AsyncTask {

    /* renamed from: c, reason: collision with root package name */
    private static String f17441c = "HTTPGet";

    /* renamed from: a, reason: collision with root package name */
    private boolean f17442a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f17443b;

    public x8(boolean z2, boolean z3) {
        this.f17442a = z2;
        this.f17443b = z3;
    }

    private HttpURLConnection a(URL url) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod("GET");
        return httpURLConnection;
    }

    public abstract String a();

    @Override // android.os.AsyncTask
    public y8 doInBackground(Void... voidArr) {
        y8 y8Var = new y8();
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                try {
                    URL url = new URL(a());
                    if (url.getHost() == null) {
                        y8Var.a(false);
                        return y8Var;
                    }
                    HttpURLConnection httpURLConnectionA = a(url);
                    a(httpURLConnectionA);
                    httpURLConnectionA.connect();
                    int responseCode = httpURLConnectionA.getResponseCode();
                    nh.a(f17441c, "HTTPGet code:" + responseCode);
                    y8Var.a(httpURLConnectionA.getHeaderFields());
                    y8Var.a(responseCode == 200 || responseCode == 302);
                    if (responseCode == 302) {
                        y8Var.a(responseCode);
                        y8Var.a(httpURLConnectionA.getHeaderField("Location"));
                    }
                    if (this.f17443b) {
                        InputStream inputStream = httpURLConnectionA.getInputStream();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i2 = inputStream.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i2);
                        }
                        inputStream.close();
                        if (this.f17442a) {
                            y8Var.a(byteArrayOutputStream);
                        } else {
                            y8Var.b(byteArrayOutputStream.toString("UTF-8"));
                        }
                    }
                    httpURLConnectionA.disconnect();
                    return y8Var;
                } catch (MalformedURLException unused) {
                    y8Var.a(false);
                    y8Var.a(k9.URL_FORMAT_ERROR);
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                    return y8Var;
                }
            } catch (IOException unused2) {
                y8Var.a(false);
                y8Var.a(k9.TRANSPORT_ERROR);
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
                return y8Var;
            } catch (Exception unused3) {
                y8Var.a(false);
                y8Var.a(k9.TRANSPORT_ERROR);
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
                return y8Var;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled(y8 y8Var) {
        super.onCancelled((x8) null);
    }

    private void a(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty("User-Agent", b4.j().f13046g);
    }
}
