package io.flutter.plugins.webviewflutter;

import android.util.Log;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonInstanceManager;
import io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonProxyApiRegistrar;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000°\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH&¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H&¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H&¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH&¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH&¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H&¢\u0006\u0004\b\"\u0010#J\u000f\u0010%\u001a\u00020$H&¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H&¢\u0006\u0004\b(\u0010)J\u000f\u0010+\u001a\u00020*H&¢\u0006\u0004\b+\u0010,J\u000f\u0010.\u001a\u00020-H&¢\u0006\u0004\b.\u0010/J\u000f\u00101\u001a\u000200H&¢\u0006\u0004\b1\u00102J\u000f\u00104\u001a\u000203H&¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H&¢\u0006\u0004\b7\u00108J\u000f\u0010:\u001a\u000209H&¢\u0006\u0004\b:\u0010;J\u000f\u0010=\u001a\u00020<H&¢\u0006\u0004\b=\u0010>J\u000f\u0010@\u001a\u00020?H&¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u00020BH&¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020EH&¢\u0006\u0004\bF\u0010GJ\u000f\u0010I\u001a\u00020HH&¢\u0006\u0004\bI\u0010JJ\u000f\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010O\u001a\u00020NH\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010R\u001a\u00020QH&¢\u0006\u0004\bR\u0010SJ\u000f\u0010U\u001a\u00020TH&¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u00020WH&¢\u0006\u0004\bX\u0010YJ\u000f\u0010[\u001a\u00020ZH&¢\u0006\u0004\b[\u0010\\J\u000f\u0010^\u001a\u00020]H&¢\u0006\u0004\b^\u0010_J\u000f\u0010a\u001a\u00020`H&¢\u0006\u0004\ba\u0010bJ\u000f\u0010d\u001a\u00020cH&¢\u0006\u0004\bd\u0010eJ\r\u0010g\u001a\u00020f¢\u0006\u0004\bg\u0010hJ\r\u0010i\u001a\u00020f¢\u0006\u0004\bi\u0010hR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010j\u001a\u0004\bk\u0010lR\"\u0010n\u001a\u00020m8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bn\u0010o\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u0017\u0010u\u001a\u00020t8\u0006¢\u0006\f\n\u0004\bu\u0010v\u001a\u0004\bw\u0010xR \u0010z\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0019\u0010~\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010y8F¢\u0006\u0006\u001a\u0004\b|\u0010}¨\u0006\u007f"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;", "", "Lio/flutter/plugin/common/BinaryMessenger;", "binaryMessenger", "<init>", "(Lio/flutter/plugin/common/BinaryMessenger;)V", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;", "getPigeonApiWebResourceRequest", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;", "getPigeonApiWebResourceResponse", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;", "getPigeonApiWebResourceError", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;", "getPigeonApiWebResourceErrorCompat", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;", "getPigeonApiWebViewPoint", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;", "Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;", "getPigeonApiConsoleMessage", "()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;", "Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;", "getPigeonApiCookieManager", "()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "getPigeonApiWebView", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;", "getPigeonApiWebSettings", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;", "Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;", "getPigeonApiJavaScriptChannel", "()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;", "getPigeonApiWebViewClient", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;", "Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;", "getPigeonApiDownloadListener", "()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;", "getPigeonApiWebChromeClient", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;", "Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;", "getPigeonApiFlutterAssetManager", "()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;", "getPigeonApiWebStorage", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;", "Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;", "getPigeonApiFileChooserParams", "()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;", "Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;", "getPigeonApiPermissionRequest", "()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;", "Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;", "getPigeonApiCustomViewCallback", "()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;", "Lio/flutter/plugins/webviewflutter/PigeonApiView;", "getPigeonApiView", "()Lio/flutter/plugins/webviewflutter/PigeonApiView;", "Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;", "getPigeonApiGeolocationPermissionsCallback", "()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;", "Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;", "getPigeonApiHttpAuthHandler", "()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;", "Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;", "getPigeonApiAndroidMessage", "()Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;", "Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;", "getPigeonApiClientCertRequest", "()Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;", "Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;", "getPigeonApiPrivateKey", "()Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;", "Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;", "getPigeonApiX509Certificate", "()Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;", "Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;", "getPigeonApiSslErrorHandler", "()Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;", "Lio/flutter/plugins/webviewflutter/PigeonApiSslError;", "getPigeonApiSslError", "()Lio/flutter/plugins/webviewflutter/PigeonApiSslError;", "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;", "getPigeonApiSslCertificateDName", "()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;", "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;", "getPigeonApiSslCertificate", "()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;", "Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;", "getPigeonApiCertificate", "()Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;", "getPigeonApiWebSettingsCompat", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;", "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;", "getPigeonApiWebViewFeature", "()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;", "Lkotlin/j;", "setUp", "()V", "tearDown", "Lio/flutter/plugin/common/BinaryMessenger;", "getBinaryMessenger", "()Lio/flutter/plugin/common/BinaryMessenger;", "", "ignoreCallsToDart", "Z", "getIgnoreCallsToDart", "()Z", "setIgnoreCallsToDart", "(Z)V", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "instanceManager", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "getInstanceManager", "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "Lio/flutter/plugin/common/MessageCodec;", "_codec", "Lio/flutter/plugin/common/MessageCodec;", "getCodec", "()Lio/flutter/plugin/common/MessageCodec;", "codec", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes5.dex */
public abstract class AndroidWebkitLibraryPigeonProxyApiRegistrar {

