.class final Lcom/sigmob/sdk/downloader/core/connection/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/connection/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/connection/a;Lcom/sigmob/sdk/downloader/core/connection/a$a;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/downloader/core/connection/a;",
            "Lcom/sigmob/sdk/downloader/core/connection/a$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->d()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/connection/c;

    const/4 v2, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sigmob/sdk/downloader/j;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/connection/c;->b()V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    invoke-static {p2, v0}, Lcom/sigmob/sdk/downloader/j;->a(Lcom/sigmob/sdk/downloader/core/connection/a$a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c$c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    move-object v3, p1

    check-cast v3, Lcom/sigmob/sdk/downloader/core/connection/c;

    invoke-static {v3}, Lcom/sigmob/sdk/downloader/core/connection/c;->a(Lcom/sigmob/sdk/downloader/core/connection/c;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/connection/c$c;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/connection/c$c;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/connection/c;->a(Lcom/sigmob/sdk/downloader/core/connection/c;Ljava/net/URL;)Ljava/net/URL;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/connection/c;->h()V

    invoke-static {p3, v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/util/Map;Lcom/sigmob/sdk/downloader/core/connection/a;)V

    iget-object v0, v1, Lcom/sigmob/sdk/downloader/core/connection/c;->b:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/connection/c;->d()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many redirect requests: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
