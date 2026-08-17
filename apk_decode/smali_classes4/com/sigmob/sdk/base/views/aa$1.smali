.class Lcom/sigmob/sdk/base/views/aa$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/aa;->a(Landroid/graphics/RectF;Landroid/graphics/Paint;II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/RectF;

.field final synthetic b:Landroid/graphics/RectF;

.field final synthetic c:Lcom/sigmob/sdk/base/views/aa;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/aa;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa$1;->c:Lcom/sigmob/sdk/base/views/aa;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/aa$1;->a:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/sigmob/sdk/base/views/aa$1;->b:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa$1;->c:Lcom/sigmob/sdk/base/views/aa;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/aa$1;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/aa$1;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/sigmob/sdk/base/views/aa;->a(Lcom/sigmob/sdk/base/views/aa;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/aa$1;->c:Lcom/sigmob/sdk/base/views/aa;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
