.class public Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/n0;


# static fields
.field public static final synthetic r:I


# instance fields
.field public a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

.field public b:Lcom/meishu/sdk/core/bquery/i;

.field public c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

.field public d:Landroid/media/MediaPlayer;

.field public e:Lcom/meishu/sdk/meishu_ad/n0$b;

.field public f:J

.field public g:Lcom/meishu/sdk/meishu_ad/nativ/e;

.field public h:Lcom/meishu/sdk/meishu_ad/nativ/a;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Landroid/os/Handler;

.field public p:Z

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/meishu_ad/n0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->m:Z

    .line 4
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->n:Z

    .line 5
    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->q:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->m:Z

    .line 11
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->n:Z

    .line 12
    new-instance p2, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->q:Ljava/util/List;

    .line 14
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, -0x1

    .line 16
    iput-wide p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->m:Z

    .line 18
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->n:Z

    .line 19
    new-instance p2, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView$a;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->q:Ljava/util/List;

    .line 21
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->n:Z

    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->p:Z

    return p1
.end method

.method public static synthetic c(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->i:Z

    return p1
.end method

.method public static synthetic d(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->j:Z

    return p1
.end method

.method public static synthetic e(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->k:Z

    return p1
.end method

.method public static synthetic f(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->l:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 7
    const-string v0, "meishu_media_view"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/meishu/sdk/R$layout;->ms_full_screen_video_player_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    sget v0, Lcom/meishu/sdk/R$id;->ms_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setUseTransform(Z)V

    .line 12
    new-instance p1, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    .line 13
    sget v0, Lcom/meishu/sdk/R$id;->ms_process_bar:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 14
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 15
    check-cast p1, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/a;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/a;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    .line 18
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_controlbar_video_play_button:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/b;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/b;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    .line 21
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_controlbar_video_pause_button:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/c;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/c;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    .line 24
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/d;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/d;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    .line 27
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/e;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/e;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    .line 30
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/f;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/f;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/g;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/g;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 34
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/h;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/h;-><init>(Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/n0$a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/n0$b;J)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e:Lcom/meishu/sdk/meishu_ad/n0$b;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 6
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    return v0
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_controlbar_video_play_button:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v2, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_controlbar_video_pause_button:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->n:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoStart()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->h:Lcom/meishu/sdk/meishu_ad/nativ/a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/m0;->onADExposure()V

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->m:Z

    .line 8
    :cond_2
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->p:Z

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v2, Lcom/meishu/sdk/R$id;->ms_controlbar_video_play_button:I

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v3, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b:Lcom/meishu/sdk/core/bquery/i;

    sget v2, Lcom/meishu/sdk/R$id;->ms_controlbar_video_pause_button:I

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 12
    iget-wide v2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 13
    iget-wide v2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->f:J

    long-to-int v0, v2

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    move-result v0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c:Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    invoke-virtual {v2, v0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public getVideoView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public mute()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    const-string v0, "FullScreenMediaView"

    .line 2
    .line 3
    const-string v1, "onDetachedFromWindow: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->o:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->d()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoPause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoResume()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/meishu/sdk/meishu_ad/nativ/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->h:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->g:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnVideoLoadedListener(Lcom/meishu/sdk/meishu_ad/n0$c;)V
    .locals 0

    return-void
.end method

.method public setVideoCover(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setVideoPath(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->a:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public unmute()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/FullScreenMediaView;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
