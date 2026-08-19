.class public Lcom/ubix/ssp/ad/j/a;
.super Lcom/ubix/ssp/ad/b;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/j/a$l;
    }
.end annotation


# instance fields
.field private A:Lcom/ubix/ssp/ad/g/k/i;

.field private B:Landroid/animation/ValueAnimator;

.field private C:Z

.field private D:D

.field private E:I

.field private F:I

.field private G:Z

.field private H:I

.field private I:F

.field private J:I

.field private K:I

.field private L:F

.field private M:Z

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:J

.field private S:J

.field private T:J

.field private U:I

.field private V:Z

.field private W:Z

.field a0:Landroid/graphics/Rect;

.field private l:Lcom/ubix/ssp/ad/e/t/a/e;

.field m:Lcom/ubix/ssp/ad/k/a;

.field private n:Z

.field private o:I

.field private p:Lcom/ubix/ssp/ad/j/a$l;

.field private q:F

.field private r:I

.field private s:I

.field private t:I

.field private u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile v:Landroid/animation/ValueAnimator;

.field private volatile w:Lcom/ubix/ssp/ad/e/a0/g;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->n:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->q:F

    const/16 v1, 0x1388

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->r:I

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->s:I

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->t:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/ubix/ssp/ad/j/a;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->x:I

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->y:I

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->z:I

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/j/a;->D:D

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->F:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->G:Z

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->H:I

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->I:F

    const/4 v1, 0x5

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->J:I

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->K:I

    const/high16 v1, 0x3f100000    # 0.5625f

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->L:F

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->M:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->N:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->O:I

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->P:I

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->Q:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ubix/ssp/ad/j/a;->R:J

    iput-wide v1, p0, Lcom/ubix/ssp/ad/j/a;->S:J

    iput-wide v1, p0, Lcom/ubix/ssp/ad/j/a;->T:J

    iput v0, p0, Lcom/ubix/ssp/ad/j/a;->U:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->V:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->W:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    new-instance v0, Lcom/ubix/ssp/ad/j/a$l;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/j/a$l;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/ubix/ssp/ad/j/a;->D:D

    return-void
.end method

