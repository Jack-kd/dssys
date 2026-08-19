package com.sigmob.sdk.base.common;

import android.net.Uri;
import android.os.AsyncTask;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.ResponseHeader;
import com.czhj.sdk.logger.SigmobLog;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* loaded from: classes4.dex */
public class ap extends AsyncTask<String, Void, String> {

    /* renamed from: a, reason: collision with root package name */
    private static final int f35832a = 10;

    /* renamed from: b, reason: collision with root package name */
    private final a f35833b;

    public interface a {
        void a(String str);

        void a(String str, Throwable th);
    }

    private ap(a aVar) {
        this.f35833b = aVar;
    }

    private static String a(String str, HttpURLConnection httpURLConnection) throws Throwable {
        URI uri = new URI(str);
        int responseCode = httpURLConnection.getResponseCode();
        String headerField = httpURLConnection.getHeaderField("Location");
        if (responseCode < 300 || responseCode >= 400) {
            return null;
        }
        try {
            return uri.resolve(headerField).toString();
        } catch (IllegalArgumentException unused) {
            SigmobLog.e("Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
            throw new URISyntaxException(headerField, "Unable to parse invalid URL");
        } catch (Throwable th) {
            SigmobLog.e("Invalid URL redirection. baseUrl=" + str + "\n redirectUrl=" + headerField);
            throw th;
        }
    }

    private String b(String str) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setInstanceFollowRedirects(false);
                httpURLConnection2.addRequestProperty(ResponseHeader.USER_AGENT.getKey(), Networking.getUserAgent());
                String strA = a(str, httpURLConnection2);
                InputStream inputStream = httpURLConnection2.getInputStream();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable unused) {
                        SigmobLog.d("IOException when closing httpUrlConnection. Ignoring.");
                    }
                }
                httpURLConnection2.disconnect();
                return strA;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    InputStream inputStream2 = httpURLConnection.getInputStream();
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable unused2) {
                            SigmobLog.d("IOException when closing httpUrlConnection. Ignoring.");
                        }
                    }
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f35833b.a("Task for resolving url was cancelled", null);
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(String... strArr) {
        String str = null;
        if (strArr != null && strArr.length != 0) {
            try {
                String strB = strArr[0];
                while (true) {
                    String str2 = str;
                    str = strB;
                    if (str == null) {
                        return str2;
                    }
                    try {
                        if (!an.OPEN_WITH_BROWSER.a(Uri.parse(str), 0)) {
                            return str;
                        }
                        strB = b(str);
                    } catch (Throwable th) {
                        str = str2;
                        th = th;
                        SigmobLog.w(th.getMessage());
                        return str;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return str;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
        if (isCancelled() || str == null) {
            onCancelled();
        } else {
            this.f35833b.a(str);
        }
    }

    public static void a(String str, a aVar) {
        try {
            new ap(aVar).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), str);
        } catch (Throwable th) {
            aVar.a("Failed to resolve url", th);
        }
    }
}
