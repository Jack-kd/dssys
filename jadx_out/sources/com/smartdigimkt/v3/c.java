package com.smartdigimkt.v3;

import android.os.SystemClock;
import com.byazt.rx.BaseConstants;
import com.smartdigimkt.b4.g;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import org.apache.http.conn.ConnectTimeoutException;

/* loaded from: classes5.dex */
public final class c extends g {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f44711b;

    public c(d dVar) {
        this.f44711b = dVar;
    }

    public final void a(String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        int responseCode;
        d dVar = this.f44711b;
        System.currentTimeMillis();
        dVar.getClass();
        d dVar2 = this.f44711b;
        SystemClock.elapsedRealtime();
        dVar2.getClass();
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                this.f44711b.f44712a;
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (OutOfMemoryError e2) {
            e = e2;
        } catch (StackOverflowError e3) {
            e = e3;
        } catch (Error e4) {
            e = e4;
        } catch (SocketTimeoutException e5) {
            e = e5;
        } catch (ConnectTimeoutException e6) {
            e = e6;
        } catch (Exception e7) {
            e = e7;
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f44711b.getClass();
            this.f44711b.getClass();
            this.f44711b.getClass();
            httpURLConnection.setConnectTimeout(BaseConstants.Time.MINUTE);
            this.f44711b.getClass();
            httpURLConnection.setReadTimeout(BaseConstants.Time.MINUTE);
            httpURLConnection.connect();
            responseCode = httpURLConnection.getResponseCode();
        } catch (Error e8) {
            e = e8;
            httpURLConnection2 = httpURLConnection;
            System.gc();
            this.f44711b.f44712a;
            e.getMessage();
            this.f44711b.a(e.getMessage());
            if (httpURLConnection2 != null) {
                httpURLConnection = httpURLConnection2;
                httpURLConnection.disconnect();
                return;
            }
            return;
        } catch (SocketTimeoutException e9) {
            e = e9;
            httpURLConnection2 = httpURLConnection;
            this.f44711b.a(e.getMessage());
            this.f44711b.f44712a;
            e.toString();
            if (httpURLConnection2 == null) {
                return;
            }
            httpURLConnection = httpURLConnection2;
            httpURLConnection.disconnect();
            return;
        } catch (Exception e10) {
            e = e10;
            httpURLConnection2 = httpURLConnection;
            this.f44711b.f44712a;
            e.getMessage();
            this.f44711b.a(e.getMessage());
            if (httpURLConnection2 == null) {
                return;
            }
            httpURLConnection = httpURLConnection2;
            httpURLConnection.disconnect();
            return;
        } catch (OutOfMemoryError e11) {
            e = e11;
            httpURLConnection2 = httpURLConnection;
            System.gc();
            this.f44711b.f44712a;
            e.getMessage();
            this.f44711b.a(e.getMessage());
            if (httpURLConnection2 != null) {
                httpURLConnection = httpURLConnection2;
                httpURLConnection.disconnect();
                return;
            }
            return;
        } catch (StackOverflowError e12) {
            e = e12;
            httpURLConnection2 = httpURLConnection;
            System.gc();
            this.f44711b.f44712a;
            e.getMessage();
            this.f44711b.a(e.getMessage());
            if (httpURLConnection2 != null) {
                httpURLConnection = httpURLConnection2;
                httpURLConnection.disconnect();
                return;
            }
            return;
        } catch (ConnectTimeoutException e13) {
            e = e13;
            httpURLConnection2 = httpURLConnection;
            this.f44711b.a(e.getMessage());
            if (httpURLConnection2 != null) {
                httpURLConnection = httpURLConnection2;
                httpURLConnection.disconnect();
                return;
            }
            return;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
        if (responseCode == 200) {
            this.f44711b.getClass();
            this.f44711b.f44714c = httpURLConnection.getContentLength();
            InputStream inputStream = httpURLConnection.getInputStream();
            boolean zA = this.f44711b.a(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            d dVar3 = this.f44711b;
            System.currentTimeMillis();
            dVar3.getClass();
            d dVar4 = this.f44711b;
            SystemClock.elapsedRealtime();
            dVar4.getClass();
            if (zA) {
                this.f44711b.f44712a;
                d dVar5 = this.f44711b;
                String str2 = dVar5.f44713b;
                dVar5.a();
            } else {
                this.f44711b.f44712a;
                d dVar6 = this.f44711b;
                String str3 = dVar6.f44713b;
                dVar6.a("Save fail!");
            }
            httpURLConnection.disconnect();
            return;
        }
        this.f44711b.f44712a;
        if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
            this.f44711b.a("Resource download fail, status code: " + responseCode + ", " + httpURLConnection.getResponseMessage() + ", url: " + str);
            httpURLConnection.disconnect();
            return;
        }
        this.f44711b.getClass();
        String headerField = httpURLConnection.getHeaderField("Location");
        if (headerField != null) {
            if (!headerField.toLowerCase().startsWith("http")) {
                this.f44711b.a("Final url is wrong:" + headerField);
                httpURLConnection.disconnect();
                return;
            }
            a(headerField);
        }
        httpURLConnection.disconnect();
    }

    @Override // com.smartdigimkt.b4.g
    public final void b() throws Throwable {
        try {
            a(this.f44711b.f44713b);
        } catch (Exception e2) {
            String str = this.f44711b.f44712a;
            e2.getMessage();
            this.f44711b.a(e2.getMessage());
        } catch (OutOfMemoryError e3) {
            e = e3;
            System.gc();
            this.f44711b.a(e.getMessage());
        } catch (StackOverflowError e4) {
            e = e4;
            System.gc();
            this.f44711b.a(e.getMessage());
        }
    }
}
