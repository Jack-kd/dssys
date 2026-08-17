.class Lcom/meishu/sdk/activity/MeishuWebviewActivity$1;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuWebviewActivity;->safeOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->access$000()Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->access$000()Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/meishu/sdk/core/loader/ShareInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->access$100(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuWebviewActivity$1;->this$0:Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/meishu/sdk/activity/MeishuWebviewActivity;->access$200(Lcom/meishu/sdk/activity/MeishuWebviewActivity;)Landroid/webkit/WebView;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/core/loader/ShareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/ShareInteractionListener;->onShareButtonClicked(Lcom/meishu/sdk/core/loader/ShareInfo;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
