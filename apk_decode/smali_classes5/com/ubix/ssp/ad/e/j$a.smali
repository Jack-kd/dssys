.class Lcom/ubix/ssp/ad/e/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/j;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/j$a;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/j$a;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/e/j;->a(Lcom/ubix/ssp/ad/e/j;F)F

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/j$a;->a:Lcom/ubix/ssp/ad/e/j;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
