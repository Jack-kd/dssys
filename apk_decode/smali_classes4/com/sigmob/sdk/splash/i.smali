.class public final Lcom/sigmob/sdk/splash/i;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/splash/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "i"

.field private static b:F = 25.0f


# instance fields
.field private final c:Landroid/widget/RelativeLayout;

.field private d:Lcom/sigmob/sdk/splash/b;

.field private final e:Landroid/content/Context;

.field private f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private g:Lcom/sigmob/sdk/splash/a;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/view/View$OnTouchListener;

.field private volatile j:Z

.field private volatile k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/sigmob/sdk/base/views/ag;

.field private o:Lcom/sigmob/sdk/base/common/am$a;

.field private p:Lcom/sigmob/sdk/base/views/v;

.field private q:Z

.field private r:F

.field private s:Lcom/sigmob/sdk/splash/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i;->e:Landroid/content/Context;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/i;->c:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 5

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->c(Landroid/app/Activity;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->f(Landroid/app/Activity;)Z

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    mul-int/lit8 v1, p1, 0x3

    const/high16 v2, 0x42880000    # 68.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    new-instance v4, Lcom/sigmob/sdk/base/views/ag;

    invoke-direct {v4, v0}, Lcom/sigmob/sdk/base/views/ag;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    new-instance v3, Lcom/sigmob/sdk/splash/v;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/splash/v;-><init>(Lcom/sigmob/sdk/splash/i;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/splash/b;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sigmob/sdk/splash/i;->r:F

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/b;->setAspectRatio(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/i;->h:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/sigmob/sdk/splash/i;->b:F

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-double v1, v0

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sigmob/sdk/splash/u;

    invoke-direct {v1}, Lcom/sigmob/sdk/splash/u;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/sigmob/sdk/splash/i$4;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/splash/i$4;-><init>(Lcom/sigmob/sdk/splash/i;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/i;->q:Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "skip"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action.splash.skip"

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 8

    .line 6
    const-string v0, "handleUrlAction"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "adUnit is null"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/base/common/ao$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/ao$a;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/an;->a:Lcom/sigmob/sdk/base/common/an;

    sget-object v2, Lcom/sigmob/sdk/base/common/an;->f:Lcom/sigmob/sdk/base/common/an;

    sget-object v3, Lcom/sigmob/sdk/base/common/an;->e:Lcom/sigmob/sdk/base/common/an;

    sget-object v4, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/common/an;

    sget-object v5, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an;

    sget-object v6, Lcom/sigmob/sdk/base/common/an;->c:Lcom/sigmob/sdk/base/common/an;

    sget-object v7, Lcom/sigmob/sdk/base/common/an;->b:Lcom/sigmob/sdk/base/common/an;

    filled-new-array/range {v2 .. v7}, [Lcom/sigmob/sdk/base/common/an;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/ao$a;->a(Lcom/sigmob/sdk/base/common/an;[Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/i$5;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/splash/i$5;-><init>(Lcom/sigmob/sdk/splash/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/ao$a;->a(Lcom/sigmob/sdk/base/common/ao$b;)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isSkipSigmobBrowser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/ao$a;->a(Z)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/ao$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/ao$a;->b(Z)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/ao$a;->a()Lcom/sigmob/sdk/base/common/ao;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/ao;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/i;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/i;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/aq;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/base/views/aq;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/base/views/aq;->setDescription(Ljava/lang/String;)V

    const/high16 p1, 0x42a40000    # 82.0f

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 9
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/i;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/sigmob/sdk/splash/i;->m:Z

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/i;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/i;->l:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/common/am$a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    return-object p0
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/splash/i;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/splash/i;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/i;->j:Z

    return p1
.end method

.method public static synthetic c(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/splash/i;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/i;->k:Z

    return p1
.end method

.method public static synthetic d(Lcom/sigmob/sdk/splash/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->h()V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/splash/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->g()V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/splash/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/i;->g:Lcom/sigmob/sdk/splash/a;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 1
    const-string v0, "handleClick"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const-string v0, "adUnit is null"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/i;->j:Z

    invoke-static {}, Lcom/sigmob/sdk/b;->i()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/b;->a(Landroid/app/Activity;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/splash/i;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/splash/i;->j:Z

    return p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/splash/i;)Lcom/sigmob/sdk/base/views/v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/utils/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action.interstitial.click"

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42960000    # 75.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u4e92\u52a8\u5e7f\u544a"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "#ccffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private j()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ac;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/ac;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

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

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v2, Lcom/sigmob/sdk/splash/i$6;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/splash/i$6;-><init>(Lcom/sigmob/sdk/splash/i;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->d:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v2, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private k()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/am;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/am;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    const/high16 v1, 0x42b80000    # 92.0f

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

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v2, Lcom/sigmob/sdk/splash/i$7;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/splash/i$7;-><init>(Lcom/sigmob/sdk/splash/i;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->c:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v2, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private l()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/i$8;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/i$8;-><init>(Lcom/sigmob/sdk/splash/i;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private m()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ap;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/ap;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

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

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v2, Lcom/sigmob/sdk/splash/i$9;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/splash/i$9;-><init>(Lcom/sigmob/sdk/splash/i;)V

    sget-object v4, Lcom/sigmob/sdk/base/common/am$d;->a:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v1, v0, v2, v4}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ak;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/ak;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v3, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSensitivity()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    if-ge v3, v4, :cond_2

    rsub-int/lit8 v3, v3, 0xb

    mul-int/2addr v3, v4

    goto :goto_0

    :cond_2
    const/16 v3, 0x32

    :goto_0
    int-to-float v3, v3

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/i;->h:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/sigmob/sdk/splash/i$10;

    invoke-direct {v6, p0, v3}, Lcom/sigmob/sdk/splash/i$10;-><init>(Lcom/sigmob/sdk/splash/i;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v3, 0x43110000    # 145.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v5, v5, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private o()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/aa;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/aa;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getButtonColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/aa;->setButtonColor(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/views/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private p()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/ai;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/ai;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    :cond_0
    iget-object v3, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/views/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private q()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/i;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/i;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x43370000    # 183.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "\u70b9\u51fb\u524d\u5f80"

    :cond_0
    new-instance v4, Lcom/sigmob/sdk/base/views/aq;

    invoke-direct {v4, v0}, Lcom/sigmob/sdk/base/views/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/sigmob/sdk/base/views/aq;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sigmob/sdk/base/views/aq;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private r()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/g;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/splash/g;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadPrivacy()Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    new-instance v5, Lcom/sigmob/sdk/splash/i$11;

    invoke-direct {v5, p0}, Lcom/sigmob/sdk/splash/i$11;-><init>(Lcom/sigmob/sdk/splash/i;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v5, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/sigmob/sdk/base/views/x;->a(Ljava/lang/String;Z)V

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v0, v4, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private s()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/base/views/aw;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/base/views/aw;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x43110000    # 145.0f

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v2, Lcom/sigmob/sdk/base/common/am$a;

    new-instance v3, Lcom/sigmob/sdk/splash/i$2;

    invoke-direct {v3, p0, v1}, Lcom/sigmob/sdk/splash/i$2;-><init>(Lcom/sigmob/sdk/splash/i;Lcom/sigmob/sdk/base/views/aw;)V

    sget-object v5, Lcom/sigmob/sdk/base/common/am$d;->b:Lcom/sigmob/sdk/base/common/am$d;

    invoke-direct {v2, v0, v3, v5}, Lcom/sigmob/sdk/base/common/am$a;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/am$c;Lcom/sigmob/sdk/base/common/am$d;)V

    iput-object v2, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;->format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/common/am$a;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 8
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action.interstitial.dismiss"

    invoke-static {p1, v1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/am$a;->c()V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/v;->b()V

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/app/Activity;)Z
    .locals 5

    .line 10
    const/4 v0, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/splash/a;

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->g:Lcom/sigmob/sdk/splash/a;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->e:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/splash/i;->a(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/splash/i;->a(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result p2

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->template_id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "companion"

    const-string v3, "0"

    const-string v4, "ad"

    packed-switch p2, :pswitch_data_0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUI: templateId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :pswitch_0
    iput-object v3, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iput-object v4, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->q()V

    goto/16 :goto_6

    :pswitch_1
    iput-object v3, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iput-object v4, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->p()V

    goto/16 :goto_6

    :pswitch_2
    iput-object v3, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iput-object v4, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->o()V

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->i()V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->n()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object p2

    const-string v2, "1"

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    const-string v2, "component"

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    iput-object v4, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u5411\u4e0a\u6ed1\u52a8"

    :goto_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/sigmob/sdk/splash/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->i()V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->s()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string p2, "\u8f6c\u52a8\u624b\u673a"

    :goto_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->i()V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->m()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const-string p2, "\u6643\u52a8\u624b\u673a"

    :goto_3
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->i()V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->k()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const-string p2, "\u524d\u503e\u624b\u673a"

    :goto_4
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->i()V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->j()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    const-string p2, "\u6447\u52a8\u624b\u673a"

    :goto_5
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDesc()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_6
    iget-object p1, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/v;->a()V

    :cond_5
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/i;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    return p1

    :goto_7
    const-string p2, "setupAd error"

    invoke-static {p2, p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x835
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 3
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "adUnit or splashFilePath is null"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/i;->j:Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/b;->b()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->a()V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/b;->c()V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/i;->k:Z

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/b;->getDuration()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    const-string v0, "adUnit is null"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->g:Lcom/sigmob/sdk/splash/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->g:Lcom/sigmob/sdk/splash/a;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v3, Lcom/sigmob/sdk/splash/i$1;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/splash/i$1;-><init>(Lcom/sigmob/sdk/splash/i;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->o:Lcom/sigmob/sdk/base/common/am$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/am$a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->p:Lcom/sigmob/sdk/base/views/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/v;->b()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    sget-object v0, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    sget-object v0, Lcom/sigmob/sdk/splash/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->s:Lcom/sigmob/sdk/splash/i$a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->s:Lcom/sigmob/sdk/splash/i$a;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/splash/i$a;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/splash/i;->r:F

    return-void
.end method

.method public setDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ag;->a(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/i;->m:Z

    const-string v0, "complete"

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/i;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/i;->q:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/splash/i;->a(Z)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setViewStatusListener(Lcom/sigmob/sdk/splash/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i;->s:Lcom/sigmob/sdk/splash/i$a;

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->n:Lcom/sigmob/sdk/base/views/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/splash/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/b;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "start"

    invoke-interface {v0, v2, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    :try_start_0
    const-string p1, "splashAdBlock"

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    invoke-static {}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->getLineInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/i;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "debug "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->getLineInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
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