    @Nullable
    private MessageCodec<Object> _codec;

    @NotNull
    private final BinaryMessenger binaryMessenger;
    private boolean ignoreCallsToDart;

    @NotNull
    private final AndroidWebkitLibraryPigeonInstanceManager instanceManager;

    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"io/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar$1", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;", "", "identifier", "Lkotlin/j;", "onFinalize", "(J)V", "webview_flutter_android_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* renamed from: io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonProxyApiRegistrar$1, reason: invalid class name */
    public static final class AnonymousClass1 implements AndroidWebkitLibraryPigeonInstanceManager.PigeonFinalizationListener {
        final /* synthetic */ AndroidWebkitLibraryPigeonInstanceManagerApi $api;

        public AnonymousClass1(AndroidWebkitLibraryPigeonInstanceManagerApi androidWebkitLibraryPigeonInstanceManagerApi) {
            this.$api = androidWebkitLibraryPigeonInstanceManagerApi;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final kotlin.j onFinalize$lambda$0(long j2, Result result) {
            if (Result.m72isFailureimpl(result.getValue())) {
                Log.e("PigeonProxyApiRegistrar", "Failed to remove Dart strong reference with identifier: " + j2);
            }
            return kotlin.j.f51397a;
        }

        @Override // io.flutter.plugins.webviewflutter.AndroidWebkitLibraryPigeonInstanceManager.PigeonFinalizationListener
        public void onFinalize(final long identifier) {
            this.$api.removeStrongReference(identifier, new Function1() { // from class: io.flutter.plugins.webviewflutter.L
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AndroidWebkitLibraryPigeonProxyApiRegistrar.AnonymousClass1.onFinalize$lambda$0(identifier, (Result) obj);
                }
            });
        }
    }

    public AndroidWebkitLibraryPigeonProxyApiRegistrar(@NotNull BinaryMessenger binaryMessenger) {
        kotlin.jvm.internal.j.e(binaryMessenger, "binaryMessenger");
        this.binaryMessenger = binaryMessenger;
        this.instanceManager = AndroidWebkitLibraryPigeonInstanceManager.INSTANCE.create(new AnonymousClass1(new AndroidWebkitLibraryPigeonInstanceManagerApi(binaryMessenger)));
    }

    @NotNull
    public final BinaryMessenger getBinaryMessenger() {
        return this.binaryMessenger;
    }

    @NotNull
    public final MessageCodec<Object> getCodec() {
        if (this._codec == null) {
            this._codec = new AndroidWebkitLibraryPigeonProxyApiBaseCodec(this);
        }
        MessageCodec<Object> messageCodec = this._codec;
        kotlin.jvm.internal.j.b(messageCodec);
        return messageCodec;
    }

    public final boolean getIgnoreCallsToDart() {
        return this.ignoreCallsToDart;
    }

    @NotNull
    public final AndroidWebkitLibraryPigeonInstanceManager getInstanceManager() {
        return this.instanceManager;
    }

    @NotNull
    public abstract PigeonApiAndroidMessage getPigeonApiAndroidMessage();

    @NotNull
    public abstract PigeonApiCertificate getPigeonApiCertificate();

    @NotNull
    public abstract PigeonApiClientCertRequest getPigeonApiClientCertRequest();

    @NotNull
    public abstract PigeonApiConsoleMessage getPigeonApiConsoleMessage();

    @NotNull
    public abstract PigeonApiCookieManager getPigeonApiCookieManager();

    @NotNull
    public abstract PigeonApiCustomViewCallback getPigeonApiCustomViewCallback();

    @NotNull
    public abstract PigeonApiDownloadListener getPigeonApiDownloadListener();

    @NotNull
    public abstract PigeonApiFileChooserParams getPigeonApiFileChooserParams();

    @NotNull
    public abstract PigeonApiFlutterAssetManager getPigeonApiFlutterAssetManager();

    @NotNull
    public abstract PigeonApiGeolocationPermissionsCallback getPigeonApiGeolocationPermissionsCallback();

    @NotNull
    public abstract PigeonApiHttpAuthHandler getPigeonApiHttpAuthHandler();

