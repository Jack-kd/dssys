.class public final synthetic Lcom/meishu/sdk/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/webview/d$a;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

.field public final synthetic b:Lcom/meishu/sdk/core/webview/m;


# direct methods
.method public synthetic constructor <init>(Lcom/meishu/sdk/activity/MeishuWebviewActivity;Lcom/meishu/sdk/core/webview/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/activity/b;->a:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    iput-object p2, p0, Lcom/meishu/sdk/activity/b;->b:Lcom/meishu/sdk/core/webview/m;

    return-void
.end method


# virtual methods
.method public final onDownloadStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/b;->a:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    iget-object v1, p0, Lcom/meishu/sdk/activity/b;->b:Lcom/meishu/sdk/core/webview/m;

    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->k(Lcom/meishu/sdk/activity/MeishuWebviewActivity;Lcom/meishu/sdk/core/webview/m;)V

    return-void
.end method
