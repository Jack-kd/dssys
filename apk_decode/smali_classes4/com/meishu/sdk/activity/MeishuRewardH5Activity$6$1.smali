.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/l;->safeRun()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/bquery/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_content_txt:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 21
    .line 22
    instance-of v1, v0, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    const-string v1, "\u606d\u559c\u5df2\u83b7\u5f97\u5956\u52b1"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
