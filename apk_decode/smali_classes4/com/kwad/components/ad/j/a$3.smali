.class final Lcom/kwad/components/ad/j/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/j/a;->a(Landroid/view/View;FFJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Nm:F

.field final synthetic Nn:F

.field final synthetic No:F

.field final synthetic eL:Landroid/view/View;


# direct methods
.method public constructor <init>(FFFLandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/j/a$3;->Nm:F

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/ad/j/a$3;->Nn:F

    .line 4
    .line 5
    iput p3, p0, Lcom/kwad/components/ad/j/a$3;->No:F

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/ad/j/a$3;->eL:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

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
    iget v0, p0, Lcom/kwad/components/ad/j/a$3;->Nm:F

    .line 12
    .line 13
    mul-float/2addr v0, p1

    .line 14
    iget v1, p0, Lcom/kwad/components/ad/j/a$3;->Nn:F

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    cmpl-float v2, v1, v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    div-float v1, p1, v1

    .line 22
    .line 23
    iget v2, p0, Lcom/kwad/components/ad/j/a$3;->No:F

    .line 24
    .line 25
    mul-float/2addr v1, v2

    .line 26
    iget-object v2, p0, Lcom/kwad/components/ad/j/a$3;->eL:Landroid/view/View;

    .line 27
    .line 28
    instance-of v3, v2, Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    check-cast v2, Landroid/widget/TextView;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/ad/j/a$3;->eL:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    float-to-int p1, p1

    .line 47
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    .line 49
    float-to-int p1, v0

    .line 50
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    .line 52
    iget-object p1, p0, Lcom/kwad/components/ad/j/a$3;->eL:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
