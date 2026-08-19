.class Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->initVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1500()Lcom/fl/saas/N0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1500()Lcom/fl/saas/N0;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$2;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    sget v3, Lcom/fl/saas/R$string;->fl_adx_video_load_timeout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/N0;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
