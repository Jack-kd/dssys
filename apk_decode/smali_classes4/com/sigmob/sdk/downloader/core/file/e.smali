.class public Lcom/sigmob/sdk/downloader/core/file/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/sdk/downloader/core/file/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/downloader/core/file/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/file/c;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/e;->a:Lcom/sigmob/sdk/downloader/core/file/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/downloader/core/file/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/e;->a:Lcom/sigmob/sdk/downloader/core/file/c;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/file/d;
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/file/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/file/d;-><init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/file/d;Lcom/sigmob/sdk/downloader/f;)V
    .locals 0

    .line 3
    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Delete file failed!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->e()Lcom/sigmob/sdk/downloader/core/file/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/file/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->v()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->v()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
