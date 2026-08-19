package com.sigmob.sdk.base.common;

import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.ResponseHeader;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ServiceReference;

/* renamed from: com.sigmob.sdk.base.common.s, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class AsyncTaskC1279s extends AsyncTask<String, Void, HashMap<String, String>> {

    /* renamed from: a, reason: collision with root package name */
    private static final int f36028a = 10;

    /* renamed from: b, reason: collision with root package name */
    private final a f36029b;

    /* renamed from: com.sigmob.sdk.base.common.s$a */
    public interface a {
        void a(String str, String str2);

        void a(String str, Throwable th);
    }

    private AsyncTaskC1279s(a aVar) {
        this.f36029b = aVar;
    }

    public static String a(String str) {
        if (!str.toLowerCase().contains(".apk")) {
            return null;
        }
        String strB = b(str);
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        String strC = c(str);
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        return strC;
    }

    public static String b(String str) {
        try {
            Matcher matcher = Pattern.compile("(fsname=)(.*?apk)", 2).matcher(str);
            if (matcher.find()) {
                return matcher.group(2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c(String str) {
        try {
            Matcher matcher = Pattern.compile("[\\w\\.]+\\.apk", 2).matcher(str);
            if (matcher.find()) {
                return matcher.group(0);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private String d(String str) throws URISyntaxException, IOException {
        String str2 = null;
        while (str != null) {
            try {
                str2 = str;
                str = e(str);
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
                return str;
            }
        }
        return str2;
    }

    private static String e(String str) throws URISyntaxException, IOException {
        HttpURLConnection httpURLConnection;
        String str2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.addRequestProperty(ResponseHeader.USER_AGENT.getKey(), Networking.getUserAgent());
                int responseCode = httpURLConnection.getResponseCode();
                String headerField = httpURLConnection.getHeaderField("Location");
                if (responseCode >= 300 && responseCode < 400) {
                    str2 = headerField;
                }
                httpURLConnection.disconnect();
                return str2;
            } catch (Throwable th) {
                th = th;
                try {
                    SigmobLog.e("resolveRedirectLocation fail", th);
                    return null;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }

    private String f(String str) {
        HttpURLConnection httpURLConnection;
        String strA;
        String strC = null;
        HttpURLConnection httpURLConnection2 = null;
        strC = null;
        try {
            if (TextUtils.isEmpty(null)) {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.addRequestProperty(ResponseHeader.USER_AGENT.getKey(), Networking.getUserAgent());
                    String strA2 = a(str, httpURLConnection);
                    if (strA2 != null) {
                        if (strA2.contains("fsname=")) {
                            strC = b(str);
                        } else if (strA2.contains(".apk")) {
                            strC = c(strA2);
                        } else {
                            httpURLConnection2 = httpURLConnection;
                            strA = strA2;
                        }
                    } else if (!TextUtils.isEmpty(str)) {
                        String[] strArrSplit = Uri.parse(str).getPath().split(ServiceReference.DELIMITER);
                        if (strArrSplit.length > 1) {
                            strA2 = strArrSplit[strArrSplit.length - 1];
                        }
                        if (TextUtils.isEmpty(strA2) || !strA2.toLowerCase().endsWith(".apk")) {
                            strC = Md5Util.md5(str) + ".apk";
                        }
                    }
                    strA = strC;
                    httpURLConnection2 = httpURLConnection;
                } catch (Throwable th) {
                    th = th;
                    try {
                        SigmobLog.e("getDownloadUrlFilename", th);
                        return null;
                    } finally {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                }
            } else {
                strA = a(str);
            }
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return strA;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        super.onCancelled();
        this.f36029b.a("Task for resolving url was cancelled", (Throwable) null);
    }

    private static String a(String str, HttpURLConnection httpURLConnection) throws URISyntaxException, IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode < 200 || responseCode >= 400) {
            return null;
        }
        try {
            return URLUtil.guessFileName(str, httpURLConnection.getHeaderField(com.sigmob.sdk.downloader.core.c.f37371j), null);
        } catch (IllegalArgumentException unused) {
            SigmobLog.e("Invalid URL redirection. baseUrl=" + str);
            throw new URISyntaxException(str, "Unable to parse invalid URL");
        } catch (NullPointerException e2) {
            SigmobLog.e("Invalid URL redirection. baseUrl=" + str);
            throw e2;
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public HashMap<String, String> doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        HashMap<String, String> map = new HashMap<>();
        try {
            String strD = strArr[0];
            try {
                strD = d(strD);
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
            map.put("url", strD);
            map.put("fileName", f(strD));
        } catch (Throwable th2) {
            SigmobLog.e(th2.getMessage());
        }
        return map;
    }

    public static void a(String str, a aVar) {
        try {
            String strA = a(str);
            if (TextUtils.isEmpty(strA)) {
                new AsyncTaskC1279s(aVar).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), str);
            } else {
                aVar.a(strA, str);
            }
        } catch (Throwable th) {
            aVar.a("Failed to resolve url", th);
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(HashMap<String, String> map) {
        String str;
        String str2;
        if (map != null) {
            str = map.get("fileName");
            str2 = map.get("url");
        } else {
            str = null;
            str2 = null;
        }
        this.f36029b.a(str, str2);
    }
}
