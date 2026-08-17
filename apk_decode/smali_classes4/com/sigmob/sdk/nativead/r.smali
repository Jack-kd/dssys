.class public Lcom/sigmob/sdk/nativead/r;
.super Lcom/sigmob/sdk/nativead/s;

# interfaces
.implements Lcom/sigmob/sdk/nativead/l;
.implements Lcom/sigmob/sdk/videoplayer/b;


# static fields
.field public static e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static f:J


# instance fields
.field private h:Lcom/sigmob/sdk/videoplayer/f;

.field private i:Lcom/sigmob/sdk/nativead/o;

.field private j:Lcom/sigmob/sdk/nativead/t;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/content/Context;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sigmob/sdk/nativead/r;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/nativead/s;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/r;->k:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/r;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/videoplayer/f;->setVideoAdViewListener(Lcom/sigmob/sdk/videoplayer/b;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/videoplayer/f;->setVideoAdStatusListener(Lcom/sigmob/sdk/nativead/l;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 5
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sigmob/sdk/nativead/n;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sigmob/sdk/nativead/n;

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/c;->a(Landroid/app/Activity;)I

    move-result v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoplayer/f;->getVideoHeight()I

    move-result v5

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoplayer/f;->getVideoWidth()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_0

    invoke-virtual {p1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    add-int/2addr v2, v3

    :goto_0
    invoke-virtual {v4}, Lcom/sigmob/sdk/videoplayer/f;->getBottomLayoutView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v3, v7, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoplayer/f;->getBottomLayoutView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v4}, Lcom/sigmob/sdk/videoplayer/f;->getTopLayoutView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x420c0000    # 35.0f

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoplayer/f;->getTopLayoutView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 8

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getBottomLayoutView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v6

    iget-object v7, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getBottomLayoutView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getTopLayoutView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iget-object v5, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getTopLayoutView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getAppContainer()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private m()V
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/base/blurkit/a;->a()Lcom/sigmob/sdk/base/blurkit/a;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v1, v3}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getBlurImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getAppContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/r;->k:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sigmob/sdk/nativead/r;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method private n()V
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAppInfoView()Lcom/sigmob/sdk/nativead/n;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getVideoWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAdUnit()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdPercent()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v0, v1

    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/l;->a()V

    return-void
.end method

.method public a(JJ)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/nativead/l;->a(JJ)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iput-wide p3, p0, Lcom/sigmob/sdk/nativead/r;->o:J

    :cond_1
    return-void
.end method

.method public a(Lcom/sigmob/sdk/nativead/ac;)V
    .locals 4

    .line 6
    invoke-super {p0, p1}, Lcom/sigmob/sdk/nativead/s;->a(Lcom/sigmob/sdk/nativead/ac;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAdUnit()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    invoke-direct {p0, p0}, Lcom/sigmob/sdk/nativead/r;->a(Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoProxyFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->setUp(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProxyVideoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/sigmob/sdk/nativead/j;->a:Lcom/sigmob/sdk/nativead/j;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/nativead/r;->setUIStyle(Lcom/sigmob/sdk/nativead/j;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->b(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getThumbView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getAppView()Lcom/sigmob/sdk/nativead/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCTAText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/sigmob/sdk/nativead/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAdConfig()Lcom/sigmob/sdk/nativead/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/nativead/e;->n()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->setSoundChange(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/o;->getCtaView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->u()V

    return v3

    :cond_1
    iget v2, v0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->m()V

    return v3

    :cond_2
    return v1
.end method

.method public c()V
    .locals 2

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/s;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->k:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->l:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->d()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->i()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->setVideoAdViewListener(Lcom/sigmob/sdk/videoplayer/b;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->setVideoAdStatusListener(Lcom/sigmob/sdk/nativead/l;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoplayer/f;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->a()V

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/m;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->E()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/s;->e()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->C()V

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/f;->getVideoHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/f;->getVideoWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    sget-object v0, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    return-void
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/sigmob/sdk/nativead/r;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/videoplayer/c;->b(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/f;->getVideoHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/f;->getVideoWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppView()Lcom/sigmob/sdk/nativead/o;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/nativead/o;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/nativead/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    return-object v0
.end method

.method public getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/nativead/t;->g()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    return-object v0
.end method

.method public getSigVideoAdController()Lcom/sigmob/sdk/nativead/t;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/nativead/u;

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/nativead/u;-><init>(Lcom/sigmob/sdk/videoplayer/f;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->j:Lcom/sigmob/sdk/nativead/t;

    return-object v0
.end method

.method public getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/videoplayer/f;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/r;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/videoplayer/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->h:Lcom/sigmob/sdk/videoplayer/f;

    return-object v0
.end method

.method public getVideoContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/s;->getVideoDuration()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method public getVideoProgress()D
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/s;->getVideoProgress()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    return-wide v0
.end method

.method public getVideoSurferViewHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getVideoSurferViewHeight()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sigmob/sdk/nativead/r;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    iget v0, v0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    iget v0, v0, Lcom/sigmob/sdk/videoplayer/f;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sigmob/sdk/nativead/r;->f:J

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->b()Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/s;->i()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/nativead/s;->j()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->D()V

    return-void
.end method

.method public onVideoCompleted()V
    .locals 3

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/r;->m()V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/m;->d:Lcom/sigmob/sdk/nativead/j;

    sget-object v1, Lcom/sigmob/sdk/nativead/j;->a:Lcom/sigmob/sdk/nativead/j;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getAppView()Lcom/sigmob/sdk/nativead/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/r;->l()V

    :cond_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getAppView()Lcom/sigmob/sdk/nativead/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/videoplayer/e;->b:Lcom/sigmob/sdk/videoplayer/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    return-void

    :cond_2
    sget-object v1, Lcom/sigmob/sdk/nativead/j;->b:Lcom/sigmob/sdk/nativead/j;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sigmob/sdk/nativead/j;->c:Lcom/sigmob/sdk/nativead/j;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/nativead/r;->setUIStyle(Lcom/sigmob/sdk/nativead/j;)V

    :cond_3
    return-void
.end method

.method public onVideoError(Lcom/sigmob/windad/WindAdError;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoError(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public onVideoLoad()V
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoLoad()V

    return-void
.end method

.method public onVideoPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoPause()V

    return-void
.end method

.method public onVideoResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoResume()V

    return-void
.end method

.method public onVideoStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAdUnit()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/f;->getAppContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/nativead/r;->k:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/ImageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/r;->l:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/ImageUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/f;->getVideoWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/f;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->updateRealAdPercent(D)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/m;->d:Lcom/sigmob/sdk/nativead/j;

    sget-object v1, Lcom/sigmob/sdk/nativead/j;->c:Lcom/sigmob/sdk/nativead/j;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sigmob/sdk/nativead/j;->b:Lcom/sigmob/sdk/nativead/j;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/nativead/r;->setUIStyle(Lcom/sigmob/sdk/nativead/j;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getSigAdVideoStatusListener()Lcom/sigmob/sdk/nativead/l;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;->onVideoStart()V

    return-void
.end method

.method public setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/videoplayer/f;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUIStyle(Lcom/sigmob/sdk/nativead/j;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAdConfig()Lcom/sigmob/sdk/nativead/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/s;->getAdUnit()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/sigmob/sdk/nativead/s;->setUIStyle(Lcom/sigmob/sdk/nativead/j;)V

    sget-object v2, Lcom/sigmob/sdk/nativead/r$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_8

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq p1, v5, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->a:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->c:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->d:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->b:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->e:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v3}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    :goto_1
    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->f:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v3}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_5
    invoke-virtual {p0}, Lcom/sigmob/sdk/nativead/r;->getVideoAdView()Lcom/sigmob/sdk/videoplayer/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/e;->o()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/sigmob/sdk/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move p1, v4

    goto :goto_3

    :cond_7
    :goto_2
    move p1, v3

    :goto_3
    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/videoplayer/f;->setSoundChange(Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->a:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->c:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v3}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->d:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v3}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->e:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->b:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/r;->m:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->a:Lcom/sigmob/sdk/videoplayer/e;

    iget v2, v1, Lcom/sigmob/sdk/videoplayer/f;->w:I

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    invoke-virtual {v1, p1, v2}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->c:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->d:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->e:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object p1, Lcom/sigmob/sdk/videoplayer/e;->b:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, p1, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    sget-object v2, Lcom/sigmob/sdk/videoplayer/e;->f:Lcom/sigmob/sdk/videoplayer/e;

    invoke-virtual {v1, v2, v4}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/e;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v4

    goto :goto_6

    :cond_b
    :goto_5
    move v0, v3

    :goto_6
    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/videoplayer/f;->setSoundChange(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    if-eqz v0, :cond_e

    iget v2, v1, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v5, 0x6

    if-eq v2, v5, :cond_c

    const/4 v5, 0x7

    if-ne v2, v5, :cond_e

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/r;->l()V

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/r;->i:Lcom/sigmob/sdk/nativead/o;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1, v3}, Lcom/sigmob/sdk/videoplayer/f;->a(Lcom/sigmob/sdk/videoplayer/e;Z)V

    :cond_e
    invoke-direct {p0}, Lcom/sigmob/sdk/nativead/r;->n()V

    return-void
.end method
