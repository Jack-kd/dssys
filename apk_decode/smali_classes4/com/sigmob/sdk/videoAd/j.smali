.class public Lcom/sigmob/sdk/videoAd/j;
.super Lcom/sigmob/sdk/videoAd/b;

# interfaces
.implements Lcom/sigmob/sdk/base/common/ac;
.implements Lcom/sigmob/sdk/base/common/h$a;
.implements Lcom/sigmob/sdk/videocache/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/videoAd/j$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "j"

.field static final g:Ljava/lang/String; = "video_config"

.field private static final i:Ljava/lang/String; = "current_position"

.field private static final j:Ljava/lang/String; = "video_finished"

.field private static final k:Ljava/lang/String; = "companionAd_visable"

.field private static final l:J = 0x32L

.field private static final m:I = -0x1

.field private static final n:I

.field private static o:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private final C:Landroid/os/Handler;

.field private D:Z

.field private E:Lcom/sigmob/sdk/base/views/d;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Z

.field private I:Lcom/sigmob/sdk/videoAd/a;

.field private J:I

.field private K:Lcom/sigmob/sdk/videoplayer/a;

.field private L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private M:Landroid/view/View;

.field private N:Lcom/sigmob/sdk/base/common/v;

.field private final O:Landroid/media/MediaMetadataRetriever;

.field private P:Lcom/sigmob/sdk/base/views/as;

.field private Q:Lcom/sigmob/sdk/base/views/ar;

.field private R:Lcom/sigmob/sdk/base/views/w;

.field private S:Lcom/sigmob/sdk/videoAd/f;

.field private T:I

.field private U:I

.field private V:Z

.field private W:Z

.field private X:I

.field private Y:Z

.field private Z:Landroid/widget/RelativeLayout;

.field private aa:Z

.field private ab:Lcom/sigmob/sdk/base/views/ar;

.field private ac:Z

.field private ad:Z

.field private ae:Lcom/czhj/volley/toolbox/ImageLoader$ImageContainer;

.field private af:Lcom/sigmob/sdk/base/views/m;

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/sigmob/sdk/base/views/z;

.field private aj:Z

.field private ak:Lcom/sigmob/sdk/base/views/q;

.field private al:Z

.field private am:Lcom/sigmob/sdk/base/views/w;

.field private an:Lcom/sigmob/sdk/base/views/w;

.field private ao:Lcom/sigmob/sdk/base/common/am$a;

.field private ap:Lcom/sigmob/sdk/base/views/v;

.field private aq:Z

.field private ar:Lcom/sigmob/sdk/nativead/b;

.field private as:Lcom/sigmob/sdk/base/views/w;

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Ljava/lang/String;

.field private final ay:Landroid/view/View$OnClickListener;

.field private az:Z

.field h:Ljava/lang/String;

.field private final p:I

.field private q:Lcom/sigmob/sdk/base/views/b;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/RelativeLayout;

.field private t:I

.field private u:Z

.field private v:I

