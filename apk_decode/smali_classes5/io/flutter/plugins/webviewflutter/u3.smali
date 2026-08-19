.class public final synthetic Lio/flutter/plugins/webviewflutter/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Landroid/webkit/ClientCertRequest;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/u3;->b:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/u3;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/u3;->d:Landroid/webkit/ClientCertRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/u3;->b:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/u3;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/u3;->d:Landroid/webkit/ClientCertRequest;

    invoke-static {v0, v1, v2}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->s(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method
