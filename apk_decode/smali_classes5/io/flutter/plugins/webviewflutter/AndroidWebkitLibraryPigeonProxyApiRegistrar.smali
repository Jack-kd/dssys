.class public abstract Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH&\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H&\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010%\u001a\u00020$H&\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010.\u001a\u00020-H&\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00101\u001a\u000200H&\u00a2\u0006\u0004\u00081\u00102J\u000f\u00104\u001a\u000203H&\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u000206H&\u00a2\u0006\u0004\u00087\u00108J\u000f\u0010:\u001a\u000209H&\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010=\u001a\u00020<H&\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010@\u001a\u00020?H&\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010C\u001a\u00020BH&\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u00020EH&\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010I\u001a\u00020HH&\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010L\u001a\u00020KH\u0016\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010O\u001a\u00020NH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010R\u001a\u00020QH&\u00a2\u0006\u0004\u0008R\u0010SJ\u000f\u0010U\u001a\u00020TH&\u00a2\u0006\u0004\u0008U\u0010VJ\u000f\u0010X\u001a\u00020WH&\u00a2\u0006\u0004\u0008X\u0010YJ\u000f\u0010[\u001a\u00020ZH&\u00a2\u0006\u0004\u0008[\u0010\\J\u000f\u0010^\u001a\u00020]H&\u00a2\u0006\u0004\u0008^\u0010_J\u000f\u0010a\u001a\u00020`H&\u00a2\u0006\u0004\u0008a\u0010bJ\u000f\u0010d\u001a\u00020cH&\u00a2\u0006\u0004\u0008d\u0010eJ\r\u0010g\u001a\u00020f\u00a2\u0006\u0004\u0008g\u0010hJ\r\u0010i\u001a\u00020f\u00a2\u0006\u0004\u0008i\u0010hR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010j\u001a\u0004\u0008k\u0010lR\"\u0010n\u001a\u00020m8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008n\u0010o\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u0017\u0010u\u001a\u00020t8\u0006\u00a2\u0006\u000c\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010xR \u0010z\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R\u0019\u0010~\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010y8F\u00a2\u0006\u0006\u001a\u0004\u0008|\u0010}\u00a8\u0006\u007f"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;",
        "",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "binaryMessenger",
        "<init>",
        "(Lio/flutter/plugin/common/BinaryMessenger;)V",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;",
        "getPigeonApiWebResourceRequest",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;",
        "getPigeonApiWebResourceResponse",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;",
        "getPigeonApiWebResourceError",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;",
        "getPigeonApiWebResourceErrorCompat",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;",
        "getPigeonApiWebViewPoint",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;",
        "getPigeonApiConsoleMessage",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;",
        "getPigeonApiCookieManager",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebView;",
        "getPigeonApiWebView",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;",
        "getPigeonApiWebSettings",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;",
        "getPigeonApiJavaScriptChannel",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;",
        "getPigeonApiWebViewClient",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;",
        "getPigeonApiDownloadListener",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;",
        "getPigeonApiWebChromeClient",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;",
        "getPigeonApiFlutterAssetManager",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;",
        "getPigeonApiWebStorage",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;",
        "getPigeonApiFileChooserParams",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;",
        "getPigeonApiPermissionRequest",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;",
        "getPigeonApiCustomViewCallback",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiView;",
        "getPigeonApiView",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiView;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;",
        "getPigeonApiGeolocationPermissionsCallback",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;",
        "getPigeonApiHttpAuthHandler",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;",
        "getPigeonApiAndroidMessage",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;",
        "getPigeonApiClientCertRequest",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;",
        "getPigeonApiPrivateKey",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;",
        "getPigeonApiX509Certificate",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;",
        "getPigeonApiSslErrorHandler",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiSslError;",
        "getPigeonApiSslError",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiSslError;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;",
        "getPigeonApiSslCertificateDName",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;",
        "getPigeonApiSslCertificate",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;",
        "getPigeonApiCertificate",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;",
        "getPigeonApiWebSettingsCompat",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;",
        "Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;",
        "getPigeonApiWebViewFeature",
        "()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;",
        "Lkotlin/j;",
        "setUp",
        "()V",
        "tearDown",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "getBinaryMessenger",
        "()Lio/flutter/plugin/common/BinaryMessenger;",
        "",
        "ignoreCallsToDart",
        "Z",
        "getIgnoreCallsToDart",
        "()Z",
        "setIgnoreCallsToDart",
        "(Z)V",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;",
        "instanceManager",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;",
        "getInstanceManager",
        "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;",
        "Lio/flutter/plugin/common/MessageCodec;",
        "_codec",
        "Lio/flutter/plugin/common/MessageCodec;",
        "getCodec",
        "()Lio/flutter/plugin/common/MessageCodec;",
        "codec",
        "webview_flutter_android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _codec:Lio/flutter/plugin/common/MessageCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ignoreCallsToDart:Z

.field private final instanceManager:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/BinaryMessenger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binaryMessenger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 10
    .line 11
    new-instance v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->Companion:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;

    .line 17
    .line 18
    new-instance v1, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar$1;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar$1;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;->create(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;)Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->instanceManager:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->_codec:Lio/flutter/plugin/common/MessageCodec;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->_codec:Lio/flutter/plugin/common/MessageCodec;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->_codec:Lio/flutter/plugin/common/MessageCodec;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getIgnoreCallsToDart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->ignoreCallsToDart:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->instanceManager:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getPigeonApiAndroidMessage()Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiClientCertRequest()Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiConsoleMessage()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiCookieManager()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiCustomViewCallback()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiDownloadListener()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiFileChooserParams()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiFlutterAssetManager()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiGeolocationPermissionsCallback()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiHttpAuthHandler()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiJavaScriptChannel()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiPermissionRequest()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getPigeonApiPrivateKey()Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract getPigeonApiSslCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiSslCertificateDName()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiSslError()Lio/flutter/plugins/webviewflutter/PigeonApiSslError;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiSslErrorHandler()Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiView()Lio/flutter/plugins/webviewflutter/PigeonApiView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebChromeClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebResourceError()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebResourceErrorCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebResourceRequest()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebResourceResponse()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebSettings()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebSettingsCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebStorage()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebView()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebViewClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebViewFeature()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPigeonApiWebViewPoint()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getPigeonApiX509Certificate()Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;-><init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final setIgnoreCallsToDart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->ignoreCallsToDart:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUp()V
    .locals 3

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi;->Companion:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->instanceManager:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager$Companion;

    .line 11
    .line 12
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCookieManager()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebView;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebView$Companion;

    .line 22
    .line 23
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 24
    .line 25
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebView()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebView$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebView;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings$Companion;

    .line 33
    .line 34
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebSettings()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel$Companion;

    .line 44
    .line 45
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 46
    .line 47
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiJavaScriptChannel()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient$Companion;

    .line 55
    .line 56
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 57
    .line 58
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener$Companion;

    .line 66
    .line 67
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 68
    .line 69
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiDownloadListener()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient$Companion;

    .line 77
    .line 78
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 79
    .line 80
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebChromeClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager$Companion;

    .line 88
    .line 89
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 90
    .line 91
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiFlutterAssetManager()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage$Companion;

    .line 99
    .line 100
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 101
    .line 102
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebStorage()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest$Companion;

    .line 110
    .line 111
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 112
    .line 113
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiPermissionRequest()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback$Companion;

    .line 121
    .line 122
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 123
    .line 124
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCustomViewCallback()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiView;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiView$Companion;

    .line 132
    .line 133
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 134
    .line 135
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiView()Lio/flutter/plugins/webviewflutter/PigeonApiView;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiView$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiView;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback$Companion;

    .line 143
    .line 144
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 145
    .line 146
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiGeolocationPermissionsCallback()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler$Companion;

    .line 154
    .line 155
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 156
    .line 157
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiHttpAuthHandler()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage$Companion;

    .line 165
    .line 166
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 167
    .line 168
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiAndroidMessage()Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest$Companion;

    .line 176
    .line 177
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 178
    .line 179
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiClientCertRequest()Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;)V

    .line 184
    .line 185
    .line 186
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler$Companion;

    .line 187
    .line 188
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 189
    .line 190
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslErrorHandler()Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslError;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslError$Companion;

    .line 198
    .line 199
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 200
    .line 201
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslError()Lio/flutter/plugins/webviewflutter/PigeonApiSslError;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslError$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslError;)V

    .line 206
    .line 207
    .line 208
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName$Companion;

    .line 209
    .line 210
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 211
    .line 212
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslCertificateDName()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;)V

    .line 217
    .line 218
    .line 219
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate$Companion;

    .line 220
    .line 221
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 222
    .line 223
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;)V

    .line 228
    .line 229
    .line 230
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiCertificate$Companion;

    .line 231
    .line 232
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 233
    .line 234
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCertificate$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat$Companion;

    .line 242
    .line 243
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 244
    .line 245
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebSettingsCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;)V

    .line 250
    .line 251
    .line 252
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature$Companion;

    .line 253
    .line 254
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 255
    .line 256
    invoke-virtual {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewFeature()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;)V

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public final tearDown()V
    .locals 3

    .line 1
    sget-object v0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi;->Companion:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManagerApi$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager$Companion;

    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebView;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebView$Companion;

    .line 17
    .line 18
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebView$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebView;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings$Companion;

    .line 24
    .line 25
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel$Companion;

    .line 31
    .line 32
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient$Companion;

    .line 38
    .line 39
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener$Companion;

    .line 45
    .line 46
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient$Companion;

    .line 52
    .line 53
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager$Companion;

    .line 59
    .line 60
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage$Companion;

    .line 66
    .line 67
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest$Companion;

    .line 73
    .line 74
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback$Companion;

    .line 80
    .line 81
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiView;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiView$Companion;

    .line 87
    .line 88
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiView$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiView;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback$Companion;

    .line 94
    .line 95
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler$Companion;

    .line 101
    .line 102
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 103
    .line 104
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage$Companion;

    .line 108
    .line 109
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest$Companion;

    .line 115
    .line 116
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;)V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler$Companion;

    .line 122
    .line 123
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslError;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslError$Companion;

    .line 129
    .line 130
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslError$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslError;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName$Companion;

    .line 136
    .line 137
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate$Companion;

    .line 143
    .line 144
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiCertificate$Companion;

    .line 150
    .line 151
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCertificate$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;)V

    .line 154
    .line 155
    .line 156
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat$Companion;

    .line 157
    .line 158
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;)V

    .line 161
    .line 162
    .line 163
    sget-object v0, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;->Companion:Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature$Companion;

    .line 164
    .line 165
    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 166
    .line 167
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature$Companion;->setUpMessageHandlers(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method
