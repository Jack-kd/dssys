.class public final Lcom/kwad/components/ad/c/i;
.super Lcom/kwad/components/core/n/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/components/core/n/d<",
        "Lcom/kwad/components/ad/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field private bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private bT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private bV:Lcom/kwad/sdk/api/KsBannerAd$BannerAdInteractionListener;

.field private bW:Lcom/kwad/components/ad/c/d;

.field private context:Landroid/content/Context;

.field private cp:Lcom/kwad/components/ad/c/f;

.field private mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mStartRenderTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/n/d;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/components/ad/c/i;->mStartRenderTime:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/kwad/components/ad/c/i;->context:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/kwad/components/ad/c/i;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/kwad/components/ad/c/i;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/kwad/components/ad/c/i;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/kwad/components/ad/c/i;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/kwad/components/ad/c/i;->bT:Ljava/util/List;

    .line 29
    .line 30
    iput-object p3, p0, Lcom/kwad/components/ad/c/i;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/kwad/components/core/n/d;->tp()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/mvp/Presenter;
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    new-instance v0, Lcom/kwad/sdk/mvp/Presenter;

    invoke-direct {v0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/kwad/components/ad/c/e/a;

    invoke-direct {p1, p0}, Lcom/kwad/components/ad/c/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Lcom/kwad/components/ad/c/d/c;

    invoke-direct {p0}, Lcom/kwad/components/ad/c/d/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/c/i;)Lcom/kwad/sdk/mvp/Presenter;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/kwad/components/core/n/d;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    return-object p0
.end method

.method private am()Lcom/kwad/components/ad/c/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/components/ad/c/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/n/d;->oC:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/high16 v3, 0x42c80000    # 100.0f

    .line 10
    .line 11
    mul-float/2addr v2, v3

    .line 12
    float-to-int v2, v2

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/kwad/components/ad/c/f;-><init>(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/c/i;->cp:Lcom/kwad/components/ad/c/f;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/kwad/components/ad/c/b;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/kwad/components/ad/c/b;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->bV:Lcom/kwad/sdk/api/KsBannerAd$BannerAdInteractionListener;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/sdk/api/KsBannerAd$BannerAdInteractionListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->bW:Lcom/kwad/components/ad/c/d;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/b;->setBannerUpdateAdResultDataListener(Lcom/kwad/components/ad/c/d;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/kwad/components/ad/c/b;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 44
    .line 45
    sget v1, Lcom/kwad/sdk/R$id;->ksad_banner_base_content:I

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    iput-object v1, v0, Lcom/kwad/components/ad/c/b;->bQ:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/kwad/components/ad/c/i;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/offline/api/tk/model/StyleTemplate;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/kwad/components/ad/c/b;->bX:Lcom/kwad/components/offline/api/tk/model/StyleTemplate;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->bT:Ljava/util/List;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/kwad/components/ad/c/b;->bT:Ljava/util/List;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->context:Landroid/content/Context;

    .line 68
    .line 69
    iput-object v1, v0, Lcom/kwad/components/ad/c/b;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 72
    .line 73
    iput-object v1, v0, Lcom/kwad/components/ad/c/b;->bS:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 74
    .line 75
    iget-wide v1, p0, Lcom/kwad/components/ad/c/i;->mStartRenderTime:J

    .line 76
    .line 77
    iput-wide v1, v0, Lcom/kwad/components/ad/c/b;->bU:J

    .line 78
    .line 79
    new-instance v1, Lcom/kwad/components/ad/c/i$1;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/c/i$1;-><init>(Lcom/kwad/components/ad/c/i;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/c/b;->a(Lcom/kwad/components/ad/c/b$a;)V

    .line 85
    .line 86
    .line 87
    return-object v0
.end method

.method private static c(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/offline/api/tk/model/StyleTemplate;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/b;->eo(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/response/helper/b;->t(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/kwad/components/offline/api/tk/model/StyleTemplate;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/kwad/components/offline/api/tk/model/StyleTemplate;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$BaseMatrixTemplate;->templateId:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/kwad/components/offline/api/tk/model/StyleTemplate;->templateId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;->templateMd5:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/kwad/components/offline/api/tk/model/StyleTemplate;->templateMd5:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;->templateUrl:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/kwad/components/offline/api/tk/model/StyleTemplate;->templateUrl:Ljava/lang/String;

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdMatrixInfo$MatrixTemplate;->templateVersionCode:J

    .line 29
    .line 30
    long-to-int p0, v1

    .line 31
    iput p0, v0, Lcom/kwad/components/offline/api/tk/model/StyleTemplate;->templateVersionCode:I

    .line 32
    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final ae()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/components/ad/c/i;->mStartRenderTime:J

    .line 6
    .line 7
    invoke-super {p0}, Lcom/kwad/components/core/n/d;->ae()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final al()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic an()Lcom/kwad/sdk/mvp/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/c/i;->am()Lcom/kwad/components/ad/c/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_banner_base:I

    .line 2
    .line 3
    return v0
.end method

.method public final initData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/c/i;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/kwad/components/ad/c/i;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    return-void
.end method

.method public final onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/c/i;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/kwad/components/ad/c/i;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/mvp/Presenter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final setBannerAdListener(Lcom/kwad/sdk/api/KsBannerAd$BannerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/i;->bV:Lcom/kwad/sdk/api/KsBannerAd$BannerAdInteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setBannerUpdateAdResultDataListener(Lcom/kwad/components/ad/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/i;->bW:Lcom/kwad/components/ad/c/d;

    .line 2
    .line 3
    return-void
.end method
