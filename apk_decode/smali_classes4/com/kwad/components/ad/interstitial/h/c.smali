.class public Lcom/kwad/components/ad/interstitial/h/c;
.super Lcom/kwad/components/ad/interstitial/h/a;
.source "SourceFile"


# instance fields
.field public ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field public ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

.field public lx:Lcom/kwad/components/ad/interstitial/d;

.field protected mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

.field public mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mN:Lcom/kwad/components/ad/interstitial/f/c;

.field private mR:Z

.field private mS:Lcom/kwad/components/ad/interstitial/f/c$a;

.field private mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

.field private nb:I

.field protected oA:Lcom/kwad/components/ad/interstitial/f/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private oB:Z

.field public oC:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/interstitial/h/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/interstitial/h/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->nb:I

    .line 4
    new-instance p2, Lcom/kwad/components/ad/interstitial/h/c$1;

    invoke-direct {p2, p0}, Lcom/kwad/components/ad/interstitial/h/c$1;-><init>(Lcom/kwad/components/ad/interstitial/h/c;)V

    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 5
    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/h/c;->getLayoutId()I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/kwad/sdk/wrapper/m;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/components/ad/interstitial/f/c;)Lcom/kwad/components/ad/interstitial/h/d;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/a;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/kwad/components/ad/interstitial/f/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    .line 3
    new-instance v1, Lcom/kwad/components/ad/interstitial/h/d$a;

    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/h/d$a;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/interstitial/h/d$a;->w(Z)V

    .line 5
    invoke-virtual {p3, p1}, Lcom/kwad/components/ad/interstitial/f/c;->M(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 6
    invoke-static {}, Lcom/kwad/components/ad/interstitial/b/b;->dP()Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-virtual {v1, p3}, Lcom/kwad/components/ad/interstitial/h/d$a;->x(Z)V

    .line 7
    invoke-static {}, Lcom/kwad/components/ad/interstitial/b/b;->dQ()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/kwad/components/ad/interstitial/h/d$a;->ac(I)V

    .line 8
    invoke-static {p2}, Lcom/kwad/sdk/core/response/helper/a;->bc(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-static {}, Lcom/kwad/sdk/utils/as;->VM()Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    move v0, v2

    .line 10
    :cond_2
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/interstitial/h/d$a;->y(Z)V

    .line 11
    new-instance p2, Lcom/kwad/components/ad/interstitial/h/d;

    invoke-direct {p2, p1, v1}, Lcom/kwad/components/ad/interstitial/h/d;-><init>(Landroid/content/Context;Lcom/kwad/components/ad/interstitial/h/d$a;)V

    return-object p2
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/h/c;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oB:Z

    return p1
.end method

.method private ff()Lcom/kwad/components/ad/interstitial/f/c;
    .locals 4

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/interstitial/f/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c;->setAdTemplate(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 23
    .line 24
    new-instance v1, Lcom/kwad/components/core/e/d/d;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Lcom/kwad/components/core/e/d/d;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mApkDownloadHelper:Lcom/kwad/components/core/e/d/d;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 36
    .line 37
    new-instance v1, Lcom/kwad/sdk/core/video/videoview/a;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/h/a;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/video/videoview/a;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->cB:Lcom/kwad/sdk/core/video/videoview/a;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    .line 47
    .line 48
    sget v2, Lcom/kwad/sdk/R$id;->ksad_container:I

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 55
    .line 56
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->gp:Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 57
    .line 58
    new-instance v2, Lcom/kwad/components/ad/interstitial/g/b;

    .line 59
    .line 60
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jx()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-direct {v2, v1, v3}, Lcom/kwad/components/ad/interstitial/g/b;-><init>(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    iput-object v2, v0, Lcom/kwad/components/ad/interstitial/f/c;->lq:Lcom/kwad/components/ad/interstitial/g/b;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/kwad/components/core/widget/a/a;->Aa()V

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->nb:I

    .line 73
    .line 74
    iput v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->nb:I

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mR:Z

    .line 77
    .line 78
    iput-boolean v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mR:Z

    .line 79
    .line 80
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mS:Lcom/kwad/components/ad/interstitial/f/c$a;

    .line 81
    .line 82
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mS:Lcom/kwad/components/ad/interstitial/f/c$a;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 85
    .line 86
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/h/a;->mContext:Landroid/content/Context;

    .line 95
    .line 96
    invoke-direct {p0, v2, v1, v0}, Lcom/kwad/components/ad/interstitial/h/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;Lcom/kwad/components/ad/interstitial/f/c;)Lcom/kwad/components/ad/interstitial/h/d;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mO:Lcom/kwad/components/ad/interstitial/h/d;

    .line 101
    .line 102
    return-object v0
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdResultData;I)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 36
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 38
    :goto_0
    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/response/helper/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdResultData;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 39
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;I)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-virtual {p0, p1, p5}, Lcom/kwad/components/ad/interstitial/h/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;I)V

    .line 13
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 p5, 0x2

    iput p5, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    .line 14
    iput-object p3, p0, Lcom/kwad/components/ad/interstitial/h/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 15
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 16
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/b;->dJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oB:Z

    .line 17
    iput-object p4, p0, Lcom/kwad/components/ad/interstitial/h/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 18
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/h/c;->ff()Lcom/kwad/components/ad/interstitial/f/c;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 19
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/h/c;->fg()Lcom/kwad/components/ad/interstitial/f/b;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;IZ)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-virtual {p0, p1, p5}, Lcom/kwad/components/ad/interstitial/h/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;I)V

    .line 24
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 p5, 0x2

    iput p5, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    .line 25
    iput-object p3, p0, Lcom/kwad/components/ad/interstitial/h/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 26
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 27
    iput-boolean p6, p0, Lcom/kwad/components/ad/interstitial/h/c;->oB:Z

    .line 28
    iput-object p4, p0, Lcom/kwad/components/ad/interstitial/h/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 29
    invoke-direct {p0}, Lcom/kwad/components/ad/interstitial/h/c;->ff()Lcom/kwad/components/ad/interstitial/f/c;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 30
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/kwad/components/ad/interstitial/h/c;->fg()Lcom/kwad/components/ad/interstitial/f/b;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    iget-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final dH()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/f/b;->dY()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final dI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/f/b;->dZ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final fg()Lcom/kwad/components/ad/interstitial/f/b;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/interstitial/f/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oB:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/a/b;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/f/a/b;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bi(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/f;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/f/f;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/g;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/f/g;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/d;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/f/d;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aV(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/a;

    .line 60
    .line 61
    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/f/a;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/kwad/components/ad/interstitial/f/c;->M(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    new-instance v1, Lcom/kwad/components/ad/interstitial/f/e;

    .line 80
    .line 81
    invoke-direct {v1}, Lcom/kwad/components/ad/interstitial/f/e;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 88
    .line 89
    iget-wide v1, v1, Lcom/kwad/components/ad/interstitial/d;->mStartRenderTime:J

    .line 90
    .line 91
    const-wide/16 v3, 0x0

    .line 92
    .line 93
    cmp-long v1, v1, v3

    .line 94
    .line 95
    if-lez v1, :cond_4

    .line 96
    .line 97
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    iget-object v4, p0, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 110
    .line 111
    iget-wide v4, v4, Lcom/kwad/components/ad/interstitial/d;->mStartRenderTime:J

    .line 112
    .line 113
    sub-long/2addr v2, v4

    .line 114
    const/4 v4, 0x1

    .line 115
    invoke-static {v1, v4, v2, v3}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    return-object v0

    .line 119
    :catchall_0
    move-exception v1

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    return-object v0

    .line 122
    :goto_0
    invoke-static {v1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public final fh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mZ:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/f/c;->ea()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final fi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->oB:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mZ:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/f/c;->eb()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final fj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/c$c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/a;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;->l(Z)Lcom/kwad/components/ad/interstitial/f/c$c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;->X(I)Lcom/kwad/components/ad/interstitial/f/c$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;->n(Z)Lcom/kwad/components/ad/interstitial/f/c$c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/interstitial/f/c$c;->W(I)Lcom/kwad/components/ad/interstitial/f/c$c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/interstitial/f/c;->a(Lcom/kwad/components/ad/interstitial/f/c$c;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final fk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/kwad/components/ad/interstitial/f/c;->na:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_interstitial:I

    .line 2
    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/components/ad/interstitial/f/c;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->oA:Lcom/kwad/components/ad/interstitial/f/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->destroy()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public setAdAggregateClickActionListener(Lcom/kwad/components/ad/interstitial/f/c$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mS:Lcom/kwad/components/ad/interstitial/f/c$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mS:Lcom/kwad/components/ad/interstitial/f/c$a;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/kwad/components/ad/interstitial/f/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setAggregateAdView(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mR:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, v0, Lcom/kwad/components/ad/interstitial/f/c;->mR:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setAggregateShowTriggerType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->nb:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mN:Lcom/kwad/components/ad/interstitial/f/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, v0, Lcom/kwad/components/ad/interstitial/f/c;->nb:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setTkLoadListenerAdapter(Lcom/kwad/components/core/webview/tachikoma/f/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mU:Lcom/kwad/components/core/webview/tachikoma/f/g;

    .line 2
    .line 3
    return-void
.end method
