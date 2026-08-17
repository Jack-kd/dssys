.class Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

.field final synthetic val$playUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    iput-object p2, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->val$playUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FLSDK"

    :try_start_0
    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1702(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    const-string p1, "surfaceFirstCreate"

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "beforePrepare"

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object v1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->val$playUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    const-string p1, "startPrepare"

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "restart"

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSourceError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$3;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V

    return-void
.end method
