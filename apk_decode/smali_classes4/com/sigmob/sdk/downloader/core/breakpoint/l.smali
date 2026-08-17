.class public Lcom/sigmob/sdk/downloader/core/breakpoint/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/breakpoint/j;
.implements Lcom/sigmob/sdk/downloader/core/breakpoint/m$a;


# static fields
.field private static final a:Ljava/lang/String; = "RemitStoreOnSQLite"


# instance fields
.field private final b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

.field private final c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

.field private final d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

.field private final e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/breakpoint/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;-><init>(Lcom/sigmob/sdk/downloader/core/breakpoint/m$a;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    iget-object v0, p1, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object p1, p1, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/breakpoint/n;Lcom/sigmob/sdk/downloader/core/breakpoint/i;Lcom/sigmob/sdk/downloader/core/breakpoint/j;Lcom/sigmob/sdk/downloader/core/breakpoint/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    return-void
.end method

.method public static j(I)V
    .locals 3

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    instance-of v1, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    check-cast v0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;

    iget-object v0, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    int-to-long v1, p0

    iput-wide v1, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->a:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current store is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not RemitStoreOnSQLite!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    sget-object p3, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->d(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->c(I)V

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
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->h(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result p1

    return p1
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->d(I)V

    return-void
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->c(I)Z

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->d(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/n;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/n;->b(I)V

    return-void
.end method

.method public e(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->f(I)Z

    move-result p1

    return p1
.end method

.method public g(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/i;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->g(I)Z

    move-result p1

    return p1
.end method

.method public h(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->c(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;->d:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->c(I)V

    return-void
.end method
