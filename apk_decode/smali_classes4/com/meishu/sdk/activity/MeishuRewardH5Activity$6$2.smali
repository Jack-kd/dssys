.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;
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

.field public final synthetic val$leftMillisecond:I


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;

    .line 2
    .line 3
    iput p2, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;->val$leftMillisecond:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/l;->safeRun()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;->this$1:Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 7
    .line 8
    iget v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;->val$leftMillisecond:I

    .line 9
    .line 10
    add-int/lit16 v1, v1, 0x3e7

    .line 11
    .line 12
    div-int/lit16 v1, v1, 0x3e8

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1400(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
