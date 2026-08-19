.class public Lcom/sigmob/sdk/downloader/core/interceptor/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$a;
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/download/f;)Lcom/sigmob/sdk/downloader/core/connection/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->n()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of v2, v1, Lcom/sigmob/sdk/downloader/core/exception/g;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->l()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/download/d;->e(Ljava/io/IOException;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->g()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/file/d;->d(I)V

    throw v1
.end method

.method public b(Lcom/sigmob/sdk/downloader/core/download/f;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->o()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/core/download/d;->e(Ljava/io/IOException;)V

    throw v0
.end method
