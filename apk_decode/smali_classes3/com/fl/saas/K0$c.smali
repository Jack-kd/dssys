.class Lcom/fl/saas/K0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/FingerSlidingView$SlidingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/K0;->bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/j;

.field final synthetic b:Lcom/fl/saas/K0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/K0;Lcom/fl/saas/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/K0$c;->b:Lcom/fl/saas/K0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fl/saas/K0$c;->a:Lcom/fl/saas/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDown(IILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$c;->b:Lcom/fl/saas/K0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/K0;->f(Lcom/fl/saas/K0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fl/saas/j;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput p1, v0, Lcom/fl/saas/j;->E1:I

    .line 13
    .line 14
    iput p2, v0, Lcom/fl/saas/j;->F1:I

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    .line 21
    .line 22
    iget p2, v0, Lcom/fl/saas/j;->E1:I

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    aget p3, p1, p3

    .line 26
    .line 27
    add-int/2addr p2, p3

    .line 28
    iput p2, v0, Lcom/fl/saas/j;->I1:I

    .line 29
    .line 30
    iget p2, v0, Lcom/fl/saas/j;->F1:I

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    aget p1, p1, p3

    .line 34
    .line 35
    add-int/2addr p2, p1

    .line 36
    iput p2, v0, Lcom/fl/saas/j;->J1:I

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iput-wide p1, v0, Lcom/fl/saas/j;->R1:J

    .line 43
    .line 44
    return-void
.end method

.method public onSliding()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$c;->b:Lcom/fl/saas/K0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/K0$c;->b:Lcom/fl/saas/K0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/fl/saas/K0$c;->b:Lcom/fl/saas/K0;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/fl/saas/K0;->a(Lcom/fl/saas/K0;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/view/View;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/fl/saas/K0$c;->a:Lcom/fl/saas/j;

    .line 46
    .line 47
    sget-object v2, Lcom/fl/saas/j$b;->c:Lcom/fl/saas/j$b;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/fl/saas/j;->k2:Lcom/fl/saas/j$b;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public onUp(IILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/K0$c;->b:Lcom/fl/saas/K0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/K0;->g(Lcom/fl/saas/K0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fl/saas/j;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput p1, v0, Lcom/fl/saas/j;->G1:I

    .line 13
    .line 14
    iput p2, v0, Lcom/fl/saas/j;->H1:I

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    new-array p1, p1, [I

    .line 18
    .line 19
    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    .line 21
    .line 22
    iget p2, v0, Lcom/fl/saas/j;->G1:I

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    aget p3, p1, p3

    .line 26
    .line 27
    add-int/2addr p2, p3

    .line 28
    iput p2, v0, Lcom/fl/saas/j;->K1:I

    .line 29
    .line 30
    iget p2, v0, Lcom/fl/saas/j;->H1:I

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    aget p1, p1, p3

    .line 34
    .line 35
    add-int/2addr p2, p1

    .line 36
    iput p2, v0, Lcom/fl/saas/j;->L1:I

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iput-wide p1, v0, Lcom/fl/saas/j;->S1:J

    .line 43
    .line 44
    return-void
.end method
