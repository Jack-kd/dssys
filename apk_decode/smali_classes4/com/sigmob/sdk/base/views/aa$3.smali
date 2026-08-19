.class Lcom/sigmob/sdk/base/views/aa$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/aa;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/aa;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/aa$3;->a:Lcom/sigmob/sdk/base/views/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/aa$3;->a:Lcom/sigmob/sdk/base/views/aa;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/aa;->a(Lcom/sigmob/sdk/base/views/aa;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sigmob/sdk/base/views/B;

    invoke-direct {v1, p1}, Lcom/sigmob/sdk/base/views/B;-><init>(Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
