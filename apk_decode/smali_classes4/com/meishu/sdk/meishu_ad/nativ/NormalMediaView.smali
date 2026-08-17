.class public Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/n0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;
    }
.end annotation


# static fields
.field public static final synthetic b0:I


# instance fields
.field public A:Lcom/meishu/sdk/meishu_ad/n0$c;

.field public B:Lcom/meishu/sdk/meishu_ad/n0$b;

.field public C:Lcom/meishu/sdk/meishu_ad/nativ/e;

.field public D:Landroid/media/MediaPlayer$OnInfoListener;

.field public E:Lcom/meishu/sdk/meishu_ad/nativ/a;

.field public F:Z

.field public G:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

.field public volatile H:Z

.field public volatile I:Z

.field public volatile J:Z

.field public volatile K:Z

.field public L:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public M:I

.field public N:I

.field public O:Z

.field public P:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

.field public Q:Ljava/lang/String;

.field public R:Landroid/widget/ImageView;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/meishu_ad/n0$a;",
            ">;"
        }
    .end annotation
.end field

.field public W:Landroid/content/BroadcastReceiver;

.field public final a:Ljava/lang/String;

.field public a0:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;

.field public b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

.field public c:Lcom/meishu/sdk/core/bquery/i;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ProgressBar;

.field public g:Z

.field public h:I

.field public i:I

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:Lcom/meishu/sdk/meishu_ad/nativ/b;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:F

