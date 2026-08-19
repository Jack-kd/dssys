.class public Lcom/sigmob/sdk/downloader/core/interceptor/connect/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/download/f;)Lcom/sigmob/sdk/downloader/core/connection/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->c()Lcom/sigmob/sdk/downloader/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/download/g;->b(Lcom/sigmob/sdk/downloader/f;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g;->b()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->i()Lcom/sigmob/sdk/downloader/core/connection/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/downloader/core/connection/a;->a()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object p1

    return-object p1
.end method
