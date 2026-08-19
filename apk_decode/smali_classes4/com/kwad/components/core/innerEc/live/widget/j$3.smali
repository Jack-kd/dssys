.class final Lcom/kwad/components/core/innerEc/live/widget/j$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/j;-><init>(Lcom/kwad/components/core/innerEc/live/widget/i;Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ZE:Lcom/kwad/components/core/innerEc/live/widget/j;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/j;->a(Lcom/kwad/components/core/innerEc/live/widget/j;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->a(Lcom/kwad/components/core/innerEc/live/widget/j;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/j;->b(Lcom/kwad/components/core/innerEc/live/widget/j;)Ljava/lang/Runnable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->b(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/j;->b(Lcom/kwad/components/core/innerEc/live/widget/j;)Ljava/lang/Runnable;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 45
    .line 46
    const-wide/16 v1, 0x3e8

    .line 47
    .line 48
    invoke-static {p1, v0, v1, v2}, Lcom/kwad/sdk/utils/by;->a(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->c(Lcom/kwad/components/core/innerEc/live/widget/j;)Landroid/view/GestureDetector;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/GestureDetector;->isLongpressEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->d(Lcom/kwad/components/core/innerEc/live/widget/j;)Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->getCustomFadingEdgeTop()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    cmpg-float p1, p1, v0

    .line 32
    .line 33
    if-gtz p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/widget/j;->sX()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 2
    .line 3
    invoke-static {v0, p4}, Lcom/kwad/components/core/innerEc/live/widget/j;->a(Lcom/kwad/components/core/innerEc/live/widget/j;F)I

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->e(Lcom/kwad/components/core/innerEc/live/widget/j;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->f(Lcom/kwad/components/core/innerEc/live/widget/j;)Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/j;->d(Lcom/kwad/components/core/innerEc/live/widget/j;)Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/core/innerEc/live/widget/LiveCommentsView;->getCustomFadingEdgeTop()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    cmpg-float p1, p1, v0

    .line 38
    .line 39
    if-gtz p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/j$3;->ZE:Lcom/kwad/components/core/innerEc/live/widget/j;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/kwad/components/core/innerEc/live/widget/j;->sY()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return v1
.end method
