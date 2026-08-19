.class public Lcom/sigmob/sdk/downloader/core/listener/assist/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;,
        Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;,
        Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/d;"
    }
.end annotation


# instance fields
.field a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

.field private b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

.field private final c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/sdk/downloader/core/listener/assist/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/core/listener/assist/e$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;-><init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/listener/assist/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/core/listener/assist/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;->a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;->a(Lcom/sigmob/sdk/downloader/f;ILcom/sigmob/sdk/downloader/core/breakpoint/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;IJ)V
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v7, v0, p3

    iget-object v0, v6, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->c:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v0, v6, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->b:J

    add-long/2addr v0, p3

    iput-wide v0, v6, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->b:J

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

    move-object v2, p1

    move v3, p2

    if-eqz v1, :cond_1

    move-wide v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;->a(Lcom/sigmob/sdk/downloader/f;IJLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2, v3, v7, v8}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;->d(Lcom/sigmob/sdk/downloader/f;IJ)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

    iget-wide p2, v6, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;->b:J

    invoke-interface {p1, v2, p2, p3}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;->a(Lcom/sigmob/sdk/downloader/f;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;ZLcom/sigmob/sdk/downloader/core/listener/assist/b$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 2

    .line 6
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->y()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->c(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/b$b;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;Lcom/sigmob/sdk/downloader/core/listener/assist/b$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->b:Lcom/sigmob/sdk/downloader/core/listener/assist/b$a;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/b;->c:Lcom/sigmob/sdk/downloader/core/listener/assist/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b(Z)V

    return-void
.end method
