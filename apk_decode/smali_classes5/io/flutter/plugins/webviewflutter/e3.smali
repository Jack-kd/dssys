.class public final synthetic Lio/flutter/plugins/webviewflutter/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;ZLandroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/e3;->b:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    iput-boolean p2, p0, Lio/flutter/plugins/webviewflutter/e3;->c:Z

    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/e3;->d:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/e3;->b:Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;

    iget-boolean v1, p0, Lio/flutter/plugins/webviewflutter/e3;->c:Z

    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/e3;->d:Landroid/webkit/ValueCallback;

    check-cast p1, Lio/flutter/plugins/webviewflutter/ResultCompat;

    invoke-static {v0, v1, v2, p1}, Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;->k(Lio/flutter/plugins/webviewflutter/WebChromeClientProxyApi$WebChromeClientImpl;ZLandroid/webkit/ValueCallback;Lio/flutter/plugins/webviewflutter/ResultCompat;)Lkotlin/j;

    move-result-object p1

    return-object p1
.end method
