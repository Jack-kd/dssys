.class Lcom/fl/saas/adx/base/widget/S2SVideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/S2SVideoView;->createMediaView()V
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

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void

    :cond_0
    const-string v0, "FLSDK-S2SVideoView"

    const-string v1, "prepared"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;->onVideoPrepare()V

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1002(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v0

    iput v1, v0, Lcom/fl/saas/j;->b2:I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/fl/saas/j;->X1:I

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1100(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->setSoundEnable(Z)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$400(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$3;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/j;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$300(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)V

    :cond_4
    return-void
.end method