.method public static synthetic A(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic B(Lcom/ubix/ssp/ad/j/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->w()V

    return-void
.end method

.method public static synthetic C(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic D(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic E(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic F(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic G(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic H(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic I(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic J(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic K(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic L(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic M(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic N(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic O(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic P(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic Q(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic R(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method public static synthetic S(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic T(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic U(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic V(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic W(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic X(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic Y(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic Z(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/j/a;->z:I

    return p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->z:I

    return p1
.end method

.method public static a(Landroid/widget/ImageView;I)V
    .locals 2

    .line 6
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/j/a;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 8
    const v0, 0xdbc06

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->H:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/ubix/ssp/ad/j/a;->L:F

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const v1, 0xdbc04

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/ubix/ssp/ad/e/v/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, p1, v0}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AD_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "VIDEO_RENDER_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-nez v1, :cond_3

    new-instance v1, Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/ubix/ssp/ad/k/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    const v0, 0x493eb

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/k/a;->setShowAdLogo(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/k/a;->setShowCountDown(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/k/a;->setShowVolumeSwitch(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/k/a;->setShowBanner(Z)V

    if-nez p3, :cond_0

    sget-object p3, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {p3}, Lcom/ubix/ssp/open/UBiXAdSetting;->isSpecifiedVideoWidget()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {p3}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    iget-object p3, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    new-instance v0, Lcom/ubix/ssp/ad/j/a$d;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/j/a$d;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {p3, v0}, Lcom/ubix/ssp/ad/k/a;->setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V

    xor-int/lit8 p3, v1, 0x1

    invoke-direct {p0, p3}, Lcom/ubix/ssp/ad/j/a;->a(Z)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/j/a;->b(Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/ubix/ssp/ad/k/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {p1, v2}, Lcom/ubix/ssp/ad/k/a;->setMute(Z)V

    iget p1, p0, Lcom/ubix/ssp/ad/j/a;->H:I

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {p1, v2}, Lcom/ubix/ssp/ad/k/a;->setVideoDisplayType(I)V

    :cond_4
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    const-string v0, ""

    const v1, 0xde4a5

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3e4ccccd    # 0.2f

    if-eqz v1, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const v5, 0x3eb33333    # 0.35f

    move v6, v3

    move v3, v5

    move v5, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const v1, 0xde56d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_2

    const v1, 0xde441

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v5, 0x3e800000    # 0.25f

    if-eqz v1, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_1

    :cond_2
    const v5, 0x3e99999a    # 0.3f

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    const v1, 0xde3dd

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x3e19999a    # 0.15f

    const v2, 0x3f333333    # 0.7f

    if-eqz v1, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_4
    move v5, v2

    move v6, v3

    goto :goto_2

    :cond_5
    const v6, 0x3ee66666    # 0.45f

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-double v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-double v9, v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-double v8, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-double v10, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v2, v11

    add-double/2addr v9, v2

    double-to-int v2, v9

    iget v3, v4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v3, v9

    float-to-double v9, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v5, v11

    add-double/2addr v9, v5

    double-to-int v3, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";visibleRect="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";x="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";y="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";rx="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";ry="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "__DOWN_X__"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "__DOWN_Y__"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "__UP_X__"

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "__UP_Y__"

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v1, "__RAW_DOWN_X__"

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v1, "__RAW_DOWN_Y__"

    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v1, "__RAW_UP_X__"

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v1, "__RAW_UP_Y__"

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 13
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x493ec

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v2

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v2

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v2

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v5

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v1

    invoke-virtual {p1, v2, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    const-string v1, "ubix/ic_volume_off.webp"

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x493ef

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0xdbc04

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a0(Lcom/ubix/ssp/ad/j/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/j/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->t:I

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    .line 5
    const v0, 0xdbc06

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v2

    iget v3, p0, Lcom/ubix/ssp/ad/j/a;->H:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2, p1}, Lcom/ubix/ssp/ad/e/v/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/ubix/ssp/ad/j/a;->L:F

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const v3, 0xdbc04

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    :goto_1
    invoke-interface {v2, p1}, Lcom/ubix/ssp/ad/e/v/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v2, p1, v0}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v1}, Lcom/ubix/ssp/ad/j/a;->a(Landroid/widget/ImageView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v3, Lcom/ubix/ssp/ad/j/a$c;

    invoke-direct {v3, p0}, Lcom/ubix/ssp/ad/j/a$c;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    const/4 v5, 0x5

    invoke-interface {v2, p1, v0, v5, v3}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public static synthetic b0(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic c0(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/j/a;->t:I

    return p0
.end method

.method private d(II)Landroid/graphics/Rect;
    .locals 4

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    mul-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->K:I

    mul-int/2addr v1, p2

    int-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/ubix/ssp/ad/j/a;->J:I

    mul-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public static synthetic d0(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic e(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/j/a;->s:I

    return p0
.end method

.method private e(II)Z
    .locals 1

    .line 2
    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/ubix/ssp/ad/j/a;->L:F

    div-float/2addr p2, p1

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/ubix/ssp/ad/j/a;->I:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic e0(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic f(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/j/a$l;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    return-object p0
.end method

.method public static synthetic g(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private getCurrentRotation()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static synthetic h(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/j/a;->o:I

    return p0
.end method

.method public static synthetic i(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    iget p0, p0, Lcom/ubix/ssp/ad/j/a;->U:I

    return p0
.end method

.method public static synthetic j(Lcom/ubix/ssp/ad/j/a;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/j/a;->B:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic k(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    return-object p0
.end method

.method public static synthetic l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    return-object p0
.end method

.method public static synthetic m(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic n(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic o(Lcom/ubix/ssp/ad/j/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/j/a;->C:Z

    return p0
.end method

.method public static synthetic p(Lcom/ubix/ssp/ad/j/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/b;->d:Z

    return p0
.end method

.method public static synthetic q(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic r(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic s(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method private s()V
    .locals 18

    .line 2
    move-object/from16 v0, p0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/ubix/ssp/ad/j/a;->x:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/ubix/ssp/ad/j/a;->y:I

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/ubix/ssp/ad/j/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v5, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v7, v0, Lcom/ubix/ssp/ad/j/a;->o:I

    const/4 v9, 0x1

    const/16 v10, 0xb

    const/4 v12, 0x2

    const v13, 0x493e1

    const/4 v14, 0x4

    const/4 v15, -0x1

    if-eq v7, v9, :cond_2

    if-eq v7, v12, :cond_1

    const/4 v6, 0x3

    if-eq v7, v6, :cond_0

    if-eq v7, v14, :cond_0

    const/high16 v16, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v9, -0x80000000

    const/high16 v16, 0x41800000    # 16.0f

    const/16 v11, 0x48

    invoke-static {v7, v9, v11}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42200000    # 40.0f

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v9

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    invoke-direct {v7, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_1
    const/high16 v16, 0x41800000    # 16.0f

    new-instance v7, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/ubix/ssp/ad/e/g;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/ubix/ssp/ad/e/g;->setTextSize(F)V

    invoke-virtual {v7, v15}, Lcom/ubix/ssp/ad/e/g;->setTextColor(I)V

    const-string v9, "\u8df3\u8fc7"

    invoke-virtual {v7, v9}, Lcom/ubix/ssp/ad/e/g;->setText(Ljava/lang/String;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    invoke-static {v6}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v6

    invoke-direct {v9, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v6, v7

    move-object v7, v9

    goto :goto_1

    :cond_2
    const/high16 v16, 0x41800000    # 16.0f

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    const/4 v6, 0x0

    move-object v7, v6

    :goto_1
    iget-object v9, v0, Lcom/ubix/ssp/ad/j/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v9, 0x493ef

    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    const v9, 0x493e8

    invoke-virtual {v3, v9}, Landroid/view/View;->setId(I)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const v11, 0x493f0

    invoke-virtual {v4, v11}, Landroid/view/View;->setId(I)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v6, :cond_3

    invoke-virtual {v6, v13}, Landroid/view/View;->setId(I)V

    :cond_3
    iget-object v11, v0, Lcom/ubix/ssp/ad/j/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    const v8, 0xdbc06

    invoke-virtual {v11, v8}, Landroid/view/View;->setId(I)V

    iget-object v11, v0, Lcom/ubix/ssp/ad/j/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v8, 0xdbc04

    invoke-virtual {v1, v8}, Landroid/view/View;->setId(I)V

    iget-object v8, v0, Lcom/ubix/ssp/ad/j/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v8

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v13

    invoke-virtual {v5, v9, v8, v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v7, :cond_4

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v8

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    invoke-virtual {v7, v9, v8, v10, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_4
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x42080000    # 34.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    const/high16 v12, 0x42180000    # 38.0f

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    invoke-virtual {v8, v11, v9, v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v11, 0x6

    const v12, 0xe0a25

    invoke-virtual {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_5

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x0

    const/high16 v4, 0x66000000

    const/high16 v5, 0x40400000    # 3.0f

    move/from16 v6, v17

    invoke-virtual {v2, v5, v1, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/j/a;->W:Z

    const-string v2, "ubix/ic_logo.png"

    invoke-static {v2, v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/j/a;->n:Z

    if-eqz v1, :cond_6

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v4

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual {v0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/j/a;->N:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v1, -0xe0e0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setClickArea(I)V
    .locals 3

    const/16 v0, 0x84

    const-string v1, "__CLICK_TRIGGER__"

    const-string v2, "__CLICK_AREA__"

    if-eq p1, v0, :cond_4

    const/16 v0, 0x44

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "7"

    :goto_0
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "11"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v0, "4"

    goto :goto_0
.end method

.method public static synthetic t(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method private t()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    invoke-interface {v0, v1, p0}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->x()V

    :try_start_0
    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->U:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a$l;->a(Lcom/ubix/ssp/ad/j/a$l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    new-instance v0, Lcom/ubix/ssp/ad/j/a$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/j/a$b;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public static synthetic u(Lcom/ubix/ssp/ad/j/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ubix/ssp/ad/b;->b:I

    return p0
.end method

.method private u()Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/ubix/ssp/ad/j/a;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3fec28f5c28f5c29L    # 0.88

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic v(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method private v()V
    .locals 4

    .line 2
    sget v0, Lcom/ubix/ssp/ad/d/b;->h:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/j/c;->a()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/ubix/ssp/ad/j/a;->U:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->U:I

    :goto_1
    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->U:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x63

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/j/a$f;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/j/a$f;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ubix/ssp/ad/j/a$g;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/j/a$g;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    if-eqz v0, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance v0, Lcom/ubix/ssp/ad/e/a0/g;

    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->r:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/ubix/ssp/ad/e/a0/g;-><init>(J)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    new-instance v1, Lcom/ubix/ssp/ad/j/a$h;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/j/a$h;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/g;->a(Lcom/ubix/ssp/ad/e/a0/g$b;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->w:Lcom/ubix/ssp/ad/e/a0/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/g;->e()V

    return-void
.end method

.method public static synthetic w(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method private w()V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->v()V

    const v0, 0x493e1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/ubix/ssp/ad/e/g;

    iget v2, p0, Lcom/ubix/ssp/ad/j/a;->s:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/ubix/ssp/ad/e/g;->setDuration(J)V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/g;->e()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u8df3\u8fc7"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8df3\u8fc7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ubix/ssp/ad/j/a;->s:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic x(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method private x()V
    .locals 5

    .line 2
    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->y:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_0
    return-void
.end method

.method public static synthetic y(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method

.method public static synthetic z(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/e/a0/s;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    return-object p0
.end method


# virtual methods
.method public a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    .locals 18

    .line 3
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v2, p2

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    iput v6, v0, Lcom/ubix/ssp/ad/j/a;->E:I

    move/from16 v3, p3

    iput v3, v0, Lcom/ubix/ssp/ad/j/a;->F:I

    const/16 v1, 0x10

    if-eq v6, v1, :cond_10

    const/16 v1, 0x20

    const/4 v9, 0x1

    if-eq v6, v1, :cond_f

    const/16 v1, 0x40

    if-eq v6, v1, :cond_d

    const/16 v1, 0x44

    if-eq v6, v1, :cond_d

    const/16 v1, 0x80

    if-eq v6, v1, :cond_c

    const/16 v1, 0x84

    if-eq v6, v1, :cond_c

    const/4 v1, 0x2

    if-eq v6, v1, :cond_8

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v10, 0xde3dd

    if-eq v6, v4, :cond_4

    const/4 v1, 0x4

    if-eq v6, v1, :cond_3

    const/4 v1, 0x5

    if-eq v6, v1, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u70b9\u51fb\u6b64\u5904"

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    invoke-virtual {v0, v6, v1, v8, v5}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v9}, Lcom/ubix/ssp/ad/e/c;->setNeedWave(Z)V

    :cond_1
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v0, v6, v7, v8, v5}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide/from16 p10, p4

    move/from16 p12, p6

    move-object/from16 p7, v0

    move/from16 p8, v1

    move/from16 p9, v2

    invoke-virtual/range {p7 .. p12}, Lcom/ubix/ssp/ad/b;->a(ZZDI)V

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    goto/16 :goto_a

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/b;->a(ZZDI)V

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_4
    if-ne v2, v9, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "\u626d\u52a8\u6216\u70b9\u51fb"

    goto :goto_1

    :cond_5
    if-ne v2, v1, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\u7ffb\u8f6c\u6216\u70b9\u51fb"

    goto :goto_1

    :cond_6
    move-object v1, v7

    :goto_1
    invoke-virtual {v0, v6, v1, v8, v5}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v1, :cond_7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    move-object/from16 v0, p0

    :goto_2
    const v1, 0xde3dd

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    goto/16 :goto_a

    :cond_8
    iget-boolean v2, v0, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v2, :cond_9

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    move-object/from16 v0, p0

    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-virtual/range {v0 .. v15}, Lcom/ubix/ssp/ad/b;->a(ZIIIZZD[IIIDZZ)V

    goto :goto_4

    :goto_5
    if-ne v2, v1, :cond_a

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "\u626d\u52a8\u624b\u673a"

    :goto_6
    move/from16 v6, p1

    :goto_7
    move-object/from16 v3, p10

    goto :goto_8

    :cond_a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "\u7ffb\u8f6c\u624b\u673a"

    goto :goto_6

    :cond_b
    move/from16 v6, p1

    move-object/from16 v2, p9

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v6, v2, v3, v1}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_c
    move/from16 v5, p6

    move-object v3, v8

    move v1, v9

    move-wide/from16 v7, p4

    invoke-virtual {v0, v6, v7, v8, v5}, Lcom/ubix/ssp/ad/b;->a(IDI)V

    move-object/from16 v2, p9

    invoke-virtual {v0, v6, v2, v3, v1}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    const v1, 0xde441

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_d
    move/from16 v5, p6

    move-object v2, v7

    move-object v3, v8

    move-wide/from16 v7, p4

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v1, :cond_e

    const/4 v4, 0x1

    move v1, v6

    move-wide/from16 v16, v7

    move v7, v5

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v7}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;ZDI)V

    move-object/from16 v0, p0

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-virtual/range {v0 .. v7}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;ZDI)V

    :goto_9
    const v1, 0xde56d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_f
    move/from16 v5, p6

    move-object v2, v7

    move-object v3, v8

    move v1, v9

    move-wide/from16 v7, p4

    invoke-virtual {v0, v6, v7, v8, v5}, Lcom/ubix/ssp/ad/b;->b(IDI)V

    goto :goto_8

    :cond_10
    move-wide/from16 v4, p4

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ubix/ssp/ad/b;->a(ILjava/lang/String;Ljava/lang/String;DI)V

    const v1, 0xde4a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    :goto_a
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    :goto_b
    new-instance v1, Lcom/ubix/ssp/ad/j/a$j;

    invoke-direct {v1, v0}, Lcom/ubix/ssp/ad/j/a$j;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 4
    const-string p1, "S_A_T"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->Q:I

    const-string p1, "S_A_T_I"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/j/a;->R:J

    const-string p1, "G_B_U"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/j/a;->T:J

    const-string p1, "L_S_A_T_I"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ubix/ssp/ad/j/a;->S:J

    const-string p1, "SUPPORT_FEED_BACK"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/a;->N:Z

    const-string p1, "SKIP_VIEW_STYLE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->o:I

    const-string p1, "SKIP_COUNT_TIME"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->s:I

    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->r:I

    const-string p1, "IS_DOWNLOAD"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/a;->n:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->getCurrentRotation()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/a;->M:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->M:Z

    :goto_1
    const-string p1, "IS_UNNAMED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/a;->W:Z

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->s()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 9
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/j/a;->r()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0xde318

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/j/a;->r()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/j/a;->r()Landroid/view/ViewGroup;

    move-result-object v0

    const v3, 0xde3dd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/j/a;->r()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget v3, v1, Lcom/ubix/ssp/ad/j/a;->F:I

    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v1 .. v16}, Lcom/ubix/ssp/ad/j/a;->a(IIIDI[IILjava/lang/String;Ljava/lang/String;IDZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 11
    invoke-super/range {p0 .. p8}, Lcom/ubix/ssp/ad/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p7, v1

    const-string v2, ""

    if-lez v1, :cond_1

    long-to-double p7, p7

    invoke-static {p7, p8}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    move-result-object p7

    const/4 p8, 0x1

    goto :goto_0

    :cond_1
    const/4 p8, 0x0

    move-object p7, v2

    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p5, v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :goto_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p6, v2

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    :goto_2
    if-eqz p8, :cond_4

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {p8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object p7, v2

    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p3, p2}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    invoke-virtual {p3, p2}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/g/k/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(IFF)Z
    .locals 3

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/16 v1, 0x80

    if-eq p1, v1, :cond_5

    const/16 v1, 0x84

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x40

    if-eq p1, v1, :cond_4

    const/16 v1, 0x44

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    const p1, 0xde4a5

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/r;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/r;->a(FF)Z

    move-result p1

    return p1

    :cond_2
    const/16 p2, 0x20

    const/4 p3, 0x1

    if-ne p1, p2, :cond_3

    return p3

    :cond_3
    const/4 p2, 0x4

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_6

    return p3

    :cond_4
    :goto_0
    const p1, 0xde56d

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/d;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/d;->a(FF)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    const p1, 0xde441

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/e;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/j/a;->a0:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/ubix/ssp/ad/e/e;->a(FF)Z

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 3
    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/a;->k(I)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 7

    .line 4
    const-string v0, "AD_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RENDER_MODE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->H:I

    const-string v1, "SCALE_IGNORE_PERCENT"

    const v3, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->I:F

    const-string v1, "SCALE_HORIZONTAL_MARGIN"

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->J:I

    const/16 v4, 0x32

    if-lt v1, v4, :cond_0

    iput v3, p0, Lcom/ubix/ssp/ad/j/a;->J:I

    :cond_0
    const-string v1, "SCALE_VERTICAL_MARGIN"

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ubix/ssp/ad/j/a;->K:I

    if-lt v1, v4, :cond_1

    iput v3, p0, Lcom/ubix/ssp/ad/j/a;->K:I

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x493f0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x66000000

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :try_start_0
    const-string v0, "IS_VIDEO"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "IMAGE_URL"

    if-nez v0, :cond_3

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    const-string v0, "VIDEO_URL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v3, "VIDEO_RENDER_TYPE"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Lcom/ubix/ssp/ad/j/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "AUTO_MUTE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/a;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method

.method public c(II)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->O:I

    iput p2, p0, Lcom/ubix/ssp/ad/j/a;->P:I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, ""

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->E:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ubix/ssp/ad/j/a;->a(IFF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->G:Z

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget v1, p0, Lcom/ubix/ssp/ad/j/a;->E:I

    invoke-virtual {p0, v1, p1}, Lcom/ubix/ssp/ad/b;->a(ILandroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/b;->a(Landroid/view/MotionEvent;)V

    :try_start_0
    iget p1, p0, Lcom/ubix/ssp/ad/b;->k:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "__TRI_VAL__"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/ubix/ssp/ad/j/a;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__INSIDE_AREA__"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/ubix/ssp/ad/j/a;->E:I

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/j/a;->setClickArea(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {p1, v0, p0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getInterface()Lcom/ubix/ssp/ad/g/k/b;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    return-object v0
.end method

.method public getSkipTime()J
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->r:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public j()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public k(I)V
    .locals 1

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget p1, p0, Lcom/ubix/ssp/ad/j/a;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public n()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->E:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->t()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "14"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ""

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x493ec

    if-ne v0, v4, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/a;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/a;->k(I)V

    return-void

    :cond_1
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/j/a;->k(I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x493e1

    const-string v5, "__CLICK_AREA__"

    if-ne v0, v4, :cond_4

    const-string v0, "get lsat by SPLASH_SKIP_VIEW_ID"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/j/a;->V:Z

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lcom/ubix/ssp/ad/d/b;->g:J

    sub-long/2addr v2, v6

    iget-wide v6, p0, Lcom/ubix/ssp/ad/j/a;->T:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->Q:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/ubix/ssp/ad/j/a;->S:J

    sub-long/2addr v3, v6

    iget-wide v6, p0, Lcom/ubix/ssp/ad/j/a;->R:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/j/a;->V:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ubix/ssp/ad/j/a;->S:J

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/j/a;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v2, "15"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    if-eqz v0, :cond_b

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0xde3dd

    const v6, 0xde4a5

    const v7, 0xde56d

    const v8, 0xde441

    if-eq v0, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v8, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v7, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0xe0aed

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/ubix/ssp/ad/b;->b:I

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/g/k/b;->a(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v8, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v7, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/ubix/ssp/ad/j/a;->G:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__INSIDE_AREA__"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v3, "__CLICK_UNREAL_TRIGGER__"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v2, "2"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    if-eqz v0, :cond_b

    :goto_2
    iget v1, p0, Lcom/ubix/ssp/ad/b;->b:I

    iget-object v2, p0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1, p1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_b
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_16

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    const-wide v10, 0x3fd6666666666666L    # 0.35

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    const-wide v14, 0x3fb999999999999aL    # 0.1

    const/high16 v16, 0x40c00000    # 6.0f

    const/high16 v17, 0x433e0000    # 190.0f

    const/high16 v18, 0x43020000    # 130.0f

    const-wide v19, 0x3fd3333333333333L    # 0.3

    const/4 v8, 0x1

    const-wide v21, 0x3fc999999999999aL    # 0.2

    const/high16 v9, 0x42180000    # 38.0f

    const-wide v23, 0x3fd999999999999aL    # 0.4

    const/high16 v25, 0x43110000    # 145.0f

    const-wide v26, 0x3fe999999999999aL    # 0.8

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_15

    :sswitch_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v7

    const-wide v16, 0x3fe3333333333333L    # 0.6

    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_0

    int-to-double v12, v3

    mul-double v14, v12, v21

    double-to-int v7, v14

    mul-double/2addr v10, v12

    double-to-int v9, v10

    sub-int v9, v4, v9

    mul-double v10, v12, v26

    double-to-int v10, v10

    invoke-virtual {v0, v7, v9, v10, v4}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/d;

    mul-double v9, v12, v16

    double-to-int v7, v9

    mul-double v12, v12, v23

    double-to-int v9, v12

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :cond_0
    int-to-double v7, v3

    mul-double v9, v7, v21

    double-to-int v9, v9

    mul-double v10, v7, v23

    double-to-int v10, v10

    sub-int v11, v4, v10

    mul-double v12, v7, v26

    double-to-int v12, v12

    invoke-virtual {v0, v9, v11, v12, v4}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/d;

    mul-double v7, v7, v16

    :goto_1
    double-to-int v7, v7

    goto :goto_3

    :cond_1
    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_2

    int-to-double v9, v3

    mul-double v11, v9, v21

    double-to-int v7, v11

    mul-double v11, v9, v19

    double-to-int v11, v11

    sub-int v11, v4, v11

    mul-double v12, v9, v26

    double-to-int v12, v12

    invoke-virtual {v0, v7, v11, v12, v4}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/d;

    mul-double v11, v9, v16

    double-to-int v7, v11

    mul-double v9, v9, v23

    double-to-int v9, v9

    :goto_2
    invoke-virtual {v0, v8, v7, v9}, Lcom/ubix/ssp/ad/e/d;->a(ZII)V

    goto/16 :goto_15

    :cond_2
    int-to-double v7, v3

    mul-double/2addr v14, v7

    double-to-int v9, v14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v7

    double-to-int v10, v10

    sub-int v11, v4, v10

    mul-double/2addr v12, v7

    double-to-int v12, v12

    invoke-virtual {v0, v9, v11, v12, v4}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/d;

    mul-double v7, v7, v26

    goto :goto_1

    :goto_3
    invoke-virtual {v0, v5, v7, v10}, Lcom/ubix/ssp/ad/e/d;->a(ZII)V

    goto/16 :goto_15

    :sswitch_1
    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_3

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    :goto_4
    sub-int v10, v4, v10

    goto/16 :goto_e

    :cond_3
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    :goto_5
    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    goto :goto_4

    :cond_4
    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v25 .. v25}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    :goto_6
    invoke-static/range {v25 .. v25}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    goto :goto_4

    :sswitch_2
    div-int/lit8 v7, v3, 0x4

    sub-int v7, v3, v7

    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/r;

    div-int/lit8 v7, v3, 0x4

    invoke-virtual {v0, v7, v4}, Lcom/ubix/ssp/ad/e/r;->a(II)V

    goto/16 :goto_15

    :sswitch_3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_5

    int-to-double v7, v4

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v8, v4, v7

    invoke-virtual {v0, v5, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    :goto_7
    check-cast v0, Lcom/ubix/ssp/ad/e/e;

    goto :goto_8

    :cond_5
    int-to-double v7, v4

    mul-double v7, v7, v23

    double-to-int v7, v7

    sub-int v8, v4, v7

    invoke-virtual {v0, v5, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_6
    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_7

    int-to-double v7, v4

    const-wide v9, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v8, v4, v7

    invoke-virtual {v0, v5, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_7
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v7

    if-eqz v7, :cond_8

    int-to-double v7, v4

    const-wide v9, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v8, v4, v7

    invoke-virtual {v0, v5, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_8
    int-to-double v7, v4

    mul-double/2addr v7, v10

    double-to-int v7, v7

    sub-int v8, v4, v7

    invoke-virtual {v0, v5, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v3, v7}, Lcom/ubix/ssp/ad/e/e;->a(II)V

    goto/16 :goto_15

    :sswitch_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v8, v8

    mul-double v8, v8, v26

    const-wide v10, 0x3fcb22d0e5604189L    # 0.212

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-wide v8, v1, Lcom/ubix/ssp/ad/j/a;->D:D

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->x:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v9, v7

    const-wide v11, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v9, v11

    double-to-int v7, v9

    int-to-double v9, v7

    mul-double v9, v9, v21

    double-to-int v9, v9

    iget v10, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    sub-int/2addr v10, v7

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v8

    const/high16 v11, 0x42a00000    # 80.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    sub-int v11, v4, v11

    sub-int/2addr v11, v9

    sub-int/2addr v11, v8

    iget v12, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    add-int/2addr v12, v7

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v8

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-static {v13}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v13

    sub-int v13, v4, v13

    add-int/2addr v13, v8

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v9, v8

    goto/16 :goto_c

    :cond_9
    iget-boolean v9, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v9, :cond_a

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v9, v9

    mul-double v9, v9, v19

    double-to-int v9, v9

    sub-int/2addr v9, v8

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    sub-int v10, v4, v10

    sub-int/2addr v10, v7

    sub-int/2addr v10, v8

    iget v11, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v11, v11

    const-wide v13, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v11, v8

    const/high16 v12, 0x42700000    # 60.0f

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    sub-int v12, v4, v12

    add-int/2addr v12, v8

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v9, v9

    mul-double v9, v9, v23

    :goto_9
    double-to-int v9, v9

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v9, v8

    add-int/2addr v7, v8

    move/from16 v28, v9

    move v9, v7

    move/from16 v7, v28

    goto :goto_c

    :cond_a
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v9, v9

    mul-double/2addr v9, v14

    double-to-int v9, v9

    sub-int/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    sub-int v10, v4, v10

    sub-int/2addr v10, v7

    sub-int/2addr v10, v8

    iget v11, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v14, v11

    mul-double/2addr v14, v12

    double-to-int v11, v14

    add-int/2addr v11, v8

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    :goto_a
    sub-int v12, v4, v12

    add-int/2addr v12, v8

    goto :goto_b

    :cond_b
    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v9, v9

    mul-double/2addr v9, v14

    double-to-int v9, v9

    sub-int/2addr v9, v8

    const/high16 v10, 0x428c0000    # 70.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    sub-int v10, v4, v10

    sub-int/2addr v10, v7

    sub-int/2addr v10, v8

    iget v11, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v14, v11

    mul-double/2addr v14, v12

    double-to-int v11, v14

    add-int/2addr v11, v8

    const/high16 v12, 0x428c0000    # 70.0f

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    int-to-double v9, v9

    mul-double v9, v9, v26

    goto :goto_9

    :goto_c
    invoke-virtual {v0, v7, v9}, Lcom/ubix/ssp/ad/e/c;->a(II)V

    goto/16 :goto_15

    :sswitch_5
    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_c

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v25 .. v25}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    goto/16 :goto_6

    :cond_c
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v7

    if-eqz v7, :cond_d

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v17 .. v17}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    goto/16 :goto_5

    :cond_d
    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v25 .. v25}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    goto/16 :goto_6

    :sswitch_6
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v7

    const v8, 0xde315

    if-eqz v7, :cond_e

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    iget v10, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    :goto_d
    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, 0x14

    move/from16 v28, v10

    move v10, v8

    move v8, v9

    move/from16 v9, v28

    goto :goto_e

    :cond_e
    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    iget v10, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_d

    :goto_e
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_15

    :sswitch_7
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    div-int/lit8 v8, v7, 0x5

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    div-int/lit8 v10, v9, 0x5

    sub-int/2addr v8, v10

    div-int/lit8 v10, v9, 0x5

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    const/high16 v10, 0x43480000    # 200.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    :goto_f
    sub-int v10, v4, v10

    goto :goto_e

    :cond_f
    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    div-int/lit8 v8, v7, 0x5

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x42f00000    # 120.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    iget v9, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    div-int/lit8 v10, v9, 0x5

    sub-int/2addr v8, v10

    div-int/lit8 v10, v9, 0x5

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    const/high16 v10, 0x42f00000    # 120.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    goto :goto_f

    :sswitch_8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/ubix/ssp/ad/e/a0/c;->h(Landroid/content/Context;)Z

    move-result v7

    const v9, 0xde318

    if-eqz v7, :cond_10

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x43340000    # 180.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x43340000    # 180.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_10
    check-cast v0, Lcom/ubix/ssp/ad/e/k;

    goto/16 :goto_13

    :cond_10
    iget-boolean v7, v1, Lcom/ubix/ssp/ad/j/a;->M:Z

    if-eqz v7, :cond_11

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    invoke-static/range {v18 .. v18}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    sub-int v12, v4, v12

    invoke-virtual {v0, v7, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/k;

    invoke-virtual {v0, v8}, Lcom/ubix/ssp/ad/e/k;->a(Z)V

    goto/16 :goto_15

    :cond_11
    invoke-direct {v1}, Lcom/ubix/ssp/ad/j/a;->u()Z

    move-result v7

    if-eqz v7, :cond_12

    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x43520000    # 210.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x43520000    # 210.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    :goto_11
    sub-int v11, v4, v11

    goto :goto_12

    :cond_12
    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    const/high16 v8, 0x43250000    # 165.0f

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v8, v10

    iget v10, v1, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x43250000    # 165.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    goto :goto_11

    :goto_12
    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_10

    :goto_13
    invoke-virtual {v0, v5}, Lcom/ubix/ssp/ad/e/k;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_15

    :sswitch_9
    :try_start_1
    iget v7, v1, Lcom/ubix/ssp/ad/j/a;->H:I

    if-ne v7, v8, :cond_15

    sub-int v7, v3, p2

    sub-int v8, v4, v2

    invoke-direct {v1, v7, v8}, Lcom/ubix/ssp/ad/j/a;->e(II)Z

    move-result v9

    if-nez v9, :cond_15

    const v9, 0xdbc06

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ubix/ssp/ad/e/t/a/e;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-direct {v1, v7, v8}, Lcom/ubix/ssp/ad/j/a;->d(II)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-lez v8, :cond_15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-lez v8, :cond_15

    const v8, 0xdbc06

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v0, v8, v10, v7}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_15

    :sswitch_a
    const v7, 0x493e8

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v7, v12

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v11, v7

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_15

    :sswitch_b
    const v7, 0xe0a25

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x42000000    # 32.0f

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int v8, v10, v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move/from16 v28, v10

    move v10, v7

    move v7, v9

    :goto_14
    move/from16 v9, v28

    goto/16 :goto_e

    :cond_13
    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v7

    sub-int v7, v3, v7

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    add-int/2addr v8, v10

    sub-int v8, v4, v8

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    sub-int v10, v3, v10

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v9

    sub-int v9, v4, v9

    move/from16 v28, v10

    move v10, v9

    goto :goto_14

    :sswitch_c
    const v7, 0xe0a25

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x41e00000    # 28.0f

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v12

    int-to-double v12, v12

    const-wide v14, 0x3fe0f5c28f5c28f6L    # 0.53

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    add-int/2addr v8, v11

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    move/from16 v28, v10

    move v10, v7

    move v7, v9

    move v9, v8

    move/from16 v8, v28

    goto/16 :goto_e

    :cond_14
    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v7

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x3fe0f5c28f5c28f6L    # 0.53

    mul-double/2addr v11, v13

    double-to-int v11, v11

    add-int/2addr v10, v11

    sub-int v10, v4, v10

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    invoke-static {v8}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    add-int/2addr v8, v11

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v9, v4, v9

    move/from16 v28, v9

    move v9, v8

    move v8, v10

    move/from16 v10, v28

    goto/16 :goto_e

    :cond_15
    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        0x493e8 -> :sswitch_c
        0x493ec -> :sswitch_b
        0x493f0 -> :sswitch_a
        0xdbc04 -> :sswitch_9
        0xde314 -> :sswitch_8
        0xde315 -> :sswitch_7
        0xde316 -> :sswitch_6
        0xde378 -> :sswitch_5
        0xde3dd -> :sswitch_4
        0xde441 -> :sswitch_3
        0xde4a5 -> :sswitch_2
        0xde509 -> :sswitch_1
        0xde56d -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->getCurrentRotation()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/j/a;->M:Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->x:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/j/a;->y:I

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->x()V

    new-instance p1, Lcom/ubix/ssp/ad/j/a$e;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/j/a$e;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/b;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->t()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->t()V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/ubix/ssp/ad/j/a;->t()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged outer"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/ubix/ssp/ad/j/a;->P:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/ubix/ssp/ad/j/a;->O:I

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-ne p1, v1, :cond_1

    :cond_0
    :try_start_0
    new-instance p1, Lcom/ubix/ssp/ad/j/a$a;

    invoke-direct {p1, p0}, Lcom/ubix/ssp/ad/j/a$a;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->P:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    iget p1, p0, Lcom/ubix/ssp/ad/j/a;->z:I

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a;->p:Lcom/ubix/ssp/ad/j/a$l;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :catchall_0
    :cond_3
    return-void
.end method

.method public q()V
    .locals 1

    .line 2
    new-instance v0, Lcom/ubix/ssp/ad/j/a$k;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/j/a$k;-><init>(Lcom/ubix/ssp/ad/j/a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    return-object p0
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/i;

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/a;->A:Lcom/ubix/ssp/ad/g/k/i;

    return-void
.end method

.method public setShakeSensor(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/ubix/ssp/ad/j/a;->z:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string p1, "\u5c55\u793a\u5df2\u7ecf\u7ed3\u675f\u4e0d\u518d\u5ef6\u65f6\u76d1\u542c"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/b;->setShakeSensor(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/b;->f:Lcom/ubix/ssp/ad/e/a0/s;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/j/a;->C:Z

    new-instance v1, Lcom/ubix/ssp/ad/j/a$i;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/j/a$i;-><init>(Lcom/ubix/ssp/ad/j/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    return-void
.end method
