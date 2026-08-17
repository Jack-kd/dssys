.class public Lcom/sigmob/sdk/videoplayer/f;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sigmob/sdk/videoplayer/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/videoplayer/f$c;,
        Lcom/sigmob/sdk/videoplayer/f$a;,
        Lcom/sigmob/sdk/videoplayer/f$b;
    }
.end annotation


# static fields
.field private static final V:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final W:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final a:Ljava/lang/String; = "VideoPlayerView"

.field public static final b:I = -0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x0

.field public static final o:I = 0x50

.field public static p:Z = true

.field public static q:I = 0x6

.field public static r:I = 0x1

.field public static s:Z = false

.field public static t:Z = true

.field public static u:I


# instance fields
.field public A:I

.field public B:Ljava/lang/Class;

.field public C:Z

.field public D:Lcom/sigmob/sdk/videoplayer/i;

.field public E:I

.field public F:I

.field public G:I

.field public H:J

.field public I:Landroid/widget/ImageView;

.field public J:Landroid/widget/ImageView;

.field public K:Landroid/widget/ImageView;

.field public L:Z

.field protected M:J

.field protected N:Ljava/util/Timer;

.field protected O:I

.field protected P:I

.field protected Q:Landroid/media/AudioManager;

.field protected R:Lcom/sigmob/sdk/videoplayer/f$a;

.field protected S:Z

.field T:Lcom/sigmob/sdk/videoplayer/l;

.field public U:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private aa:Landroid/view/ViewGroup;

.field private ab:Landroid/view/ViewGroup;

.field private ac:Landroid/view/ViewGroup;

.field private ad:Landroid/view/ViewGroup;

.field private ae:Landroid/view/ViewGroup;

.field private af:Landroid/view/ViewGroup;

.field private ag:Landroid/view/ViewGroup;

.field private ah:Landroid/view/ViewGroup;

.field private ai:Landroid/widget/ProgressBar;

.field private aj:Landroid/widget/ImageView;

.field private ak:Lcom/sigmob/sdk/nativead/l;

.field private al:Z

.field private am:Lcom/sigmob/sdk/videoplayer/b;

.field private an:Landroid/widget/ImageView;

.field private ao:I

.field private ap:I

.field private aq:Lcom/sigmob/sdk/videoplayer/f$c;

.field private ar:Z

.field private as:Landroid/view/View;

.field private at:Z

.field private au:Landroid/view/View;

.field public v:Lcom/sigmob/sdk/videoplayer/f;

.field public w:I

.field public x:I

