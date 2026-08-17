.class Lcom/fl/saas/adx/base/widget/S2SVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$000(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$800(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$900(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$802(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/fl/saas/j;->Z1:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Lcom/fl/saas/j;->f2:I

    invoke-static {}, Lcom/fl/saas/x;->a()Lcom/fl/saas/x;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/x;->j(Lcom/fl/saas/j;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$600(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/fl/saas/adx/base/interfaces/S2SVideoPlayListener;->onVideoPlayError(II)V

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$2;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)V

    :cond_2
    return v1
.end method
