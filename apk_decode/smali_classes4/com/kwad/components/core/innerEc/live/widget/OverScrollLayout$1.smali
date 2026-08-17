.class final Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->z(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aaw:Landroid/view/View;

.field final synthetic aax:Z

.field final synthetic aay:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;->aay:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;->aaw:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;->aax:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;->aay:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;->aaw:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1, p1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->a(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$1;->aax:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x1

    .line 26
    :goto_0
    mul-int/2addr p1, v2

    .line 27
    invoke-static {v0, v1, p1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->a(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
