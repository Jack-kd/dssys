.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$2;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->safeOnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;

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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/safe/o;->safeOnClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/16 v0, 0x13

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 16
    .line 17
    const-string v0, "broadcast_onclosed"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
