.class public abstract Lcom/octopus/ad/internal/e/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;
.implements Lcom/octopus/ad/internal/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/e/a$a;,
        Lcom/octopus/ad/internal/e/a$b;,
        Lcom/octopus/ad/internal/e/a$c;
    }
.end annotation


# instance fields
.field private A:Lcom/octopus/ad/FullScreenVideoAdListener;

.field private B:Lcom/octopus/ad/RewardVideoAdListener;

.field private C:Lcom/octopus/ad/a/a;

.field private final D:Landroid/os/Handler;

.field private E:Lcom/octopus/ad/internal/e/a$b;

.field private F:Lcom/octopus/ad/internal/d/b;

.field private G:Lcom/octopus/ad/internal/d/h;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Landroidx/appcompat/widget/AppCompatTextView;

.field private N:Landroidx/appcompat/widget/AppCompatTextView;

.field private O:Landroid/widget/ImageView;

.field private P:Lcom/octopus/ad/b/a;

.field private Q:Lcom/octopus/ad/b/a;

.field private R:Lcom/octopus/ad/b/a;

.field private S:Landroidx/appcompat/widget/AppCompatImageView;

.field private T:Landroidx/appcompat/widget/AppCompatTextView;

.field private U:Landroid/widget/ProgressBar;

.field private V:Landroid/widget/FrameLayout;

.field private W:Landroid/widget/FrameLayout;

.field protected a:Lcom/octopus/ad/internal/e/a$a;

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Landroid/view/ViewGroup;

.field private final aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Ljava/lang/String;

.field private aJ:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aK:Z

.field private aL:Z

.field private aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:F

.field private aQ:F

.field private aR:I

.field private aS:Lcom/octopus/ad/d/l;

.field private aT:Lcom/octopus/ad/d/k;

.field private aU:Lcom/octopus/ad/d/j;

.field private aV:Lcom/octopus/ad/OnSensorListener;

.field private aW:Lcom/octopus/ad/listener/OnCpaListener;

.field private aX:Lcom/octopus/ad/internal/video/VideoStateListener;

.field private aY:Lcom/octopus/ad/internal/k$a;

.field private aZ:Lcom/octopus/ad/internal/k$a;

.field private aa:Landroid/widget/LinearLayout;

.field private ab:I

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:J

.field private aj:J

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Ljava/lang/Boolean;

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:I

.field private ay:Lcom/octopus/ad/d;

.field private az:Lcom/octopus/ad/internal/e/b;

.field protected b:Lcom/octopus/ad/internal/e/c;

.field private ba:Landroid/widget/TextView;

.field private bb:Landroid/widget/TextView;

.field private bc:Landroid/widget/ImageView;

.field private bd:Landroid/widget/TextView;

.field private be:Landroid/widget/RelativeLayout;

.field private bf:Ljava/lang/String;

.field private bg:Z

.field private bh:Z

.field private bi:Lcom/octopus/ad/internal/k$a;

.field private final bj:Lcom/octopus/ad/internal/e/a$c;

.field private bk:Z

.field protected c:Lcom/octopus/ad/internal/d;

.field protected d:Lcom/octopus/ad/internal/b/a$a;

.field public e:Lcom/octopus/ad/internal/c;

.field protected f:Lcom/octopus/ad/internal/p;

.field protected g:Z

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Landroid/content/Context;

.field private t:Landroid/view/ViewGroup;

.field private u:Lcom/octopus/ad/internal/b/f;

.field private v:I

.field private w:I

.field private x:F

.field private y:Lcom/octopus/ad/SplashAdListener;

