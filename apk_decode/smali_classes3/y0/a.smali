.class public abstract Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, LD0/b;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, p1, v2}, LD0/b;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "com.flutter.advert/SplashAdView"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, LB0/e;

    .line 24
    .line 25
    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v1, p1, p0}, LB0/e;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 30
    .line 31
    .line 32
    const-string p0, "com.flutter.advert/NativeAdView"

    .line 33
    .line 34
    invoke-interface {v0, p0, v1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
