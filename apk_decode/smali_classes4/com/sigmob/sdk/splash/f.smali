.class public final Lcom/sigmob/sdk/splash/f;
.super Lcom/sigmob/sdk/manager/b;

# interfaces
.implements Lcom/sigmob/sdk/base/common/h$b;
.implements Lcom/sigmob/sdk/base/network/f$a;
.implements Lcom/sigmob/sdk/splash/e;


# static fields
.field private static final h:I = 0x20001


# instance fields
.field private final i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private final j:Ljava/lang/Runnable;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final n:Lcom/sigmob/sdk/splash/d;

.field private o:Lcom/sigmob/windad/Splash/WindSplashADListener;

.field private p:Lcom/sigmob/sdk/splash/i;

.field private q:I

.field private r:I

.field private s:Z

.field private final t:Landroid/os/Handler;

.field private u:J


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAdRequest;Lcom/sigmob/windad/Splash/WindSplashADListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/sigmob/sdk/manager/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/splash/f;->q:I

    new-instance v0, Lcom/sigmob/sdk/splash/f$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/splash/f$1;-><init>(Lcom/sigmob/sdk/splash/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/splash/f$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/f$2;-><init>(Lcom/sigmob/sdk/splash/f;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Lcom/sigmob/windad/WindAdRequest;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    new-instance p1, Lcom/sigmob/sdk/splash/d;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/splash/d;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/f;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p0
.end method

.method private a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 8

    .line 3
    new-instance v7, Lcom/sigmob/sdk/splash/s;

    invoke-direct {v7}, Lcom/sigmob/sdk/splash/s;-><init>()V

    const-string v0, "request"

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private synthetic a(Lcom/sigmob/sdk/base/models/BaseAdUnit;I)V
    .locals 0

    .line 8
    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sigmob/sdk/splash/f;->s:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/f;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/splash/f;->a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/splash/f;Lcom/sigmob/windad/WindAdError;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/windad/WindAdError;Z)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/WindAdError;Z)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isLoadError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/czhj/sdk/logger/SigmobLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->p()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/manager/b;->c(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {p2, p1, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-interface {p2, p1, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/splash/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 13
    instance-of v0, p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setAdx_id(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 4

    .line 18
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/splash/i;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v1, :cond_1

    if-gtz v2, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v0, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_3

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/czhj/sdk/common/ClientMetadata;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :cond_3
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :cond_5
    if-lez v1, :cond_6

    if-lez v2, :cond_6

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->setAspectRatio(F)V

    :cond_6
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/i;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    new-instance v1, Lcom/sigmob/sdk/splash/r;

    invoke-direct {v1, p0, p2}, Lcom/sigmob/sdk/splash/r;-><init>(Lcom/sigmob/sdk/splash/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->setViewStatusListener(Lcom/sigmob/sdk/splash/i$a;)V

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->d(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0, p2, p1}, Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/splash/f;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 5

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const-string v2, "getAdUnitCache: request is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/FileUtil;->readFromCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/czhj/sdk/common/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const-string v2, "getAdUnitCache: ad is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object v2, v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->currency:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const-string v2, "getAdUnitCache: Inconsistent currency."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getTraceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setTraceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRequestSceneType(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdUnitCache: vid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_3
    return-object v0
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEnd: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/splash/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/splash/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/splash/f;->r:I

    return p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/splash/f;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/splash/f;->r:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sigmob/sdk/splash/f;->r:I

    return v0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/splash/f;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/splash/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/splash/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/splash/f;Lcom/sigmob/sdk/base/models/BaseAdUnit;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;I)V

    return-void
.end method

.method private t()Landroid/app/Activity;
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivity: activityFromView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private u()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExistCache: cached = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1, v2, p0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    const-string v1, "isExistCache: ready"

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/manager/b;->l(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    return v0
.end method

.method private declared-synchronized v()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->isDisableAutoHideAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClose(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 2

    .line 4
    invoke-static {p1}, Lcom/sigmob/windad/WindAdError;->getWindAdError(I)Lcom/sigmob/windad/WindAdError;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p3, p1, p2}, Lcom/sigmob/windad/WindAdError;->setErrorMessage(ILjava/lang/String;)V

    :cond_0
    const-string v0, "respond"

    const-string v1, "0"

    invoke-static {v0, v1, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/sigmob/sdk/splash/f;->a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/windad/WindAdError;Z)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/f;->t()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/i;->d()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->p()V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 6
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/splash/f;->a(Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sigmob/sdk/splash/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/d;->c:Lcom/sigmob/sdk/splash/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/d;->c:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/a;->l()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/splash/f;->r:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    iget v1, p0, Lcom/sigmob/sdk/splash/f;->r:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->b_()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadStart: placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 4

    .line 9
    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadEnd: placementId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/splash/f;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/FileUtil;->writeToCache(Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_1
    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result p2

    iget-object v1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadEnd: sceneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0, p1, v1}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    sget-object v1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    if-ne p1, v1, :cond_4

    sget-object p1, Lcom/sigmob/sdk/base/j;->c:Lcom/sigmob/sdk/base/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p1

    if-eq p2, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->p()V

    sget-object p1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusReady:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/manager/b;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sigmob/sdk/splash/q;

    invoke-direct {p2, p0, v0}, Lcom/sigmob/sdk/splash/q;-><init>(Lcom/sigmob/sdk/splash/f;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->o()V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/j;Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-static {p6}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/j;)Z

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sigmob/sdk/manager/b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setOriginVid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/b;->e:Ljava/lang/String;

    :cond_1
    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setOriginPrice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p6}, Lcom/sigmob/sdk/base/j;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setRequest_scene_type(I)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setBidToken(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setBidFloor(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, p3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setCurrency(Ljava/lang/String;)V

    invoke-static {p7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/manager/b;->j()Ljava/lang/String;

    move-result-object p7

    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1, p7}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setTraceId(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadAd: preload = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", sceneType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/sigmob/sdk/base/j;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/f;->u()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {p1, p0}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    const-wide/16 p4, 0x3e8

    mul-long/2addr p2, p4

    const p4, 0x20001

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/j;)V
    .locals 8

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/j;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->g()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->l()Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x2d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/splash/f;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/j;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/splash/f;->k:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess(real): vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/sigmob/sdk/manager/b;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/b;->a(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/splash/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/windad/WindAdError;Z)V

    return-void

    :cond_1
    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, p2, p0}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    return-void
.end method

.method public a_()V
    .locals 0

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->p()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action.interstitial.dismiss"

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/f;->t()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/i;->e()V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 5
    const-string v0, "start"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->m()V

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/i;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/sigmob/sdk/splash/f;->r:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/splash/f;->r:I

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    iget v0, p0, Lcom/sigmob/sdk/splash/f;->r:I

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/splash/i;->setDuration(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/splash/i;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdShow(Ljava/lang/String;)V

    :cond_2
    iget p1, p0, Lcom/sigmob/sdk/splash/f;->r:I

    iput p1, p0, Lcom/sigmob/sdk/splash/f;->q:I

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterstitialFailed: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/windad/WindAdError;Z)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v0, 0x0

    const-string v1, "load"

    invoke-static {v1, p1, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public b_()V
    .locals 4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    const-string v3, "play"

    invoke-static {v3, v0, v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/windad/WindAdError;Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->n()V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/f;->s:Z

    const-string v0, "click"

    invoke-virtual {p0, v0, p1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/utils/d;->b(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/utils/d$a;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/d;->a(Lcom/sigmob/sdk/base/utils/d$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClick(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/i;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/splash/f;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 7

    .line 3
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {p0, v1}, Lcom/sigmob/sdk/splash/f;->b(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReady: vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isExpiredAd()Z

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    iget-object v4, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/splash/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v3

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady: ready = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isExist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isExpired = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return v0
.end method

.method public c_()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->p:Lcom/sigmob/sdk/splash/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/i;->setDuration(I)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdSkip(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 8

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/splash/f;->u:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onInterstitialDismissed: unavailable callback."

    invoke-static {p1, v1, v0}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/sigmob/sdk/splash/f;->u:J

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusClose:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/manager/b;->b:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Splash/WindSplashADListener;->onSplashAdClose(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/splash/p;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/p;-><init>(Lcom/sigmob/sdk/splash/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/manager/b;->l()Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x2d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lcom/sigmob/sdk/base/j;->d:Lcom/sigmob/sdk/base/j;

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/splash/f;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/j;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 0

    return-void
.end method

.method public e()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    return-void
.end method

.method public f()Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object v0
.end method

.method public g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->k:Ljava/util/List;

    return-void
.end method

.method public i()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/splash/k;

    invoke-direct {v0}, Lcom/sigmob/sdk/splash/k;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/k;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->n:Lcom/sigmob/sdk/splash/d;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/f;->w()V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/f;->v()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->o:Lcom/sigmob/windad/Splash/WindSplashADListener;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->l:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->p()V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/manager/b;->b(Lcom/sigmob/sdk/manager/b;)V

    return-void
.end method

.method public o()V
    .locals 4

    .line 2
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    const-string v3, "play"

    invoke-static {v3, v0, v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sigmob/sdk/splash/f;->a(Lcom/sigmob/windad/WindAdError;Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/f;->n()V

    return-void
.end method

.method public p()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->h(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->i(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->m:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/manager/b;->j(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
