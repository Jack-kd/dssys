package com.smartdigimkt.d1;

import android.webkit.WebView;
import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class a {
    public static void a(MraidBaseWebView mraidBaseWebView, HashMap map) throws JSONException {
        if (map.size() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            try {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        String string = jSONObject.toString();
        try {
            string = URLEncoder.encode(string, "UTF-8");
        } catch (Throwable unused) {
        }
        a(mraidBaseWebView, "javascript:window.mraidbridge.fireChangeEvent(" + string + ");");
    }

    public static void a(WebView webView, String str) {
        if (webView != null) {
            try {
                webView.loadUrl(str);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
