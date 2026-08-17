package com.baidu.passbqt.http;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SimpleTimeZone;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final String f11886a = "i";

    public static String a(String str, String str2, String str3, long j2, boolean z2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j2);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd-MMM-yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append("=");
        sb.append(str3);
        sb.append(";domain=");
        sb.append(str);
        sb.append(";path=/;expires=");
        sb.append(simpleDateFormat.format(calendar.getTime()));
        sb.append(";httponly");
        sb.append(z2 ? ";secure" : "");
        return sb.toString();
    }

    public static void b(Context context, HttpURLConnection httpURLConnection, j jVar) {
        HttpCookie httpCookie;
        try {
            CookieSyncManager.createInstance(context);
            String cookie = CookieManager.getInstance().getCookie("https://" + new URI(jVar.f11887a).getHost());
            String str = f11886a;
            k.b(str, "asyncCookie" + jVar.f11892f);
            k.b(str, "webviewCookies" + cookie);
            if (!jVar.f11892f) {
                cookie = null;
            }
            List<HttpCookie> list = jVar.f11888b;
            if (!TextUtils.isEmpty(cookie) || (list != null && !list.isEmpty())) {
                String str2 = "";
                String[] strArrSplit = TextUtils.isEmpty(cookie) ? null : cookie.split(";");
                if (strArrSplit != null && strArrSplit.length > 0) {
                    for (String str3 : strArrSplit) {
                        if (!TextUtils.isEmpty(str3)) {
                            List<HttpCookie> list2 = HttpCookie.parse(str3);
                            if (!list2.isEmpty() && (httpCookie = list2.get(0)) != null && !httpCookie.hasExpired()) {
                                if (list != null) {
                                    for (HttpCookie httpCookie2 : list) {
                                        if (httpCookie.getName().equals(httpCookie2.getName()) && d(jVar.f11887a, httpCookie)) {
                                            httpCookie = httpCookie2;
                                        }
                                    }
                                }
                                if (!httpCookie.hasExpired()) {
                                    str2 = str2 + httpCookie.getName() + "=" + httpCookie.getValue() + ";";
                                }
                                k.b(f11886a, "httpCookie webview item name:" + httpCookie.getName() + ",value:" + httpCookie.getValue());
                            }
                        }
                    }
                }
                if (list != null) {
                    for (HttpCookie httpCookie3 : list) {
                        if (d(jVar.f11887a, httpCookie3)) {
                            str2 = str2 + httpCookie3.getName() + "=" + httpCookie3.getValue() + ";";
                        }
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                String strSubstring = str2.substring(0, str2.length() - 1);
                k.b(f11886a, "cookieStr" + strSubstring);
                httpURLConnection.setRequestProperty(com.sigmob.sdk.base.e.f36239a, strSubstring);
            }
        } catch (Exception e2) {
            k.b(f11886a, "asyncWebviewCookie2NA:" + e2.toString());
        }
    }

    public static boolean c(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return (str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !k.c(str)) || str.endsWith(str2) || str2.startsWith(com.anythink.core.common.d.i.f2495E) || !k.c(str);
    }

    public static boolean d(String str, HttpCookie httpCookie) {
        try {
            URL url = new URL(str);
            if (!httpCookie.getDiscard() && !httpCookie.hasExpired() && c(url.getHost(), httpCookie.getDomain()) && g(url.getPath(), httpCookie.getPath())) {
                if (e(str, httpCookie.getSecure())) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean e(String str, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !z2 || str.startsWith("https://");
    }

    public static void f(Context context, HttpURLConnection httpURLConnection, j jVar) {
        Map<String, List<String>> headerFields;
        List<String> list;
        try {
            k.b(f11886a, "asyncCookie" + jVar.f11892f);
            if (jVar.f11892f && (headerFields = httpURLConnection.getHeaderFields()) != null && !headerFields.isEmpty() && (list = headerFields.get("Set-Cookie")) != null && !list.isEmpty()) {
                CookieSyncManager.createInstance(context);
                CookieManager cookieManager = CookieManager.getInstance();
                cookieManager.setAcceptCookie(true);
                if (cookieManager.acceptCookie()) {
                    for (String str : list) {
                        if (!TextUtils.isEmpty(str)) {
                            List<HttpCookie> list2 = HttpCookie.parse(str);
                            if (!list2.isEmpty()) {
                                HttpCookie httpCookie = list2.get(0);
                                if (d(jVar.f11887a, httpCookie)) {
                                    String str2 = f11886a;
                                    Log.e(str2, "httpcookie:" + httpCookie.toString());
                                    String strA = a(httpCookie.getDomain(), httpCookie.getName(), httpCookie.getValue(), System.currentTimeMillis() + (httpCookie.getMaxAge() * 1000), httpCookie.getSecure());
                                    Log.e(str2, "httpcookie build:" + strA);
                                    cookieManager.setCookie("https://" + httpCookie.getDomain(), strA);
                                }
                            }
                        }
                    }
                    cookieManager.flush();
                }
            }
        } catch (Exception e2) {
            k.b(f11886a, "asyncNaCookie2Webview:" + e2.toString());
        }
    }

    public static boolean g(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (str.startsWith(str2)) {
            return str2.endsWith(ServiceReference.DELIMITER) || str.charAt(str2.length()) == '/';
        }
        return false;
    }
}
