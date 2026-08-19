.class public Lcom/kwad/sdk/lib/ad/desigin/CustomScrollingViewBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getScrollRange(Landroid/view/View;)I
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$LayoutParams;->getBehavior()Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarCustomAttrListener;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    check-cast v0, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarCustomAttrListener;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarCustomAttrListener;->getExtraFixedSize()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr p1, v0

    .line 32
    return p1

    .line 33
    :cond_0
    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->getTotalScrollRange()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$d;->getScrollRange(Landroid/view/View;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method
