.class public Lcom/sigmob/sdk/downloader/core/breakpoint/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/breakpoint/j;


# static fields
.field public static final a:I = 0x1


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/sigmob/sdk/downloader/core/breakpoint/k;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;-><init>(Landroid/util/SparseArray;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/c;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->c:Ljava/util/HashMap;

    new-instance p2, Lcom/sigmob/sdk/downloader/core/breakpoint/k;

    invoke-direct {p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/k;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/k;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iget v1, v1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Ljava/util/List;Ljava/util/HashMap;Landroid/util/SparseArray;Ljava/util/List;Lcom/sigmob/sdk/downloader/core/breakpoint/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/c;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/sigmob/sdk/downloader/core/a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/k;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->c:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/k;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    new-instance v1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->l()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 5

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 0

    .line 5
    sget-object p3, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a(J)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Info not on store!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 7
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z
    .locals 3

    .line 8
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    iget v2, p1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->p()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b()I
    .locals 5

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v2, :cond_1

    if-eq v3, v4, :cond_2

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-eq v3, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Lcom/sigmob/sdk/downloader/f;)I
    .locals 5

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/k;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/k;->a(Lcom/sigmob/sdk/downloader/f;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget p1, v3, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/core/a;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/downloader/core/a;->a(Lcom/sigmob/sdk/downloader/core/a;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/a;->c()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/f;->d(I)Lcom/sigmob/sdk/downloader/f$b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/k;

    invoke-virtual {v1, p1, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/k;->a(Lcom/sigmob/sdk/downloader/f;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(I)V
    .locals 2

    .line 3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/k;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/k;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public g(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
