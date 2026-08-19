package com.smartdigimkt.g1;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.smartdigimkt.c1.d;
import com.smartdigimkt.sdk.basead.express.web.BaseWebView;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class a {
    public static void a(WebView webView, String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            str3 = "javascript:window.WindVane.fireEvent('" + str + "', '');";
        } else {
            str3 = "javascript:window.WindVane.fireEvent('" + str + "','" + c.a(str2) + "');";
        }
        if (webView != null) {
            if ((webView instanceof BaseWebView) && ((BaseWebView) webView).isDestroyed()) {
                return;
            }
            try {
                webView.loadUrl(str3);
            } catch (Exception e2) {
                e2.printStackTrace();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(WebView webView) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("api_version", "1.0.0");
            a(webView, d.f39630a, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception unused) {
            a(webView, d.f39630a, "");
        } catch (Throwable unused2) {
            a(webView, d.f39630a, "");
        }
    }
}
