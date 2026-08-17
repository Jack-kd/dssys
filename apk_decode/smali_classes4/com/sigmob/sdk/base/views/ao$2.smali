.class Lcom/sigmob/sdk/base/views/ao$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/ao;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/ao;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ao$2;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ao$2;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/ao;->b(Lcom/sigmob/sdk/base/views/ao;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ao$2;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/ao;->c(Lcom/sigmob/sdk/base/views/ao;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ao$2;->a:Lcom/sigmob/sdk/base/views/ao;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/ao;->b(Lcom/sigmob/sdk/base/views/ao;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
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
