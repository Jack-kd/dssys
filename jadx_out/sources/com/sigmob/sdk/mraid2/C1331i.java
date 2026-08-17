package com.sigmob.sdk.mraid2;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;

/* renamed from: com.sigmob.sdk.mraid2.i, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1331i extends com.sigmob.sdk.base.l {

    /* renamed from: c, reason: collision with root package name */
    private static final String f38193c = "Mraid2WebViewClient";

    private WebResourceResponse a() {
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(C1329g.INJECTION_JAVASCRIPT.getBytes()));
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
                com.sigmob.sdk.base.utils.k.f(f38193c, "shouldInterceptRequest: error = " + e2.getMessage(), new Object[0]);
            }
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
