package com.sigmob.sdk.base;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.URLUtil;
import android.webkit.WebResourceResponse;
import com.sigmob.sdk.base.utils.x;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionPool;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public final class f extends e {

    /* renamed from: b, reason: collision with root package name */
    private OkHttpClient.Builder f36242b;

    /* renamed from: c, reason: collision with root package name */
    private OkHttpClient f36243c;

    public f() {
        try {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            this.f36242b = builder;
            builder.connectionPool(new ConnectionPool());
            OkHttpClient.Builder builder2 = this.f36242b;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            builder2.connectTimeout(5000L, timeUnit);
            this.f36242b.readTimeout(5000L, timeUnit);
            this.f36242b.writeTimeout(5000L, timeUnit);
            this.f36243c = this.f36242b.build();
        } catch (Throwable unused) {
        }
    }

    @Override // com.sigmob.sdk.base.e
    public WebResourceResponse a(String str, String str2, Map<String, String> map) {
        if (x.a(str)) {
            return null;
        }
        if ((!URLUtil.isHttpUrl(str) && !URLUtil.isHttpsUrl(str)) || str2.equals("POST")) {
            return null;
        }
        try {
            String host = Uri.parse(str).getHost();
            if (host != null && !host.equals("127.0.0.1") && !host.equals("localhost")) {
                Request.Builder builderUrl = new Request.Builder().url(str);
                if (map != null && map.size() > 0) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        builderUrl.addHeader(entry.getKey(), entry.getValue());
                    }
                }
                String cookie = CookieManager.getInstance().getCookie(str);
                if (!TextUtils.isEmpty(cookie)) {
                    for (String str3 : cookie.split(";")) {
                        builderUrl.addHeader(e.f36239a.toLowerCase(), str3.replace(" ", ""));
                    }
                }
                Response responseExecute = this.f36243c.newCall(builderUrl.build()).execute();
                return new WebResourceResponse(responseExecute.body().contentType().type() + ServiceReference.DELIMITER + responseExecute.body().contentType().subtype(), responseExecute.header("content-encoding", "utf-8"), responseExecute.body().byteStream());
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return super.a(str, str2, map);
        }
    }
}
