.class public Lcom/sigmob/sdk/nativead/z;
.super Lcom/sigmob/sdk/base/common/j;


# static fields
.field private static g:Lcom/sigmob/sdk/nativead/r;


# instance fields
.field public final f:J

.field private h:Lcom/sigmob/sdk/nativead/ae;

.field private i:Lcom/sigmob/sdk/nativead/ae;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/FrameLayout;

.field private l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private m:Lcom/sigmob/sdk/nativead/e;

.field private n:Lcom/sigmob/sdk/mraid/h;

.field private o:Landroid/view/View;

.field private p:Lcom/sigmob/windad/natives/WindNativeAdData;

.field private q:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/sigmob/sdk/base/views/q;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6}, Lcom/sigmob/sdk/base/common/j;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sigmob/sdk/base/common/k;)V

    const-wide/16 p4, 0x12c

    iput-wide p4, p0, Lcom/sigmob/sdk/nativead/z;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/z;->t:Z

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/nativead/e;

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z;->m:Lcom/sigmob/sdk/nativead/e;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p2

    iget-object p4, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p4, p5}, Lcom/sigmob/sdk/base/common/i;->a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V

    const-string p1, "attr"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/nativead/ae;

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z;->h:Lcom/sigmob/sdk/nativead/ae;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k;->a(I)V

    invoke-static {}, Lcom/sigmob/sdk/base/k;->a()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->k:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/z;Lcom/sigmob/sdk/base/views/q;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z;->s:Lcom/sigmob/sdk/base/views/q;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/z;Lcom/sigmob/sdk/nativead/ae;)Lcom/sigmob/sdk/nativead/ae;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/z;->i:Lcom/sigmob/sdk/nativead/ae;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    sget-object p1, Lcom/sigmob/sdk/base/views/s;->e:Lcom/sigmob/sdk/base/views/s;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/s;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    new-instance v0, Lcom/sigmob/sdk/nativead/f0;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/nativead/f0;-><init>(Lcom/sigmob/sdk/nativead/z;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p1, 0x41a00000    # 20.0f

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/z;->j:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->onBackPressed()V

    return-void
.end method

.method private static synthetic a(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 9
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/nativead/m;)V
    .locals 1

    .line 10
    instance-of v0, p0, Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/nativead/r;

    sput-object p0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/z;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 0

    .line 12
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/z;->s()V

    return-void

    :cond_0
    sget-object p1, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/z;->t()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/z;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/sigmob/sdk/nativead/z;->t:Z

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->i:Lcom/sigmob/sdk/nativead/ae;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/k;->onBackPressed()V

    return-void
.end method

.method private static synthetic b(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 3
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/z;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/ae;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->h:Lcom/sigmob/sdk/nativead/ae;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/nativead/z;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/nativead/z;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->j:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/views/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->s:Lcom/sigmob/sdk/base/views/q;

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/nativead/z;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/nativead/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->m:Lcom/sigmob/sdk/nativead/e;

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/nativead/z;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/z;->t:Z

    return p0
.end method

.method public static synthetic j(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/base/common/k;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/nativead/z;)Lcom/sigmob/sdk/mraid/h;
    .locals 0

    iget-object p0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    return-object p0
.end method

.method public static synthetic p(Lcom/sigmob/sdk/nativead/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/z;->v()V

    return-void
.end method

.method public static synthetic q()Lcom/sigmob/sdk/nativead/r;
    .locals 1

    .line 2
    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    return-object v0
.end method

.method public static synthetic q(Lcom/sigmob/sdk/nativead/z;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/z;->a(Z)V

    return-void
.end method

.method private r()I
    .locals 6

    .line 2
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v2, v0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdPercent()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static synthetic r(Lcom/sigmob/sdk/nativead/z;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/z;->a(Landroid/view/View;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic s(Lcom/sigmob/sdk/nativead/z;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/nativead/z;->b(Landroid/view/View;)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/nativead/z;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic t(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/nativead/z;->a(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method

.method private u()V
    .locals 7

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/z;->u:Z

    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/nativead/af;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z;->k:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/z;->i:Lcom/sigmob/sdk/nativead/ae;

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/z;->h:Lcom/sigmob/sdk/nativead/ae;

    const-wide/16 v5, 0x12c

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/nativead/af;-><init>(Landroid/view/ViewGroup;Lcom/sigmob/sdk/nativead/ae;Lcom/sigmob/sdk/nativead/ae;J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/nativead/af;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->j:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->k:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sigmob/sdk/nativead/e0;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/nativead/e0;-><init>(Lcom/sigmob/sdk/nativead/z;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic u(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/nativead/z;->b(Lcom/sigmob/sdk/mraid/v;Lcom/sigmob/sdk/base/common/v;)V

    return-void
.end method

.method private synthetic v()V
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sigmob/sdk/nativead/j;->a:Lcom/sigmob/sdk/nativead/j;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/r;->setUIStyle(Lcom/sigmob/sdk/nativead/j;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/k;->a()V

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/common/ah;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/nativead/i;

    invoke-direct {v0}, Lcom/sigmob/sdk/nativead/i;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/ah;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 6
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 7
    return-void
.end method

.method public e()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->k()Lcom/sigmob/sdk/base/common/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/k;->onSetContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    const-string v1, "template"

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->l()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/z;->j:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/z;->p()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/z;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z;->o:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sigmob/sdk/nativead/s;->getNativeAdUnit()Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v2

    iput-object v2, p0, Lcom/sigmob/sdk/nativead/z;->p:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/z;->r()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/z;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->n()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/z;->k:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    new-instance v2, Lcom/sigmob/sdk/nativead/a0;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/nativead/a0;-><init>(Lcom/sigmob/sdk/nativead/z;)V

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/nativead/r;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/j;->m()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z;->k:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/z;->r()I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->getSigVideoAdController()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/nativead/z$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/nativead/z$1;-><init>(Lcom/sigmob/sdk/nativead/z;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    const-string v0, "action.native.temple.show"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/sigmob/sdk/nativead/z;->u:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->getSigVideoAdController()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 2
    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->getSigVideoAdController()Lcom/sigmob/sdk/nativead/t;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->c()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->c()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->q:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/z;->q:Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->s:Lcom/sigmob/sdk/base/views/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->s:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/z;->s:Lcom/sigmob/sdk/base/views/q;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->m()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    :cond_2
    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/nativead/r;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    sput-object v1, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    :cond_3
    const-string v0, "action.native.temple.dismiss"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/common/j;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/j;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public j()Z
    .locals 2

    .line 2
    sget-object v0, Lcom/sigmob/sdk/nativead/z;->g:Lcom/sigmob/sdk/nativead/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/z;->u()V

    return v1
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()Landroid/view/View;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v3, Lcom/sigmob/sdk/base/models/PlacementType;->INTERSTITIAL:Lcom/sigmob/sdk/base/models/PlacementType;

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/mraid/h;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/PlacementType;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    new-instance v1, Lcom/sigmob/sdk/nativead/z$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/nativead/z$2;-><init>(Lcom/sigmob/sdk/nativead/z;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/nativead/b0;

    invoke-direct {v2}, Lcom/sigmob/sdk/nativead/b0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->b(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/z;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getHtmlData()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/nativead/c0;

    invoke-direct {v2}, Lcom/sigmob/sdk/nativead/c0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/mraid/h$b;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    new-instance v1, Lcom/sigmob/sdk/nativead/d0;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/nativead/d0;-><init>(Lcom/sigmob/sdk/nativead/z;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h$e;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/z;->n:Lcom/sigmob/sdk/mraid/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/h;->q()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