.field private w:Ljava/lang/String;

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p5, p6}, Lcom/sigmob/sdk/videoAd/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    const/4 p5, 0x0

    iput p5, p0, Lcom/sigmob/sdk/videoAd/j;->t:I

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->u:Z

    iput p5, p0, Lcom/sigmob/sdk/videoAd/j;->v:I

    const-string p6, "undone"

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/j;->w:Ljava/lang/String;

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/j;->x:Ljava/util/List;

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/j;->y:Ljava/util/List;

    const-string p6, "none"

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/j;->A:Ljava/lang/String;

    new-instance p6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    const/4 p6, 0x1

    iput-boolean p6, p0, Lcom/sigmob/sdk/videoAd/j;->D:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->O:Landroid/media/MediaMetadataRetriever;

    iput p5, p0, Lcom/sigmob/sdk/videoAd/j;->T:I

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->ac:Z

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->ad:Z

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->ag:Z

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->aj:Z

    iput-boolean p5, p0, Lcom/sigmob/sdk/videoAd/j;->al:Z

    new-instance v0, Lcom/sigmob/sdk/videoAd/j$9;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/j$9;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ay:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/videoAd/a;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    const/high16 p2, 0x41200000    # 10.0f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v2, Lcom/sigmob/sdk/videoAd/j$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/videoAd/j$1;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p2, p0}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/common/ac;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->F:Ljava/lang/String;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result p2

    sput p2, Lcom/sigmob/sdk/videoAd/j;->o:I

    iget p2, p0, Lcom/sigmob/sdk/videoAd/j;->J:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/sdk/videoAd/b;->b(Landroid/content/Context;ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    const-string p2, "_PLAYLASTFRAME_"

    const-string p3, "1"

    invoke-virtual {p1, p2, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/n;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result p2

    if-eq p1, p2, :cond_0

    move p1, p6

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->D:Z

    const/4 p1, -0x1

    if-eqz p4, :cond_1

    const-string p2, "current_position"

    invoke-virtual {p4, p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    const-string p2, "video_finished"

    invoke-virtual {p4, p2, p5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    const-string p2, "companionAd_visable"

    invoke-virtual {p4, p2, p5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/g;

    const/high16 p3, -0x1000000

    if-nez p2, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/base/k;->b()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/app/Activity;->setTheme(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    new-instance p2, Landroid/widget/RelativeLayout;

    iget-object p4, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {p2, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-direct {p0, p2, p5}, Lcom/sigmob/sdk/videoAd/j;->d(Landroid/content/Context;I)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p2

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/sigmob/sdk/videoAd/j;->s:Landroid/widget/RelativeLayout;

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p3, p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/sigmob/sdk/videoAd/j;->s:Landroid/widget/RelativeLayout;

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p4, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->u:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->E()V

    :cond_4
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->q()V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p6}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->s:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/sigmob/sdk/videoAd/j$8;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/videoAd/j$8;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic A(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->E()V

    return-void
.end method

.method public static synthetic B(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->F()V

    return-void
.end method

.method public static synthetic C(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->R()V

    return-void
.end method

.method public static synthetic D()I
    .locals 1

    .line 1
    sget v0, Lcom/sigmob/sdk/videoAd/j;->o:I

    return v0
.end method

.method public static synthetic D(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic E(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p0

    return-object p0
.end method

.method private E()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/videoAd/j;->z:J

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "loading"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->A:Ljava/lang/String;

    iget v0, p0, Lcom/sigmob/sdk/videoAd/j;->v:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/videoAd/j;->v:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(IZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoAd/r;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/r;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private F()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->x:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sigmob/sdk/videoAd/j;->z:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->y:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "play"

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic F(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->D:Z

    return p0
.end method

.method private G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    return-void
.end method

.method public static synthetic G(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->V()V

    return-void
.end method

.method public static synthetic H(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->N:Lcom/sigmob/sdk/base/common/v;

    return-object p0
.end method

.method private H()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWidgetId(I)J

    move-result-wide v0

    long-to-int v0, v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->K()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->I()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->M()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->L()V

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x21deb -> :sswitch_3
        0x21ded -> :sswitch_2
        0x21e05 -> :sswitch_1
        0x21e06 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic I(Lcom/sigmob/sdk/videoAd/j;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->P()F

    move-result p0

    return p0
.end method

.method private I()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ac;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/ac;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x43110000    # 145.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v2, Lcom/sigmob/sdk/videoAd/j$10;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/videoAd/j$10;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->d:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v2, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aq:Z

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    const-string v2, "component"

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string v2, "ad"

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iput-boolean v0, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    sget-object v2, Lcom/sigmob/sdk/base/a;->i:Lcom/sigmob/sdk/base/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic J(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->az:Z

    return p0
.end method

.method public static synthetic K(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->ai:Lcom/sigmob/sdk/base/views/z;

    return-object p0
.end method

.method private K()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/aw;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/aw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v1, 0x43110000    # 145.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v3, Lcom/sigmob/sdk/videoAd/j$11;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/videoAd/j$11;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->b:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v3, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private L()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ap;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/ap;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v1, 0x43110000    # 145.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v3, Lcom/sigmob/sdk/videoAd/j$12;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/videoAd/j$12;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->a:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v3, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic L(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->aj:Z

    return p0
.end method

.method public static synthetic M(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private M()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/am;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/am;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    const/high16 v1, 0x42b80000    # 92.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v1, 0x43110000    # 145.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v3, Lcom/sigmob/sdk/videoAd/j$13;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/videoAd/j$13;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->c:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v3, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic N(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p0

    return-object p0
.end method

.method private N()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video seek to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    iget v1, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/a;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->al:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    :cond_3
    iget v0, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private O()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->j()V

    const-string v0, "videoView.pause()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    const-string v1, "pause"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private P()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic P(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->ak:Lcom/sigmob/sdk/base/views/q;

    return-object p0
.end method

.method private Q()V
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoAd/a;->e(I)I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/j;->T:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->B()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s \u540e\u83b7\u53d6\u5956\u52b1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    const-string v1, "\u5df2\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic R(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    return p0
.end method

.method private S()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/videoAd/v;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/v;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    const-string v2, "play_loading"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public static synthetic S(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->B:Z

    return p0
.end method

.method public static synthetic T(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/ar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    return-object p0
.end method

.method private T()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/a;->o()I

    move-result v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const v2, 0x5f5e0ff

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/j;->a(I)V

    return-void

    :cond_0
    const v2, -0x5f5e0ff

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(I)V

    return-void

    :cond_1
    if-lez v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/videoAd/j;->a(I)V

    return-void

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ai:Lcom/sigmob/sdk/base/views/z;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ai:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/z;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ai:Lcom/sigmob/sdk/base/views/z;

    return-void
.end method

.method public static synthetic U(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->ah:Z

    return p0
.end method

.method private V()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->z()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    :cond_3
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/common/h$a;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->h(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->S()V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->F()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endcard can\'t show "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndCardIndexPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    const-string v3, "endcard can\'t show"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "action.rewardedvideo.playFail"

    invoke-virtual {p0, v2, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->s:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "action.rewardedvideo.Close"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_b
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->ag:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->P:Lcom/sigmob/sdk/base/views/as;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_c
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    return-void
.end method

.method public static synthetic V(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->W()V

    return-void
.end method

.method private W()V
    .locals 2

    .line 2
    sget-object v0, Lcom/sigmob/sdk/videoAd/j;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoAd/w;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/w;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic W(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->ab()V

    return-void
.end method

.method private synthetic X()V
    .locals 1

    .line 2
    const-string v0, "action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic X(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->Y()V

    return-void
.end method

.method private synthetic Y()V
    .locals 1

    .line 2
    const-string v0, "action.rewardedvideo.complete"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Y(Lcom/sigmob/sdk/videoAd/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/sigmob/sdk/videoAd/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic Z()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->U()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method

.method public static synthetic Z(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->aa()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/videoAd/j;->X:I

    return p1
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/f;I)Landroid/view/View;
    .locals 5

    .line 2
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/f;)Lcom/sigmob/sdk/base/views/o;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/f;)Lcom/sigmob/sdk/base/views/o;
    .locals 3

    .line 4
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoAd/f;->a()Lcom/sigmob/sdk/base/views/n;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInvisibleAdLabel()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/sigmob/sdk/base/views/o;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sigmob/sdk/base/views/o;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/videoAd/j$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/videoAd/j$a;-><init>()V

    const-string v1, "sigVersion"

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/views/g;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/o;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/o;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/o;->setWebViewClickListener(Lcom/sigmob/sdk/base/views/o$a;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/t;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/t;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/g;->setAdUnit(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance v0, Lcom/sigmob/sdk/videoAd/j$6;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/j$6;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoAd/f;->a()Lcom/sigmob/sdk/base/views/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/n;->a(Lcom/sigmob/sdk/base/views/o;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/g;->a(Lcom/sigmob/sdk/base/common/b;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ak:Lcom/sigmob/sdk/base/views/q;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Lcom/sigmob/sdk/nativead/b;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .line 9
    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->getFixIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/videoAd/y;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/y;-><init>(Lcom/sigmob/sdk/videoAd/j;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->au:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->au:Z

    const-string v2, "\u8df3\u8fc7"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/videoAd/B;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/B;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/sigmob/sdk/base/common/v;->a(ZI)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p2

    const-string v0, "show_skip"

    invoke-virtual {p2, v0, p1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    const-string v1, "\u53cd\u9988"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ay:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget p1, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->r:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "material"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "ad"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickAreaSetting()Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;->left:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;->right:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;->top:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;->bottom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v3, v0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->P()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_PROGRESS_"

    invoke-virtual {v0, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->z()V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    sget-object v0, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v0, "useless_video_click"

    invoke-static {p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 5

    .line 19
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "click_skip"

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->C()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/j;->b(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->ad:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getConfirmDialog()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->j()V

    const-string p1, "videoView.pause()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->B()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/base/views/d;->setDuration(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/d;->setVisibility(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "skip"

    invoke-virtual {p1, v2, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sigmob/sdk/videoAd/a;->b(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, v0, v0}, Lcom/sigmob/sdk/videoAd/j;->a(ZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->N()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/j;->b(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 4

    .line 25
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->x:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration_seq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->y:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_time_seq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "skip_state"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->A:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.2f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endcard_loading_state"

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 26
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setCustomLandPageUrl(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "companion"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "endcard"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadStart() called with: url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], userAgent = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], contentDisposition = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], mimetype = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], contentLength = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Landroid/app/Dialog;)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Landroid/app/Dialog;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->al:Z

    return p1
.end method

.method public static synthetic a0(Lcom/sigmob/sdk/videoAd/j;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic aa()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->O:Landroid/media/MediaMetadataRetriever;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->O:Landroid/media/MediaMetadataRetriever;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideo_url()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic ab()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(IZ)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/common/am$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/videoAd/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->w:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ak:Lcom/sigmob/sdk/base/views/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/q;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ak:Lcom/sigmob/sdk/base/views/q;

    new-instance v1, Lcom/sigmob/sdk/videoAd/j$5;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/j$5;-><init>(Lcom/sigmob/sdk/videoAd/j;I)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/q;->a(Lcom/sigmob/sdk/base/views/q$b;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ak:Lcom/sigmob/sdk/base/views/q;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/q;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->al:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ak:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/q;->show()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->al:Z

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;I)V
    .locals 4

    .line 5
    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRewardStyle()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->B()I

    move-result p2

    const/4 v1, 0x0

    if-lez p2, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "s \u540e\u83b7\u53d6\u5956\u52b1"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    const-string v2, "\u5df2\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {p2, v2}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/videoAd/j;->b(Z)V

    :goto_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42c20000    # 97.0f

    invoke-static {v2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget p1, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->as:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private synthetic b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, "endcard_click"

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/j;->B:Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/m;->b:Lcom/sigmob/sdk/base/common/m;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/m;->a()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/n;->f:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "material"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    const-string p2, "endcard"

    iput-object p2, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    sget-object p2, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->h:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/sigmob/sdk/videoAd/j;->ah:Z

    return-void

    :cond_2
    :goto_0
    const-string p1, "ignore invalid click"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 7
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->b(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/videoAd/j;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->aq:Z

    return p1
.end method

.method public static synthetic b0(Lcom/sigmob/sdk/videoAd/j;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/j;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method private synthetic c(I)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->O:Landroid/media/MediaMetadataRetriever;

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 p1, 0x2

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoAd/u;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoAd/u;-><init>(Lcom/sigmob/sdk/videoAd/j;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/content/Context;I)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    const-string v1, "\u53cd\u9988"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ay:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/high16 v0, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v3, 0x6

    invoke-virtual {v1, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int p1, v0

    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/videoAd/j;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->b(I)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/videoAd/j;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->c(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ax:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->d()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ax:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->registerCacheListener(Lcom/sigmob/sdk/videocache/d;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 7
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->at:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->at:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->a()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic c0(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->Z()V

    return-void
.end method

.method private d(Landroid/content/Context;I)Lcom/sigmob/sdk/videoplayer/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProxyVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/videoplayer/a;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/videoplayer/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sigmob/sdk/videoAd/j$14;

    invoke-direct {v1, p0, v0}, Lcom/sigmob/sdk/videoAd/j$14;-><init>(Lcom/sigmob/sdk/videoAd/j;Lcom/sigmob/sdk/videoplayer/a;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/a;->setVideoPlayerStatusListener(Lcom/sigmob/sdk/videoplayer/k;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->D:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->getFixIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/videoAd/A;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/videoAd/A;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->b(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->r:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProxyVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/a;->setUp(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BaseVideoConfig does not have a video disk path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic d(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->O()V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    return p1
.end method

.method public static synthetic d0(Lcom/sigmob/sdk/videoAd/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    return-object p0
.end method

.method private e(Landroid/content/Context;I)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sigmob/sdk/base/views/as;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/as;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->P:Lcom/sigmob/sdk/base/views/as;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/as;->setAnchorId(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->P:Lcom/sigmob/sdk/base/views/as;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->P:Lcom/sigmob/sdk/base/views/as;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->aj:Z

    return p1
.end method

.method public static synthetic e0(Lcom/sigmob/sdk/videoAd/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    return-object p0
.end method

.method private f(Landroid/content/Context;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/views/d;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->q()Lcom/sigmob/sdk/videoAd/c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/base/views/d;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/c;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/views/d;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    new-instance p2, Lcom/sigmob/sdk/videoAd/j$15;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/videoAd/j$15;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/views/d;->setDialogListener(Lcom/sigmob/sdk/base/views/d$a;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    return p1
.end method

.method public static synthetic f0(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->X()V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/videoAd/j;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private g(Landroid/content/Context;I)V
    .locals 17

    .line 3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->icon_url:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->desc:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    sget v2, Lcom/sigmob/sdk/base/views/r;->a:I

    const/4 v3, -0x1

    const/16 v4, 0xe5

    :try_start_0
    iget-object v5, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    const/high16 v6, 0x437f0000    # 255.0f

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/rtb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v9, v5

    cmpl-double v5, v9, v7

    if-lez v5, :cond_1

    :try_start_1
    iget-object v5, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/rtb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v9, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v9, v9, Lcom/sigmob/sdk/base/models/rtb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v10, v10, Lcom/sigmob/sdk/base/models/rtb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v11, v11, Lcom/sigmob/sdk/base/models/rtb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move v5, v3

    goto :goto_2

    :catchall_1
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/rtb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-double v9, v5

    cmpl-double v5, v9, v7

    if-lez v5, :cond_2

    :try_start_3
    iget-object v5, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/rtb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v9, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v9, v9, Lcom/sigmob/sdk/base/models/rtb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v10, v10, Lcom/sigmob/sdk/base/models/rtb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v11, v11, Lcom/sigmob/sdk/base/models/rtb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v5, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    :cond_2
    move v5, v3

    :goto_1
    :try_start_4
    iget-object v9, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    if-eqz v9, :cond_3

    iget-object v9, v9, Lcom/sigmob/sdk/base/models/rtb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    cmpl-double v7, v9, v7

    if-lez v7, :cond_3

    iget-object v7, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->bar_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/rtb/Color;->alpha:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget-object v6, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v6, v6, Lcom/sigmob/sdk/base/models/rtb/Color;->red:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/rtb/Color;->green:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    iget-object v8, v8, Lcom/sigmob/sdk/base/models/rtb/Color;->blue:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_3
    :goto_2
    move v11, v2

    move v14, v3

    move v15, v4

    move v12, v5

    :try_start_5
    iget-object v3, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    move v13, v3

    goto :goto_4

    :catchall_4
    const/4 v13, 0x0

    :goto_4
    iget-object v3, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->button_text:Ljava/lang/String;

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x4

    if-le v4, v6, :cond_7

    :cond_5
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/j;->a()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v3

    if-ne v3, v5, :cond_6

    const-string v3, "\u4e0b\u8f7d"

    goto :goto_5

    :cond_6
    const-string v3, "\u8be6\u60c5"

    :cond_7
    :goto_5
    new-instance v4, Lcom/sigmob/sdk/base/views/m;

    move v6, v5

    move-object v5, v3

    iget-object v3, v0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-object v7, v4

    iget-object v4, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->title:Ljava/lang/String;

    iget-object v8, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->score:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v9, v7

    iget-object v7, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->desc:Ljava/lang/String;

    iget-object v10, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->animate_type:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->icon_url:Ljava/lang/String;

    const/high16 v16, 0x428c0000    # 70.0f

    move v6, v8

    move v8, v10

    move-object v10, v1

    move-object v1, v9

    move v9, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v16}, Lcom/sigmob/sdk/base/views/m;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;IILjava/lang/String;IIIIIF)V

    move/from16 v3, v16

    iput-object v1, v0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/m;->getFourElementsLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v5, Lcom/sigmob/sdk/videoAd/z;

    invoke-direct {v5, v0}, Lcom/sigmob/sdk/videoAd/z;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    invoke-static {v3, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    const/16 v3, 0xb

    if-nez v2, :cond_9

    iget v2, v0, Lcom/sigmob/sdk/videoAd/j;->t:I

    add-int/2addr v2, v1

    const/4 v5, 0x0

    invoke-virtual {v6, v1, v5, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v6, v1, v5, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_6
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, v0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v0, Lcom/sigmob/sdk/videoAd/j;->H:Z

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, v0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    new-instance v2, Lcom/sigmob/sdk/videoAd/j$2;

    invoke-direct {v2, v0}, Lcom/sigmob/sdk/videoAd/j$2;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/m;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_a
    :goto_7
    const-string v1, "ompanionEnd lose informations of UI Display"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->ac:Z

    return p1
.end method

.method public static synthetic g0(Lcom/sigmob/sdk/videoAd/j;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/nativead/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    return-object p0
.end method

.method private h(Landroid/content/Context;I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/base/views/ar;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-static {v1, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget p1, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, p1, v1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCloseCardHtmlData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->az:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-direct {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/views/z;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/videoAd/a;)V

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ai:Lcom/sigmob/sdk/base/views/z;

    new-instance v0, Lcom/sigmob/sdk/videoAd/q;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/q;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z$a;)V

    :cond_0
    new-instance p1, Lcom/sigmob/sdk/videoAd/j$3;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/videoAd/j$3;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/ar;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/a;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ar;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoAd/j;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic h(Lcom/sigmob/sdk/videoAd/j;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/j;->ah:Z

    return p1
.end method

.method private i(Landroid/content/Context;I)V
    .locals 2

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/views/w;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget p1, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    new-instance p2, Lcom/sigmob/sdk/videoAd/s;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/videoAd/s;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSkipPercent()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSkipSeconds()I

    move-result p1

    if-ltz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSkipSeconds()I

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-direct {p0, v0, v0}, Lcom/sigmob/sdk/videoAd/j;->a(IZ)V

    :cond_3
    return-void
.end method

.method public static synthetic i(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->G()V

    return-void
.end method

.method private j(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/views/ar;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/ar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0xb

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget p1, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/sigmob/sdk/videoAd/j$4;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/videoAd/j$4;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIsMute()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sig_image_video_mute"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/ar;->a(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    iput-boolean p2, p0, Lcom/sigmob/sdk/videoAd/j;->ac:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p1

    const-string p2, "sig_image_video_unmute"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/base/views/ar;->a(I)V

    return-void
.end method

.method public static synthetic j(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->aq:Z

    return p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/v;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    return-object p0
.end method

.method public static synthetic l(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->J()V

    return-void
.end method

.method public static synthetic m(Lcom/sigmob/sdk/videoAd/j;)I
    .locals 0

    iget p0, p0, Lcom/sigmob/sdk/videoAd/j;->X:I

    return p0
.end method

.method public static synthetic n(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->au:Z

    return p0
.end method

.method public static synthetic o(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    return-object p0
.end method

.method public static p()I
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic p(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/sigmob/sdk/videoAd/j;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/f;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    return-object p0
.end method

.method public static synthetic q(Lcom/sigmob/sdk/videoAd/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->c(I)V

    return-void
.end method

.method public static synthetic r(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->ac:Z

    return p0
.end method

.method public static synthetic s(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/ar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    return-object p0
.end method

.method public static synthetic u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    return-object p0
.end method

.method public static synthetic v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    return-object p0
.end method

.method public static synthetic w(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    return p0
.end method

.method public static synthetic x(Lcom/sigmob/sdk/videoAd/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    return p0
.end method

.method public static synthetic y(Lcom/sigmob/sdk/videoAd/j;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/videoAd/j;->ag:Z

    return p0
.end method

.method public static synthetic z(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/as;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/videoAd/j;->P:Lcom/sigmob/sdk/base/views/as;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->disable_auto_deeplink:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->z()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(IZ)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->B()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->E:Lcom/sigmob/sdk/base/views/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/d;->setDuration(I)V

    :cond_1
    return-void
.end method

.method public B()I
    .locals 9

    .line 1
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRewardSeconds()I

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit16 v3, v1, 0x3e8

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    int-to-float v1, v1

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v3

    long-to-float v0, v3

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRewardPercent()I

    move-result v1

    int-to-double v5, v1

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    mul-double/2addr v3, v5

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sub-double/2addr v3, v0

    double-to-int v0, v3

    :catchall_0
    :cond_2
    return v0
.end method

.method public C()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->B()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 10
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 8

    .line 13
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/sigmob/sdk/base/views/s;->a:Lcom/sigmob/sdk/base/views/s;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/s;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const p1, 0x36ee80

    int-to-float v3, p1

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const p1, 0x7a1200

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .line 15
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/a;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/f;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoAd/f;->a(Lcom/sigmob/sdk/videoAd/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    :try_start_0
    const-string v0, "video_finished"

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "current_position"

    iget v1, p0, Lcom/sigmob/sdk/videoAd/j;->U:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "companionAd_visable"

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/videoAd/p;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoAd/p;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 27
    const-string p1, "url"

    invoke-static {p1, p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v0, 0x0

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/sigmob/sdk/videoAd/j;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 28
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aw:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aw:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->F()V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoErrorReward()Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->c(Z)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoAd/a;->m()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->b(Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->x()V

    :cond_3
    iget-boolean p2, p0, Lcom/sigmob/sdk/videoAd/j;->D:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->T()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide p1

    long-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/j;->a(I)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->i()V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->V()V

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->V:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    if-nez p1, :cond_6

    :goto_2
    return-void

    :cond_6
    const-string p2, "show"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 8
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 10
    const-string v0, "start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action.interstitial.show"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    const-string v0, "action.rewardedvideo.play"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->ad:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->ad:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int p1, v0

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->C:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoAd/x;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoAd/x;-><init>(Lcom/sigmob/sdk/videoAd/j;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    const-string v1, "reward"

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->a()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sigmob/sdk/videoAd/a;->c(Landroid/content/Context;IILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public e()V
    .locals 5

    .line 2
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/b;->e()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getInsetBottom()I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/videoAd/j;->t:I

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    const/4 v2, 0x4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/j;->ag:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/sigmob/sdk/videoAd/j;->e(Landroid/content/Context;I)V

    :cond_0
    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/sigmob/sdk/videoAd/j;->g(Landroid/content/Context;I)V

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->show_delay_secs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/j;->G:I

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->j(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/videoAd/j;->i(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v3, "start"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v3, "play_quarter"

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v3, "play_two_quarters"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sigmob/sdk/videoAd/d;

    const-string v3, "play_three_quarters"

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/i;->a(Ljava/util/List;)V

    const-string v0, "action.interstitial.vopen"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BaseVideoConfig does not have a video disk path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->V()V

    :goto_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/videoAd/j;->f(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->H()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    if-eqz v0, :cond_0

    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->b()V

    :cond_1
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->O()V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->Y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->N()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sigmob/sdk/base/views/o;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sigmob/sdk/base/views/o;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aq:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ap:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->a()V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 3

    .line 2
    :try_start_0
    const-string v0, "VideoViewController onDestroy() called"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/common/h$a;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->aa:Z

    if-nez v0, :cond_0

    const-string v0, "action.interstitial.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ax:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->d()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ax:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/sigmob/sdk/videocache/d;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->an:Lcom/sigmob/sdk/base/views/w;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->am:Lcom/sigmob/sdk/base/views/w;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ViewUtil;->removeFromParent(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/b;->a(Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ar:Lcom/sigmob/sdk/nativead/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/b;->b()V

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/i;->k()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ae:Lcom/czhj/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/czhj/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ae:Lcom/czhj/volley/toolbox/ImageLoader$ImageContainer;

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->N:Lcom/sigmob/sdk/base/common/v;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/v;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->N:Lcom/sigmob/sdk/base/common/v;

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->O:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_7
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->Q:Lcom/sigmob/sdk/base/views/ar;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->R:Lcom/sigmob/sdk/base/views/w;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ab:Lcom/sigmob/sdk/base/views/ar;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->r()V

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    if-eqz v0, :cond_c

    instance-of v2, v0, Lcom/sigmob/sdk/base/views/o;

    if-eqz v2, :cond_c

    check-cast v0, Lcom/sigmob/sdk/base/views/o;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/o;->setWebViewClickListener(Lcom/sigmob/sdk/base/views/o$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    check-cast v0, Lcom/sigmob/sdk/base/views/o;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/o;->setLogoClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    check-cast v0, Lcom/sigmob/sdk/base/views/o;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/o;->destroy()V

    :cond_c
    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->U()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->c()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->ao:Lcom/sigmob/sdk/base/common/am$a;

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->destroy()V

    :cond_e
    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->P:Lcom/sigmob/sdk/base/views/as;

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public j()Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 0

    .line 2
    return-void
.end method

.method public onAdClick(ZLcom/sigmob/sdk/base/a;)V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->az:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/j;->W()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p1

    sget-object v1, Lcom/sigmob/sdk/videoAd/j$7;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    sget-object v1, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x0

    const-string v2, "click"

    invoke-static/range {v1 .. v9}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int p2, v0

    const-string v0, "click"

    :goto_0
    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int p2, v0

    const-string v0, "ad_motion_click"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sigmob/sdk/base/a;->c:Lcom/sigmob/sdk/base/a;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x0

    const-string v2, "click"

    invoke-static/range {v1 .. v9}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int p2, v0

    const-string v0, "full_video_click"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sigmob/sdk/base/a;->a:Lcom/sigmob/sdk/base/a;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->isDeeplink:Ljava/lang/String;

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x0

    const-string v2, "click"

    invoke-static/range {v1 .. v9}, Lcom/sigmob/sdk/base/common/ad;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p2}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int p2, v0

    const-string v0, "companion_click"

    goto :goto_0
.end method

.method public q()V
    .locals 4

    .line 3
    new-instance v0, Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/4 v3, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/sigmob/sdk/videoAd/j;->p:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/views/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInvisibleAdLabel()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    invoke-static {}, Lcom/sigmob/sdk/base/k;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->q:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public r()Lcom/sigmob/sdk/base/common/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->N:Lcom/sigmob/sdk/base/common/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/base/common/v;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/v;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->N:Lcom/sigmob/sdk/base/common/v;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->a()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/v;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->N:Lcom/sigmob/sdk/base/common/v;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->F:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 7

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSkipSeconds()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    if-le v3, v4, :cond_1

    long-to-float v1, v1

    div-float/2addr v1, v6

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSkipSeconds()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    return v0

    :cond_0
    return v5

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSkipPercent()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const v4, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v4

    long-to-float v1, v1

    div-float/2addr v1, v6

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2

    return v0

    :cond_2
    return v5

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public u()Z
    .locals 7

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v3

    long-to-int v1, v3

    int-to-long v3, v1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getChargeSeconds()I

    move-result v1

    const/4 v5, -0x1

    if-le v1, v5, :cond_1

    long-to-float v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    const v3, 0x3e99999a    # 0.3f

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getChargeSeconds()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    return v0

    :cond_0
    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    if-lez v1, :cond_2

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    int-to-long v5, v1

    div-long/2addr v3, v5

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getChargePercent()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    return v0

    :cond_2
    return v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public v()Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    long-to-int v0, v2

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget v0, p0, Lcom/sigmob/sdk/videoAd/j;->G:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "showAble CompanionAds"

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    return v0

    :goto_1
    const-string v2, "shouldBeShowCompanionAds"

    invoke-static {v2, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->af:Lcom/sigmob/sdk/base/views/m;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/m;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->H:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public x()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->av:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->av:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    const-string v1, "_PLAYLASTFRAME_"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/videoAd/j;->W:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "complete"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public y()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->K:Lcom/sigmob/sdk/videoplayer/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/sigmob/sdk/videoAd/j;->X:I

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/a;->b(I)I

    move-result v0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoAd/a;->b(I)I

    move-result v0

    return v0
.end method

.method public z()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isEndCardIndexExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->L:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/a;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/videoAd/f;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->I:Lcom/sigmob/sdk/videoAd/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/f;->a(Lcom/sigmob/sdk/videoAd/a;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/videoAd/j;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/f;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->M:Landroid/view/View;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/f;->a(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sigmob/sdk/videoAd/j;->h(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/videoAd/j;->S:Lcom/sigmob/sdk/videoAd/f;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action.rewardedvideo.playFail"

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->d:Lcom/sigmob/sdk/base/common/k;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    :cond_1
    :goto_0
    return-void
.end method
