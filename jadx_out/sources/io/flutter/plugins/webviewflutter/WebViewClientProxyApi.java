package io.flutter.plugins.webviewflutter;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugins.webviewflutter.WebViewClientProxyApi;
import kotlin.Result;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public class WebViewClientProxyApi extends PigeonApiWebViewClient {

    public static class WebViewClientImpl extends WebViewClient {
        private final WebViewClientProxyApi api;
        private boolean returnValueForShouldOverrideUrlLoading = false;

        public WebViewClientImpl(@NonNull WebViewClientProxyApi webViewClientProxyApi) {
            this.api = webViewClientProxyApi;
        }

        public static /* synthetic */ kotlin.j A(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j B(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j a(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j c(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j d(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j g(Result result) {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$doUpdateVisitedHistory$11(WebView webView, String str, boolean z2) {
            this.api.doUpdateVisitedHistory(this, webView, str, z2, new Function1() { // from class: io.flutter.plugins.webviewflutter.t3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.x((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFormResubmission$15(WebView webView, Message message, Message message2) {
            this.api.onFormResubmission(this, webView, message, message2, new Function1() { // from class: io.flutter.plugins.webviewflutter.g3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.q((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLoadResource$17(WebView webView, String str) {
            this.api.onLoadResource(this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.p3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.o((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPageCommitVisible$19(WebView webView, String str) {
            this.api.onPageCommitVisible(this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.x3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.g((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPageFinished$3(WebView webView, String str) {
            this.api.onPageFinished(this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.G3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.A((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPageStarted$1(WebView webView, String str) {
            this.api.onPageStarted(this, webView, str, new Function1() { // from class: io.flutter.plugins.webviewflutter.o3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.r((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceivedClientCertRequest$21(WebView webView, ClientCertRequest clientCertRequest) {
            this.api.onReceivedClientCertRequest(this, webView, clientCertRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.D3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.w((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceivedError$7(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            this.api.onReceivedRequestError(this, webView, webResourceRequest, webResourceError, new Function1() { // from class: io.flutter.plugins.webviewflutter.s3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.t((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceivedHttpAuthRequest$13(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
            this.api.onReceivedHttpAuthRequest(this, webView, httpAuthHandler, str, str2, new Function1() { // from class: io.flutter.plugins.webviewflutter.i3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.c((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceivedHttpError$5(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            this.api.onReceivedHttpError(this, webView, webResourceRequest, webResourceResponse, new Function1() { // from class: io.flutter.plugins.webviewflutter.C3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.B((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceivedLoginRequest$23(WebView webView, String str, String str2, String str3) {
            this.api.onReceivedLoginRequest(this, webView, str, str2, str3, new Function1() { // from class: io.flutter.plugins.webviewflutter.m3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.y((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceivedSslError$25(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            this.api.onReceivedSslError(this, webView, sslErrorHandler, sslError, new Function1() { // from class: io.flutter.plugins.webviewflutter.E3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.p((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onScaleChanged$27(WebView webView, float f2, float f3) {
            this.api.onScaleChanged(this, webView, f2, f3, new Function1() { // from class: io.flutter.plugins.webviewflutter.y3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.d((Result) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$shouldOverrideUrlLoading$9(WebView webView, WebResourceRequest webResourceRequest) {
            this.api.requestLoading(this, webView, webResourceRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.j3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebViewClientProxyApi.WebViewClientImpl.a((Result) obj);
                }
            });
        }

        public static /* synthetic */ kotlin.j o(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j p(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j q(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j r(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j t(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j w(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j x(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j y(Result result) {
            return null;
        }

        @Override // android.webkit.WebViewClient
        public void doUpdateVisitedHistory(@NonNull final WebView webView, @NonNull final String str, final boolean z2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.n3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51155b.lambda$doUpdateVisitedHistory$11(webView, str, z2);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onFormResubmission(@NonNull final WebView webView, @NonNull final Message message, @NonNull final Message message2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.v3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51208b.lambda$onFormResubmission$15(webView, message, message2);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.w3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51218b.lambda$onLoadResource$17(webView, str);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.l3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51141b.lambda$onPageCommitVisible$19(webView, str);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NonNull final WebView webView, @NonNull final String str) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.h3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51113b.lambda$onPageFinished$3(webView, str);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@NonNull final WebView webView, @NonNull final String str, @NonNull Bitmap bitmap) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.r3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51180b.lambda$onPageStarted$1(webView, str);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedClientCertRequest(@NonNull final WebView webView, @NonNull final ClientCertRequest clientCertRequest) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.u3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51199b.lambda$onReceivedClientCertRequest$21(webView, clientCertRequest);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest, @NonNull final WebResourceError webResourceError) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.B3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f50926b.lambda$onReceivedError$7(webView, webResourceRequest, webResourceError);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpAuthRequest(@NonNull final WebView webView, @NonNull final HttpAuthHandler httpAuthHandler, @NonNull final String str, @NonNull final String str2) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.F3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f50952b.lambda$onReceivedHttpAuthRequest$13(webView, httpAuthHandler, str, str2);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest, @NonNull final WebResourceResponse webResourceResponse) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.H3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f50967b.lambda$onReceivedHttpError$5(webView, webResourceRequest, webResourceResponse);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedLoginRequest(@NonNull final WebView webView, @NonNull final String str, @Nullable final String str2, @NonNull final String str3) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.A3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f50916b.lambda$onReceivedLoginRequest$23(webView, str, str2, str3);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(@NonNull final WebView webView, @NonNull final SslErrorHandler sslErrorHandler, @NonNull final SslError sslError) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.z3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51239b.lambda$onReceivedSslError$25(webView, sslErrorHandler, sslError);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onScaleChanged(@NonNull final WebView webView, final float f2, final float f3) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.q3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51171b.lambda$onScaleChanged$27(webView, f2, f3);
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(@NonNull WebView webView, @NonNull KeyEvent keyEvent) {
        }

        public void setReturnValueForShouldOverrideUrlLoading(boolean z2) {
            this.returnValueForShouldOverrideUrlLoading = z2;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@NonNull final WebView webView, @NonNull final WebResourceRequest webResourceRequest) {
            this.api.getPigeonRegistrar().runOnMainThread(new Runnable() { // from class: io.flutter.plugins.webviewflutter.k3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f51133b.lambda$shouldOverrideUrlLoading$9(webView, webResourceRequest);
                }
            });
            return webResourceRequest.isForMainFrame() && this.returnValueForShouldOverrideUrlLoading;
        }
    }

    public WebViewClientProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewClient
    @NonNull
    public WebViewClient pigeon_defaultConstructor() {
        return new WebViewClientImpl(this);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewClient
    public void setSynchronousReturnValueForShouldOverrideUrlLoading(@NonNull WebViewClient webViewClient, boolean z2) {
        if (!(webViewClient instanceof WebViewClientImpl)) {
            throw new IllegalStateException("This WebViewClient doesn't support setting the returnValueForShouldOverrideUrlLoading.");
        }
        ((WebViewClientImpl) webViewClient).setReturnValueForShouldOverrideUrlLoading(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebViewClient
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