    @NotNull
    public abstract PigeonApiJavaScriptChannel getPigeonApiJavaScriptChannel();

    @NotNull
    public abstract PigeonApiPermissionRequest getPigeonApiPermissionRequest();

    @NotNull
    public PigeonApiPrivateKey getPigeonApiPrivateKey() {
        return new PigeonApiPrivateKey(this);
    }

    @NotNull
    public abstract PigeonApiSslCertificate getPigeonApiSslCertificate();

    @NotNull
    public abstract PigeonApiSslCertificateDName getPigeonApiSslCertificateDName();

    @NotNull
    public abstract PigeonApiSslError getPigeonApiSslError();

    @NotNull
    public abstract PigeonApiSslErrorHandler getPigeonApiSslErrorHandler();

    @NotNull
    public abstract PigeonApiView getPigeonApiView();

    @NotNull
    public abstract PigeonApiWebChromeClient getPigeonApiWebChromeClient();

    @NotNull
    public abstract PigeonApiWebResourceError getPigeonApiWebResourceError();

    @NotNull
    public abstract PigeonApiWebResourceErrorCompat getPigeonApiWebResourceErrorCompat();

    @NotNull
    public abstract PigeonApiWebResourceRequest getPigeonApiWebResourceRequest();

    @NotNull
    public abstract PigeonApiWebResourceResponse getPigeonApiWebResourceResponse();

    @NotNull
    public abstract PigeonApiWebSettings getPigeonApiWebSettings();

    @NotNull
    public abstract PigeonApiWebSettingsCompat getPigeonApiWebSettingsCompat();

    @NotNull
    public abstract PigeonApiWebStorage getPigeonApiWebStorage();

    @NotNull
    public abstract PigeonApiWebView getPigeonApiWebView();

    @NotNull
    public abstract PigeonApiWebViewClient getPigeonApiWebViewClient();

    @NotNull
    public abstract PigeonApiWebViewFeature getPigeonApiWebViewFeature();

    @NotNull
    public abstract PigeonApiWebViewPoint getPigeonApiWebViewPoint();

    @NotNull
    public PigeonApiX509Certificate getPigeonApiX509Certificate() {
        return new PigeonApiX509Certificate(this);
    }

    public final void setIgnoreCallsToDart(boolean z2) {
        this.ignoreCallsToDart = z2;
    }

    public final void setUp() {
        AndroidWebkitLibraryPigeonInstanceManagerApi.INSTANCE.setUpMessageHandlers(this.binaryMessenger, this.instanceManager);
        PigeonApiCookieManager.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiCookieManager());
        PigeonApiWebView.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebView());
        PigeonApiWebSettings.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebSettings());
        PigeonApiJavaScriptChannel.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiJavaScriptChannel());
        PigeonApiWebViewClient.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebViewClient());
        PigeonApiDownloadListener.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiDownloadListener());
        PigeonApiWebChromeClient.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebChromeClient());
        PigeonApiFlutterAssetManager.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiFlutterAssetManager());
        PigeonApiWebStorage.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebStorage());
        PigeonApiPermissionRequest.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiPermissionRequest());
        PigeonApiCustomViewCallback.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiCustomViewCallback());
        PigeonApiView.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiView());
        PigeonApiGeolocationPermissionsCallback.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiGeolocationPermissionsCallback());
        PigeonApiHttpAuthHandler.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiHttpAuthHandler());
        PigeonApiAndroidMessage.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiAndroidMessage());
        PigeonApiClientCertRequest.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiClientCertRequest());
        PigeonApiSslErrorHandler.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslErrorHandler());
        PigeonApiSslError.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslError());
        PigeonApiSslCertificateDName.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslCertificateDName());
        PigeonApiSslCertificate.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiSslCertificate());
        PigeonApiCertificate.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiCertificate());
        PigeonApiWebSettingsCompat.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebSettingsCompat());
        PigeonApiWebViewFeature.INSTANCE.setUpMessageHandlers(this.binaryMessenger, getPigeonApiWebViewFeature());
    }

    public final void tearDown() {
        AndroidWebkitLibraryPigeonInstanceManagerApi.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiCookieManager.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebView.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebSettings.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiJavaScriptChannel.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebViewClient.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiDownloadListener.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebChromeClient.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiFlutterAssetManager.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebStorage.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiPermissionRequest.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiCustomViewCallback.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiView.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiGeolocationPermissionsCallback.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiHttpAuthHandler.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiAndroidMessage.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiClientCertRequest.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslErrorHandler.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslError.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslCertificateDName.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiSslCertificate.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiCertificate.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebSettingsCompat.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
        PigeonApiWebViewFeature.INSTANCE.setUpMessageHandlers(this.binaryMessenger, null);
    }
}
