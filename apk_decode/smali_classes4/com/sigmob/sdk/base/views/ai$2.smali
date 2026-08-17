.class Lcom/sigmob/sdk/base/views/ai$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/ai;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/ai;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ai$2;->a:Lcom/sigmob/sdk/base/views/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ai$2;->a:Lcom/sigmob/sdk/base/views/ai;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/ai;->a(Lcom/sigmob/sdk/base/views/ai;F)F

    return-void
.end method
