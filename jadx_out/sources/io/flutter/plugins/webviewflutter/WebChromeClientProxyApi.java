package io.flutter.plugins.webviewflutter;

import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import java.util.List;
import java.util.Objects;
import kotlin.Result;
import kotlin.jvm.functions.Function1;

/* loaded from: classes5.dex */
public class WebChromeClientProxyApi extends PigeonApiWebChromeClient {

    public static class SecureWebChromeClient extends WebChromeClient {

        @Nullable
        WebViewClient webViewClient;

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(@NonNull WebView webView, boolean z2, boolean z3, @NonNull Message message) {
            return onCreateWindow(webView, message, new WebView(webView.getContext()));
        }

        public void setWebViewClient(@NonNull WebViewClient webViewClient) {
            this.webViewClient = webViewClient;
        }

        @VisibleForTesting
        public boolean onCreateWindow(@NonNull final WebView webView, @NonNull Message message, @Nullable WebView webView2) {
            if (this.webViewClient == null) {
                return false;
            }
            WebViewClient webViewClient = new WebViewClient() { // from class: io.flutter.plugins.webviewflutter.WebChromeClientProxyApi.SecureWebChromeClient.1
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(@NonNull WebView webView3, @NonNull WebResourceRequest webResourceRequest) {
                    if (SecureWebChromeClient.this.webViewClient.shouldOverrideUrlLoading(webView, webResourceRequest)) {
                        return true;
                    }
                    webView.loadUrl(webResourceRequest.getUrl().toString());
                    return true;
                }
            };
            if (webView2 == null) {
                webView2 = new WebView(webView.getContext());
            }
            webView2.setWebViewClient(webViewClient);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    public static class WebChromeClientImpl extends SecureWebChromeClient {
        private static final String TAG = "WebChromeClientImpl";
        private final WebChromeClientProxyApi api;
        private boolean returnValueForOnShowFileChooser = false;
        private boolean returnValueForOnConsoleMessage = false;
        private boolean returnValueForOnJsAlert = false;
        private boolean returnValueForOnJsConfirm = false;
        private boolean returnValueForOnJsPrompt = false;

        public WebChromeClientImpl(@NonNull WebChromeClientProxyApi webChromeClientProxyApi) {
            this.api = webChromeClientProxyApi;
        }

        public static /* synthetic */ kotlin.j a(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j b(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j d(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j e(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j f(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j g(Result result) {
            return null;
        }

        public static /* synthetic */ kotlin.j h(Result result) {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ kotlin.j lambda$onJsAlert$8(JsResult jsResult, ResultCompat resultCompat) {
            if (!resultCompat.getIsFailure()) {
                jsResult.confirm();
                return null;
            }
            ProxyApiRegistrar pigeonRegistrar = this.api.getPigeonRegistrar();
            Throwable exception = resultCompat.getException();
            Objects.requireNonNull(exception);
            pigeonRegistrar.logError(TAG, exception);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ kotlin.j lambda$onJsConfirm$9(JsResult jsResult, ResultCompat resultCompat) {
            if (!resultCompat.getIsFailure()) {
                if (Boolean.TRUE.equals(resultCompat.getOrNull())) {
                    jsResult.confirm();
                } else {
                    jsResult.cancel();
                }
                return null;
            }
            ProxyApiRegistrar pigeonRegistrar = this.api.getPigeonRegistrar();
            Throwable exception = resultCompat.getException();
            Objects.requireNonNull(exception);
            pigeonRegistrar.logError(TAG, exception);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ kotlin.j lambda$onJsPrompt$10(JsPromptResult jsPromptResult, ResultCompat resultCompat) {
            if (resultCompat.getIsFailure()) {
                ProxyApiRegistrar pigeonRegistrar = this.api.getPigeonRegistrar();
                Throwable exception = resultCompat.getException();
                Objects.requireNonNull(exception);
                pigeonRegistrar.logError(TAG, exception);
                return null;
            }
            String str = (String) resultCompat.getOrNull();
            if (str != null) {
                jsPromptResult.confirm(str);
            } else {
                jsPromptResult.cancel();
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ kotlin.j lambda$onShowFileChooser$5(boolean z2, ValueCallback valueCallback, ResultCompat resultCompat) {
            if (resultCompat.getIsFailure()) {
                ProxyApiRegistrar pigeonRegistrar = this.api.getPigeonRegistrar();
                Throwable exception = resultCompat.getException();
                Objects.requireNonNull(exception);
                pigeonRegistrar.logError(TAG, exception);
                return null;
            }
            List list = (List) resultCompat.getOrNull();
            Objects.requireNonNull(list);
            List list2 = list;
            if (z2) {
                Uri[] uriArr = new Uri[list2.size()];
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    uriArr[i2] = Uri.parse((String) list2.get(i2));
                }
                valueCallback.onReceiveValue(uriArr);
            }
            return null;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            this.api.onConsoleMessage(this, consoleMessage, new Function1() { // from class: io.flutter.plugins.webviewflutter.Y2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.b((Result) obj);
                }
            });
            return this.returnValueForOnConsoleMessage;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsHidePrompt() {
            this.api.onGeolocationPermissionsHidePrompt(this, new Function1() { // from class: io.flutter.plugins.webviewflutter.W2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.g((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(@NonNull String str, @NonNull GeolocationPermissions.Callback callback) {
            this.api.onGeolocationPermissionsShowPrompt(this, str, callback, new Function1() { // from class: io.flutter.plugins.webviewflutter.a3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.h((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            this.api.onHideCustomView(this, new Function1() { // from class: io.flutter.plugins.webviewflutter.f3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.f((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
            if (!this.returnValueForOnJsAlert) {
                return false;
            }
            this.api.onJsAlert(this, webView, str, str2, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.b3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f51079b.lambda$onJsAlert$8(jsResult, (ResultCompat) obj);
                }
            }));
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, final JsResult jsResult) {
            if (!this.returnValueForOnJsConfirm) {
                return false;
            }
            this.api.onJsConfirm(this, webView, str, str2, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.V2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f51049b.lambda$onJsConfirm$9(jsResult, (ResultCompat) obj);
                }
            }));
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, final JsPromptResult jsPromptResult) {
            if (!this.returnValueForOnJsPrompt) {
                return false;
            }
            this.api.onJsPrompt(this, webView, str, str2, str3, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.X2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f51060b.lambda$onJsPrompt$10(jsPromptResult, (ResultCompat) obj);
                }
            }));
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(@NonNull PermissionRequest permissionRequest) {
            this.api.onPermissionRequest(this, permissionRequest, new Function1() { // from class: io.flutter.plugins.webviewflutter.d3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.e((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(@NonNull WebView webView, int i2) {
            this.api.onProgressChanged(this, webView, i2, new Function1() { // from class: io.flutter.plugins.webviewflutter.c3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.a((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            this.api.onShowCustomView(this, view, customViewCallback, new Function1() { // from class: io.flutter.plugins.webviewflutter.Z2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WebChromeClientProxyApi.WebChromeClientImpl.d((Result) obj);
                }
            });
        }

        @Override // android.webkit.WebChromeClient
        public boolean onShowFileChooser(@NonNull WebView webView, @NonNull final ValueCallback<Uri[]> valueCallback, @NonNull WebChromeClient.FileChooserParams fileChooserParams) {
            final boolean z2 = this.returnValueForOnShowFileChooser;
            this.api.onShowFileChooser(this, webView, fileChooserParams, ResultCompat.asCompatCallback(new Function1() { // from class: io.flutter.plugins.webviewflutter.e3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f51095b.lambda$onShowFileChooser$5(z2, valueCallback, (ResultCompat) obj);
                }
            }));
            return z2;
        }

        public void setReturnValueForOnConsoleMessage(boolean z2) {
            this.returnValueForOnConsoleMessage = z2;
        }

        public void setReturnValueForOnJsAlert(boolean z2) {
            this.returnValueForOnJsAlert = z2;
        }

        public void setReturnValueForOnJsConfirm(boolean z2) {
            this.returnValueForOnJsConfirm = z2;
        }

        public void setReturnValueForOnJsPrompt(boolean z2) {
            this.returnValueForOnJsPrompt = z2;
        }

        public void setReturnValueForOnShowFileChooser(boolean z2) {
            this.returnValueForOnShowFileChooser = z2;
        }
    }

    public WebChromeClientProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    @NonNull
    public WebChromeClientImpl pigeon_defaultConstructor() {
        return new WebChromeClientImpl(this);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnConsoleMessage(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z2) {
        webChromeClientImpl.setReturnValueForOnConsoleMessage(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnJsAlert(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z2) {
        webChromeClientImpl.setReturnValueForOnJsAlert(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnJsConfirm(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z2) {
        webChromeClientImpl.setReturnValueForOnJsConfirm(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnJsPrompt(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z2) {
        webChromeClientImpl.setReturnValueForOnJsPrompt(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    public void setSynchronousReturnValueForOnShowFileChooser(@NonNull WebChromeClientImpl webChromeClientImpl, boolean z2) {
        webChromeClientImpl.setReturnValueForOnShowFileChooser(z2);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiWebChromeClient
    @NonNull
    public ProxyApiRegistrar getPigeonRegistrar() {
        return (ProxyApiRegistrar) super.getPigeonRegistrar();
    }
}
