.class Lcom/octopus/ad/internal/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/q;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/q;->a(Lcom/octopus/ad/internal/q;)I

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    instance-of p1, p1, Lcom/octopus/ad/TransparentActivity;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "AppSelfForeground"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/octopus/ad/internal/q;->b(Lcom/octopus/ad/internal/q;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/q;->c(Lcom/octopus/ad/internal/q;)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/octopus/ad/internal/q;->d(Lcom/octopus/ad/internal/q;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/q;->a(Lcom/octopus/ad/internal/q;I)I

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/q$2;->a:Lcom/octopus/ad/internal/q;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/octopus/ad/internal/q;->d(Lcom/octopus/ad/internal/q;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "AppBackground"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/k;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method
