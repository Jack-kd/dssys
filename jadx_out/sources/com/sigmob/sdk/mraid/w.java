package com.sigmob.sdk.mraid;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.czhj.volley.toolbox.StringUtil;
import java.io.ByteArrayInputStream;

/* loaded from: classes4.dex */
public class w extends com.sigmob.sdk.base.l {

    /* renamed from: c, reason: collision with root package name */
    private static final String f38060c = "MraidWebViewClient";

    /* renamed from: d, reason: collision with root package name */
    private String f38061d;

    private WebResourceResponse a() {
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(b().getBytes()));
    }

    private String b() {
        if (this.f38061d == null) {
            this.f38061d = C1318j.INJECTION_JAVASCRIPT.replaceAll("xxx", StringUtil.decode(StringUtil.f29700s));
        }
        return this.f38061d;
    }

    @Override // com.sigmob.sdk.base.l, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (com.sigmob.sdk.base.utils.x.a(str)) {
            return null;
        }
        if (com.sigmob.sdk.base.l.a(str)) {
            try {
                return a();
            } catch (Exception e2) {
                com.sigmob.sdk.base.utils.k.f(f38060c, "shouldInterceptRequest: error = " + e2.getMessage(), new Object[0]);
            }
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
