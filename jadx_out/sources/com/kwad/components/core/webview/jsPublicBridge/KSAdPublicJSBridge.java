package com.kwad.components.core.webview.jsPublicBridge;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.Keep;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.core.webview.KsAdWebView;
import com.kwad.sdk.core.webview.c.b;
import com.kwad.sdk.core.webview.c.d;
import com.kwad.sdk.core.webview.c.e;
import com.kwad.sdk.core.webview.c.f;
import com.kwad.sdk.utils.ce;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class KSAdPublicJSBridge {
    private WebView ade;
    private final Map<String, com.kwad.sdk.core.webview.c.a> aou = new ConcurrentHashMap(32);
    private com.kwad.sdk.core.webview.c.a aov = new d();
    private boolean aow;

    public KSAdPublicJSBridge(WebView webView) {
        this.ade = webView;
        yp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str, String str2) {
        if (this.aow) {
            c.d("KSAdPublicJSBridge", "callJS after destroy jsInterface, " + str2);
        } else {
            if (TextUtils.isEmpty(str)) {
                c.d("KSAdPublicJSBridge", "callJS callback is empty");
                return;
            }
            c.d("KSAdPublicJSBridge", "callJS callback:+ " + str + "--params: " + str2);
            WebView webView = this.ade;
            if (webView == null) {
                return;
            }
            ce.a(webView, str, str2);
        }
    }

    private void yp() {
        a(new com.kwad.components.core.webview.jsPublicBridge.a.a());
    }

    @JavascriptInterface
    @Keep
    public void callAdBridge(String str) {
        c.d("KSAdPublicJSBridge", "callAdBridge ==" + str);
        try {
            final b bVar = new b();
            bVar.parseJson(new JSONObject(str));
            com.kwad.sdk.core.webview.c.a aVar = this.aou.get(bVar.bcX);
            if (aVar == null) {
                aVar = this.aov;
            }
            WebView webView = this.ade;
            if (webView != null && (webView instanceof KsAdWebView)) {
                KsAdWebView ksAdWebView = (KsAdWebView) webView;
                com.kwad.sdk.core.webview.b.c.b.a(ksAdWebView.getLoadUrl(), ksAdWebView.getUniqueId(), bVar.bcX, bVar.data);
            }
            if (aVar != null) {
                aVar.a(bVar.data, !TextUtils.isEmpty(bVar.bcY) ? new com.kwad.sdk.core.webview.c.c() { // from class: com.kwad.components.core.webview.jsPublicBridge.KSAdPublicJSBridge.1
                    @Override // com.kwad.sdk.core.webview.c.c
                    public final void b(com.kwad.sdk.core.b bVar2) {
                        KSAdPublicJSBridge.this.q(bVar.bcY, new f(bVar2).toJson().toString());
                    }

                    @Override // com.kwad.sdk.core.webview.c.c
                    public final void onError(int i2, String str2) {
                        KSAdPublicJSBridge.this.q(bVar.bcY, new e(i2, str2).toJson().toString());
                    }
                } : new com.kwad.sdk.core.webview.c.c() { // from class: com.kwad.components.core.webview.jsPublicBridge.KSAdPublicJSBridge.2
                    @Override // com.kwad.sdk.core.webview.c.c
                    public final void b(com.kwad.sdk.core.b bVar2) {
                    }

                    @Override // com.kwad.sdk.core.webview.c.c
                    public final void onError(int i2, String str2) {
                    }
                });
            } else {
                c.e("KSAdPublicJSBridge", "bridgeHandler is null");
            }
        } catch (JSONException e2) {
            c.printStackTraceOnly(e2);
        }
    }

    public final void destroy() {
        c.i("KSAdPublicJSBridge", "destroy jsInterface");
        Iterator<Map.Entry<String, com.kwad.sdk.core.webview.c.a>> it = this.aou.entrySet().iterator();
        while (it.hasNext()) {
            com.kwad.sdk.core.webview.c.a value = it.next().getValue();
            if (value != null) {
                value.onDestroy();
            }
        }
        this.aow = true;
    }

    private void a(com.kwad.sdk.core.webview.c.a aVar) {
        if (TextUtils.isEmpty(aVar.getKey())) {
            c.e("KSAdPublicJSBridge", "handler and handler'key cannot be null");
            return;
        }
        if (this.aou.containsKey(aVar.getKey())) {
            c.e("KSAdPublicJSBridge", "cannot register handler again, handler: " + aVar.getKey());
        }
        this.aou.put(aVar.getKey(), aVar);
    }
}
