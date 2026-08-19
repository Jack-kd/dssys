.class public final synthetic Lio/flutter/plugins/webviewflutter/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/n3;->b:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/n3;->c:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/n3;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lio/flutter/plugins/webviewflutter/n3;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/n3;->b:Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;

    iget-object v1, p0, Lio/flutter/plugins/webviewflutter/n3;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/flutter/plugins/webviewflutter/n3;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lio/flutter/plugins/webviewflutter/n3;->e:Z

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;->j(Lio/flutter/plugins/webviewflutter/WebViewClientProxyApi$WebViewClientImpl;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
