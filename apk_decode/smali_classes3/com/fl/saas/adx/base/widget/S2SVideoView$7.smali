.class Lcom/fl/saas/adx/base/widget/S2SVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/S2SVideoView;->startVideo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v4, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v4}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-long v4, v0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v6, v0

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    double-to-int v0, v6

    const/16 v6, 0x19

    const/4 v7, 0x1

    if-lt v0, v6, :cond_1

    iget-object v6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v6}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v6, v7}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2602(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v6

    iget-object v8, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v8}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/fl/saas/x;->i(Lcom/fl/saas/j;)V

    :cond_1
    const/16 v6, 0x32

    if-lt v0, v6, :cond_2

    iget-object v6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v6}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2700(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v6, v7}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2702(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v6

    iget-object v8, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v8}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/fl/saas/x;->n(Lcom/fl/saas/j;)V

    :cond_2
    const/16 v6, 0x4b

    if-lt v0, v6, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2800(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0, v7}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2802(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object v0

    iget-object v6, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v6}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/fl/saas/x;->m(Lcom/fl/saas/j;)V

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :cond_4
    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$7;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
