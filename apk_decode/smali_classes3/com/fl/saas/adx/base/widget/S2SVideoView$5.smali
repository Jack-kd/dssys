.class Lcom/fl/saas/adx/base/widget/S2SVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/S2SVideoView;->setTextureView()V
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

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p2, "FLSDK-S2SVideoView"

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string p3, "onSurfaceTextureAvailable"

    invoke-static {p2, p3}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1402(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1700(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1702(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    const-string p1, "surfaceFirstCreate"

    invoke-static {p2, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p1, "beforePrepare"

    invoke-static {p2, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-nez p1, :cond_3

    new-instance p1, Lcom/fl/saas/g1;

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object p3

    iget-object p3, p3, Lcom/fl/saas/j;->t1:Ljava/lang/String;

    const v0, 0x19000

    invoke-direct {p1, v0, p3}, Lcom/fl/saas/g1;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/fl/saas/h1;->a()Lcom/fl/saas/h1;

    move-result-object p3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1800(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/fl/saas/h1;->a(Landroid/content/Context;Lcom/fl/saas/g1;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_3
    const-string p1, "startPrepare"

    invoke-static {p2, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "restart"

    invoke-static {p2, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1900(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSourceError"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1402(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$5;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
