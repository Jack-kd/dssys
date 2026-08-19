package com.sigmob.sdk.base;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.sigmob.sdk.base.utils.x;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class l extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    static final String f36296a = "Set-Cookie";

    /* renamed from: b, reason: collision with root package name */
    static final String f36297b = "Referer";

    /* renamed from: c, reason: collision with root package name */
    private static final String f36298c = "l";

    /* renamed from: d, reason: collision with root package name */
    private static final String f36299d = "mraid.js";

    /* renamed from: e, reason: collision with root package name */
    private static final String f36300e = "mraid2.js";

    /* renamed from: f, reason: collision with root package name */
    private final boolean f36301f = false;

    /* renamed from: g, reason: collision with root package name */
    private boolean f36302g = false;

    /* renamed from: h, reason: collision with root package name */
    private String f36303h;

    public static WebResourceResponse a(Uri uri) {
        String scheme;
        if (uri != null && (scheme = uri.getScheme()) != null && scheme.startsWith(n.f36463z)) {
            String path = uri.getPath();
            if (!com.sigmob.sdk.base.utils.s.a((CharSequence) path) && !x.a(path)) {
                try {
                    File file = new File(path);
                    if (file.getCanonicalPath().equals(file.getAbsolutePath()) && file.exists()) {
                        return new WebResourceResponse("text/html", "utf-8", new FileInputStream(file));
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    private WebResourceResponse c(String str) {
        Uri uri;
        String host;
        String scheme;
        String lastPathSegment;
        try {
            uri = Uri.parse(str);
            host = uri.getHost();
            scheme = uri.getScheme();
            lastPathSegment = uri.getLastPathSegment();
        } catch (Throwable th) {
            SigmobLog.e("useWebResourceCache: error = " + th.getMessage());
        }
        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) lastPathSegment) && !x.a(lastPathSegment) && host != null && !a(str) && scheme.startsWith("http") && !host.equals("127.0.0.1") && com.sigmob.sdk.base.utils.s.a((CharSequence) uri.getQueryParameter("no-cache")) && (lastPathSegment.endsWith(".js") || lastPathSegment.endsWith(".css"))) {
            String strC = com.sigmob.sdk.base.utils.n.c();
            File file = new File(strC, lastPathSegment);
            if (!file.getCanonicalPath().startsWith(new File(strC).getCanonicalPath())) {
                return null;
            }
            String str2 = lastPathSegment.endsWith(".js") ? "text/javascript" : lastPathSegment.endsWith(".css") ? "text/css" : null;
            if (file.exists()) {
                WebResourceResponse webResourceResponse = new WebResourceResponse(str2, "UTF-8", new FileInputStream(file));
                HashMap map = new HashMap();
                map.put("Cache-Control", "no-store");
                webResourceResponse.setResponseHeaders(map);
                return webResourceResponse;
            }
            return null;
        }
        return null;
    }

    public void b(String str) {
        try {
            Uri uri = Uri.parse(str);
            this.f36303h = uri.getScheme() + "://" + uri.getHost() + ServiceReference.DELIMITER + uri.getPath();
        } catch (Throwable unused) {
        }
    }

    @Override // android.webkit.WebViewClient
    @SuppressLint({"NewApi"})
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        WebResourceResponse webResourceResponseShouldInterceptRequest;
        File fileA;
        Uri url = webResourceRequest.getUrl();
        String string = url.toString();
        try {
            webResourceResponseShouldInterceptRequest = a(url);
            if (webResourceResponseShouldInterceptRequest != null) {
                return webResourceResponseShouldInterceptRequest;
            }
        } catch (Throwable unused) {
            webResourceResponseShouldInterceptRequest = null;
        }
        if (this.f36302g && (webResourceResponseShouldInterceptRequest = c(string)) != null) {
            return webResourceResponseShouldInterceptRequest;
        }
        if (this.f36302g && !d.a(string) && !a(string)) {
            webResourceResponseShouldInterceptRequest = d.a(string, webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders());
        }
        if (webResourceResponseShouldInterceptRequest == null) {
            webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(webView, webResourceRequest);
        }
        if (this.f36302g && webResourceResponseShouldInterceptRequest != null && (fileA = a(webResourceResponseShouldInterceptRequest, string)) != null && fileA.exists()) {
            try {
                return new WebResourceResponse(webResourceResponseShouldInterceptRequest.getMimeType(), webResourceResponseShouldInterceptRequest.getEncoding(), new FileInputStream(fileA));
            } catch (FileNotFoundException unused2) {
            }
        }
        return webResourceResponseShouldInterceptRequest;
    }

    private static File a(WebResourceResponse webResourceResponse, String str) {
        Uri uri;
        try {
            uri = Uri.parse(str);
        } catch (Throwable unused) {
        }
        if (d.a(str)) {
            return null;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (!com.sigmob.sdk.base.utils.s.a((CharSequence) lastPathSegment) && !x.a(lastPathSegment)) {
            File file = new File(com.sigmob.sdk.base.utils.n.c(), lastPathSegment);
            FileUtil.writeToCache(webResourceResponse.getData(), file.getAbsolutePath());
            return file;
        }
        return null;
    }

    public void b(boolean z2) {
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        WebResourceResponse webResourceResponseShouldInterceptRequest;
        File fileA;
        if (x.a(str)) {
            return null;
        }
        try {
            webResourceResponseShouldInterceptRequest = a(Uri.parse(str));
            if (webResourceResponseShouldInterceptRequest != null) {
                return webResourceResponseShouldInterceptRequest;
            }
        } catch (Throwable unused) {
            webResourceResponseShouldInterceptRequest = null;
        }
        if (this.f36302g && (webResourceResponseShouldInterceptRequest = c(str)) != null) {
            return webResourceResponseShouldInterceptRequest;
        }
        if (this.f36302g && !d.a(str) && !a(str)) {
            webResourceResponseShouldInterceptRequest = d.a(str, "GET", null);
        }
        if (webResourceResponseShouldInterceptRequest == null) {
            webResourceResponseShouldInterceptRequest = super.shouldInterceptRequest(webView, str);
        }
        if (this.f36302g && webResourceResponseShouldInterceptRequest != null && (fileA = a(webResourceResponseShouldInterceptRequest, str)) != null && fileA.exists()) {
            try {
                return new WebResourceResponse(webResourceResponseShouldInterceptRequest.getMimeType(), webResourceResponseShouldInterceptRequest.getEncoding(), new FileInputStream(fileA));
            } catch (FileNotFoundException unused2) {
            }
        }
        return webResourceResponseShouldInterceptRequest;
    }

    public static void a(HttpURLConnection httpURLConnection, CookieManager cookieManager) {
        if (cookieManager == null || httpURLConnection == null) {
            return;
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        SigmobLog.d("headerFields : " + headerFields.toString());
        List<String> list = headerFields.get(f36296a);
        if (list == null) {
            return;
        }
        for (String str : list) {
            try {
                List<HttpCookie> list2 = HttpCookie.parse(str);
                if (!com.sigmob.sdk.base.utils.f.a(list2)) {
                    SigmobLog.d("{0} -- Reading Cookies from the response :" + httpURLConnection.getURL().toString());
                    SigmobLog.d("{0} -- Reading Cookies from the response :" + list2.get(0));
                    for (HttpCookie httpCookie : list2) {
                        SigmobLog.d(httpCookie.toString());
                        android.webkit.CookieManager.getInstance().setCookie(httpURLConnection.getURL().toString(), httpCookie.getName() + "=" + httpCookie.getValue());
                    }
                }
            } catch (NullPointerException unused) {
                SigmobLog.e(MessageFormat.format("{0} -- Null header for the cookie : {1}", httpURLConnection.getURL().toString(), str));
            }
        }
        android.webkit.CookieManager.getInstance().flush();
    }

    public void a(boolean z2) {
        this.f36302g = z2;
    }

    public static boolean a(String str) {
        String lastPathSegment = Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment();
        SigmobLogger.d(f36298c, "matchesInjectionUrl: lastPathSegment = " + lastPathSegment, new Object[0]);
        return f36299d.equals(lastPathSegment) || f36300e.equals(lastPathSegment);
    }
}
