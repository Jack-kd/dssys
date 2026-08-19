package com.meishu.sdk.core.webview.jsbridge.util;

import android.webkit.WebView;

/* loaded from: classes4.dex */
public class a {
    public static void a(WebView webView, String str, String str2) {
        if (webView == null) {
            return;
        }
        try {
            webView.evaluateJavascript("ADMateJSBridge." + str + "(" + str2 + ")", null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
