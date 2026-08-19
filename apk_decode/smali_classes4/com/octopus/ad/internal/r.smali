.class public Lcom/octopus/ad/internal/r;
.super Lcom/octopus/ad/internal/s;
.source "SourceFile"


# instance fields
.field private a:Lcom/octopus/ad/internal/b/a;

.field private final b:Lcom/octopus/ad/internal/d;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/s;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/r;->c:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Lcom/octopus/ad/internal/d;

    .line 7
    .line 8
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/octopus/ad/internal/c/p;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p1, v0, v1}, Lcom/octopus/ad/internal/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/octopus/ad/internal/r;->b:Lcom/octopus/ad/internal/d;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/b/a;

    new-instance v1, Lcom/octopus/ad/internal/b/a$a;

    invoke-direct {v1}, Lcom/octopus/ad/internal/b/a$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/b/a;-><init>(Lcom/octopus/ad/internal/b/a$a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/r;->a:Lcom/octopus/ad/internal/b/a;

    .line 2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/s;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/r;->a:Lcom/octopus/ad/internal/b/a;

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/e;)V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/r;->a:Lcom/octopus/ad/internal/b/a;

    iget-object v1, p0, Lcom/octopus/ad/internal/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 5
    :goto_0
    sget-object v1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while firing new ad request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :goto_1
    sget-object v1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Concurrent Thread Exception while firing new ad request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 9
    sget-object v0, Lcom/octopus/ad/internal/c/f;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load prefetch request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/f;)V
    .locals 4

    .line 10
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->ae()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetch resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/octopus/ad/internal/c/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lcom/octopus/ad/internal/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/r;->b:Lcom/octopus/ad/internal/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/r;->a:Lcom/octopus/ad/internal/b/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/octopus/ad/internal/r;->a:Lcom/octopus/ad/internal/b/a;

    .line 7
    .line 8
    :cond_0
    return-void
.end method
