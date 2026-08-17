.class Lcom/sigmob/sdk/base/views/al$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/al;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/al;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/al;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/al$1;->a:Lcom/sigmob/sdk/base/views/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/al$1;->a:Lcom/sigmob/sdk/base/views/al;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/al;->a(F)V

    return-void
.end method
