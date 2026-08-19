.class Lcom/fl/saas/adx/base/widget/S2SVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/S2SVideoView;->showEndFrame()V
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

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$402(Lcom/fl/saas/adx/base/widget/S2SVideoView;Z)Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2100(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2300(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2200(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2400(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$2400(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener$SoundControlViewStateChangeListener;->changeViewVisible(Z)V

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/S2SVideoView$6;->this$0:Lcom/fl/saas/adx/base/widget/S2SVideoView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/S2SVideoView;->access$1500(Lcom/fl/saas/adx/base/widget/S2SVideoView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    return-void
.end method
