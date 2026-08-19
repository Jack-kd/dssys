.class public Lcom/sigmob/sdk/downloader/core/listener/assist/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/listener/assist/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;,
        Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sigmob/sdk/downloader/core/listener/assist/d;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private final d:Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/sdk/downloader/core/listener/assist/e$b<",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/c;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;->b(I)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {v0, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/c;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    invoke-interface {v1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;->b()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->c:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public c(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/f;",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/c;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;->b()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->a:Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/listener/assist/e;->d:Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/downloader/core/listener/assist/e$b;->b(I)Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/downloader/core/listener/assist/e$a;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    :cond_1
    return-object p1

    :cond_2
    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
