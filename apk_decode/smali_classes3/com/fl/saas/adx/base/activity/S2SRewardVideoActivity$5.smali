.class Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->startDurationCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_14

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v5, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    if-le v0, v5, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)D

    move-result-wide v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v5, v7

    invoke-static {v0, v5, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;D)D

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v5, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    sget v6, Lcom/fl/saas/R$string;->fl_adx_redirecting_in:I

    invoke-static {v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    invoke-static {v6, v7}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3602(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_2

    :cond_6
    move v0, v4

    :goto_2
    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v6

    if-eqz v6, :cond_9

    int-to-double v6, v0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    const/16 v6, 0x19

    if-lt v0, v6, :cond_7

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3702(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v6

    iget-object v7, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v7}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fl/saas/x;->i(Lcom/fl/saas/j;)V

    :cond_7
    const/16 v6, 0x32

    if-lt v0, v6, :cond_8

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3802(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v6

    iget-object v7, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v7}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fl/saas/x;->n(Lcom/fl/saas/j;)V

    :cond_8
    const/16 v6, 0x4b

    if-lt v0, v6, :cond_9

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fl/saas/x;->m(Lcom/fl/saas/j;)V

    :cond_9
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    const/16 v6, 0x64

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4012(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->T:I

    if-ltz v0, :cond_24

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v1

    iget v1, v1, Lcom/fl/saas/j;->T:I

    mul-int/lit16 v1, v1, 0x3e8

    if-lt v0, v1, :cond_24

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    :goto_3
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    :goto_4
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    goto :goto_3

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    goto :goto_4

    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2802(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2802(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    :goto_7
    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2812(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4012(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2812(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4012(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v6

    iget v6, v6, Lcom/fl/saas/j;->S:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3602(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v6

    if-le v0, v6, :cond_19

    :cond_12
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    const-string v9, "A"

    const/4 v10, 0x5

    if-le v0, v6, :cond_14

    :try_start_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->V:I

    if-ne v0, v5, :cond_14

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->W:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->X:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2502(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-le v0, v10, :cond_13

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6, v7, v8}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;D)D

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    sub-int/2addr v0, v10

    invoke-static {v6, v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_9

    :cond_13
    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    int-to-double v11, v0

    invoke-static {v6, v11, v12}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;D)D

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v4}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    :cond_14
    :goto_9
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    :goto_a
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v6

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    const/16 v6, 0x3a98

    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$202(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_c

    :cond_16
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    goto :goto_a

    :goto_b
    invoke-static {v0, v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$202(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    :cond_17
    :goto_c
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->V:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_19

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget-object v0, v0, Lcom/fl/saas/j;->X:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2502(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    if-le v0, v10, :cond_18

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6, v7, v8}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;D)D

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    sub-int/2addr v0, v10

    invoke-static {v6, v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_d

    :cond_18
    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    int-to-double v7, v0

    invoke-static {v6, v7, v8}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;D)D

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v4}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2902(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    :cond_19
    :goto_d
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v6

    sub-int/2addr v0, v6

    int-to-long v6, v0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->T:I

    if-ltz v0, :cond_1d

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v8, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v8}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v8

    iget v8, v8, Lcom/fl/saas/j;->T:I

    mul-int/lit16 v8, v8, 0x3e8

    if-lt v0, v8, :cond_1d

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    :goto_e
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_10

    :cond_1a
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    :goto_f
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_11

    :cond_1b
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    goto :goto_e

    :goto_10
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    :cond_1c
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    goto :goto_f

    :goto_11
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_12
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_1f

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1e

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1e
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v6, v7}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;J)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->R:I

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->U:I

    if-ltz v0, :cond_20

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)I

    move-result v0

    iget-object v10, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v10}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v10

    iget v10, v10, Lcom/fl/saas/j;->U:I

    mul-int/lit16 v10, v10, 0x3e8

    if-le v0, v10, :cond_20

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4202(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    cmp-long v0, v6, v8

    if-gtz v0, :cond_23

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v6

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4402(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v6}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1400(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v4}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$3200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v3}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v3, v5}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)V

    goto :goto_13

    :cond_22
    iget-object v3, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v3}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$4600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    :cond_23
    :goto_13
    if-gtz v0, :cond_25

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_15

    :cond_24
    :goto_14
    return-void

    :cond_25
    :goto_15
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$5;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/os/Handler;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :goto_16
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method
