.class public Lcom/fl/saas/adx/base/widget/VisibilityLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;
    }
.end annotation


# instance fields
.field private checkAreaRatioRunnable:Ljava/lang/Runnable;

.field private checkValidAreaRunnable:Ljava/lang/Runnable;

.field private mVisibilityChanged:Lcom/fl/saas/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/B;"
        }
    .end annotation
.end field

.field private mVisibilityRatioChanged:Lcom/fl/saas/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/B;"
        }
    .end annotation
.end field

.field private maxRatio:I

.field private onViewWindowChangedListener:Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/widget/VisibilityLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidArea()V

    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/widget/VisibilityLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatio()V

    return-void
.end method

.method private checkAreaRatio()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->getAreaEffectiveRatio(Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->maxRatio:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->maxRatio:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/16 v1, 0x5f

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityRatioChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/fl/saas/adx/base/widget/u;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/u;-><init>(Lcom/fl/saas/adx/base/widget/VisibilityLayout;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAreaRatio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private checkValidArea()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/fl/saas/adx/base/widget/v;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/widget/v;-><init>(Lcom/fl/saas/adx/base/widget/VisibilityLayout;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_7

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    invoke-direct {p0, v2}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->getAreaEffectiveRatio(Landroid/graphics/Rect;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rect="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ratio="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isVisible="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->maxRatio:I

    if-le v4, v0, :cond_3

    iput v4, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->maxRatio:I

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_4

    const/16 v1, 0x32

    if-le v4, v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    :cond_5
    const/16 v0, 0x5f

    if-le v4, v0, :cond_6

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->unOnVisibilityRatioChanged()V

    :cond_6
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_3
    return-void

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidArea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private clearRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private getAreaEffectiveRatio(Landroid/graphics/Rect;)I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v1

    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x64

    mul-int/2addr v0, v1

    div-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public detachedView()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityChanged:Lcom/fl/saas/B;

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->onViewWindowChangedListener:Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;->onDetachedFromWindow()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->onViewWindowChangedListener:Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->clearRunnable()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidArea()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatio()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->detachedView()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->clearRunnable()V

    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidArea()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatio()V

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->onViewWindowChangedListener:Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;->onViewWindowVisibility(Z)V

    :cond_2
    return-void
.end method

.method public setOnViewWindowChangedListener(Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->onViewWindowChangedListener:Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;

    return-void
.end method

.method public setOnVisibilityChanged(Lcom/fl/saas/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/B;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityChanged:Lcom/fl/saas/B;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidArea()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVisibilityRatioChanged(Lcom/fl/saas/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/B;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatio()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unOnVisibilityChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityChanged:Lcom/fl/saas/B;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkValidAreaRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public unOnVisibilityRatioChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->mVisibilityRatioChanged:Lcom/fl/saas/B;

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->removePostUI(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/widget/VisibilityLayout;->checkAreaRatioRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
