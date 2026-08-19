.class public Lcom/beizi/fusion/eg;
.super Lcom/beizi/fusion/r3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/r3;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/beizi/fusion/r3;->a()V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/r3;->a:Lcom/beizi/fusion/ed;

    sget-object v1, Lcom/beizi/fusion/fd$a;->i:Lcom/beizi/fusion/fd$a;

    iget-object v2, p0, Lcom/beizi/fusion/r3;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/ed;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/r3;->c:Lcom/beizi/fusion/fc;

    instance-of v1, v0, Lcom/beizi/fusion/g1;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/beizi/fusion/g1;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/g1;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/beizi/fusion/d;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/beizi/fusion/r3;->a(Landroid/view/View;Lcom/beizi/fusion/d;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/nativ/render/interaction/InteractionModel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/beizi/fusion/r3;->a(Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/nativ/render/interaction/InteractionModel;)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/fc;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/beizi/fusion/r3;->a(Lcom/beizi/fusion/fc;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/r3;->b()V

    return-void
.end method

.method public declared-synchronized b(Lcom/beizi/fusion/fd$a;)V
    .locals 3

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/r3;->a:Lcom/beizi/fusion/ed;

    iget-object v1, p0, Lcom/beizi/fusion/r3;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/beizi/fusion/ed;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/r3;->c:Lcom/beizi/fusion/fc;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/beizi/fusion/r3;->d:Landroid/view/View;

    invoke-virtual {p1}, Lcom/beizi/fusion/fd$a;->getEventCode()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/beizi/fusion/fc;->a(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic d()Lcom/beizi/fusion/xa;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/r3;->d()Lcom/beizi/fusion/xa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public declared-synchronized f()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    .line 4
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/beizi/fusion/r3;->a:Lcom/beizi/fusion/ed;

    .line 8
    .line 9
    sget-object v1, Lcom/beizi/fusion/fd$a;->j:Lcom/beizi/fusion/fd$a;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/beizi/fusion/r3;->d:Landroid/view/View;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/beizi/fusion/ed;->a(Lcom/beizi/fusion/za;Landroid/view/View;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/r3;->c:Lcom/beizi/fusion/fc;

    .line 18
    .line 19
    instance-of v1, v0, Lcom/beizi/fusion/j1;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/beizi/fusion/j1;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/r3;->d:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/j1;->a(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw v0
.end method
