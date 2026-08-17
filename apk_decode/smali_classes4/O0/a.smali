.class public final synthetic LO0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/jsbridge/a$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/webview/a;

.field public final synthetic b:Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/core/webview/a;Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO0/a;->a:Lcom/meishu/sdk/core/webview/a;

    iput-object p2, p0, LO0/a;->b:Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, LO0/a;->a:Lcom/meishu/sdk/core/webview/a;

    iget-object v1, p0, LO0/a;->b:Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;

    invoke-static {v0, v1, p1, p2}, Lcom/meishu/sdk/core/webview/a;->a(Lcom/meishu/sdk/core/webview/a;Lcom/meishu/sdk/core/webview/jsbridge/bean/InvokeDeepLinkParam;ILjava/lang/String;)V

    return-void
.end method
