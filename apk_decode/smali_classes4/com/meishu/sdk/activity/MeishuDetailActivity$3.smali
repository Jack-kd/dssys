.class Lcom/meishu/sdk/activity/MeishuDetailActivity$3;
.super Lcom/meishu/sdk/core/safe/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuDetailActivity;->safeOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

.field public final synthetic val$textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuDetailActivity;Landroid/view/TextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->val$textureView:Landroid/view/TextureView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/k;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$300(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->val$textureView:Landroid/view/TextureView;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 12
    .line 13
    invoke-static {p2}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$300(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p3, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 22
    .line 23
    invoke-static {p3}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$100(Lcom/meishu/sdk/activity/MeishuDetailActivity;)I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    int-to-float p3, p3

    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$200(Lcom/meishu/sdk/activity/MeishuDetailActivity;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    invoke-virtual {p2, p3, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(FF)Landroid/graphics/Matrix;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$3;->val$textureView:Landroid/view/TextureView;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
