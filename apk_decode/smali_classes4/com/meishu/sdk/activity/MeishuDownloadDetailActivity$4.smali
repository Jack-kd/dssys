.class Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;

.field public final synthetic val$app_private_agreement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;->val$app_private_agreement:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;

    .line 4
    .line 5
    const-class v1, Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "EXTRA_AD_DURL_KEY"

    .line 11
    .line 12
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;->val$app_private_agreement:Ljava/lang/String;

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity$4;->this$0:Lcom/meishu/sdk/activity/MeishuDownloadDetailActivity;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
