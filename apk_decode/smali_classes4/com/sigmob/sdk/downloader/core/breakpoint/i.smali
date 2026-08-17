.class public Lcom/sigmob/sdk/downloader/core/breakpoint/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/breakpoint/j;


# static fields
.field private static final c:Ljava/lang/String; = "BreakpointStoreOnSQLite"


# instance fields
.field protected final a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

.field protected final b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    new-instance p1, Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->b()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;-><init>(Landroid/util/SparseArray;Ljava/util/List;Ljava/util/HashMap;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/breakpoint/e;Lcom/sigmob/sdk/downloader/core/breakpoint/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(ILcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    sget-object p3, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide p3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;IJ)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 7
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->b(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BreakpointStoreOnSQLite"

    invoke-static {v3, v2}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->b(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->c(I)V

    return-void
.end method

.method public c()Lcom/sigmob/sdk/downloader/core/breakpoint/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/l;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/l;-><init>(Lcom/sigmob/sdk/downloader/core/breakpoint/i;)V

    return-object v0
.end method

.method public c(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->c(I)Z

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->d(I)V

    return-void
.end method

.method public e(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/h;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/h;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/i;->a:Lcom/sigmob/sdk/downloader/core/breakpoint/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/e;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
