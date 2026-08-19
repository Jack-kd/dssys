.class public Lcom/fl/saas/adx/base/widget/InterceptClickLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/InterceptClickLayout$FilterPattern;,
        Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;
    }
.end annotation


# instance fields
.field private filterPattern:I

.field private isMatchParent:Z

.field private mFilterViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOutIntercept:Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->filterPattern:I

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->isMatchParent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->filterPattern:I

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->isMatchParent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->filterPattern:I

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->isMatchParent:Z

    return-void
.end method


# virtual methods
.method public varargs addFilterViews([Landroid/view/View;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mFilterViews:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mFilterViews:Ljava/util/Set;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mFilterViews:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v2}, Lcom/fl/saas/adx/util/ViewHelper;->isViewInParent(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mFilterViews:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->filterPattern:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mOutIntercept:Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;->isIntercept(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mFilterViews:Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mFilterViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/fl/saas/adx/util/ViewHelper;->isPointInsideView(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_4
    return v1

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->isMatchParent:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    if-eq v1, v2, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setFilterPattern(I)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;
    .locals 0

    iput p1, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->filterPattern:I

    return-object p0
.end method

.method public setMatchParent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->isMatchParent:Z

    return-void
.end method

.method public setOutIntercept(Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;)Lcom/fl/saas/adx/base/widget/InterceptClickLayout;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/InterceptClickLayout;->mOutIntercept:Lcom/fl/saas/adx/base/widget/InterceptClickLayout$OnIntercept;

    return-object p0
.end method
