.class Lcom/sigmob/sdk/base/views/m$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/m;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/m;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/m;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/m;->a(Lcom/sigmob/sdk/base/views/m;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/m;->b(Lcom/sigmob/sdk/base/views/m;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/m;->a(Lcom/sigmob/sdk/base/views/m;)Lcom/sigmob/sdk/base/views/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/m;->a(Lcom/sigmob/sdk/base/views/m;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/views/m;->b(Lcom/sigmob/sdk/base/views/m;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/m$1;->a:Lcom/sigmob/sdk/base/views/m;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/m;->a(Lcom/sigmob/sdk/base/views/m;)Lcom/sigmob/sdk/base/views/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
