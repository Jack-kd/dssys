.class public final Lcom/kwad/components/ad/interstitial/aggregate/c;
.super Lcom/kwad/components/ad/interstitial/h/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/interstitial/aggregate/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/interstitial/h/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/kwad/components/ad/interstitial/aggregate/c$1;

    invoke-direct {p1, p0}, Lcom/kwad/components/ad/interstitial/aggregate/c$1;-><init>(Lcom/kwad/components/ad/interstitial/aggregate/c;)V

    invoke-virtual {p0, p1}, Lcom/kwad/components/ad/interstitial/h/c;->setTkLoadListenerAdapter(Lcom/kwad/components/core/webview/tachikoma/f/g;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/aggregate/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/a;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/sdk/core/response/model/AdResultData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/components/ad/interstitial/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/c;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/c;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/ad/interstitial/aggregate/c;)Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/c;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/kwad/components/ad/interstitial/aggregate/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/kwad/components/ad/interstitial/aggregate/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/h/c;->oC:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;I)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 7
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/h/c;->mAdInfo:Lcom/kwad/sdk/core/response/model/AdInfo;

    return-void
.end method
