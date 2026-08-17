.class final Lcom/kwad/components/ad/interstitial/aggregate/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/interstitial/aggregate/b;->S(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic lD:I

.field final synthetic lO:Lcom/kwad/components/ad/interstitial/aggregate/b;

.field final synthetic lP:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/interstitial/aggregate/b;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lO:Lcom/kwad/components/ad/interstitial/aggregate/b;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lD:I

    .line 4
    .line 5
    iput p3, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lP:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lD:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lO:Lcom/kwad/components/ad/interstitial/aggregate/b;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kwad/components/ad/interstitial/aggregate/b;->d(Lcom/kwad/components/ad/interstitial/aggregate/b;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lO:Lcom/kwad/components/ad/interstitial/aggregate/b;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/aggregate/b;->a(Lcom/kwad/components/ad/interstitial/aggregate/b;)Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v1, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lD:I

    .line 30
    .line 31
    iget v2, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lP:I

    .line 32
    .line 33
    mul-int/2addr v1, v2

    .line 34
    add-int/2addr v1, p1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lO:Lcom/kwad/components/ad/interstitial/aggregate/b;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/components/ad/interstitial/aggregate/b;->a(Lcom/kwad/components/ad/interstitial/aggregate/b;)Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lD:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    int-to-float p1, p1

    .line 50
    iget v3, p0, Lcom/kwad/components/ad/interstitial/aggregate/b$6;->lP:I

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    div-float/2addr p1, v3

    .line 54
    invoke-virtual {v0, v1, p1, v2}, Lcom/kwad/components/ad/interstitial/aggregate/TransViewPager;->onPageScrolled(IFI)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
