package com.ubix.ssp.ad.e.c0;

import android.content.Context;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* loaded from: classes5.dex */
public class b extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    private Context f46800a;

    /* renamed from: b, reason: collision with root package name */
    private a f46801b;

    public interface a {
        void setTitle(String str);

        void setWebViewProgress(int i2, boolean z2, boolean z3);
    }

    public b(Context context, a aVar) {
        this.f46800a = context;
        this.f46801b = aVar;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        super.onGeolocationPermissionsShowPrompt(str, callback);
        callback.invoke(str, true, false);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        jsResult.confirm();
        return super.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i2) {
        super.onProgressChanged(webView, i2);
        a aVar = this.f46801b;
        if (aVar != null) {
            aVar.setWebViewProgress(i2, true, false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        a aVar = this.f46801b;
        if (aVar != null) {
            aVar.setTitle(str);
        }
    }
}
