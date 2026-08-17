.class final Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->c(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

.field final synthetic Lj:I

.field final synthetic Lk:Z


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Lj:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Lk:Z

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
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->a(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;F)F

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 17
    .line 18
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Lj:I

    .line 19
    .line 20
    div-int/lit16 v1, v1, 0x3e8

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->c(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    mul-float/2addr v1, v2

    .line 28
    float-to-int v1, v1

    .line 29
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->a(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;I)V

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Lk:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->a(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 43
    .line 44
    const/high16 v1, 0x43b40000    # 360.0f

    .line 45
    .line 46
    mul-float/2addr p1, v1

    .line 47
    const/high16 v2, 0x43870000    # 270.0f

    .line 48
    .line 49
    sub-float/2addr v2, p1

    .line 50
    invoke-static {v0, v2}, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->b(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;F)F

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 54
    .line 55
    sub-float/2addr v1, p1

    .line 56
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;->c(Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;F)F

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView$4;->Li:Lcom/kwad/components/ad/splashscreen/widget/CircleSkipView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method
