.class public final synthetic LP0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/p0$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/webview/jsbridge/a;

.field public final synthetic b:Lcom/meishu/sdk/core/webview/jsbridge/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/core/webview/jsbridge/a;Lcom/meishu/sdk/core/webview/jsbridge/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/a;

    iput-object p2, p0, LP0/a;->b:Lcom/meishu/sdk/core/webview/jsbridge/a$a;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LP0/a;->a:Lcom/meishu/sdk/core/webview/jsbridge/a;

    iget-object v1, p0, LP0/a;->b:Lcom/meishu/sdk/core/webview/jsbridge/a$a;

    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/webview/jsbridge/a;->a(Lcom/meishu/sdk/core/webview/jsbridge/a;Lcom/meishu/sdk/core/webview/jsbridge/a$a;Z)V

    return-void
.end method
