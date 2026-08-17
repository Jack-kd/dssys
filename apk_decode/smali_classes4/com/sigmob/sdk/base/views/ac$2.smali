.class Lcom/sigmob/sdk/base/views/ac$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/ac;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/ac;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ac$2;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac$2;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/ac;->c(Lcom/sigmob/sdk/base/views/ac;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/ac$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/ac$2;->a()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/ac$2;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/ac;->b(Lcom/sigmob/sdk/base/views/ac;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/C;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/base/views/C;-><init>(Lcom/sigmob/sdk/base/views/ac$2;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
