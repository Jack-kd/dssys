.class Lcom/meishu/sdk/activity/MeishuDetailActivity$2;
.super Lcom/meishu/sdk/core/safe/m;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->val$textureView:Landroid/view/TextureView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/m;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$102(Lcom/meishu/sdk/activity/MeishuDetailActivity;I)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 7
    .line 8
    invoke-static {v0, p3}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$202(Lcom/meishu/sdk/activity/MeishuDetailActivity;I)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$300(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/view/Surface;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$300(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iput-object v0, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->l:Landroid/view/Surface;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->val$textureView:Landroid/view/TextureView;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->this$0:Lcom/meishu/sdk/activity/MeishuDetailActivity;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->access$300(Lcom/meishu/sdk/activity/MeishuDetailActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    int-to-float p2, p2

    .line 64
    int-to-float p3, p3

    .line 65
    invoke-virtual {v0, p2, p3}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(FF)Landroid/graphics/Matrix;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuDetailActivity$2;->val$textureView:Landroid/view/TextureView;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public safeOnSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public safeOnSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public safeOnSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
