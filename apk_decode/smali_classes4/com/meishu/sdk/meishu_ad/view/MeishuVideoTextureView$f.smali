.class public Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;
.super Lcom/meishu/sdk/core/safe/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    iput-object p1, p2, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->n:Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    iget-object p3, p2, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    new-instance p3, Landroid/view/Surface;

    .line 10
    .line 11
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 12
    .line 13
    .line 14
    iput-object p3, p2, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->h:Landroid/view/Surface;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 17
    .line 18
    iget-object p2, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->h:Landroid/view/Surface;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public safeOnSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

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
