.class Lcom/ubix/ssp/ad/e/a0/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/d;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/d;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/d$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v4, "onPaused"

    invoke-direct {v1, v4, v2, v3, p1}, Lcom/ubix/ssp/ad/e/a0/d$b;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/d$a$a;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/d$a$a;-><init>(Lcom/ubix/ssp/ad/e/a0/d$a;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/a0/d$b;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onPaused"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d$b;->b()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-interface {p1, v1, v2, v3}, Lcom/ubix/ssp/ad/e/a0/d$e;->b(JZ)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;

    move-result-object p1

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/a0/d$d;->a(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/d$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v5, "onResumed"

    invoke-direct {v1, v5, v3, v4, p1}, Lcom/ubix/ssp/ad/e/a0/d$b;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/d;->j(Lcom/ubix/ssp/ad/e/a0/d;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-interface {p1, v0, v1}, Lcom/ubix/ssp/ad/e/a0/d$c;->b(J)V

    :cond_3
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->k(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;

    move-result-object p1

    const/16 v0, 0x62

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/a0/d$d;->a(I)V

    return-void

    :cond_4
    const/16 v0, 0x63

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/a0/d$d;->b(I)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->h(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$d;

    move-result-object v1

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr v0, p1

    invoke-interface {v1, v0}, Lcom/ubix/ssp/ad/e/a0/d$d;->b(I)V

    :cond_6
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->b(Lcom/ubix/ssp/ad/e/a0/d;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->e(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->e(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/d$f;->b()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/d$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v4, "onStarted"

    invoke-direct {v1, v4, v2, v3, p1}, Lcom/ubix/ssp/ad/e/a0/d$b;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c(Lcom/ubix/ssp/ad/e/a0/d;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->d(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->a(Lcom/ubix/ssp/ad/e/a0/d;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->e(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d;->e(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/ubix/ssp/ad/e/a0/d$f;->a()V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/y/e/e;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/a0/d$b;

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/d$b;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/d$b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onPaused"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    const/4 v4, 0x0

    if-gez v1, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object v0

    invoke-interface {v0, v2, v3, v4}, Lcom/ubix/ssp/ad/e/a0/d$e;->a(JZ)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->g(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$e;

    move-result-object v1

    invoke-interface {v1, v2, v3, v4}, Lcom/ubix/ssp/ad/e/a0/d$e;->b(JZ)V

    :cond_5
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/d$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onStarted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/d;->i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    :goto_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->i(Lcom/ubix/ssp/ad/e/a0/d;)Lcom/ubix/ssp/ad/e/a0/d$c;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/ubix/ssp/ad/e/a0/d$c;->a(J)V

    :cond_7
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$a;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/d;->f(Lcom/ubix/ssp/ad/e/a0/d;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/d$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/y/e/e;->b(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const-string v2, "onStopped"

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/a0/d$b;-><init>(Ljava/lang/String;JZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
