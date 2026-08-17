.class public final Lcom/kwad/sdk/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static boQ:Z

.field private static boR:Z


# direct methods
.method public static UG()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x2

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UH()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x4

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UI()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x800

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UJ()Z
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/kwad/sdk/service/a/h;->FG()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-boolean v0, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public static UK()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x10

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UL()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x1000

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UM()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x1

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UN()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x80

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static UO()Z
    .locals 3

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/kwad/sdk/service/a/h;

    .line 8
    .line 9
    const-wide/16 v1, 0x80

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/kwad/sdk/service/a/h;->ao(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    sget-boolean v1, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public static declared-synchronized ct(Z)V
    .locals 2

    .line 1
    const-class p0, Lcom/kwad/sdk/utils/t;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-boolean v0, Lcom/kwad/sdk/utils/t;->boR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :try_start_1
    sput-boolean v0, Lcom/kwad/sdk/utils/t;->boR:Z

    .line 12
    .line 13
    sput-boolean v0, Lcom/kwad/sdk/utils/t;->boQ:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/kwad/sdk/utils/t$1;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/kwad/sdk/utils/t$1;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw v0
.end method
