package com.smartdigimkt.w2;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;

/* loaded from: classes5.dex */
public interface c {
    void a(WebView webView);

    void a(WebView webView, int i2);

    void a(WebView webView, int i2, String str, String str2);

    void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError);

    void a(WebView webView, String str);

    void a(WebView webView, String str, Bitmap bitmap);

    void b(WebView webView);

    boolean b(WebView webView, String str);
}
