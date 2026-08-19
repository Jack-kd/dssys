.class public Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;
.super Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 3
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 6
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->getLeftAndRightOffset()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->getTopAndBottomOffset()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public layoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLayoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->layoutChild(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->onViewLayout()V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 28
    .line 29
    .line 30
    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 37
    .line 38
    invoke-virtual {p3, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 39
    .line 40
    .line 41
    iput p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempLeftRightOffset:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mViewOffsetHelper:Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method
