package io.flutter.plugins.webviewflutter;

import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.webkit.ClientCertRequest;
import android.webkit.ConsoleMessage;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.HttpAuthHandler;
import android.webkit.PermissionRequest;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewFeature;
import com.anythink.core.common.f.f;
import io.flutter.plugins.webviewflutter.WebChromeClientProxyApi;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "registrar", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V", "", "type", "Ljava/nio/ByteBuffer;", "buffer", "", "readValueOfType", "(BLjava/nio/ByteBuffer;)Ljava/lang/Object;", "Ljava/io/ByteArrayOutputStream;", "stream", f.a.f3244d, "Lkotlin/j;", "writeValue", "(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "getRegistrar", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
final class AndroidWebkitLibraryPigeonProxyApiBaseCodec extends AndroidWebkitLibraryPigeonCodec {

    @NotNull
    private final AndroidWebkitLibraryPigeonProxyApiRegistrar registrar;

    public AndroidWebkitLibraryPigeonProxyApiBaseCodec(@NotNull AndroidWebkitLibraryPigeonProxyApiRegistrar registrar) {
        kotlin.jvm.internal.j.e(registrar, "registrar");
        this.registrar = registrar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$0(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebResourceRequest", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$1(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebResourceResponse", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$10(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebViewClient", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$11(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("DownloadListener", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$12(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebChromeClient", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$13(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("FlutterAssetManager", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$14(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebStorage", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$15(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("FileChooserParams", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$16(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("PermissionRequest", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$17(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("CustomViewCallback", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$18(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("View", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$19(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("GeolocationPermissionsCallback", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$2(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebResourceError", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$20(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("HttpAuthHandler", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$21(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("AndroidMessage", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$22(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("ClientCertRequest", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$23(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("PrivateKey", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$24(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("X509Certificate", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$25(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("SslErrorHandler", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$26(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("SslError", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$27(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("SslCertificateDName", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$28(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("SslCertificate", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$29(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("Certificate", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$3(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebResourceErrorCompat", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$30(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebSettingsCompat", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$31(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebViewFeature", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$4(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebViewPoint", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$5(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("ConsoleMessage", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$6(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("CookieManager", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$7(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebView", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$8(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("WebSettings", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.j writeValue$lambda$9(Object obj, Result result) {
        if (Result.m72isFailureimpl(result.getValue())) {
            writeValue$logNewInstanceFailure("JavaScriptChannel", obj, Result.m69exceptionOrNullimpl(result.getValue()));
        }
        return kotlin.j.f51397a;
    }

    private static final void writeValue$logNewInstanceFailure(String str, Object obj, Throwable th) {
        Objects.toString(obj);
        Objects.toString(th);
    }

    @NotNull
    public final AndroidWebkitLibraryPigeonProxyApiRegistrar getRegistrar() {
        return this.registrar;
    }

    @Override // io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonCodec, io.flutter.plugin.common.StandardMessageCodec
    @Nullable
    public Object readValueOfType(byte type, @NotNull ByteBuffer buffer) {
        kotlin.jvm.internal.j.e(buffer, "buffer");
        if (type != -128) {
            return super.readValueOfType(type, buffer);
        }
        Object value = readValue(buffer);
        kotlin.jvm.internal.j.c(value, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) value).longValue();
        Object androidWebkitLibraryPigeonInstanceManager = this.registrar.getInstanceManager().getInstance(jLongValue);
        if (androidWebkitLibraryPigeonInstanceManager == null) {
            Log.e("PigeonProxyApiBaseCodec", "Failed to find instance with identifier: " + jLongValue);
        }
        return androidWebkitLibraryPigeonInstanceManager;
    }

    @Override // io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonCodec, io.flutter.plugin.common.StandardMessageCodec
    public void writeValue(@NotNull ByteArrayOutputStream stream, @Nullable final Object value) {
        kotlin.jvm.internal.j.e(stream, "stream");
        if ((value instanceof Boolean) || (value instanceof byte[]) || (value instanceof Double) || (value instanceof double[]) || (value instanceof float[]) || (value instanceof Integer) || (value instanceof int[]) || (value instanceof List) || (value instanceof Long) || (value instanceof long[]) || (value instanceof Map) || (value instanceof String) || (value instanceof FileChooserMode) || (value instanceof ConsoleMessageLevel) || (value instanceof OverScrollMode) || (value instanceof SslErrorType) || (value instanceof MixedContentMode) || (value instanceof WindowInsetsType) || value == null) {
            super.writeValue(stream, value);
            return;
        }
        if (value instanceof WebResourceRequest) {
            this.registrar.getPigeonApiWebResourceRequest().pigeon_newInstance((WebResourceRequest) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$0(value, (Result) obj);
                }
            });
        } else if (value instanceof WebResourceResponse) {
            this.registrar.getPigeonApiWebResourceResponse().pigeon_newInstance((WebResourceResponse) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$1(value, (Result) obj);
                }
            });
        } else if (value instanceof WebResourceError) {
            this.registrar.getPigeonApiWebResourceError().pigeon_newInstance((WebResourceError) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.t
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$2(value, (Result) obj);
                }
            });
        } else if (value instanceof WebResourceErrorCompat) {
            this.registrar.getPigeonApiWebResourceErrorCompat().pigeon_newInstance((WebResourceErrorCompat) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.w
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$3(value, (Result) obj);
                }
            });
        } else if (value instanceof WebViewPoint) {
            this.registrar.getPigeonApiWebViewPoint().pigeon_newInstance((WebViewPoint) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.x
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$4(value, (Result) obj);
                }
            });
        } else if (value instanceof ConsoleMessage) {
            this.registrar.getPigeonApiConsoleMessage().pigeon_newInstance((ConsoleMessage) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.y
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$5(value, (Result) obj);
                }
            });
        } else if (value instanceof CookieManager) {
            this.registrar.getPigeonApiCookieManager().pigeon_newInstance((CookieManager) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.z
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$6(value, (Result) obj);
                }
            });
        } else if (value instanceof WebView) {
            this.registrar.getPigeonApiWebView().pigeon_newInstance((WebView) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.A
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$7(value, (Result) obj);
                }
            });
        } else if (value instanceof WebSettings) {
            this.registrar.getPigeonApiWebSettings().pigeon_newInstance((WebSettings) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.C
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$8(value, (Result) obj);
                }
            });
        } else if (value instanceof JavaScriptChannel) {
            this.registrar.getPigeonApiJavaScriptChannel().pigeon_newInstance((JavaScriptChannel) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.D
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$9(value, (Result) obj);
                }
            });
        } else if (value instanceof WebViewClient) {
            this.registrar.getPigeonApiWebViewClient().pigeon_newInstance((WebViewClient) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$10(value, (Result) obj);
                }
            });
        } else if (value instanceof DownloadListener) {
            this.registrar.getPigeonApiDownloadListener().pigeon_newInstance((DownloadListener) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.B
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$11(value, (Result) obj);
                }
            });
        } else if (value instanceof WebChromeClientProxyApi.WebChromeClientImpl) {
            this.registrar.getPigeonApiWebChromeClient().pigeon_newInstance((WebChromeClientProxyApi.WebChromeClientImpl) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.E
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$12(value, (Result) obj);
                }
            });
        } else if (value instanceof FlutterAssetManager) {
            this.registrar.getPigeonApiFlutterAssetManager().pigeon_newInstance((FlutterAssetManager) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.F
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$13(value, (Result) obj);
                }
            });
        } else if (value instanceof WebStorage) {
            this.registrar.getPigeonApiWebStorage().pigeon_newInstance((WebStorage) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.G
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$14(value, (Result) obj);
                }
            });
        } else if (value instanceof WebChromeClient.FileChooserParams) {
            this.registrar.getPigeonApiFileChooserParams().pigeon_newInstance((WebChromeClient.FileChooserParams) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.H
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$15(value, (Result) obj);
                }
            });
        } else if (value instanceof PermissionRequest) {
            this.registrar.getPigeonApiPermissionRequest().pigeon_newInstance((PermissionRequest) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.I
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$16(value, (Result) obj);
                }
            });
        } else if (value instanceof WebChromeClient.CustomViewCallback) {
            this.registrar.getPigeonApiCustomViewCallback().pigeon_newInstance((WebChromeClient.CustomViewCallback) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.J
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$17(value, (Result) obj);
                }
            });
        } else if (value instanceof View) {
            this.registrar.getPigeonApiView().pigeon_newInstance((View) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.K
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$18(value, (Result) obj);
                }
            });
        } else if (value instanceof GeolocationPermissions.Callback) {
            this.registrar.getPigeonApiGeolocationPermissionsCallback().pigeon_newInstance((GeolocationPermissions.Callback) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$19(value, (Result) obj);
                }
            });
        } else if (value instanceof HttpAuthHandler) {
            this.registrar.getPigeonApiHttpAuthHandler().pigeon_newInstance((HttpAuthHandler) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$20(value, (Result) obj);
                }
            });
        } else if (value instanceof Message) {
            this.registrar.getPigeonApiAndroidMessage().pigeon_newInstance((Message) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$21(value, (Result) obj);
                }
            });
        } else if (value instanceof ClientCertRequest) {
            this.registrar.getPigeonApiClientCertRequest().pigeon_newInstance((ClientCertRequest) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$22(value, (Result) obj);
                }
            });
        } else if (value instanceof PrivateKey) {
            this.registrar.getPigeonApiPrivateKey().pigeon_newInstance((PrivateKey) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$23(value, (Result) obj);
                }
            });
        } else if (value instanceof X509Certificate) {
            this.registrar.getPigeonApiX509Certificate().pigeon_newInstance((X509Certificate) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$24(value, (Result) obj);
                }
            });
        } else if (value instanceof SslErrorHandler) {
            this.registrar.getPigeonApiSslErrorHandler().pigeon_newInstance((SslErrorHandler) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$25(value, (Result) obj);
                }
            });
        } else if (value instanceof SslError) {
            this.registrar.getPigeonApiSslError().pigeon_newInstance((SslError) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.o
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$26(value, (Result) obj);
                }
            });
        } else if (value instanceof SslCertificate.DName) {
            this.registrar.getPigeonApiSslCertificateDName().pigeon_newInstance((SslCertificate.DName) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.p
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$27(value, (Result) obj);
                }
            });
        } else if (value instanceof SslCertificate) {
            this.registrar.getPigeonApiSslCertificate().pigeon_newInstance((SslCertificate) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.r
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$28(value, (Result) obj);
                }
            });
        } else if (value instanceof Certificate) {
            this.registrar.getPigeonApiCertificate().pigeon_newInstance((Certificate) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.s
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$29(value, (Result) obj);
                }
            });
        } else if (value instanceof WebSettingsCompat) {
            this.registrar.getPigeonApiWebSettingsCompat().pigeon_newInstance((WebSettingsCompat) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.u
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$30(value, (Result) obj);
                }
            });
        } else if (value instanceof WebViewFeature) {
            this.registrar.getPigeonApiWebViewFeature().pigeon_newInstance((WebViewFeature) value, new Function1() { // from class: io.flutter.plugins.webviewflutter.v
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiBaseCodec.writeValue$lambda$31(value, (Result) obj);
                }
            });
        }
        if (this.registrar.getInstanceManager().containsInstance(value)) {
            stream.write(128);
            writeValue(stream, this.registrar.getInstanceManager().getIdentifierForStrongReference(value));
            return;
        }
        throw new IllegalArgumentException("Unsupported value: '" + value + "' of type '" + value.getClass().getName() + "'");
    }
}
