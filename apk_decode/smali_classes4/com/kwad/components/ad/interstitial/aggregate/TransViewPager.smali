.class public Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;
.super Lcom/kwad/sdk/widget/f;
.source "SourceFile"


# instance fields
.field private lY:F

.field private lZ:I
    .annotation build Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager$SlideType;
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/kwad/components/ad/interstitial/h/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->map:Ljava/util/Map;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;F)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    cmpl-float v0, p3, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lY:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_1

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 2
    iput v2, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    .line 4
    :cond_1
    :goto_0
    iget v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-ne v0, v2, :cond_3

    if-eqz p2, :cond_3

    float-to-double v7, p3

    cmpg-double v0, v7, v5

    const/high16 v2, 0x43700000    # 240.0f

    if-gtz v0, :cond_2

    cmpl-float v0, p3, v3

    if-lez v0, :cond_2

    mul-float/2addr v2, p3

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_2
    sub-float v0, v4, p3

    mul-float/2addr v0, v2

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    :cond_3
    :goto_1
    iget p2, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    if-ne p2, v1, :cond_5

    if-eqz p1, :cond_5

    float-to-double v0, p3

    cmpg-double p2, v0, v5

    const/high16 v0, -0x3c900000    # -240.0f

    if-gtz p2, :cond_4

    cmpl-float p2, p3, v3

    if-ltz p2, :cond_4

    mul-float/2addr v0, p3

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    :cond_4
    sub-float/2addr v4, p3

    mul-float/2addr v4, v0

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 10
    :cond_5
    :goto_2
    iput p3, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lY:F

    cmpl-float p1, p3, v3

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->lZ:I

    :cond_6
    return-void
.end method


# virtual methods
.method public final U(I)Lcom/kwad/components/ad/interstitial/h/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->map:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/kwad/components/ad/interstitial/h/c;

    .line 12
    .line 13
    return-object p1
.end method

.method public final a(ILcom/kwad/components/ad/interstitial/h/c;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->U(I)Lcom/kwad/components/ad/interstitial/h/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->U(I)Lcom/kwad/components/ad/interstitial/h/c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0, v0, v1, p2}, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->a(Landroid/view/View;Landroid/view/View;F)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
