.class public Lcom/ubix/ssp/ad/e/a0/b0/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/b0/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/a0/b0/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/b0/a;->a:Lcom/ubix/ssp/ad/e/a0/b0/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/b0/a$a;->e(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
