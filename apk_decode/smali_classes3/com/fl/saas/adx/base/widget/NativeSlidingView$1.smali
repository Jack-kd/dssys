.class Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/widget/NativeSlidingView;->createView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

    const/4 p3, 0x1

    :try_start_0
    iget-object p4, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p4}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$100(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Z

    move-result p4

    if-eqz p4, :cond_0

    return p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$200(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-gtz p4, :cond_1

    iget-object p4, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p4}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$200(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)I

    move-result p4

    int-to-float p4, p4

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$000(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p1, p3}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$102(Lcom/fl/saas/adx/base/widget/NativeSlidingView;Z)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object p4, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p4}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$000(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;

    move-result-object p4

    invoke-interface {p4, p1, p2}, Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;->onUp(II)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$000(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;->onSliding()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return p3
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
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {v1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$000(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {v1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$100(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {v1, v0}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$102(Lcom/fl/saas/adx/base/widget/NativeSlidingView;Z)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {v2}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$000(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;->onUp(II)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/widget/NativeSlidingView$1;->this$0:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    invoke-static {p1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView;->access$000(Lcom/fl/saas/adx/base/widget/NativeSlidingView;)Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;->onSliding()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method