.field public y:Lcom/sigmob/sdk/videoplayer/g;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sigmob/sdk/videoplayer/f;->z:I

    iput v1, p0, Lcom/sigmob/sdk/videoplayer/f;->A:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoplayer/f;->C:Z

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->E:I

    iput v1, p0, Lcom/sigmob/sdk/videoplayer/f;->F:I

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->G:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/sigmob/sdk/videoplayer/f;->H:J

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoplayer/f;->L:Z

    iput-wide v3, p0, Lcom/sigmob/sdk/videoplayer/f;->M:J

    new-instance v0, Lcom/sigmob/sdk/videoplayer/f$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoplayer/f$1;-><init>(Lcom/sigmob/sdk/videoplayer/f;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->U:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoplayer/f;->al:Z

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoplayer/f;->ar:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->z:I

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->A:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoplayer/f;->C:Z

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/f;->E:I

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->F:I

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/f;->G:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sigmob/sdk/videoplayer/f;->H:J

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->L:Z

    iput-wide v2, p0, Lcom/sigmob/sdk/videoplayer/f;->M:J

    new-instance p2, Lcom/sigmob/sdk/videoplayer/f$1;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/videoplayer/f$1;-><init>(Lcom/sigmob/sdk/videoplayer/f;)V

    iput-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->U:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoplayer/f;->al:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ar:Z

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method private F()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->B:Ljava/lang/Class;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/videoplayer/j;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoplayer/j;-><init>(Lcom/sigmob/sdk/videoplayer/h;)V

    :goto_1
    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    return-void

    :cond_1
    const-class v1, Lcom/sigmob/sdk/videoplayer/f;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoplayer/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 0

    .line 12
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoplayer/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoplayer/f;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 2

    .line 2
    const-string v0, "sig_image_video_mute"

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->al:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_image_video_unmute"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    iget-object v0, v0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    iget-object v0, v0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->k()V

    return-void
.end method

.method public D()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->g()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    iget-object v0, v0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->d()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->E()V

    return-void
.end method

.method public E()V
    .locals 1

    const-string v0, "releaseAllVideos"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    return-void
.end method

.method public a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->E()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aq:Lcom/sigmob/sdk/videoplayer/f$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->aq:Lcom/sigmob/sdk/videoplayer/f$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aq:Lcom/sigmob/sdk/videoplayer/f$c;

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    iget p1, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->t()V

    :cond_1
    return-void
.end method

.method public a(FI)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(FLjava/lang/String;JLjava/lang/String;J)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 6
    return-void
.end method

.method public a(II)V
    .locals 4

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLAY_VIDEO:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    invoke-interface {v1, v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoError(Lcom/sigmob/windad/WindAdError;)V

    :cond_0
    const/16 v0, 0x26

    if-eq p1, v0, :cond_2

    const/16 v1, -0x26

    if-eq p2, v1, :cond_2

    if-eq p1, v1, :cond_2

    if-eq p2, v0, :cond_2

    const/16 p1, -0x13

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->h()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 2

    .line 8
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->h()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->i()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->g()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    return-void

    :cond_4
    int-to-long v0, p3

    invoke-virtual {p0, p2, v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(IJ)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->c()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->b()V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 9
    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iput-wide p2, p0, Lcom/sigmob/sdk/videoplayer/f;->H:J

    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    iput p1, p2, Lcom/sigmob/sdk/videoplayer/g;->b:I

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/videoplayer/i;->a(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->c()V

    return-void
.end method

.method public a(IJJ)V
    .locals 2

    .line 10
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->S:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-le v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/sigmob/sdk/videoplayer/f;->G:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ai:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/sigmob/sdk/nativead/l;->a(JJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_sound_rl"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ae:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_start_rl"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_fullscreen_rl"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ac:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_replay_rl"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ad:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_sound_btn"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_start_btn"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->I:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_fullscreen_btn"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->J:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_surface_container"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aa:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_app_container"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ah:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_bottom_progress"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ai:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_big_replay"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->af:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_thumb"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aj:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_blurImageView"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->an:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_back_rl"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ag:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_layout_top"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->as:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_native_video_layout_bottom"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->au:Landroid/view/View;

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ad:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ae:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ac:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->af:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->O:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->P:I

    new-instance v0, Lcom/sigmob/sdk/videoplayer/f$c;

    new-instance v1, Lcom/sigmob/sdk/videoplayer/n;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/n;-><init>(Lcom/sigmob/sdk/videoplayer/f;)V

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/videoplayer/f$c;-><init>(Lcom/sigmob/sdk/videoplayer/f;Lcom/sigmob/sdk/videoplayer/f$b;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aq:Lcom/sigmob/sdk/videoplayer/f$c;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->aq:Lcom/sigmob/sdk/videoplayer/f$c;

    invoke-static {p1, v1, v0}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 13
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/g;->c()Lcom/sigmob/sdk/videoplayer/g;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->B:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;ILjava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/e;Z)V
    .locals 2

    .line 14
    sget-object v0, Lcom/sigmob/sdk/videoplayer/f$2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ag:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->af:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ac:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ae:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ad:Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    if-eqz p2, :cond_5

    move v0, v1

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/g;I)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;ILjava/lang/Class;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/g;ILjava/lang/Class;)V
    .locals 4

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/videoplayer/f;->M:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    iput p2, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->b()V

    iput-object p3, p0, Lcom/sigmob/sdk/videoplayer/f;->B:Ljava/lang/Class;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/g;J)V
    .locals 1

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iput-wide p2, p0, Lcom/sigmob/sdk/videoplayer/f;->H:J

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/videoplayer/i;->a(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/sigmob/sdk/videoplayer/g;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 19
    new-instance v0, Lcom/sigmob/sdk/videoplayer/g;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/sigmob/sdk/videoplayer/g;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;ILjava/lang/Class;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 21
    new-instance v0, Lcom/sigmob/sdk/videoplayer/g;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ac:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateNormal stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->aj:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2be

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->at:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->at:Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    :cond_1
    const-string p1, "MEDIA_INFO_BUFFERING_END"

    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    iget p1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->at:Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->g()V

    :cond_3
    const-string p1, "MEDIA_INFO_BUFFERING_START"

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ar:Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePreparing  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->s()V

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 2
    iput p2, p0, Lcom/sigmob/sdk/videoplayer/f;->ao:I

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ap:I

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sigmob/sdk/videoplayer/f;->F:I

    if-eqz v1, :cond_1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/l;->setRotation(F)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/l;->a(II)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->L:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->k()V

    return-void
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->L:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->k()V

    return-void
.end method

.method public f()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePlaying  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aj:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/sigmob/sdk/videoplayer/f;->H:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/videoplayer/i;->a(J)V

    iput-wide v4, p0, Lcom/sigmob/sdk/videoplayer/f;->H:J

    :cond_0
    iput v1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->n()V

    return-void
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatePause  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoPause()V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    return-void
.end method

.method public getAppContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ah:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getBlurImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->an:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBottomLayoutView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->au:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentPositionWhenPlaying()J
    .locals 2

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->g()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->j()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v1
.end method

.method public getLayoutId()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_video_player_layout"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSigAdView()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    instance-of v1, v0, Lcom/sigmob/sdk/nativead/m;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-object v0
.end method

.method public getTextureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aj:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTopLayoutView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->as:Landroid/view/View;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ao:I

    return v0
.end method

.method public getVideoPlayerDataSource()Lcom/sigmob/sdk/videoplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    return-object v0
.end method

.method public getVideoSurferViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ap:I

    return v0
.end method

.method public h()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateError  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x7

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ad:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public i()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateAutoComplete  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ai:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->s()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->B()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->z()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->A()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aa:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->f()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/videoplayer/f;->setCurrentVideoAdView(Lcom/sigmob/sdk/videoplayer/f;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/f;->F()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ad:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->af:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->a(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->l()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->c()V

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->aa:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoplayer/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->aa:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public m()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->N:Ljava/util/Timer;

    new-instance v2, Lcom/sigmob/sdk/videoplayer/f$a;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/videoplayer/f$a;-><init>(Lcom/sigmob/sdk/videoplayer/f;)V

    iput-object v2, p0, Lcom/sigmob/sdk/videoplayer/f;->R:Lcom/sigmob/sdk/videoplayer/f$a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->N:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->f(Landroid/content/Context;)V

    return-void
.end method

.method public o()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->al:Z

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoplayer/f;->setSoundChange(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoLoad()V

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ar:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->aj:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_2
    const-string v0, "mediaInterface start"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/f;->L:Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/g;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "wma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/sdk/videoplayer/f;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->z:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->A:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p1

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->A:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->z:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bottomProgress onStopTrackingTouch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->n()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/videoplayer/f;->G:I

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1, v2, v3}, Lcom/sigmob/sdk/videoplayer/i;->a(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seekTo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_f

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->ac:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_3

    iget p1, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->u()V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->t()V

    goto/16 :goto_3

    :cond_3
    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->ae:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->al:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoplayer/f;->setSoundChange(Z)V

    goto/16 :goto_3

    :cond_4
    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->ad:Landroid/view/ViewGroup;

    if-eq p1, p2, :cond_d

    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->af:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/f;->ab:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_f

    iget p1, p0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/sigmob/sdk/videoplayer/f;->t:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/g;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->y:Lcom/sigmob/sdk/videoplayer/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/g;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->y()V

    return v0

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->k()V

    goto :goto_1

    :cond_7
    const/4 p2, 0x4

    if-ne p1, p2, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pauseVideo ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->g()V

    goto :goto_1

    :cond_8
    const/4 p2, 0x5

    if-ne p1, p2, :cond_a

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_9
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    goto :goto_1

    :cond_a
    const/4 p2, 0x6

    if-ne p1, p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 p2, 0x3

    if-ne p1, p2, :cond_c

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/i;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->f()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_c
    :goto_1
    return v0

    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/sigmob/sdk/nativead/l;->a()V

    :cond_e
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->k()V

    :cond_f
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public p()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoCompletion  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->r()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->B()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->z()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->A()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->i()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->N:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->N:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->R:Lcom/sigmob/sdk/videoplayer/f$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/sigmob/sdk/videoplayer/f;->R:Lcom/sigmob/sdk/videoplayer/f$a;

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->g(Landroid/content/Context;)V

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ai:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->ag:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBufferProgress(I)V
    .locals 0

    return-void
.end method

.method public setCurrentVideoAdView(Lcom/sigmob/sdk/videoplayer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    return-void
.end method

.method public setHolderImageResource(I)V
    .locals 0

    return-void
.end method

.method public setMediaInterface(Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->j()V

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->B:Ljava/lang/Class;

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/l;->setRotation(F)V

    return-void
.end method

.method public setScreen(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->x()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->w()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->v()V

    return-void
.end method

.method public setSoundChange(Z)V
    .locals 2

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoplayer/f;->al:Z

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->g(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/i;->a(F)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_image_video_mute"

    :goto_0
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->f(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->D:Lcom/sigmob/sdk/videoplayer/i;

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/i;->a(F)V

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->K:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sig_image_video_unmute"

    goto :goto_0
.end method

.method public setState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sigmob/sdk/videoplayer/f;->a(III)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public setTextureViewRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/l;->setRotation(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUp(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/videoplayer/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/videoplayer/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/g;I)V

    return-void
.end method

.method public setVideoAdStatusListener(Lcom/sigmob/sdk/nativead/l;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->ak:Lcom/sigmob/sdk/nativead/l;

    return-void
.end method

.method public setVideoAdViewListener(Lcom/sigmob/sdk/videoplayer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->am:Lcom/sigmob/sdk/videoplayer/b;

    return-void
.end method

.method public setVideoImageDisplayType(I)V
    .locals 0

    sput p1, Lcom/sigmob/sdk/videoplayer/f;->u:I

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/f;->v:Lcom/sigmob/sdk/videoplayer/f;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sigmob/sdk/videoplayer/f;->T:Lcom/sigmob/sdk/videoplayer/l;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->am:Lcom/sigmob/sdk/videoplayer/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoplayer/b;->g()V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->w()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->J:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sig_image_video_small"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public u()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/videoplayer/f;->M:J

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->am:Lcom/sigmob/sdk/videoplayer/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/sdk/videoplayer/b;->f()V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/f;->v()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f;->J:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sig_image_video_fullscreen"

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method
