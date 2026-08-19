.class final Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;
.super Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;",
        "registrar",
        "<init>",
        "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V",
        "",
        "type",
        "Ljava/nio/ByteBuffer;",
        "buffer",
        "",
        "readValueOfType",
        "(BLjava/nio/ByteBuffer;)Ljava/lang/Object;",
        "Ljava/io/ByteArrayOutputStream;",
        "stream",
        "value",
        "Lkotlin/j;",
        "writeValue",
        "(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V",
        "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;",
        "getRegistrar",
        "()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;",
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
.field private final registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "registrar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic A(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$9(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$4(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$21(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$19(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$3(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$23(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$13(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$30(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$25(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$12(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$2(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$7(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$24(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$27(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$1(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$6(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$29(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$18(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$5(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$8(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$20(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$22(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$31(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$17(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$28(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$26(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$0(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$11(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$16(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method private static final writeValue$lambda$0(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebResourceRequest"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$1(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebResourceResponse"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$10(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebViewClient"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$11(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "DownloadListener"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$12(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebChromeClient"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$13(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "FlutterAssetManager"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$14(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebStorage"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$15(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "FileChooserParams"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$16(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "PermissionRequest"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$17(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "CustomViewCallback"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$18(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "View"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$19(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "GeolocationPermissionsCallback"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$2(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebResourceError"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$20(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "HttpAuthHandler"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$21(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "AndroidMessage"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$22(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "ClientCertRequest"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$23(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "PrivateKey"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$24(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "X509Certificate"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$25(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SslErrorHandler"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$26(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SslError"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$27(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SslCertificateDName"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$28(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SslCertificate"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$29(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "Certificate"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$3(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebResourceErrorCompat"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$30(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebSettingsCompat"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$31(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebViewFeature"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$4(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebViewPoint"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$5(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "ConsoleMessage"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$6(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "CookieManager"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$7(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebView"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$8(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "WebSettings"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$lambda$9(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "JavaScriptChannel"

    .line 20
    .line 21
    invoke-static {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;

    .line 25
    .line 26
    return-object p0
.end method

.method private static final writeValue$logNewInstanceFailure(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic x(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$14(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$15(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue$lambda$10(Ljava/lang/Object;Lkotlin/Result;)Lkotlin/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getRegistrar()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    .line 2
    .line 3
    return-object v0
.end method

.method public readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, -0x80

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p1, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->getInstance(J)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "Failed to find instance with identifier: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "PigeonProxyApiBaseCodec"

    .line 55
    .line 56
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    return-object v0

    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_22

    .line 2
    instance-of v0, p2, [B

    if-nez v0, :cond_22

    .line 3
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_22

    .line 4
    instance-of v0, p2, [D

    if-nez v0, :cond_22

    .line 5
    instance-of v0, p2, [F

    if-nez v0, :cond_22

    .line 6
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_22

    .line 7
    instance-of v0, p2, [I

    if-nez v0, :cond_22

    .line 8
    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_22

    .line 9
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_22

    .line 10
    instance-of v0, p2, [J

    if-nez v0, :cond_22

    .line 11
    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_22

    .line 12
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_22

    .line 13
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/FileChooserMode;

    if-nez v0, :cond_22

    .line 14
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/ConsoleMessageLevel;

    if-nez v0, :cond_22

    .line 15
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/OverScrollMode;

    if-nez v0, :cond_22

    .line 16
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/SslErrorType;

    if-nez v0, :cond_22

    .line 17
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/MixedContentMode;

    if-nez v0, :cond_22

    .line 18
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/WindowInsetsType;

    if-nez v0, :cond_22

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 19
    :cond_0
    instance-of v0, p2, Landroid/webkit/WebResourceRequest;

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceRequest()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebResourceRequest;

    new-instance v2, Lio/flutter/plugins/webviewflutter/f;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceRequest;->pigeon_newInstance(Landroid/webkit/WebResourceRequest;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 21
    :cond_1
    instance-of v0, p2, Landroid/webkit/WebResourceResponse;

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceResponse()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebResourceResponse;

    new-instance v2, Lio/flutter/plugins/webviewflutter/h;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceResponse;->pigeon_newInstance(Landroid/webkit/WebResourceResponse;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 23
    :cond_2
    instance-of v0, p2, Landroid/webkit/WebResourceError;

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceError()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebResourceError;

    new-instance v2, Lio/flutter/plugins/webviewflutter/t;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/t;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceError;->pigeon_newInstance(Landroid/webkit/WebResourceError;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 25
    :cond_3
    instance-of v0, p2, Landroidx/webkit/WebResourceErrorCompat;

    if-eqz v0, :cond_4

    .line 26
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebResourceErrorCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroidx/webkit/WebResourceErrorCompat;

    new-instance v2, Lio/flutter/plugins/webviewflutter/w;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/w;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebResourceErrorCompat;->pigeon_newInstance(Landroidx/webkit/WebResourceErrorCompat;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 27
    :cond_4
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/WebViewPoint;

    if-eqz v0, :cond_5

    .line 28
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewPoint()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/WebViewPoint;

    new-instance v2, Lio/flutter/plugins/webviewflutter/x;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/x;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewPoint;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/WebViewPoint;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 29
    :cond_5
    instance-of v0, p2, Landroid/webkit/ConsoleMessage;

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiConsoleMessage()Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/ConsoleMessage;

    new-instance v2, Lio/flutter/plugins/webviewflutter/y;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/y;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiConsoleMessage;->pigeon_newInstance(Landroid/webkit/ConsoleMessage;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 31
    :cond_6
    instance-of v0, p2, Landroid/webkit/CookieManager;

    if-eqz v0, :cond_7

    .line 32
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCookieManager()Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/CookieManager;

    new-instance v2, Lio/flutter/plugins/webviewflutter/z;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/z;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCookieManager;->pigeon_newInstance(Landroid/webkit/CookieManager;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 33
    :cond_7
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 34
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebView()Lio/flutter/plugins/webviewflutter/PigeonApiWebView;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebView;

    new-instance v2, Lio/flutter/plugins/webviewflutter/A;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/A;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebView;->pigeon_newInstance(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 35
    :cond_8
    instance-of v0, p2, Landroid/webkit/WebSettings;

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebSettings()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebSettings;

    new-instance v2, Lio/flutter/plugins/webviewflutter/C;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/C;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettings;->pigeon_newInstance(Landroid/webkit/WebSettings;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 37
    :cond_9
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;

    if-eqz v0, :cond_a

    .line 38
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiJavaScriptChannel()Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;

    new-instance v2, Lio/flutter/plugins/webviewflutter/D;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/D;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiJavaScriptChannel;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 39
    :cond_a
    instance-of v0, p2, Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_b

    .line 40
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebViewClient;

    new-instance v2, Lio/flutter/plugins/webviewflutter/q;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/q;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewClient;->pigeon_newInstance(Landroid/webkit/WebViewClient;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 41
    :cond_b
    instance-of v0, p2, Landroid/webkit/DownloadListener;

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiDownloadListener()Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/DownloadListener;

    new-instance v2, Lio/flutter/plugins/webviewflutter/B;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/B;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiDownloadListener;->pigeon_newInstance(Landroid/webkit/DownloadListener;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 43
    :cond_c
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    if-eqz v0, :cond_d

    .line 44
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebChromeClient()Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    new-instance v2, Lio/flutter/plugins/webviewflutter/E;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/E;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebChromeClient;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 45
    :cond_d
    instance-of v0, p2, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    if-eqz v0, :cond_e

    .line 46
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiFlutterAssetManager()Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/flutter/plugins/webviewflutter/FlutterAssetManager;

    new-instance v2, Lio/flutter/plugins/webviewflutter/F;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/F;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiFlutterAssetManager;->pigeon_newInstance(Lio/flutter/plugins/webviewflutter/FlutterAssetManager;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 47
    :cond_e
    instance-of v0, p2, Landroid/webkit/WebStorage;

    if-eqz v0, :cond_f

    .line 48
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebStorage()Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebStorage;

    new-instance v2, Lio/flutter/plugins/webviewflutter/G;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/G;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebStorage;->pigeon_newInstance(Landroid/webkit/WebStorage;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 49
    :cond_f
    instance-of v0, p2, Landroid/webkit/WebChromeClient$FileChooserParams;

    if-eqz v0, :cond_10

    .line 50
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiFileChooserParams()Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebChromeClient$FileChooserParams;

    new-instance v2, Lio/flutter/plugins/webviewflutter/H;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/H;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiFileChooserParams;->pigeon_newInstance(Landroid/webkit/WebChromeClient$FileChooserParams;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 51
    :cond_10
    instance-of v0, p2, Landroid/webkit/PermissionRequest;

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiPermissionRequest()Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/PermissionRequest;

    new-instance v2, Lio/flutter/plugins/webviewflutter/I;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/I;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiPermissionRequest;->pigeon_newInstance(Landroid/webkit/PermissionRequest;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 53
    :cond_11
    instance-of v0, p2, Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_12

    .line 54
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCustomViewCallback()Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/WebChromeClient$CustomViewCallback;

    new-instance v2, Lio/flutter/plugins/webviewflutter/J;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/J;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCustomViewCallback;->pigeon_newInstance(Landroid/webkit/WebChromeClient$CustomViewCallback;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 55
    :cond_12
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_13

    .line 56
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiView()Lio/flutter/plugins/webviewflutter/PigeonApiView;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    new-instance v2, Lio/flutter/plugins/webviewflutter/K;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/K;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiView;->pigeon_newInstance(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 57
    :cond_13
    instance-of v0, p2, Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v0, :cond_14

    .line 58
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiGeolocationPermissionsCallback()Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/GeolocationPermissions$Callback;

    new-instance v2, Lio/flutter/plugins/webviewflutter/g;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiGeolocationPermissionsCallback;->pigeon_newInstance(Landroid/webkit/GeolocationPermissions$Callback;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 59
    :cond_14
    instance-of v0, p2, Landroid/webkit/HttpAuthHandler;

    if-eqz v0, :cond_15

    .line 60
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiHttpAuthHandler()Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/HttpAuthHandler;

    new-instance v2, Lio/flutter/plugins/webviewflutter/i;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/i;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiHttpAuthHandler;->pigeon_newInstance(Landroid/webkit/HttpAuthHandler;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 61
    :cond_15
    instance-of v0, p2, Landroid/os/Message;

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiAndroidMessage()Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/os/Message;

    new-instance v2, Lio/flutter/plugins/webviewflutter/j;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiAndroidMessage;->pigeon_newInstance(Landroid/os/Message;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 63
    :cond_16
    instance-of v0, p2, Landroid/webkit/ClientCertRequest;

    if-eqz v0, :cond_17

    .line 64
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiClientCertRequest()Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/ClientCertRequest;

    new-instance v2, Lio/flutter/plugins/webviewflutter/k;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiClientCertRequest;->pigeon_newInstance(Landroid/webkit/ClientCertRequest;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 65
    :cond_17
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_18

    .line 66
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiPrivateKey()Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/security/PrivateKey;

    new-instance v2, Lio/flutter/plugins/webviewflutter/l;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiPrivateKey;->pigeon_newInstance(Ljava/security/PrivateKey;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 67
    :cond_18
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_19

    .line 68
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiX509Certificate()Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v2, Lio/flutter/plugins/webviewflutter/m;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/m;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiX509Certificate;->pigeon_newInstance(Ljava/security/cert/X509Certificate;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 69
    :cond_19
    instance-of v0, p2, Landroid/webkit/SslErrorHandler;

    if-eqz v0, :cond_1a

    .line 70
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslErrorHandler()Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/webkit/SslErrorHandler;

    new-instance v2, Lio/flutter/plugins/webviewflutter/n;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/n;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslErrorHandler;->pigeon_newInstance(Landroid/webkit/SslErrorHandler;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 71
    :cond_1a
    instance-of v0, p2, Landroid/net/http/SslError;

    if-eqz v0, :cond_1b

    .line 72
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslError()Lio/flutter/plugins/webviewflutter/PigeonApiSslError;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/net/http/SslError;

    new-instance v2, Lio/flutter/plugins/webviewflutter/o;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/o;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslError;->pigeon_newInstance(Landroid/net/http/SslError;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 73
    :cond_1b
    instance-of v0, p2, Landroid/net/http/SslCertificate$DName;

    if-eqz v0, :cond_1c

    .line 74
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslCertificateDName()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/net/http/SslCertificate$DName;

    new-instance v2, Lio/flutter/plugins/webviewflutter/p;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificateDName;->pigeon_newInstance(Landroid/net/http/SslCertificate$DName;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 75
    :cond_1c
    instance-of v0, p2, Landroid/net/http/SslCertificate;

    if-eqz v0, :cond_1d

    .line 76
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiSslCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/net/http/SslCertificate;

    new-instance v2, Lio/flutter/plugins/webviewflutter/r;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/r;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiSslCertificate;->pigeon_newInstance(Landroid/net/http/SslCertificate;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 77
    :cond_1d
    instance-of v0, p2, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_1e

    .line 78
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiCertificate()Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/security/cert/Certificate;

    new-instance v2, Lio/flutter/plugins/webviewflutter/s;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/s;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiCertificate;->pigeon_newInstance(Ljava/security/cert/Certificate;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 79
    :cond_1e
    instance-of v0, p2, Landroidx/webkit/WebSettingsCompat;

    if-eqz v0, :cond_1f

    .line 80
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebSettingsCompat()Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroidx/webkit/WebSettingsCompat;

    new-instance v2, Lio/flutter/plugins/webviewflutter/u;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/u;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebSettingsCompat;->pigeon_newInstance(Landroidx/webkit/WebSettingsCompat;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 81
    :cond_1f
    instance-of v0, p2, Landroidx/webkit/WebViewFeature;

    if-eqz v0, :cond_20

    .line 82
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getPigeonApiWebViewFeature()Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroidx/webkit/WebViewFeature;

    new-instance v2, Lio/flutter/plugins/webviewflutter/v;

    invoke-direct {v2, p2}, Lio/flutter/plugins/webviewflutter/v;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/PigeonApiWebViewFeature;->pigeon_newInstance(Landroidx/webkit/WebViewFeature;Lkotlin/jvm/functions/Function1;)V

    .line 83
    :cond_20
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->containsInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x80

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 85
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->registrar:Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;

    invoke-virtual {v0}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiRegistrar;->getInstanceManager()Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;->getIdentifierForStrongReference(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonProxyApiBaseCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' of type \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_22
    :goto_1
    invoke-super {p0, p1, p2}, Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    return-void
.end method
