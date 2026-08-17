.class Lcom/fl/saas/v0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field private final d:Ljava/lang/Object;

.field e:Lcom/fl/saas/X;

.field final synthetic f:Lcom/fl/saas/v0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/v0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/v0$c;->f:Lcom/fl/saas/v0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const p1, 0x7fffffff

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/fl/saas/v0$c;->b:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/fl/saas/v0$c;->c:Z

    .line 13
    .line 14
    new-instance p1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/fl/saas/v0$c;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/fl/saas/v0$c;->a:Ljava/lang/String;

    .line 22
    .line 23
    if-lez p3, :cond_0

    .line 24
    .line 25
    iput p3, p0, Lcom/fl/saas/v0$c;->b:I

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/fl/saas/v0$c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/fl/saas/v0$c;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/fl/saas/X;

    invoke-direct {v0, p1}, Lcom/fl/saas/X;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fl/saas/v0$c;->e:Lcom/fl/saas/X;

    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3, v4}, Lcom/fl/saas/X;->a(J)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    move v1, v2

    :cond_1
    iget-object v3, p0, Lcom/fl/saas/v0$c;->e:Lcom/fl/saas/X;

    invoke-virtual {v3, v0}, Lcom/fl/saas/X;->a([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/fl/saas/v0$c;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Lcom/fl/saas/z0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0}, Lcom/fl/saas/v0$c;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/2addr v1, v3

    :try_start_3
    iget v3, p0, Lcom/fl/saas/v0$c;->b:I
    :try_end_3
    .catch Lcom/fl/saas/z0; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lt v1, v3, :cond_1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/fl/saas/z0; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    :goto_1
    :try_start_6
    iget-object v0, p0, Lcom/fl/saas/v0$c;->e:Lcom/fl/saas/X;

    invoke-virtual {v0}, Lcom/fl/saas/X;->close()V

    iget-object v0, p0, Lcom/fl/saas/v0$c;->f:Lcom/fl/saas/v0;

    invoke-static {v0, p1}, Lcom/fl/saas/v0;->a(Lcom/fl/saas/v0;Ljava/lang/String;)Z
    :try_end_6
    .catch Lcom/fl/saas/z0; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :goto_3
    :try_start_7
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, p0, Lcom/fl/saas/v0$c;->e:Lcom/fl/saas/X;

    invoke-virtual {v0}, Lcom/fl/saas/X;->close()V
    :try_end_8
    .catch Lcom/fl/saas/z0; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_4
    :try_start_a
    iget-object v0, p0, Lcom/fl/saas/v0$c;->e:Lcom/fl/saas/X;

    invoke-virtual {v0}, Lcom/fl/saas/X;->close()V

    iget-object v0, p0, Lcom/fl/saas/v0$c;->f:Lcom/fl/saas/v0;

    invoke-static {v0, p1}, Lcom/fl/saas/v0;->a(Lcom/fl/saas/v0;Ljava/lang/String;)Z
    :try_end_a
    .catch Lcom/fl/saas/z0; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_5
    return v2

    :goto_6
    :try_start_b
    iget-object v1, p0, Lcom/fl/saas/v0$c;->e:Lcom/fl/saas/X;

    invoke-virtual {v1}, Lcom/fl/saas/X;->close()V

    iget-object v1, p0, Lcom/fl/saas/v0$c;->f:Lcom/fl/saas/v0;

    invoke-static {v1, p1}, Lcom/fl/saas/v0;->a(Lcom/fl/saas/v0;Ljava/lang/String;)Z
    :try_end_b
    .catch Lcom/fl/saas/z0; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    :goto_8
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/v0$c;->c:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/v0$c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fl/saas/v0$c;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/v0$c;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
