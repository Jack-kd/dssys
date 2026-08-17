.class Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->createView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$002(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$000(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    return p4

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$300(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-gtz p3, :cond_1

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$300(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$200(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p3}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$200(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;

    move-result-object p3

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-interface {p3, p1, p2, v0}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;->onUp(IILandroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$200(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;->onSliding()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p1, p4}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$002(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;Z)Z

    :cond_2
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {v1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$100(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$1;->this$0:Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;->access$200(Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView;)Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/widget/FingerSlidingAndTwistingView$SlidingListener;->onSliding()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
