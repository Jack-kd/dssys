.class public Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/media/MediaPlayer;

.field public c:Landroid/media/MediaPlayer$OnPreparedListener;

.field public d:Landroid/media/MediaPlayer$OnCompletionListener;

.field public e:Landroid/media/MediaPlayer$OnInfoListener;

.field public f:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field public g:Z

.field public h:Landroid/view/Surface;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Landroid/view/Surface;

.field public m:I

.field public n:Landroid/graphics/SurfaceTexture;

.field public o:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->k:Z

    .line 5
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->m:I

    .line 6
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->o:Landroid/view/TextureView$SurfaceTextureListener;

    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->k:Z

    .line 12
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->m:I

    .line 13
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->o:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->k:Z

    .line 19
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->m:I

    .line 20
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$f;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->o:Landroid/view/TextureView$SurfaceTextureListener;

    .line 21
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a()V

    return-void
.end method


# virtual methods
.method public a(FF)Landroid/graphics/Matrix;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_3

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    .line 11
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->i:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->j:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustVideoRadio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->i:I

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 14
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->j:I

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 15
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->i:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->j:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 17
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->i:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    iget v5, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->j:I

    int-to-float v5, v5

    div-float/2addr v5, p2

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 18
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->m:I

    const/4 v5, 0x2

    if-ne v5, v3, :cond_1

    div-float/2addr p1, v4

    div-float/2addr p2, v4

    .line 19
    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object v2

    :cond_1
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_2

    div-float/2addr p1, v4

    div-float/2addr p2, v4

    .line 20
    invoke-virtual {v2, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object v2

    :cond_2
    div-float/2addr p1, v4

    div-float/2addr p2, v4

    .line 21
    invoke-virtual {v2, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-object v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public final a(IILandroid/graphics/Matrix;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 24
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeViewSize "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    new-instance p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$g;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$g;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$a;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$a;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$b;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$b;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$c;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$c;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$d;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$d;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$e;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->o:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "pause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "resume"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move p2, p1

    .line 5
    move-object p1, p0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    instance-of p2, p2, Landroid/view/View;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    check-cast p3, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    :goto_0
    iget-boolean p4, p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->k:Z

    .line 46
    .line 47
    if-nez p4, :cond_1

    .line 48
    .line 49
    int-to-float p4, p2

    .line 50
    int-to-float p5, p3

    .line 51
    invoke-virtual {p0, p4, p5}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(FF)Landroid/graphics/Matrix;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    invoke-virtual {p0, p2, p3, p4}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a(IILandroid/graphics/Matrix;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->m:I

    .line 9
    .line 10
    return-void
.end method

.method public setInitMute(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->d:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->e:Landroid/media/MediaPlayer$OnInfoListener;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->c:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->f:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView$h;-><init>(Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setUseTransform(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
