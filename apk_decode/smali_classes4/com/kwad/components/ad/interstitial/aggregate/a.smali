.class public final Lcom/kwad/components/ad/interstitial/aggregate/a;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/ad/interstitial/aggregate/a$a;,
        Lcom/kwad/components/ad/interstitial/aggregate/a$b;
    }
.end annotation


# instance fields
.field private final ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

.field private lA:Lcom/kwad/components/ad/interstitial/aggregate/a$b;

.field private lB:Lcom/kwad/components/ad/interstitial/aggregate/a$a;

.field private lC:Z

.field private final ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

.field private final lx:Lcom/kwad/components/ad/interstitial/d;

.field private final ly:Z

.field private lz:Z

.field private mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

.field private final mAdTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdTemplateList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 4
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 6
    iput-object p4, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 7
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cH(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ly:Z

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdTemplateList:Ljava/util/List;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lz:Z

    .line 12
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 13
    iput-boolean p5, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lC:Z

    .line 14
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 15
    iput-object p3, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 16
    iput-object p4, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 17
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->r(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->cH(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ly:Z

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/interstitial/aggregate/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdTemplateList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/interstitial/aggregate/a;)Lcom/kwad/components/ad/interstitial/aggregate/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lB:Lcom/kwad/components/ad/interstitial/aggregate/a$a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/kwad/components/ad/interstitial/aggregate/a$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lB:Lcom/kwad/components/ad/interstitial/aggregate/a$a;

    return-void
.end method

.method public final a(Lcom/kwad/components/ad/interstitial/aggregate/a$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lA:Lcom/kwad/components/ad/interstitial/aggregate/a$b;

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdTemplateList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdTemplateList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of p2, p3, Landroid/view/View;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    check-cast p3, Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdTemplateList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/components/ad/interstitial/h/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/kwad/components/ad/interstitial/h/c;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    if-lez p2, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/h/c;->setAggregateAdView(Z)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/kwad/components/ad/interstitial/aggregate/a$1;

    .line 22
    .line 23
    invoke-direct {p1, p0, p2}, Lcom/kwad/components/ad/interstitial/aggregate/a$1;-><init>(Lcom/kwad/components/ad/interstitial/aggregate/a;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/h/c;->setAdAggregateClickActionListener(Lcom/kwad/components/ad/interstitial/f/c$a;)V

    .line 27
    .line 28
    .line 29
    if-lez p2, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/kwad/components/ad/interstitial/h/c;->setAggregateShowTriggerType(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-boolean p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lz:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 47
    .line 48
    iget-boolean v6, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lC:Z

    .line 49
    .line 50
    move v5, p2

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/kwad/components/ad/interstitial/h/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;IZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v5, p2

    .line 56
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->mAdResultData:Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lx:Lcom/kwad/components/ad/interstitial/d;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ce:Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->ls:Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;

    .line 63
    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/kwad/components/ad/interstitial/h/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/interstitial/d;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;Lcom/kwad/sdk/api/KsInterstitialAd$AdInteractionListener;I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/a;->lA:Lcom/kwad/components/ad/interstitial/aggregate/a$b;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-interface {p1, v0, v5}, Lcom/kwad/components/ad/interstitial/aggregate/a$b;->a(Lcom/kwad/components/ad/interstitial/h/c;I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
