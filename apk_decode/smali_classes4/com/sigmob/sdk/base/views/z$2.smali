.class Lcom/sigmob/sdk/base/views/z$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/z;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/z;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/z;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/view/O0;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/core/view/O0;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Le/c;->a(Landroid/view/DisplayCutout;)I

    move-result v0

    return v0

    :cond_0
    return v2
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const-string v0, "RecommendDialog onEndCardShow()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 2
    const-string p1, "RecommendDialog onReward()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(IIIILcom/sigmob/sdk/mraid/b$a;Z)V
    .locals 6

    .line 3
    iget-object p5, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p5}, Lcom/sigmob/sdk/base/views/z;->d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/z;->d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/videoplayer/c;->n(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/z$2;->i()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecommendDialog Origin onResize :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    int-to-float p1, p1

    invoke-static {v3}, Lcom/sigmob/sdk/base/views/z;->d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    invoke-static {v3, p1}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    int-to-float p2, p2

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;I)I

    int-to-float p1, p3

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    int-to-float p2, p4

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->d(Lcom/sigmob/sdk/base/views/z;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->e(Lcom/sigmob/sdk/base/views/z;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_2

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->f(Lcom/sigmob/sdk/base/views/z;)I

    move-result p3

    add-int/2addr p3, p1

    if-le p3, p5, :cond_1

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    sub-int/2addr p5, p1

    invoke-static {p3, p5}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;I)I

    :cond_1
    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->g(Lcom/sigmob/sdk/base/views/z;)I

    move-result p3

    add-int/2addr p3, p2

    if-le p3, v0, :cond_2

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;I)I

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RecommendDialog onResize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p4}, Lcom/sigmob/sdk/base/views/z;->f(Lcom/sigmob/sdk/base/views/z;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p4}, Lcom/sigmob/sdk/base/views/z;->g(Lcom/sigmob/sdk/base/views/z;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->f(Lcom/sigmob/sdk/base/views/z;)I

    move-result p3

    if-lez p3, :cond_3

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->g(Lcom/sigmob/sdk/base/views/z;)I

    move-result p3

    if-gtz p3, :cond_4

    :cond_3
    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    const/4 p4, 0x1

    invoke-static {p3, p4}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;Z)Z

    :cond_4
    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->e(Lcom/sigmob/sdk/base/views/z;)Landroid/view/View;

    move-result-object p3

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->e(Lcom/sigmob/sdk/base/views/z;)Landroid/view/View;

    move-result-object p1

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->f(Lcom/sigmob/sdk/base/views/z;)I

    move-result p2

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p3}, Lcom/sigmob/sdk/base/views/z;->g(Lcom/sigmob/sdk/base/views/z;)I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->e(Lcom/sigmob/sdk/base/views/z;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->e(Lcom/sigmob/sdk/base/views/z;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 4
    const-string p1, "RecommendDialog onLoaded()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendDialog onRenderProcessGone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;Z)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 6
    const-string v0, "companion_click"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecommendDialog onCompanionClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "y"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v4}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {p1, v1, v1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->c(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/net/URI;ILjava/lang/String;)V
    .locals 10

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendDialog  onOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "====="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "click"

    const-string v1, "0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string p3, "type"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string v4, "x"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "y"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "disable_landing"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v7, "feDisable"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    xor-int/2addr v7, v3

    :try_start_3
    iget-object v8, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v8}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p3, v3, :cond_0

    iget-object p3, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {p3, v0}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-object v4, p2

    :goto_0
    move v2, v6

    goto :goto_2

    :cond_0
    :goto_1
    move-object v9, p2

    move v8, v7

    move v7, v2

    move v2, v6

    goto :goto_3

    :catch_1
    move-object v4, p2

    move v7, v3

    goto :goto_0

    :catch_2
    move-object v4, p2

    :catch_3
    move v7, v3

    :goto_2
    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V

    move-object v9, v4

    move v8, v7

    move v7, v3

    goto :goto_3

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V

    move v7, v3

    move v8, v7

    move-object v9, v4

    :goto_3
    if-nez v2, :cond_3

    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->h(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->c(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v3

    sget-object v4, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_3
    :goto_4
    iget-object p2, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p2}, Lcom/sigmob/sdk/base/views/z;->c(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v3

    sget-object v4, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/z;->b(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/mraid/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v9}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;)V

    :goto_5
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    const-string p1, "RecommendDialog onMute()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const-string v0, "RecommendDialog onShowSkipTime()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 2
    const-string p1, "RecommendDialog onSkip()"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "RecommendDialog onExpand()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "RecommendDialog onFailedToLoad()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;Z)Z

    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "RecommendDialog onUnload()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    const-string v1, "closecard_close"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/z;->c()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "RecommendDialog onClose()"

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/base/views/z$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/z$2;->a:Lcom/sigmob/sdk/base/views/z;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/z;->a(Lcom/sigmob/sdk/base/views/z;)Lcom/sigmob/sdk/base/views/z$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/z$a;->onCloseClick()V

    :cond_0
    return-void
.end method