.field public y:F

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 6
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 8
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 11
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 13
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->V:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->W:Landroid/content/BroadcastReceiver;

    .line 16
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 39
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 40
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 41
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 42
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 43
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 44
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z

    .line 45
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 46
    new-instance p2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->V:Ljava/util/List;

    .line 48
    new-instance p2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->W:Landroid/content/BroadcastReceiver;

    .line 49
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    const/4 p2, 0x1

    .line 52
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    const-wide/16 p2, -0x1

    .line 53
    iput-wide p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    const/4 p2, 0x0

    .line 54
    iput p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 55
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 56
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 57
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 58
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 59
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 60
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z

    .line 61
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 62
    new-instance p2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->V:Ljava/util/List;

    .line 64
    new-instance p2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;

    invoke-direct {p2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->W:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 22
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 23
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 24
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 25
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 26
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 27
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z

    .line 28
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 29
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$c;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->V:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->W:Landroid/content/BroadcastReceiver;

    .line 32
    iput-boolean p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->z:Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->J:Z

    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->K:Z

    return p1
.end method

.method public static synthetic c(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    return p1
.end method

.method public static synthetic d(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    return p1
.end method

.method public static synthetic e(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->U:Z

    return p1
.end method

.method public static synthetic f(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->H:Z

    return p1
.end method

.method public static synthetic g(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->I:Z

    return p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 11
    const-string v0, "meishu_media_view"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/meishu/sdk/R$layout;->ms_normal_video_player_layout2:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/meishu/sdk/R$layout;->ms_normal_video_player_layout:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 15
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 16
    sget v0, Lcom/meishu/sdk/R$id;->ms_video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 17
    sget v0, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->R:Landroid/widget/ImageView;

    .line 18
    new-instance p1, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 19
    sget v0, Lcom/meishu/sdk/R$id;->ms_video_currentTime:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 20
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 21
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d:Landroid/widget/TextView;

    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_video_endTime:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 23
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 24
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e:Landroid/widget/TextView;

    .line 25
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_video_seekBar:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 26
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    check-cast p1, Landroid/widget/ProgressBar;

    .line 27
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f:Landroid/widget/ProgressBar;

    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/i;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/i;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 29
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_controlbar_video_play_button:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/j;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/j;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 32
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_controlbar_video_pause_button:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/k;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/k;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 35
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/l;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/l;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 38
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/m;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/m;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 41
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/n;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/n;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/o;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/o;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 45
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/p;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/p;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/g;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/nativ/g;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_6

    .line 48
    new-instance p1, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {p1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->G:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 50
    iput-object v0, p1, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    :cond_6
    return-void
.end method

.method public final a(Landroid/widget/TextView;I)V
    .locals 2

    .line 7
    div-int/lit16 p2, p2, 0x3e8

    .line 8
    div-int/lit8 v0, p2, 0x3c

    .line 9
    rem-int/lit8 p2, p2, 0x3c

    .line 10
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%02d:%02d"

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/n0$a;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->V:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/meishu/sdk/meishu_ad/n0$b;J)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->B:Lcom/meishu/sdk/meishu_ad/n0$b;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->o:Z

    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->q:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    move-result-object v0

    .line 53
    invoke-static {p0}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->setMeishuVideoView(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 54
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->q:Lcom/meishu/sdk/meishu_ad/nativ/b;

    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuDetailActivity;->setNativeAdData(Lcom/meishu/sdk/platform/ms/c;)V

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/meishu/sdk/activity/MeishuDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v2

    const-string v3, "EXTRA_INTERACTION_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_DURL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_APP_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "EXTRA_ICON_URL"

    .line 61
    iget-object v3, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "EXTRA_CONTENT"

    .line 64
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScore()F

    move-result v2

    const-string v3, "EXTRA_SCORE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 67
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDownNum()I

    move-result v2

    const-string v3, "EXTRA_DOWN_NUM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v2, "EXTRA_VIDEO_WIDTH"

    .line 69
    iget v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v2, "EXTRA_VIDEO_HEIGHT"

    .line 72
    iget v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v2, "EXTRA_STRONG_ACTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object p1

    const-string v2, "EXTRA_VIDEO_COVER"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string p1, "EXTRA_VIDEO_END_COVER"

    .line 77
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    .line 80
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 6
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    return v0
.end method

.method public b()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->R:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->R:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 10
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->m:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_control:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v0, Lcom/meishu/sdk/R$id;->ms_control:I

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i:I

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h:I

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->a:Ljava/lang/String;

    const-string v3, "destroy"

    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 7
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 8
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->b:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->n:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 12
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->G:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-eqz v0, :cond_3

    .line 17
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    :cond_3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 5

    const/4 v0, 0x3

    .line 2
    :try_start_0
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->l:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->k:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->S:Z

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b()V

    .line 8
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v3, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/bquery/i;

    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    .line 10
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 11
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->S:Z

    if-nez v2, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b()V

    .line 16
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v3, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/bquery/i;

    .line 17
    iget-object v3, v2, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 18
    check-cast v3, Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    :cond_2
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 21
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v2, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 22
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v2, Lcom/meishu/sdk/R$id;->ms_video_view:I

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/16 v2, 0x8

    .line 26
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 27
    :cond_4
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h()V

    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    move-result v0

    .line 29
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/widget/TextView;I)V

    .line 30
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 31
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    if-nez v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v2, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 33
    :cond_5
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->O:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    return-void

    .line 35
    :cond_6
    :try_start_1
    iget-wide v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->B:Lcom/meishu/sdk/meishu_ad/n0$b;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->H:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->H:Z

    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->B:Lcom/meishu/sdk/meishu_ad/n0$b;

    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0$b;->onKeepTimeFinished()V

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meishu/sdk/meishu_ad/n0$a;

    .line 39
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/n0$a;->onCompleted()V

    goto :goto_2

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    if-eqz v0, :cond_9

    .line 41
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_9
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    return-void

    .line 43
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    return-void

    :goto_4
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 45
    throw v0
.end method

.method public g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    sget v1, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoMute()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->N:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->N:I

    .line 15
    .line 16
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->Q:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->Q:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 6
    .line 7
    sget v1, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onPlay "

    .line 4
    .line 5
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 39
    .line 40
    new-instance v2, Lcom/meishu/sdk/meishu_ad/nativ/h;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/h;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 49
    .line 50
    sget v2, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 68
    .line 69
    sget v3, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 82
    .line 83
    sget v3, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f:Landroid/widget/ProgressBar;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e:Landroid/widget/TextView;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {p0, v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/widget/TextView;I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_2

    .line 123
    .line 124
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 19
    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 29
    .line 30
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 37
    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 44
    .line 45
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoUnmute()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->A:Lcom/meishu/sdk/meishu_ad/n0$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/meishu/sdk/meishu_ad/n0$c;->onLoaded(Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "stop(), mediaPlayer="

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",isPlaying="

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 53
    .line 54
    .line 55
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catch_1
    move-exception v0

    .line 69
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public mute()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->n:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 22
    .line 23
    new-instance v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$a;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$a;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-eq v1, v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    if-ne v1, v0, :cond_3

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->W:Landroid/content/BroadcastReceiver;

    .line 68
    .line 69
    new-instance v2, Landroid/content/IntentFilter;

    .line 70
    .line 71
    const-string v3, "ACTION_DOWNLOAD_CLICKED"

    .line 72
    .line 73
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->n:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->o:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->W:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->x:F

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    cmpg-float v4, v3, v2

    .line 13
    .line 14
    const/high16 v5, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-gez v4, :cond_1

    .line 17
    .line 18
    iget v4, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->y:F

    .line 19
    .line 20
    cmpg-float v3, v3, v4

    .line 21
    .line 22
    if-gez v3, :cond_1

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    int-to-float p2, v0

    .line 29
    mul-float/2addr v4, p2

    .line 30
    div-float/2addr v4, v2

    .line 31
    float-to-int p2, v4

    .line 32
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-nez v0, :cond_4

    .line 38
    .line 39
    if-lez v1, :cond_4

    .line 40
    .line 41
    int-to-float p1, v1

    .line 42
    mul-float/2addr v2, p1

    .line 43
    div-float/2addr v2, v4

    .line 44
    float-to-int p1, v2

    .line 45
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h:I

    .line 51
    .line 52
    if-lez v2, :cond_4

    .line 53
    .line 54
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i:I

    .line 55
    .line 56
    if-lez v3, :cond_4

    .line 57
    .line 58
    if-lez v0, :cond_2

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    int-to-float p2, v3

    .line 63
    int-to-float v0, v0

    .line 64
    mul-float/2addr p2, v0

    .line 65
    int-to-float v0, v2

    .line 66
    div-float/2addr p2, v0

    .line 67
    float-to-int p2, p2

    .line 68
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-nez v0, :cond_3

    .line 74
    .line 75
    if-lez v1, :cond_3

    .line 76
    .line 77
    int-to-float p1, v2

    .line 78
    int-to-float v0, v1

    .line 79
    mul-float/2addr p1, v0

    .line 80
    int-to-float v0, v3

    .line 81
    div-float/2addr p1, v0

    .line 82
    float-to-int p1, p1

    .line 83
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    if-lez v0, :cond_4

    .line 89
    .line 90
    if-lez v1, :cond_4

    .line 91
    .line 92
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    iget p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i:I

    .line 97
    .line 98
    int-to-float p2, p2

    .line 99
    int-to-float v0, v0

    .line 100
    mul-float/2addr p2, v0

    .line 101
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h:I

    .line 102
    .line 103
    int-to-float v0, v0

    .line 104
    div-float/2addr p2, v0

    .line 105
    float-to-int p2, p2

    .line 106
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->T:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 13
    .line 14
    if-eq v1, v0, :cond_1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->n:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->o:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->M:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "onWindowFocusChanged,onPause"

    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    if-eq p1, v1, :cond_2

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->o:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    if-eq p1, v0, :cond_3

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->n:Z

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "onResume,playState="

    .line 62
    .line 63
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iput v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->c()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h()V

    .line 27
    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoPause()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public replay()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->U:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->d()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoResume()V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public setActivityForLifecycle(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->G:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->G:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/meishu/sdk/meishu_ad/nativ/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->E:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 5
    .line 6
    return-void
.end method

.method public setAutoStart(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 6
    .line 7
    sget v0, Lcom/meishu/sdk/R$id;->ms_center_play_button:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setConfigHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setConfigWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setContainerHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->y:F

    .line 2
    .line 3
    return-void
.end method

.method public setContainerWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->x:F

    .line 2
    .line 3
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setDisplayMode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFromLogo(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 4
    .line 5
    sget v1, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setFromLogoVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 2
    .line 3
    sget v1, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eq v1, p1, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public setInitMute(Z)V
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 7
    .line 8
    sget v3, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/meishu/sdk/core/bquery/i;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 20
    .line 21
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 34
    .line 35
    sget v3, Lcom/meishu/sdk/R$id;->ms_video_volume_mute:I

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/meishu/sdk/core/bquery/i;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 47
    .line 48
    sget v2, Lcom/meishu/sdk/R$id;->ms_video_volume:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setInitMute(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public setIsEyes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->M:I

    .line 2
    .line 3
    return-void
.end method

.method public setMsAd(Lcom/meishu/sdk/meishu_ad/nativ/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->q:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnExposureListener(Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->P:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->D:Landroid/media/MediaPlayer$OnInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreparedListener(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a0:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoLoadedListener(Lcom/meishu/sdk/meishu_ad/n0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->A:Lcom/meishu/sdk/meishu_ad/n0$c;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayOnce(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setProgressLoadingVisible(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 4
    .line 5
    sget v0, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 19
    .line 20
    sget v0, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setRadius(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->R:Landroid/widget/ImageView;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/meishu/sdk/core/view/RoundImageView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/meishu/sdk/core/view/RoundImageView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/view/RoundImageView;->setCornerRadius(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    int-to-float p1, p1

    .line 22
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setRadius(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setRecycler(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRewardWeb(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->T:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUseTransform(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setUseTransform(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoCover(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->k:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 4
    .line 5
    sget v1, Lcom/meishu/sdk/R$id;->ms_video_cover:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setVideoCoverScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->R:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoEndCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->Q:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->setVideoPath(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->t:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->I:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->J:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->K:Z

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->v:Z

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->e()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 43
    .line 44
    iget-boolean v2, v2, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->g:Z

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->U:Z

    .line 49
    .line 50
    if-nez v2, :cond_2

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->U:Z

    .line 53
    .line 54
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoStart()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public unmute()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
