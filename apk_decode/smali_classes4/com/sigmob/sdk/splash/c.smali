.class public Lcom/sigmob/sdk/splash/c;
.super Lcom/sigmob/sdk/splash/b;


# instance fields
.field private final b:Lcom/sigmob/sdk/base/views/gif/e;

.field private c:Landroid/widget/ImageView;

.field private d:F

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/c;->e:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/sigmob/sdk/base/views/gif/e;

    invoke-direct {v2, p1}, Lcom/sigmob/sdk/base/views/gif/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/m;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/splash/m;-><init>(Lcom/sigmob/sdk/splash/c;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/sigmob/sdk/base/blurkit/a;->a()Lcom/sigmob/sdk/base/blurkit/a;

    move-result-object v1

    const/16 v2, 0x19

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2, v3}, Lcom/sigmob/sdk/base/blurkit/a;->a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/c;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/c;->e:Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    if-lez v0, :cond_1

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v0, v1

    div-double/2addr v2, v0

    iget v0, p0, Lcom/sigmob/sdk/splash/c;->d:F

    float-to-double v0, v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/l;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/l;-><init>(Lcom/sigmob/sdk/splash/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/c;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    return-object p1
.end method

.method private synthetic d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/splash/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/c;->e()V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/splash/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/c;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/splash/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/c;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/splash/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/c;->d()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/splash/b;->a()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 13

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "imageView is null."

    :goto_0
    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "adUnit is null."

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "filePath is null."

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/czhj/sdk/common/utils/ImageTypeUtil;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "action.interstitial.show"

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-static {v0}, Lcom/czhj/sdk/common/utils/FileUtil;->readBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/gif/e;->setBytes([B)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    new-instance v1, Lcom/sigmob/sdk/splash/n;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/n;-><init>(Lcom/sigmob/sdk/splash/c;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/gif/e;->setOnFrameAvailable(Lcom/sigmob/sdk/base/views/gif/e$c;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/e;->d()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v5}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5
    const-string v11, "webp"

    const-string v12, "tif"

    const-string v6, "git"

    const-string v7, "jpeg"

    const-string v8, "jpg"

    const-string v9, "png"

    const-string v10, "bmp"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v1, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_4

    if-lez v1, :cond_4

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v6, v8

    int-to-double v1, v2

    div-double/2addr v6, v1

    iget v1, p0, Lcom/sigmob/sdk/splash/c;->d:F

    float-to-double v1, v1

    cmpg-double v1, v6, v1

    if-gez v1, :cond_7

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/splash/o;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/o;-><init>(Lcom/sigmob/sdk/splash/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_8
    return v1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/splash/b;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/e;->e()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/sigmob/sdk/splash/b;->c()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/e;->d()V

    return-void
.end method

.method public bridge synthetic getDuration()I
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/splash/b;->getDuration()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->b:Lcom/sigmob/sdk/base/views/gif/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/c;->c:Landroid/widget/ImageView;

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/sigmob/sdk/splash/c;->d:F

    return-void
.end method
