.class Lcom/sigmob/sdk/base/views/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/i;->a(Lcom/sigmob/sdk/base/views/j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/j;

.field final synthetic b:Lcom/sigmob/sdk/base/views/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/i;Lcom/sigmob/sdk/base/views/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/i$1;->b:Lcom/sigmob/sdk/base/views/i;

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/i$1;->a:Lcom/sigmob/sdk/base/views/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/i$1;->a:Lcom/sigmob/sdk/base/views/j;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/j;->setLineWidth(F)V

    return-void
.end method
