.class public Lcom/sigmob/sdk/downloader/core/interceptor/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$b;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:[B

.field private final c:Lcom/sigmob/sdk/downloader/core/file/d;

.field private final d:I

.field private final e:Lcom/sigmob/sdk/downloader/f;

.field private final f:Lcom/sigmob/sdk/downloader/core/dispatcher/a;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Lcom/sigmob/sdk/downloader/core/file/d;Lcom/sigmob/sdk/downloader/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->d:I

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->a:Ljava/io/InputStream;

    invoke-virtual {p4}, Lcom/sigmob/sdk/downloader/f;->o()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->b:[B

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->c:Lcom/sigmob/sdk/downloader/core/file/d;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->f:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    return-void
.end method


# virtual methods
.method public b(Lcom/sigmob/sdk/downloader/core/download/f;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->c()Lcom/sigmob/sdk/downloader/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/download/g;->b(Lcom/sigmob/sdk/downloader/f;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->c:Lcom/sigmob/sdk/downloader/core/file/d;

    iget v2, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->d:I

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->b:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/sigmob/sdk/downloader/core/file/d;->a(I[BI)V

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/downloader/core/download/f;->b(J)V

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->f:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/interceptor/b;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->j()V

    :cond_1
    return-wide v0

    :cond_2
    sget-object p1, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw p1
.end method
