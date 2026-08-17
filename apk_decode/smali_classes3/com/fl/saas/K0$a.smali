.class Lcom/fl/saas/K0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/NativeSlidingView$SlidingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/K0;->c(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/widget/NativeSlidingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/j;

.field final synthetic b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

.field final synthetic c:Lcom/fl/saas/K0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;Lcom/fl/saas/adx/base/widget/NativeSlidingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/K0$a;->c:Lcom/fl/saas/K0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/fl/saas/K0$a;->b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onDown(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/fl/saas/j;->E1:I

    .line 7
    .line 8
    iput p2, v0, Lcom/fl/saas/j;->F1:I

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    new-array p1, p1, [I

    .line 12
    .line 13
    iget-object p2, p0, Lcom/fl/saas/K0$a;->b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 19
    .line 20
    iget v0, p2, Lcom/fl/saas/j;->E1:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aget v1, p1, v1

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    iput v0, p2, Lcom/fl/saas/j;->I1:I

    .line 27
    .line 28
    iget v0, p2, Lcom/fl/saas/j;->F1:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aget p1, p1, v1

    .line 32
    .line 33
    add-int/2addr v0, p1

    .line 34
    iput v0, p2, Lcom/fl/saas/j;->J1:I

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p2, Lcom/fl/saas/j;->R1:J

    .line 41
    .line 42
    return-void
.end method

.method public onSliding()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/K0$a;->c:Lcom/fl/saas/K0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fl/saas/K0$a;->c:Lcom/fl/saas/K0;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fl/saas/K0$a;->c:Lcom/fl/saas/K0;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/view/View;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 51
    .line 52
    sget-object v2, Lcom/fl/saas/j$b;->c:Lcom/fl/saas/j$b;

    .line 53
    .line 54
    iput-object v2, v0, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/fl/saas/K0$a;->b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/fl/saas/K0$a;->c:Lcom/fl/saas/K0;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;Z)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onUp(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/fl/saas/j;->G1:I

    .line 7
    .line 8
    iput p2, v0, Lcom/fl/saas/j;->H1:I

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    new-array p1, p1, [I

    .line 12
    .line 13
    iget-object p2, p0, Lcom/fl/saas/K0$a;->b:Lcom/fl/saas/adx/base/widget/NativeSlidingView;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/fl/saas/K0$a;->a:Lcom/fl/saas/j;

    .line 19
    .line 20
    iget v0, p2, Lcom/fl/saas/j;->G1:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    aget v1, p1, v1

    .line 24
    .line 25
    add-int/2addr v0, v1

    .line 26
    iput v0, p2, Lcom/fl/saas/j;->K1:I

    .line 27
    .line 28
    iget v0, p2, Lcom/fl/saas/j;->H1:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aget p1, p1, v1

    .line 32
    .line 33
    add-int/2addr v0, p1

    .line 34
    iput v0, p2, Lcom/fl/saas/j;->L1:I

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p2, Lcom/fl/saas/j;->S1:J

    .line 41
    .line 42
    return-void
.end method
