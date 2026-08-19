.class Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mView:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method

.method private updateOffsets()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mView:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetTop:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mLayoutTop:I

    .line 10
    .line 11
    sub-int/2addr v2, v3

    .line 12
    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mView:Landroid/view/View;

    .line 17
    .line 18
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetLeft:I

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget v3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mLayoutLeft:I

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    sub-int/2addr v1, v2

    .line 28
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mLayoutLeft:I

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mLayoutTop:I

    .line 2
    .line 3
    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetLeft:I

    .line 2
    .line 3
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetTop:I

    .line 2
    .line 3
    return v0
.end method

.method public onViewLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mLayoutTop:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mLayoutLeft:I

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->updateOffsets()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetLeft:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetLeft:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->updateOffsets()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetTop:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->mOffsetTop:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetHelper;->updateOffsets()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