.field private z:Lcom/octopus/ad/InterstitialAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v2, Lcom/octopus/ad/internal/e/a$a;

    invoke-direct {v2}, Lcom/octopus/ad/internal/e/a$a;-><init>()V

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 33
    new-instance v2, Lcom/octopus/ad/internal/e/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/octopus/ad/internal/e/a$1;-><init>(Lcom/octopus/ad/internal/e/a;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->D:Landroid/os/Handler;

    .line 34
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 35
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->d:Lcom/octopus/ad/internal/b/a$a;

    .line 36
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->H:Z

    .line 37
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->K:Z

    .line 38
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->g:Z

    .line 39
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    .line 40
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->ag:I

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->ak:Z

    .line 42
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->al:Z

    .line 43
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    .line 44
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aB:Z

    .line 45
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aC:Z

    .line 46
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->n:Z

    .line 47
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->o:Z

    .line 48
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->p:Z

    .line 49
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->q:Z

    .line 50
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->r:Z

    .line 51
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    .line 52
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aK:Z

    .line 53
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aL:Z

    .line 54
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aM:Z

    .line 55
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aN:Z

    const/4 v2, 0x2

    .line 56
    iput v2, p0, Lcom/octopus/ad/internal/e/a;->aR:I

    .line 57
    new-instance v2, Lcom/octopus/ad/internal/e/a$32;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/e/a$32;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->bj:Lcom/octopus/ad/internal/e/a$c;

    .line 58
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->bk:Z

    .line 59
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a;->t:Landroid/view/ViewGroup;

    .line 60
    iput-object p3, p0, Lcom/octopus/ad/internal/e/a;->aE:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/octopus/ad/internal/e/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v2, Lcom/octopus/ad/internal/e/a$a;

    invoke-direct {v2}, Lcom/octopus/ad/internal/e/a$a;-><init>()V

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 3
    new-instance v2, Lcom/octopus/ad/internal/e/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/octopus/ad/internal/e/a$1;-><init>(Lcom/octopus/ad/internal/e/a;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->D:Landroid/os/Handler;

    .line 4
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 5
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->d:Lcom/octopus/ad/internal/b/a$a;

    .line 6
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->H:Z

    .line 7
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->K:Z

    .line 8
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->g:Z

    .line 9
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    .line 10
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->ag:I

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->ak:Z

    .line 12
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->al:Z

    .line 13
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    .line 14
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aB:Z

    .line 15
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aC:Z

    .line 16
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->n:Z

    .line 17
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->o:Z

    .line 18
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->p:Z

    .line 19
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->q:Z

    .line 20
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->r:Z

    .line 21
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    .line 22
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aK:Z

    .line 23
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aL:Z

    .line 24
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aM:Z

    .line 25
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aN:Z

    const/4 v2, 0x2

    .line 26
    iput v2, p0, Lcom/octopus/ad/internal/e/a;->aR:I

    .line 27
    new-instance v2, Lcom/octopus/ad/internal/e/a$32;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/e/a$32;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->bj:Lcom/octopus/ad/internal/e/a$c;

    .line 28
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->bk:Z

    .line 29
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a;->aE:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/octopus/ad/internal/e/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic A(Lcom/octopus/ad/internal/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/e/a;->ag:I

    return p0
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->q:Z

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->G()V

    .line 4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->a()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->d()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->b(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/octopus/ad/AdActivity;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method private B()V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aM:Z

    .line 4
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/utils/OctUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getExposeTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/octopus/ad/internal/q;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static synthetic B(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->ak:Z

    return p0
.end method

.method private C()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aN:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aN:Z

    .line 4
    invoke-static {}, Lcom/octopus/ad/utils/OctUtil;->a()Lcom/octopus/ad/utils/OctUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/utils/OctUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static synthetic C(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->H()V

    return-void
.end method

.method public static synthetic D(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    return-object p0
.end method

.method private D()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->j()Lcom/octopus/ad/a/c$l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->ag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/q;->a(I)V

    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget-object v1, v1, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/a/a;

    iput-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/octopus/ad/a/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v1}, Lcom/octopus/ad/a/a;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getPrice()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    :cond_1
    new-instance v1, Lcom/octopus/ad/a/a;

    invoke-direct {v1}, Lcom/octopus/ad/a/a;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    .line 10
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getPrice()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->a(I)V

    .line 11
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-wide v2, p0, Lcom/octopus/ad/internal/e/a;->ai:J

    invoke-virtual {v1, v2, v3}, Lcom/octopus/ad/a/a;->a(J)V

    .line 12
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-wide v2, p0, Lcom/octopus/ad/internal/e/a;->aj:J

    invoke-virtual {v1, v2, v3}, Lcom/octopus/ad/a/a;->b(J)V

    .line 13
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->a(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->b(I)V

    .line 15
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->b(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->c(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->V()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->a(Z)V

    .line 18
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->e(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->d(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/a/c$b;->v()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->a(Ljava/util/List;)V

    .line 22
    :cond_2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget-object v1, v1, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static synthetic E(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    return-object p0
.end method

.method private E()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/d;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aF:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "m3u8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    return-void

    .line 8
    :cond_3
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->b()Lcom/octopus/ad/internal/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->G:Lcom/octopus/ad/internal/d/h;

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    return-void

    .line 10
    :cond_4
    iget-object v3, p0, Lcom/octopus/ad/internal/e/a;->aF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/octopus/ad/internal/d/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_6

    .line 13
    new-instance v0, Lcom/octopus/ad/internal/e/a$17;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/a$17;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->F:Lcom/octopus/ad/internal/d/b;

    .line 14
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->G:Lcom/octopus/ad/internal/d/h;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->aF:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/octopus/ad/internal/d/h;->a(Lcom/octopus/ad/internal/d/b;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aF:Ljava/lang/String;

    new-instance v1, Lcom/octopus/ad/internal/e/a$18;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$18;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V

    return-void

    .line 16
    :cond_6
    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/e/a;->b(Z)V

    return-void
.end method

.method private F()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->G:Lcom/octopus/ad/internal/d/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->F:Lcom/octopus/ad/internal/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->G:Lcom/octopus/ad/internal/d/h;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->F:Lcom/octopus/ad/internal/d/b;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->aF:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/d/h;->b(Lcom/octopus/ad/internal/d/b;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic F(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->v()V

    return-void
.end method

.method private G()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->Q:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aa:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic G(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->u()V

    return-void
.end method

.method private H()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ak:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ab()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/octopus/ad/internal/activity/StopoverDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v3, "mapData"

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    const-string v0, "bundleData"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    new-instance v0, Lcom/octopus/ad/internal/e/a$30;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/a$30;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aY:Lcom/octopus/ad/internal/k$a;

    .line 12
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aY:Lcom/octopus/ad/internal/k$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k$a;)V

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ak:Z

    :cond_1
    return-void
.end method

.method public static synthetic H(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->aq:Z

    return p0
.end method

.method private I()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/d/l;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aU:Lcom/octopus/ad/d/j;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/d/j;->a()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aT:Lcom/octopus/ad/d/k;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/octopus/ad/d/k;->b()V

    :cond_2
    return-void
.end method

.method public static synthetic I(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->E()V

    return-void
.end method

.method public static synthetic J(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/e/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->bj:Lcom/octopus/ad/internal/e/a$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic K(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/SplashAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic M(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/InterstitialAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic N(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/FullScreenVideoAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic O(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/RewardVideoAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic P(Lcom/octopus/ad/internal/e/a;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->as:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Q(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->at:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic R(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->am:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic S(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic T(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/listener/OnCpaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->aW:Lcom/octopus/ad/listener/OnCpaListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic U(Lcom/octopus/ad/internal/e/a;)Landroid/util/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic V(Lcom/octopus/ad/internal/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/e/a;->aR:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic W(Lcom/octopus/ad/internal/e/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/a;->aR:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->aR:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic X(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/OnSensorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->aV:Lcom/octopus/ad/OnSensorListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Y(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Z(Lcom/octopus/ad/internal/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/internal/k$a;)Lcom/octopus/ad/internal/k$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aY:Lcom/octopus/ad/internal/k$a;

    return-object p1
.end method

.method private a(Landroid/view/MotionEvent;ZLcom/octopus/ad/a/d;)V
    .locals 6

    .line 233
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/e/a;->aP:F

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/e/a;->aQ:F

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/octopus/ad/a/d;->a(I)V

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/octopus/ad/a/d;->b(I)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/octopus/ad/a/d;->a(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/octopus/ad/a/d;->d(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/octopus/ad/a/d;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 241
    iget-boolean p2, p0, Lcom/octopus/ad/internal/e/a;->K:Z

    if-nez p2, :cond_4

    const/16 p2, 0x96

    .line 242
    invoke-static {p2}, Lcom/octopus/ad/d/i;->a(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x32

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Lcom/octopus/ad/a/d;->c(I)V

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Lcom/octopus/ad/a/d;->d(I)V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long p1, p2

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/octopus/ad/a/d;->e(I)V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/octopus/ad/a/d;->f(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 249
    :cond_0
    :goto_0
    invoke-virtual {p0, p3}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/a/d;)V

    .line 250
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->K:Z

    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v0, p0, Lcom/octopus/ad/internal/e/a;->aP:F

    sub-float/2addr p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p2, p2, v0

    if-gtz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->aQ:F

    sub-float/2addr p2, v1

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Lcom/octopus/ad/a/d;->c(I)V

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Lcom/octopus/ad/a/d;->d(I)V

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/octopus/ad/a/d;->e(I)V

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/octopus/ad/a/d;->f(I)V

    .line 259
    :cond_3
    invoke-virtual {p0, p3}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/a/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    .line 260
    :goto_2
    const-string p2, "OctopusAd"

    const-string p3, "An Exception Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lcom/octopus/ad/a/c$v;)V
    .locals 8

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 218
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/a/c$v;)V

    .line 220
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    invoke-virtual {v0, v2}, Lcom/octopus/ad/d/l;->a(Landroid/view/View;)V

    .line 221
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    move-object v3, v2

    invoke-virtual/range {v1 .. v7}, Lcom/octopus/ad/d/l;->a(Landroid/view/View;Landroid/view/View;FLjava/lang/String;Lcom/octopus/ad/internal/p;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->b()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x7

    .line 223
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 224
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    new-instance v4, Lcom/octopus/ad/internal/e/a$21;

    invoke-direct {v4, p0}, Lcom/octopus/ad/internal/e/a$21;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v1, v4}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l$a;)V

    .line 225
    new-instance v1, Lcom/octopus/ad/a/d;

    invoke-direct {v1, v3}, Lcom/octopus/ad/a/d;-><init>(I)V

    .line 226
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->i()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 227
    new-instance v4, Lcom/octopus/ad/internal/e/a$22;

    invoke-direct {v4, p0, v1}, Lcom/octopus/ad/internal/e/a$22;-><init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/a/d;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :goto_1
    instance-of v1, v2, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    check-cast v2, Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 230
    :goto_2
    instance-of v1, v2, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->g()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 231
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    return-void

    .line 232
    :goto_4
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lcom/octopus/ad/internal/b/f;Lcom/octopus/ad/internal/e/a$c;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/f;->L()Lcom/octopus/ad/a/c$x;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/octopus/ad/a/c$x;->a()Lcom/octopus/ad/a/c$g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/octopus/ad/a/c$g;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v0, Lcom/octopus/ad/internal/e/a$23;

    invoke-direct {v0, p1}, Lcom/octopus/ad/internal/e/a$23;-><init>(Lcom/octopus/ad/internal/e/a$c;)V

    .line 61
    invoke-virtual {p0}, Lcom/octopus/ad/a/c$g;->b()I

    move-result p0

    int-to-long p0, p0

    .line 62
    invoke-static {v0, p0, p1}, Lcom/octopus/ad/d/e;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a;Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/e/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a;Landroid/view/MotionEvent;ZLcom/octopus/ad/a/d;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/e/a;->a(Landroid/view/MotionEvent;ZLcom/octopus/ad/a/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aT:Lcom/octopus/ad/d/k;

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Lcom/octopus/ad/d/k;->a()V

    .line 263
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aT:Lcom/octopus/ad/d/k;

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v2

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v3

    .line 267
    invoke-virtual {v1, v2, v3, p1}, Lcom/octopus/ad/d/k;->a(IILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 268
    const-string v1, "up"

    new-instance v2, Lcom/octopus/ad/internal/e/a$25;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/e/a$25;-><init>(Lcom/octopus/ad/internal/e/a;)V

    const/16 v3, 0x64

    invoke-direct {p0, v1, v3, v2}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;ILcom/octopus/ad/d/k$a;)V

    .line 269
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 270
    :goto_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 271
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 272
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/octopus/ad/d/k$a;)V
    .locals 7

    if-eqz p3, :cond_0

    .line 273
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aT:Lcom/octopus/ad/d/k;

    invoke-virtual {v0, p3}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k$a;)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p2, p2

    invoke-static {v0, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 275
    new-instance v3, Lcom/octopus/ad/a/d;

    const/4 p2, 0x3

    invoke-direct {v3, p2}, Lcom/octopus/ad/a/d;-><init>(I)V

    .line 276
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/a/d;->e(I)V

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/octopus/ad/a/d;->f(I)V

    .line 279
    new-instance v1, Lcom/octopus/ad/internal/e/a$29;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/octopus/ad/internal/e/a$29;-><init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/a/d;ILjava/lang/String;Lcom/octopus/ad/d/k$a;)V

    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/e/a;->setScrollClick(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V
    .locals 1

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/e/a$19;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/e/a$19;-><init>(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnThreadPool(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/octopus/ad/internal/b/f;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/f;->L()Lcom/octopus/ad/a/c$x;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/octopus/ad/a/c$x;->a()Lcom/octopus/ad/a/c$g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/octopus/ad/a/c$g;->c()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->an:Z

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->L:Z

    return p1
.end method

.method public static synthetic aa(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ab(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/k$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->aY:Lcom/octopus/ad/internal/k$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/e/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    .line 6
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/octopus/ad/R$style;->OctopusAlertDialogStyle:I

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/octopus/ad/R$layout;->oct_dialog_close_confirm:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9
    sget v1, Lcom/octopus/ad/R$id;->tv_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    sget v2, Lcom/octopus/ad/R$id;->tv_quit:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11
    sget v3, Lcom/octopus/ad/R$id;->tv_wait:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 12
    iget-boolean v3, p0, Lcom/octopus/ad/internal/e/a;->au:Z

    if-eqz v3, :cond_0

    .line 13
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\u4f53\u9a8c%d\u79d2\u5c31\u80fd\u9886\u5956~\n\u786e\u5b9a\u8981\u9000\u51fa\u5417\uff1f"

    iget v5, p0, Lcom/octopus/ad/internal/e/a;->af:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 14
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\u89c2\u770b\u6ee1%d\u79d2\u5373\u53ef\u83b7\u5f97\u5956\u52b1\n\u786e\u8ba4\u79bb\u5f00\u5417\uff1f"

    iget v5, p0, Lcom/octopus/ad/internal/e/a;->af:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/octopus/ad/internal/e/a$14;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/e/a$14;-><init>(Lcom/octopus/ad/internal/e/a;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance v1, Lcom/octopus/ad/internal/e/a$15;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/e/a$15;-><init>(Lcom/octopus/ad/internal/e/a;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/octopus/ad/d;->m()V

    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->b()V

    .line 23
    :cond_2
    :goto_1
    new-instance p1, Lcom/octopus/ad/internal/e/a$16;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/e/a$16;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :goto_2
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aU:Lcom/octopus/ad/d/j;

    if-eqz v0, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aU:Lcom/octopus/ad/d/j;

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v2

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x1

    .line 50
    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/octopus/ad/d/j;->a(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 51
    new-instance v1, Lcom/octopus/ad/a/d;

    invoke-direct {v1, v4}, Lcom/octopus/ad/a/d;-><init>(I)V

    .line 52
    new-instance v2, Lcom/octopus/ad/internal/e/a$26;

    invoke-direct {v2, p0, v1}, Lcom/octopus/ad/internal/e/a$26;-><init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/a/d;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 54
    :goto_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 55
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 56
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->ao:Z

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->bg:Z

    return p1
.end method

.method private c(I)V
    .locals 10

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 21
    :cond_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/octopus/ad/R$layout;->oct_countdown_click:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 23
    sget v2, Lcom/octopus/ad/R$id;->rl_auto:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->aa:Landroid/widget/LinearLayout;

    .line 24
    sget v2, Lcom/octopus/ad/R$id;->tv_auto:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 25
    sget v3, Lcom/octopus/ad/R$id;->tv_stop:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 26
    iget-object v4, p0, Lcom/octopus/ad/internal/e/a;->aa:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 27
    new-instance v4, Lcom/octopus/ad/b/a;

    int-to-long v6, p1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x32

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object v4, p0, Lcom/octopus/ad/internal/e/a;->Q:Lcom/octopus/ad/b/a;

    .line 28
    new-instance p1, Lcom/octopus/ad/internal/e/a$27;

    invoke-direct {p1, p0, v2}, Lcom/octopus/ad/internal/e/a$27;-><init>(Lcom/octopus/ad/internal/e/a;Landroid/widget/TextView;)V

    invoke-virtual {v4, p1}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 29
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->Q:Lcom/octopus/ad/b/a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->a()V

    .line 30
    new-instance p1, Lcom/octopus/ad/internal/e/a$28;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/e/a$28;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sget p1, Lcom/octopus/ad/R$id;->rl_auto:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 32
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    .line 33
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x50

    const/4 v6, -0x1

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 34
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v3, 0x1

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 35
    invoke-virtual {v2, v5, v5, v5, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    instance-of p1, v0, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    .line 37
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 38
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->ap:Z

    return p0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->bh:Z

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->w()V

    return-void
.end method

.method private d(Z)V
    .locals 8

    .line 15
    new-instance v0, Lcom/octopus/ad/internal/l;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getExposeTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v7, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    const-string v1, "REWARD"

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 17
    invoke-static {v0}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    return-void
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->av:Z

    return p1
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->y()V

    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "octopus clickable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 42
    new-instance p1, Lcom/octopus/ad/internal/e/a$24;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/e/a$24;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/e/a;->a(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->ar:Z

    return p1
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->L:Z

    return p0
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->an:Z

    return p1
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/k$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->bi:Lcom/octopus/ad/internal/k$a;

    return-object p0
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/e/a;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/e/a;->d(Z)V

    return-void
.end method

.method private getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->c:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method private getRandomClickPosition()Lcom/octopus/ad/a/d;
    .locals 10

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aq:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ar:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    move v0, v1

    .line 30
    :goto_0
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    :cond_4
    :goto_2
    invoke-static {v1}, Lcom/octopus/ad/d/i;->a(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v0}, Lcom/octopus/ad/d/i;->a(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/16 v4, 0x96

    .line 76
    .line 77
    invoke-static {v4}, Lcom/octopus/ad/d/i;->a(I)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    add-int/lit8 v4, v4, 0x32

    .line 82
    .line 83
    new-instance v5, Lcom/octopus/ad/a/d;

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    invoke-direct {v5, v6}, Lcom/octopus/ad/a/d;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v2}, Lcom/octopus/ad/a/d;->a(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v3}, Lcom/octopus/ad/a/d;->b(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/d;->a(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/d;->d(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    const-wide/16 v8, 0x3e8

    .line 122
    .line 123
    div-long/2addr v6, v8

    .line 124
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/d;->c(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v2}, Lcom/octopus/ad/a/d;->c(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v3}, Lcom/octopus/ad/a/d;->d(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    int-to-long v6, v4

    .line 142
    add-long/2addr v2, v6

    .line 143
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v5, v2}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v1}, Lcom/octopus/ad/a/d;->e(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v0}, Lcom/octopus/ad/a/d;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    return-object v5

    .line 157
    :goto_3
    const-string v1, "OctopusAd"

    .line 158
    .line 159
    const-string v2, "An Exception Caught"

    .line 160
    .line 161
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    return-object v0
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/e/a;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->aI:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/e/a;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->ap:Z

    return p1
.end method

.method public static synthetic i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    return-object p0
.end method

.method public static synthetic j(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->S:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static synthetic k(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->bh:Z

    return p0
.end method

.method public static synthetic l(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->A()V

    return-void
.end method

.method public static synthetic m(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/a/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getRandomClickPosition()Lcom/octopus/ad/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/octopus/ad/internal/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/e/a;->af:I

    return p0
.end method

.method public static synthetic o(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->ba:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic p(Lcom/octopus/ad/internal/e/a;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method public static synthetic q(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->bb:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic r(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->bc:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic s(Lcom/octopus/ad/internal/e/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->be:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic t(Lcom/octopus/ad/internal/e/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->bd:Landroid/widget/TextView;

    return-object p0
.end method

.method private t()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->bj:Lcom/octopus/ad/internal/e/a$c;

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/b/f;Lcom/octopus/ad/internal/e/a$c;)V

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/octopus/ad/internal/e/a;->a(IIII)V

    .line 4
    iget v0, p0, Lcom/octopus/ad/internal/e/a;->ah:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->h()I

    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->a(I)V

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->t:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-void

    .line 10
    :goto_1
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private u()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aq:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->L()Lcom/octopus/ad/a/c$x;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$x;->c()Lcom/octopus/ad/a/c$q;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 6
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->aq:Z

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/f;->c(Z)V

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/e/a$33;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/e/a$33;-><init>(Lcom/octopus/ad/internal/e/a;)V

    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->c()I

    move-result v4

    int-to-long v4, v4

    .line 10
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->b()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->e()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 13
    new-instance v1, Lcom/octopus/ad/internal/e/a$34;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$34;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/e/a;->bi:Lcom/octopus/ad/internal/k$a;

    .line 14
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v1

    iget-object v3, p0, Lcom/octopus/ad/internal/e/a;->bi:Lcom/octopus/ad/internal/k$a;

    invoke-virtual {v1, v3}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k$a;)V

    .line 15
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/e/a$35;

    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/e/a$35;-><init>(Lcom/octopus/ad/internal/e/a;Z)V

    .line 16
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->d()I

    move-result v0

    int-to-long v4, v0

    .line 17
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic u(Lcom/octopus/ad/internal/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->x()V

    return-void
.end method

.method private v()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->L()Lcom/octopus/ad/a/c$x;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$x;->c()Lcom/octopus/ad/a/c$q;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 6
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/f;->d(Z)V

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/e/a$36;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/e/a$36;-><init>(Lcom/octopus/ad/internal/e/a;)V

    .line 8
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->c()I

    move-result v4

    int-to-long v4, v4

    .line 9
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->b()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->e()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 12
    new-instance v1, Lcom/octopus/ad/internal/e/a$37;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$37;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/e/a;->bi:Lcom/octopus/ad/internal/k$a;

    .line 13
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v1

    iget-object v3, p0, Lcom/octopus/ad/internal/e/a;->bi:Lcom/octopus/ad/internal/k$a;

    invoke-virtual {v1, v3}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k$a;)V

    .line 14
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/e/a$2;

    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/e/a$2;-><init>(Lcom/octopus/ad/internal/e/a;Z)V

    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->d()I

    move-result v0

    int-to-long v4, v0

    .line 16
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic v(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->av:Z

    return p0
.end method

.method public static synthetic w(Lcom/octopus/ad/internal/e/a;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    return-object p0
.end method

.method private w()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/b/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ap:Z

    .line 5
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ap:Z

    const/16 v0, 0x9

    .line 7
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getRandomClickPosition()Lcom/octopus/ad/a/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/e/b;->a(ILcom/octopus/ad/a/d;)V

    :cond_1
    return-void
.end method

.method private x()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->am:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ao:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/octopus/ad/d;->setOpt(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/e/b;->c(I)V

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getRandomClickPosition()Lcom/octopus/ad/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/a/d;)V

    return-void

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->A()V

    return-void
.end method

.method public static synthetic x(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->aK:Z

    return p0
.end method

.method public static synthetic y(Lcom/octopus/ad/internal/e/a;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private y()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/b/f;->a(ZLcom/octopus/ad/a;)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->R:Lcom/octopus/ad/b/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/octopus/ad/b/a;

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x320

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->R:Lcom/octopus/ad/b/a;

    .line 4
    new-instance v1, Lcom/octopus/ad/internal/e/a$6;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$6;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v0, v1}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->R:Lcom/octopus/ad/b/a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->a()V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->c()V

    return-void
.end method

.method public static synthetic z(Lcom/octopus/ad/internal/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/e/a;->au:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 95
    :goto_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public a(I)V
    .locals 4

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->d()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-gtz p1, :cond_1

    const/4 p1, 0x5

    .line 150
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    goto :goto_1

    .line 151
    :cond_1
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    .line 152
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/octopus/ad/internal/e/a;->af:I

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v2, p0, Lcom/octopus/ad/internal/e/a;->l:I

    iget v3, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {p1, v0, v1, v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCountDown(Landroid/content/Context;IIIF)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 153
    new-instance p1, Lcom/octopus/ad/b/a;

    iget v0, p0, Lcom/octopus/ad/internal/e/a;->af:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x32

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    .line 154
    new-instance v0, Lcom/octopus/ad/internal/e/a$9;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/a$9;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 155
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->a()V

    .line 156
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz p1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/b/a;)V

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/octopus/ad/internal/e/a$10;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/a$10;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_3

    .line 160
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 161
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 162
    :goto_2
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(III)V
    .locals 3

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->d()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->k:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createImageCloseButton(Landroid/content/Context;IF)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    .line 169
    new-instance v1, Lcom/octopus/ad/internal/e/a$11;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$11;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->au:Z

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u70b9\u51fb\u5e7f\u544a\u5e76\u6d4f\u89c8"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/octopus/ad/internal/e/a;->af:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\u79d2\u53ef\u9886\u5956"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v0, p0, Lcom/octopus/ad/internal/e/a;->x:F

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createFeedBackButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_4

    const/16 v0, 0x1e

    .line 173
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->l:I

    .line 174
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/octopus/ad/internal/e/a;->af:I

    iget v0, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->l:I

    iget v2, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {p1, p3, v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createCountDown(Landroid/content/Context;IIIF)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    if-lez p2, :cond_3

    .line 176
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    .line 178
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->ag:I

    .line 179
    :cond_3
    new-instance p1, Lcom/octopus/ad/b/a;

    iget p2, p0, Lcom/octopus/ad/internal/e/a;->af:I

    int-to-long p2, p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    const-wide/16 v0, 0x32

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    .line 180
    new-instance p2, Lcom/octopus/ad/internal/e/a$13;

    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/e/a$13;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {p1, p2}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 181
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->a()V

    .line 182
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    if-eqz p1, :cond_4

    .line 183
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/d;->setCountDownTimer(Lcom/octopus/ad/b/a;)V

    .line 184
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    .line 185
    :cond_5
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_6

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 186
    :goto_2
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_8

    .line 187
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    .line 188
    move-object p3, p1

    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    :cond_7
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p2, :cond_8

    .line 190
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    return-void

    .line 191
    :goto_4
    const-string p2, "OctopusAd"

    const-string p3, "An Exception Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->j:I

    .line 9
    iput p2, p0, Lcom/octopus/ad/internal/e/a;->k:I

    .line 10
    iput p3, p0, Lcom/octopus/ad/internal/e/a;->l:I

    .line 11
    iput p4, p0, Lcom/octopus/ad/internal/e/a;->m:I

    return-void
.end method

.method public a(IILandroid/view/View;)V
    .locals 4

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v2, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createImageCloseButton(Landroid/content/Context;IF)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    .line 132
    new-instance v1, Lcom/octopus/ad/internal/e/a$7;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$7;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 133
    iput p2, p0, Lcom/octopus/ad/internal/e/a;->af:I

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 134
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    .line 135
    :cond_2
    :goto_1
    iget p1, p0, Lcom/octopus/ad/internal/e/a;->af:I

    if-lez p1, :cond_3

    .line 136
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v0, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {p1, p2, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createInterstitialCountDown(Landroid/content/Context;IF)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    new-instance p1, Lcom/octopus/ad/b/a;

    iget p2, p0, Lcom/octopus/ad/internal/e/a;->af:I

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x32

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    .line 139
    new-instance p2, Lcom/octopus/ad/internal/e/a$8;

    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/e/a$8;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {p1, p2}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 140
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->P:Lcom/octopus/ad/b/a;

    invoke-virtual {p1}, Lcom/octopus/ad/b/a;->a()V

    .line 141
    :cond_3
    instance-of p1, p3, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    check-cast p3, Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    .line 142
    :goto_2
    instance-of p1, p3, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    .line 143
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->O:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 144
    move-object p2, p3

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_6

    .line 146
    check-cast p3, Landroid/widget/FrameLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    .line 147
    :goto_3
    const-string p2, "OctopusAd"

    const-string p3, "An Exception Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdViewImpl setup \u5f00\u59cb mRequestId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OctopusAd_Time"

    invoke-static {v0, p2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    new-instance v0, Lcom/octopus/ad/internal/e/a$b;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->D:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/octopus/ad/internal/e/a$b;-><init>(Lcom/octopus/ad/internal/e/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->E:Lcom/octopus/ad/internal/e/a$b;

    .line 15
    invoke-static {}, Lcom/octopus/ad/internal/c/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aG:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/octopus/ad/internal/d;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aG:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/octopus/ad/internal/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/c/f;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_0
    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    new-instance p1, Lcom/octopus/ad/internal/c;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/c;-><init>(Lcom/octopus/ad/internal/a;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 21
    new-instance p1, Lcom/octopus/ad/d/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/d/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aS:Lcom/octopus/ad/d/l;

    .line 22
    new-instance p1, Lcom/octopus/ad/d/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/d/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aT:Lcom/octopus/ad/d/k;

    .line 23
    new-instance p1, Lcom/octopus/ad/d/j;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/octopus/ad/d/j;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aU:Lcom/octopus/ad/d/j;

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 280
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 25
    const-string v0, "OctopusAd"

    :try_start_0
    iget-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->r:Z

    if-nez v1, :cond_2

    .line 26
    :cond_1
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->p:Z

    .line 27
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aD:Landroid/view/ViewGroup;

    return-void

    .line 28
    :cond_2
    iget-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aC:Z

    if-eqz v1, :cond_3

    return-void

    .line 29
    :cond_3
    iput-boolean v2, p0, Lcom/octopus/ad/internal/e/a;->aC:Z

    .line 30
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    if-eqz p1, :cond_4

    .line 31
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->t:Landroid/view/ViewGroup;

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz p1, :cond_5

    .line 33
    const-string p1, "enter Octopus ad show"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->b()V

    .line 35
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v1

    new-instance v2, Lcom/octopus/ad/internal/e/a$12;

    invoke-direct {v2, p0}, Lcom/octopus/ad/internal/e/a$12;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {p1, v1, v2}, Lcom/octopus/ad/internal/b/f;->a(ZLcom/octopus/ad/a;)V

    .line 36
    :cond_5
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->t()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 37
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An Exception Caught: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/a/d;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    if-eqz v0, :cond_0

    .line 67
    iget v1, p0, Lcom/octopus/ad/internal/e/a;->ax:I

    invoke-virtual {v0, v1, p1}, Lcom/octopus/ad/internal/e/b;->a(ILcom/octopus/ad/a/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/d;)V
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->U:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createLoadingView(Landroid/content/Context;F)Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->U:Landroid/widget/ProgressBar;

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 123
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->U:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 126
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/d;Z)V
    .locals 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->S:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v2, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {v0, p2, v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createMuteButton(Landroid/content/Context;ZIF)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/octopus/ad/internal/e/a;->S:Landroidx/appcompat/widget/AppCompatImageView;

    .line 115
    new-instance v0, Lcom/octopus/ad/internal/e/a$4;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/e/a$4;-><init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 117
    instance-of p2, p1, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_0

    .line 118
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/octopus/ad/internal/e/a;->S:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 119
    :goto_0
    const-string p2, "OctopusAd"

    const-string v0, "An Exception Caught"

    invoke-static {p2, v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/model/AdLogoInfo;I)V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p2, :cond_0

    int-to-float p2, p2

    const/high16 v1, 0x44200000    # 640.0f

    div-float/2addr p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    .line 105
    :goto_1
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 106
    new-instance p2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    invoke-static {p2, p1, v1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createLogoImageView(Landroid/content/Context;Lcom/octopus/ad/model/AdLogoInfo;IF)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 107
    :cond_2
    :goto_2
    new-instance p1, Lcom/octopus/ad/model/AdLogoInfo;

    invoke-direct {p1}, Lcom/octopus/ad/model/AdLogoInfo;-><init>()V

    .line 108
    sget p2, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_TEXT:I

    invoke-virtual {p1, p2}, Lcom/octopus/ad/model/AdLogoInfo;->setType(I)V

    .line 109
    const-string p2, "\u5e7f\u544a"

    invoke-virtual {p1, p2}, Lcom/octopus/ad/model/AdLogoInfo;->setAdurl(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 111
    new-instance p2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    const v2, 0x800005

    invoke-static {p2, p1, v1, v2, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createAdImageView(Landroid/content/Context;Lcom/octopus/ad/model/AdLogoInfo;IIF)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 112
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An Exception Caught: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OctopusAd"

    invoke-static {p2, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/model/AdLogoInfo;Lcom/octopus/ad/model/AdLogoInfo;I)V
    .locals 3

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p3, :cond_0

    int-to-float p3, p3

    const/high16 v1, 0x44200000    # 640.0f

    div-float/2addr p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    cmpl-float v1, p3, v0

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    .line 98
    :goto_1
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    .line 99
    new-instance p3, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    const v2, 0x800003

    invoke-static {p3, p1, v1, v2, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createAdImageView(Landroid/content/Context;Lcom/octopus/ad/model/AdLogoInfo;IIF)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 100
    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 101
    new-instance p1, Landroid/content/MutableContextWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2, v1, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createLogoImageView(Landroid/content/Context;Lcom/octopus/ad/model/AdLogoInfo;IF)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 102
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "An Exception Caught: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OctopusAd"

    invoke-static {p2, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/model/ComplianceInfo;F)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createComplianceView(Landroid/content/Context;Lcom/octopus/ad/model/ComplianceInfo;FZ)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->T:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/octopus/ad/internal/v;

    invoke-direct {v1, p1, p2}, Lcom/octopus/ad/internal/v;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewarded(Lcom/octopus/ad/RewardItem;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 5

    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 196
    :cond_0
    const-string v1, "REWARD_ITEM"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 198
    const-string v1, ""

    if-eqz p1, :cond_2

    .line 199
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v3, "callback_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    .line 201
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    const-string v4, "amount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    .line 204
    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getExtraData()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    return-void

    .line 212
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 213
    :catch_0
    sget-object v2, Lcom/octopus/ad/internal/c/f;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parse reward item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->I:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->I:Z

    .line 40
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->R()Z

    move-result p1

    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    .line 43
    :cond_0
    iget-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    if-eqz p1, :cond_4

    .line 44
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    if-eqz p1, :cond_1

    .line 45
    invoke-interface {p1}, Lcom/octopus/ad/SplashAdListener;->onAdShown()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz p1, :cond_2

    .line 47
    invoke-interface {p1}, Lcom/octopus/ad/InterstitialAdListener;->onAdShown()V

    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    if-eqz p1, :cond_3

    .line 49
    invoke-interface {p1}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdShown()V

    goto :goto_0

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz p1, :cond_4

    .line 51
    invoke-interface {p1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdShown()V

    .line 52
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz p1, :cond_5

    .line 53
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    iget-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    invoke-virtual {p1, v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/a/a;Z)V

    .line 54
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 55
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    iget-object p1, p1, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->C:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_6
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->B()V

    :cond_7
    return-void
.end method

.method public a()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->d:Lcom/octopus/ad/internal/b/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/octopus/ad/internal/b/a$a;)Z
    .locals 3

    .line 68
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->d:Lcom/octopus/ad/internal/b/a$a;

    .line 69
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 70
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    const v1, 0x13880

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1, v1}, Lcom/octopus/ad/SplashAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz p1, :cond_1

    .line 73
    invoke-interface {p1, v1}, Lcom/octopus/ad/InterstitialAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    if-eqz p1, :cond_2

    .line 75
    invoke-interface {p1, v1}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz p1, :cond_3

    .line 77
    invoke-interface {p1, v1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdFailedToLoad(I)V

    :cond_3
    :goto_0
    return v0

    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    .line 80
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->c()V

    .line 81
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->aE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/octopus/ad/internal/c;->a(Ljava/lang/String;)V

    .line 82
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->H:Z

    .line 83
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->h:I

    .line 84
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->i:I

    return v1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_6

    .line 86
    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->a()V

    .line 87
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/c;->c()V

    .line 88
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->aE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/octopus/ad/internal/c;->a(Ljava/lang/String;)V

    .line 89
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->H:Z

    .line 90
    iput v1, p0, Lcom/octopus/ad/internal/e/a;->h:I

    .line 91
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->i:I

    :cond_6
    return v0
.end method

.method public abstract a(Lcom/octopus/ad/internal/e/c;)Z
.end method

.method public b(Landroid/view/View;)Landroid/app/Activity;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/e/a;->a(Landroid/view/View;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->bk:Z

    if-nez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1}, Lcom/octopus/ad/SplashAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v0, p1}, Lcom/octopus/ad/InterstitialAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    if-eqz v0, :cond_2

    .line 31
    invoke-interface {v0, p1}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz v0, :cond_3

    .line 33
    invoke-interface {v0, p1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdFailedToLoad(I)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->bk:Z

    :cond_4
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->n:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->r()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->n:Z

    .line 37
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1}, Lcom/octopus/ad/SplashAdListener;->onAdCacheLoaded(Z)V

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {v0, p1}, Lcom/octopus/ad/InterstitialAdListener;->onAdCacheLoaded(Z)V

    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0, p1}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdCacheLoaded(Z)V

    return-void

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz v0, :cond_3

    .line 44
    invoke-interface {v0, p1}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoCached(Z)V

    :cond_3
    return-void
.end method

.method public b()Z
    .locals 2

    .line 4
    sget-object v0, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 8

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 6
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 7
    :goto_0
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    const/16 v1, 0x32

    const/16 v2, 0x1e

    const/16 v3, 0x2a

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x800053

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 10
    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 11
    move-object v6, p1

    check-cast v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x800055

    invoke-direct {v0, v4, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 15
    invoke-virtual {v0, v5, v5, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 16
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->W:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 18
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/e/a;->setOpensNativeBrowser(Z)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 3
    sget-object v0, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 5

    .line 4
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/OctopusAdSdkController;->isShowFeedBack()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 6
    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    const/16 v2, 0x1e

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->k:I

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    if-nez v0, :cond_2

    const/4 v2, 0x0

    :cond_2
    iput v2, p0, Lcom/octopus/ad/internal/e/a;->j:I

    .line 8
    const-string v0, "https://www.adintl.cn/sdkFeedback.html?slotId=${SLOT_ID}&sdkVersion=${SDK_VERSION}&deviceId=${DEVICE_ID}"

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/octopus/ad/Octopus;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aI:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53cd\u9988"

    iget v2, p0, Lcom/octopus/ad/internal/e/a;->j:I

    iget v3, p0, Lcom/octopus/ad/internal/e/a;->k:I

    iget v4, p0, Lcom/octopus/ad/internal/e/a;->x:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createFeedBackButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    new-instance v1, Lcom/octopus/ad/internal/e/a$3;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$3;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 12
    :goto_2
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 13
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 14
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 3
    sget-object v0, Lcom/octopus/ad/internal/p;->e:Lcom/octopus/ad/internal/p;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "called destroy() on AdView"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->G()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aY:Lcom/octopus/ad/internal/k$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aY:Lcom/octopus/ad/internal/k$a;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aZ:Lcom/octopus/ad/internal/k$a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aZ:Lcom/octopus/ad/internal/k$a;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->b(Lcom/octopus/ad/internal/k$a;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->al()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->b()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->k()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/octopus/ad/internal/e/a;->b:Lcom/octopus/ad/internal/e/c;

    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public e(Landroid/view/View;)V
    .locals 12

    const/16 v0, 0xa

    .line 4
    :try_start_0
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->af:I

    .line 5
    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->k:I

    .line 6
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    :goto_1
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_quick_reward:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    sget v3, Lcom/octopus/ad/R$id;->iv_app_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 11
    sget v4, Lcom/octopus/ad/R$id;->tv_ad_title:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 12
    sget v5, Lcom/octopus/ad/R$id;->tv_ad_description:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 13
    sget v6, Lcom/octopus/ad/R$id;->iv_click:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 14
    sget v7, Lcom/octopus/ad/R$id;->web_view:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    .line 15
    sget v8, Lcom/octopus/ad/R$id;->tv_tip_time:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/octopus/ad/internal/e/a;->ba:Landroid/widget/TextView;

    .line 16
    sget v8, Lcom/octopus/ad/R$id;->tv_button:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/octopus/ad/internal/e/a;->bb:Landroid/widget/TextView;

    .line 17
    sget v8, Lcom/octopus/ad/R$id;->iv_gift:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/octopus/ad/internal/e/a;->bc:Landroid/widget/ImageView;

    .line 18
    sget v8, Lcom/octopus/ad/R$id;->rl_tip_start:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/octopus/ad/internal/e/a;->be:Landroid/widget/RelativeLayout;

    .line 19
    sget v8, Lcom/octopus/ad/R$id;->tv_tip_end:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/octopus/ad/internal/e/a;->bd:Landroid/widget/TextView;

    .line 20
    iget-object v8, p0, Lcom/octopus/ad/internal/e/a;->ba:Landroid/widget/TextView;

    const-string v9, "%s\u79d2"

    iget v10, p0, Lcom/octopus/ad/internal/e/a;->af:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v8, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v8, :cond_2

    .line 22
    invoke-virtual {v8}, Lcom/octopus/ad/internal/b/f;->ab()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 23
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 24
    const-string v9, "landingPageUrl"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/octopus/ad/internal/e/a;->bf:Ljava/lang/String;

    .line 25
    const-string v9, "icon"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 26
    const-string v10, "title"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 27
    const-string v11, "description"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 29
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_2
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x12c

    .line 32
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 33
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x2

    .line 34
    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 35
    invoke-virtual {v6, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->bb:Landroid/widget/TextView;

    new-instance v3, Lcom/octopus/ad/internal/e/a$5;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/e/a$5;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v7, :cond_3

    .line 38
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->bf:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 39
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->bf:Ljava/lang/String;

    invoke-virtual {v7, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 40
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 3
    sget-object v0, Lcom/octopus/ad/internal/p;->d:Lcom/octopus/ad/internal/p;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)V
    .locals 4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->T:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 6
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 7
    :goto_0
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->p()I

    move-result v0

    .line 10
    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    int-to-float v0, v0

    .line 11
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget v1, v1, Lcom/octopus/ad/internal/q;->u:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 13
    :cond_2
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 14
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->T:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 15
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An Exception Caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OctopusAd"

    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aB:Z

    return v0
.end method

.method public g()Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/d;->g()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v0, v2

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/octopus/ad/internal/e/a;->ai:J

    goto :goto_0

    .line 6
    :goto_1
    iget-wide v2, p0, Lcom/octopus/ad/internal/e/a;->aj:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAdDispatcher()Lcom/octopus/ad/internal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->E:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdParameters()Lcom/octopus/ad/internal/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdRequest()Lcom/octopus/ad/internal/b/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->d:Lcom/octopus/ad/internal/b/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSize()Lcom/octopus/ad/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/octopus/ad/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/octopus/ad/internal/e/a;->v:I

    .line 4
    .line 5
    iget v2, p0, Lcom/octopus/ad/internal/e/a;->w:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/b;-><init>(II)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getExposeTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->i()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ad:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ab()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 11
    .line 12
    return-object v0
.end method

.method public getOpensNativeBrowser()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/e/a;->ab:I

    .line 2
    .line 3
    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aG:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public getShakeValue()Lcom/octopus/ad/model/ShakeValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->aa()Lcom/octopus/ad/model/ShakeValue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getSplashParent()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->t:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ac:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ae:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoStateListener()Lcom/octopus/ad/internal/video/VideoStateListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aX:Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 0

    .line 1
    return-void
.end method

.method public i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->U:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->H:Z

    return v0
.end method

.method public abstract k()Z
.end method

.method public l()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aB:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aB:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/e/a;->ai:J

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/octopus/ad/SplashAdListener;->onAdLoaded()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/octopus/ad/InterstitialAdListener;->onAdLoaded()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdLoaded()V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdLoaded()V

    .line 13
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->D()V

    :cond_4
    return-void
.end method

.method public m()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aO:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aO:Z

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->k()Lcom/octopus/ad/a/c$z;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$z;->a()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$z;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/e/a;->c(I)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->p:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->f:Lcom/octopus/ad/internal/p;

    sget-object v1, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aD:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->a(Landroid/view/ViewGroup;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/e/a;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->aL:Z

    .line 4
    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdComplete()V

    :cond_0
    return-void
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->e:Lcom/octopus/ad/internal/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->C()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->F()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->I()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->r()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 17
    .line 18
    if-eqz v0, :cond_8

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/octopus/ad/internal/e/a;->au:Z

    .line 21
    .line 22
    if-nez v1, :cond_8

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->K()Lcom/octopus/ad/a/c$p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_8

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->a()Lcom/octopus/ad/a/c$n;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$n;->a()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ne v1, v3, :cond_1

    .line 43
    .line 44
    move v2, v3

    .line 45
    :cond_1
    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/e/a;->e(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->b()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->d()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    :cond_3
    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/e/a;->e(Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->c()Lcom/octopus/ad/a/c$v;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$v;->a()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ne v2, v3, :cond_5

    .line 75
    .line 76
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/a/c$v;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->d()Lcom/octopus/ad/a/c$t;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$t;->a()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ne v2, v3, :cond_6

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$t;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->b()Lcom/octopus/ad/a/c$s;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$s;->a()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ne v1, v3, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$s;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/e/a;->b(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    .line 118
    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->m()V

    .line 122
    .line 123
    .line 124
    :cond_8
    :goto_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->bg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->z()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->bg:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->R:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 9
    .line 10
    sget-object v1, Lcom/octopus/ad/internal/e/a$a$a;->d:Lcom/octopus/ad/internal/e/a$a$a;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a$a;->a(Lcom/octopus/ad/internal/e/a$a$a;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a$a;->c()Lcom/octopus/ad/internal/e/a$a$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->a()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aA:Z

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->X()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void

    .line 46
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->ao:Z

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-interface {p0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    .line 55
    .line 56
    if-ne v0, v1, :cond_4

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->A()V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStopLifeCycle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 2
    .line 3
    sget-object v1, Lcom/octopus/ad/internal/e/a$a$a;->c:Lcom/octopus/ad/internal/e/a$a$a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a$a;->a(Lcom/octopus/ad/internal/e/a$a$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aK:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->aK:Z

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->M:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 5
    const-string v1, "\u606d\u559c\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->aJ:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;I)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->q()V

    :cond_2
    return-void
.end method

.method public q()V
    .locals 2

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/t;

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aH:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/t;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/octopus/ad/internal/e/a$20;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/e/a$20;-><init>(Lcom/octopus/ad/internal/e/a;)V

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/t;->a(Lcom/octopus/ad/internal/c/d$a;)Lcom/octopus/ad/internal/t;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/c/d;->b()V

    return-void
.end method

.method public abstract r()V
.end method

.method public s()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->au:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->av:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->al:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ab()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/octopus/ad/internal/activity/EndingPageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v3, "mapData"

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    const-string v0, "bundleData"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    new-instance v0, Lcom/octopus/ad/internal/e/a$31;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/e/a$31;-><init>(Lcom/octopus/ad/internal/e/a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/e/a;->aZ:Lcom/octopus/ad/internal/k$a;

    .line 12
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/e/a;->aZ:Lcom/octopus/ad/internal/k$a;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k$a;)V

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/internal/e/a;->al:Z

    :cond_1
    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/b/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->u()V

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->aq:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void

    .line 24
    :goto_1
    const-string p2, "OctopusAd"

    .line 25
    .line 26
    const-string p3, "A Throwable Caught"

    .line 27
    .line 28
    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public sendWinNotice(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/f;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void

    .line 12
    :goto_0
    const-string v0, "OctopusAd"

    .line 13
    .line 14
    const-string v1, "A Throwable Caught"

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdVideoView(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->ay:Lcom/octopus/ad/d;

    .line 2
    .line 3
    return-void
.end method

.method public setAdWebView(Lcom/octopus/ad/internal/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->az:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setClickBackClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->aA:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCountDownTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->ah:I

    .line 2
    .line 3
    return-void
.end method

.method public setCreativeHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public setCreativeWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->v:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget p1, p0, Lcom/octopus/ad/internal/e/a;->v:I

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 v1, 0x44200000    # 640.0f

    .line 17
    .line 18
    div-float/2addr p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, v0

    .line 21
    :goto_0
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->x:F

    .line 22
    .line 23
    cmpl-float p1, p1, v0

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->x:F

    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :cond_2
    iput v0, p0, Lcom/octopus/ad/internal/e/a;->x:F

    .line 31
    .line 32
    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->ad:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFullScreenVideoAdListener(Lcom/octopus/ad/FullScreenVideoAdListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->set_full_screen_video_ad_listener:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->A:Lcom/octopus/ad/FullScreenVideoAdListener;

    .line 13
    .line 14
    return-void
.end method

.method public setInterstitialAdListener(Lcom/octopus/ad/InterstitialAdListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->set_interstitial_ad_listener:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->z:Lcom/octopus/ad/InterstitialAdListener;

    .line 13
    .line 14
    return-void
.end method

.method public setIsBoost(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIsClicked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->ao:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIsS2SBoost(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnCpaListener(Lcom/octopus/ad/listener/OnCpaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aW:Lcom/octopus/ad/listener/OnCpaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSensorListener(Lcom/octopus/ad/OnSensorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aV:Lcom/octopus/ad/OnSensorListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOpensNativeBrowser(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->d(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/e/a;->ab:I

    .line 2
    .line 3
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a;->c:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/d;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setRewardVideoAdListener(Lcom/octopus/ad/RewardVideoAdListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->set_reward_video_ad_listener:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->B:Lcom/octopus/ad/RewardVideoAdListener;

    .line 13
    .line 14
    return-void
.end method

.method public setScrollClick(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/e/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setServerResponse(Lcom/octopus/ad/internal/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->Q()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->o:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->T()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->at:Z

    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->U()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->am:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->S()Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->as:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->C()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->av:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->W()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->aw:Z

    .line 50
    .line 51
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a;->u:Lcom/octopus/ad/internal/b/f;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->N()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/octopus/ad/internal/e/a;->d()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_0
    iput-boolean p1, p0, Lcom/octopus/ad/internal/e/a;->au:Z

    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public setSplashAdListener(Lcom/octopus/ad/SplashAdListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->c:Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/octopus/ad/R$string;->set_splash_ad_listener:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->y:Lcom/octopus/ad/SplashAdListener;

    .line 13
    .line 14
    return-void
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->ac:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->ae:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setValidTime(J)V
    .locals 0

    .line 1
    sput-wide p1, Lcom/octopus/ad/internal/q;->y:J

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/octopus/ad/internal/e/a;->aj:J

    .line 4
    .line 5
    return-void
.end method

.method public setVideoStateListener(Lcom/octopus/ad/internal/video/VideoStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a;->aX:Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 2
    .line 3
    return-void
.end method
