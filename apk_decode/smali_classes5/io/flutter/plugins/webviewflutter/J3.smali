.class public final synthetic Lio/flutter/plugins/webviewflutter/J3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/J3;->b:Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;

    iput p2, p0, Lio/flutter/plugins/webviewflutter/J3;->c:I

    iput p3, p0, Lio/flutter/plugins/webviewflutter/J3;->d:I

    iput p4, p0, Lio/flutter/plugins/webviewflutter/J3;->e:I

    iput p5, p0, Lio/flutter/plugins/webviewflutter/J3;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/J3;->b:Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;

    iget v1, p0, Lio/flutter/plugins/webviewflutter/J3;->c:I

    iget v2, p0, Lio/flutter/plugins/webviewflutter/J3;->d:I

    iget v3, p0, Lio/flutter/plugins/webviewflutter/J3;->e:I

    iget v4, p0, Lio/flutter/plugins/webviewflutter/J3;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;->b(Lio/flutter/plugins/webviewflutter/WebViewProxyApi$WebViewPlatformView;IIII)V

    return-void
.end method
