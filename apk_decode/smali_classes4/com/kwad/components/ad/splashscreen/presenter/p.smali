.class public final Lcom/kwad/components/ad/splashscreen/presenter/p;
.super Lcom/kwad/components/ad/splashscreen/presenter/e;
.source "SourceFile"


# instance fields
.field private HV:Lcom/kwad/components/ad/splashscreen/e/a;

.field private IP:Lcom/kwad/components/core/e/d/d;

.field private IQ:Landroid/view/View;

.field private IR:Landroid/widget/TextView;

.field private IS:Landroid/widget/TextView;

.field private IT:Landroid/widget/ImageView;

.field private IU:Lcom/kwad/components/ad/splashscreen/widget/d;

.field private IV:Z

.field private IW:Z

.field private If:Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

.field private Ig:Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

.field private Im:D

.field private In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

.field private Io:F

.field private Ip:F

.field private Iq:F

.field private Ir:F

.field private Is:F

.field private mActionBarHeight:F

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IV:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IW:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Iq:F

    return p1
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/presenter/p;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/presenter/p;FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kwad/components/ad/splashscreen/presenter/p;->b(FFFF)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/presenter/p;Landroid/view/MotionEvent;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->d(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/presenter/p;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IW:Z

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ir:F

    return p1
.end method

.method public static synthetic b(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ig:Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    return-object p0
.end method

.method private b(FFFF)V
    .locals 9

    sub-float v0, p3, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v4, p4, p2

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 6
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mS()Landroid/content/Context;

    move-result-object v2

    double-to-float v0, v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSlideTouchUp: distance="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "dp, minDistance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Im:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashSlideBackupPresenter"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;FFFF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    const-string p1, "handleSlideTouchUp: slide convert allowed, executing conversion"

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 11
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mS()Landroid/content/Context;

    move-result-object v5

    new-instance v8, Lcom/kwad/components/ad/splashscreen/presenter/p$6;

    invoke-direct {v8, p0, v0}, Lcom/kwad/components/ad/splashscreen/presenter/p$6;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/p;F)V

    const/4 v4, 0x1

    const/16 v6, 0x99

    const/4 v7, 0x1

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/kwad/components/ad/splashscreen/h;->a(ILandroid/content/Context;IILcom/kwad/components/ad/splashscreen/h$a;)V

    return-void

    .line 13
    :cond_0
    const-string p1, "handleSlideTouchUp: slide convert not allowed"

    invoke-static {v2, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/ad/splashscreen/presenter/p;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IV:Z

    return p1
.end method

.method public static synthetic c(Lcom/kwad/components/ad/splashscreen/presenter/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Iq:F

    return p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Io:F

    return p1
.end method

.method public static synthetic d(Lcom/kwad/components/ad/splashscreen/presenter/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ir:F

    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ip:F

    return p1
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/presenter/p;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    const-string v0, "SplashSlideBackupPresenter"

    if-eqz p1, :cond_0

    .line 4
    const-string p1, "handleSingleTouchUp: click on ActionBar area"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->nc()V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/components/ad/splashscreen/h;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    const-string p1, "handleSingleTouchUp: full screen click enabled"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->nd()V

    return-void

    .line 9
    :cond_1
    const-string p1, "handleSingleTouchUp: full screen click disabled, no action"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Is:F

    return p1
.end method

.method public static synthetic e(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->If:Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    return-object p0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 3
    iget-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IV:Z

    const-string v1, "SplashSlideBackupPresenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IW:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Iq:F

    add-float/2addr v0, v3

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v3, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ir:F

    add-float/2addr p1, v3

    .line 6
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Io:F

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Is:F

    add-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ip:F

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mActionBarHeight:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    const/4 v2, 0x1

    .line 7
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isClickOnActionBar: touchX="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", touchY="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", inRange="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 8
    :cond_2
    :goto_0
    const-string p1, "isClickOnActionBar: position not ready"

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static synthetic f(Lcom/kwad/components/ad/splashscreen/presenter/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Io:F

    return p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/splashscreen/presenter/p;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mActionBarHeight:F

    return p1
.end method

.method public static synthetic g(Lcom/kwad/components/ad/splashscreen/presenter/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ip:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/kwad/components/ad/splashscreen/presenter/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Is:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/kwad/components/ad/splashscreen/presenter/p;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mActionBarHeight:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/kwad/components/ad/splashscreen/presenter/p;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IS:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method private jq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IU:Lcom/kwad/components/ad/splashscreen/widget/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/splashscreen/widget/d;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->If:Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kwad/components/ad/splashscreen/widget/c;->fY()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public static synthetic k(Lcom/kwad/components/ad/splashscreen/presenter/p;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method private mS()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/mvp/Presenter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IQ:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method

.method private mT()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kwad/components/ad/splashscreen/h;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IP:Lcom/kwad/components/core/e/d/d;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adMatrixInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo;->adDataV2:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdDataV2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdDataV2;->splashInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashInfo;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashInfo;->interactionInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$AdInteractionInfo;->slideInfo:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 28
    .line 29
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->convertDistance:I

    .line 30
    .line 31
    int-to-double v0, v0

    .line 32
    iput-wide v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Im:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    return v0
.end method

.method private mU()V
    .locals 2

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_splash_slideTouchView:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewStub;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ig:Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v0, Lcom/kwad/sdk/R$id;->ksad_splash_slideview_root:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ig:Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ig:Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/p$2;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/splashscreen/presenter/p$2;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/p;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;->setOnSlideTouchListener(Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView$a;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->Ig:Lcom/kwad/components/ad/splashscreen/widget/KsSplashSlidePathView;

    .line 43
    .line 44
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/p$3;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/splashscreen/presenter/p$3;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/p;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private mV()V
    .locals 2

    .line 1
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_backup_layout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewStub;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IQ:Landroid/view/View;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_backup_root:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IQ:Landroid/view/View;

    .line 25
    .line 26
    :goto_0
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_backup_title:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IR:Landroid/widget/TextView;

    .line 35
    .line 36
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_backup_sub_title:I

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IS:Landroid/widget/TextView;

    .line 45
    .line 46
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_backup_hand:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IT:Landroid/widget/ImageView;

    .line 55
    .line 56
    sget v0, Lcom/kwad/sdk/R$id;->ksad_slide_backup_round_bg:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 63
    .line 64
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->If:Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mW()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mX()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->If:Lcom/kwad/components/ad/splashscreen/widget/KsSlideRoundView;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/p$4;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/splashscreen/presenter/p$4;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/p;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method private mW()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IT:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/splashscreen/widget/d;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mS()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/kwad/components/ad/splashscreen/widget/d;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IU:Lcom/kwad/components/ad/splashscreen/widget/d;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IT:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private mX()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IR:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->title:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mY()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->title:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IR:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IS:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mZ()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method private mY()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 2
    .line 3
    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->style:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "\u5411\u4e0a\u6ed1\u52a8"

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, "\u5411\u53f3\u6ed1\u52a8"

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    const-string v0, "\u5411\u5de6\u6ed1\u52a8"

    .line 18
    .line 19
    return-object v0
.end method

.method private mZ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->subtitle:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->subtitle:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IP:Lcom/kwad/components/core/e/d/d;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/kwad/components/core/e/d/d;->qn()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->In:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$SplashSlideInfo;->downloadTexts:Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;

    .line 35
    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    const/16 v2, 0xc

    .line 41
    .line 42
    if-eq v0, v2, :cond_1

    .line 43
    .line 44
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;->adActionDescription:Ljava/lang/String;

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;->openAppLabel:Ljava/lang/String;

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    iget-object v0, v1, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$DownloadTexts;->installAppLabel:Ljava/lang/String;

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dV(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    const-string v0, "\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    .line 66
    .line 67
    :cond_4
    return-object v0
.end method

.method private na()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->HV:Lcom/kwad/components/ad/splashscreen/e/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/p$5;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mS()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1, v2}, Lcom/kwad/components/ad/splashscreen/presenter/p$5;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/p;Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->HV:Lcom/kwad/components/ad/splashscreen/e/a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IP:Lcom/kwad/components/core/e/d/d;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/e/d/d;->b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/splashscreen/e/a;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private nb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IQ:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0xf3

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/adlog/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/components/core/webview/tachikoma/e/a;->zA()Lcom/kwad/components/core/webview/tachikoma/e/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/webview/tachikoma/e/a;->cl(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->jq()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private nc()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mS()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x35

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/kwad/components/ad/splashscreen/h;->c(ILandroid/content/Context;II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private nd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mS()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x35

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/kwad/components/ad/splashscreen/h;->c(ILandroid/content/Context;II)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/splashscreen/presenter/e;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "SplashSlideBackupPresenter"

    .line 9
    .line 10
    const-string v1, "onBind: mCallerContext is null"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mT()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mU()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->mV()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->na()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/p;->nb()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/p$1;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/splashscreen/presenter/p$1;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/p;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->mStartTime:J

    .line 9
    .line 10
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->HV:Lcom/kwad/components/ad/splashscreen/e/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/p;->IP:Lcom/kwad/components/core/e/d/d;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/e/d/d;->c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
