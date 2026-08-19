package com.sigmob.sdk.base;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceResponse;
import com.sigmob.sdk.base.utils.x;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes4.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f36239a = "Cookie";

    /* renamed from: b, reason: collision with root package name */
    private static final String f36240b = "e";

    /* renamed from: c, reason: collision with root package name */
    private static final CookieManager f36241c = new CookieManager();

    public WebResourceResponse a(String str, String str2, Map<String, String> map) throws IOException {
        List<String> list;
        String str3 = "UTF-8";
        if (x.a(str)) {
            return null;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod(str2);
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            String cookie = android.webkit.CookieManager.getInstance().getCookie(str);
            if (!TextUtils.isEmpty(cookie)) {
                for (String str4 : cookie.split(";")) {
                    httpURLConnection.addRequestProperty(f36239a.toLowerCase(), str4.replace(" ", ""));
                }
            }
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            String contentType = httpURLConnection.getContentType();
            String contentEncoding = httpURLConnection.getContentEncoding();
            InputStream inputStream = httpURLConnection.getInputStream();
            a(httpURLConnection, f36241c);
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            if ((responseCode == 301 || responseCode == 302) && (list = headerFields.get("Location")) != null && list.size() > 0) {
                return a(list.get(0), "GET", null);
            }
            if (contentType != null) {
                contentType = contentType.split(";")[0];
                if (contentType.contains(com.baidu.mobads.sdk.internal.a.f10878b) || contentType.contains("javascript")) {
                    if (contentType.contains("text/plain")) {
                        contentType = "text/html";
                    }
                    inputStream = a(inputStream, "UTF-8");
                }
                WebResourceResponse webResourceResponse = new WebResourceResponse(contentType, str3, inputStream);
                webResourceResponse.setResponseHeaders(a(headerFields));
                return webResourceResponse;
            }
            inputStream = null;
            str3 = contentEncoding;
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(contentType, str3, inputStream);
            webResourceResponse2.setResponseHeaders(a(headerFields));
            return webResourceResponse2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static InputStream a(InputStream inputStream, String str) throws IOException {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
        String str2 = new String(byteArrayOutputStream.toByteArray());
        if (str == null) {
            str = Charset.defaultCharset().displayName();
        }
        return new ByteArrayInputStream(str2.getBytes(str));
    }

    public static Map<String, String> a(Map<String, List<String>> map) {
        StringBuilder sb = new StringBuilder();
        HashMap map2 = new HashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            sb.delete(0, sb.length());
            if (value != null && value.size() > 0) {
                Iterator<String> it = value.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(";");
                }
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            map2.put(entry.getKey(), sb.toString());
        }
        return map2;
    }

    public static void a(HttpURLConnection httpURLConnection, CookieManager cookieManager) {
        if (cookieManager == null || httpURLConnection == null) {
            return;
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        headerFields.toString();
        List<String> list = headerFields.get("Set-Cookie");
        if (list == null) {
            return;
        }
        for (String str : list) {
            try {
                List<HttpCookie> list2 = HttpCookie.parse(str);
                if (list2 != null && !list2.isEmpty()) {
                    httpURLConnection.getURL().toString();
                    Objects.toString(list2.get(0));
                    for (HttpCookie httpCookie : list2) {
                        httpCookie.toString();
                        android.webkit.CookieManager.getInstance().setCookie(httpURLConnection.getURL().toString(), httpCookie.getName() + "=" + httpCookie.getValue());
                    }
                }
            } catch (NullPointerException unused) {
                Log.e(f36240b, MessageFormat.format("{0} -- Null header for the cookie : {1}", httpURLConnection.getURL().toString(), str));
            }
        }
        android.webkit.CookieManager.getInstance().flush();
    }
}
