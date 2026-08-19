.class public final Lcom/kwad/components/ad/interstitial/d;
.super Lcom/kwad/components/core/proxy/g;
.source "SourceFile"


# instance fields
.field private lo:Lcom/kwad/components/ad/interstitial/h/a;

.field private lp:Z

.field private lq:Lcom/kwad/components/ad/interstitial/g/b;

.field private final lr:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

.field private final lt:Lcom/kwad/components/core/widget/g;

.field private final mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private final mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field public mStartRenderTime:J

.field private mTimerHelper:Lcom/kwad/sdk/utils/bx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/api/KsVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/proxy/g;-><init>(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/components/ad/interstitial/d;->mStartRenderTime:J

    .line 7
    .line 8
    new-instance p1, Lcom/kwad/components/ad/interstitial/d$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/kwad/components/ad/interstitial/d$1;-><init>(Lcom/kwad/components/ad/interstitial/d;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/d;->lt:Lcom/kwad/components/core/widget/g;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/kwad/components/ad/interstitial/d;->mStartRenderTime:J

    .line 20
    .line 21
    iput-object p4, p0, Lcom/kwad/components/ad/interstitial/d;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 22
    .line 23
    new-instance p1, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    invoke-interface {p3}, Lcom/kwad/sdk/api/KsVideoPlayConfig;->isVideoSoundEnable()Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p3, 0x0

    .line 39
    :goto_0
    invoke-virtual {p1, p3}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Lcom/kwad/components/ad/interstitial/b/b;->dO()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    invoke-virtual {p1, p3}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/d;->lr:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/d;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 64
    .line 65
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/interstitial/d;->lp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/interstitial/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/proxy/g;->mActivity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/interstitial/d;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/interstitial/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/d;->dE()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static dD()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->La()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private dE()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/interstitial/d;->dD()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/kwad/components/ad/interstitial/aggregate/c;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/proxy/g;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/interstitial/aggregate/c;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/d;->e(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/kwad/components/ad/interstitial/aggregate/b;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/core/proxy/g;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/interstitial/aggregate/b;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/kwad/components/ad/interstitial/h/c;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/kwad/components/core/proxy/g;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/interstitial/h/c;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 43
    .line 44
    :goto_0
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/d;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/kwad/components/ad/interstitial/d;->lr:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 49
    .line 50
    iget-object v6, p0, Lcom/kwad/components/ad/interstitial/d;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v4, p0

    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/kwad/components/ad/interstitial/h/a;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v4, Lcom/kwad/components/core/proxy/g;->DY:Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v4, Lcom/kwad/components/core/proxy/g;->DY:Landroid/view/ViewGroup;

    .line 63
    .line 64
    iget-object v1, v4, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/d;->dF()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private dF()V
    .locals 3

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/g/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/kwad/components/ad/interstitial/g/b;-><init>(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/ad/interstitial/d$2;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/interstitial/d$2;-><init>(Lcom/kwad/components/ad/interstitial/d;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/a/a;->a(Lcom/kwad/sdk/core/j/c;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static e(Lcom/kwad/sdk/core/response/model/AdResultData;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/c;->u(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final dB()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final dC()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    new-instance v0, Lcom/kwad/components/core/widget/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/proxy/g;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/kwad/components/core/widget/f;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/d;->lt:Lcom/kwad/components/core/widget/g;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/widget/f;->setOrientationChangeListener(Lcom/kwad/components/core/widget/g;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/kwad/components/core/proxy/g;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/a/a/c;->Hl()Lcom/kwad/sdk/a/a/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/kwad/sdk/a/a/c;->Ho()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;->onPageDismiss()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 22
    .line 23
    instance-of v1, v0, Lcom/kwad/components/ad/interstitial/h/c;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Lcom/kwad/components/ad/interstitial/h/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/h/c;->fk()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cZ(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/d;->getTimerHelper()Lcom/kwad/sdk/utils/bx;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/kwad/sdk/utils/bx;->getTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    long-to-float v1, v1

    .line 58
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 59
    .line 60
    div-float/2addr v1, v2

    .line 61
    float-to-double v1, v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    double-to-int v1, v1

    .line 67
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/adlog/c;->q(Lcom/kwad/sdk/core/response/model/AdTemplate;I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-static {}, Lcom/kwad/components/core/e/a/h;->pB()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/kwad/sdk/commercial/e;->bA(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/kwad/components/core/g/a;->a(Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final g(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/kwad/components/core/e/a/h;->a(Landroid/view/Window;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/d;->dE()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/c;->eZ()Lcom/kwad/components/ad/interstitial/report/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/interstitial/report/c;->E(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/d;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kwad/sdk/commercial/convert/c;->ch(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTimerHelper()Lcom/kwad/sdk/utils/bx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mTimerHelper:Lcom/kwad/sdk/utils/bx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/bx;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/sdk/utils/bx;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mTimerHelper:Lcom/kwad/sdk/utils/bx;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->mTimerHelper:Lcom/kwad/sdk/utils/bx;

    .line 13
    .line 14
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/interstitial/b/b;->dS()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/ad/interstitial/d;->lp:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/h/a;->dH()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/h/a;->dI()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final setAdInteractionListener(Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/d;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/d;->lo:Lcom/kwad/components/ad/interstitial/h/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/h/a;->setAdInteractionListener(Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
