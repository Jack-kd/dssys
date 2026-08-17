.class public interface abstract Lio/flutter/plugins/urllauncher/UrlLauncherApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/urllauncher/UrlLauncherApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J3\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/flutter/plugins/urllauncher/UrlLauncherApi;",
        "",
        "",
        "url",
        "",
        "canLaunchUrl",
        "(Ljava/lang/String;)Z",
        "",
        "headers",
        "requireNonBrowser",
        "launchUrl",
        "(Ljava/lang/String;Ljava/util/Map;Z)Z",
        "allowCustomTab",
        "Lio/flutter/plugins/urllauncher/WebViewOptions;",
        "webViewOptions",
        "Lio/flutter/plugins/urllauncher/BrowserOptions;",
        "browserOptions",
        "openUrlInApp",
        "(Ljava/lang/String;ZLio/flutter/plugins/urllauncher/WebViewOptions;Lio/flutter/plugins/urllauncher/BrowserOptions;)Z",
        "supportsCustomTabs",
        "()Z",
        "Lkotlin/j;",
        "closeWebView",
        "()V",
        "Companion",
        "url_launcher_android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/flutter/plugins/urllauncher/UrlLauncherApi$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/flutter/plugins/urllauncher/UrlLauncherApi$Companion;->$$INSTANCE:Lio/flutter/plugins/urllauncher/UrlLauncherApi$Companion;

    sput-object v0, Lio/flutter/plugins/urllauncher/UrlLauncherApi;->Companion:Lio/flutter/plugins/urllauncher/UrlLauncherApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract canLaunchUrl(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract closeWebView()V
.end method

.method public abstract launchUrl(Ljava/lang/String;Ljava/util/Map;Z)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract openUrlInApp(Ljava/lang/String;ZLio/flutter/plugins/urllauncher/WebViewOptions;Lio/flutter/plugins/urllauncher/BrowserOptions;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/urllauncher/WebViewOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/flutter/plugins/urllauncher/BrowserOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract supportsCustomTabs()Z
.end method
