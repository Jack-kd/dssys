.class public Lcom/sigmob/sdk/downloader/core/interceptor/connect/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$a;


# static fields
.field private static final a:Ljava/lang/String; = "HeaderInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/download/f;)Lcom/sigmob/sdk/downloader/core/connection/a$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->d()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->i()Lcom/sigmob/sdk/downloader/core/connection/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->c()Lcom/sigmob/sdk/downloader/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->b()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/util/Map;Lcom/sigmob/sdk/downloader/core/connection/a;)V

    :cond_0
    if-eqz v3, :cond_1

    const-string v4, "User-Agent"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Lcom/sigmob/sdk/downloader/core/connection/a;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->e()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string v6, "Range"

    invoke-interface {v1, v6, v5}, Lcom/sigmob/sdk/downloader/core/connection/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssembleHeaderRange ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") block("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") downloadFrom("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") currentOffset("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HeaderInterceptor"

    invoke-static {v5, v4}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "If-Match"

    invoke-interface {v1, v5, v4}, Lcom/sigmob/sdk/downloader/core/connection/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v4

    invoke-interface {v1}, Lcom/sigmob/sdk/downloader/core/connection/a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v2, v3, v1}, Lcom/sigmob/sdk/downloader/c;->b(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->n()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->f()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_5
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v5

    invoke-interface {v1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->d()I

    move-result v6

    invoke-interface {v5, v2, v3, v6, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;IILjava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v0}, Lcom/sigmob/sdk/downloader/core/download/g;->a(Lcom/sigmob/sdk/downloader/core/connection/a$a;ILcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/download/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$b;->a()V

    const-string v0, "Content-Length"

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_7
    :goto_0
    const-string v0, "Content-Range"

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->d(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/sdk/downloader/core/download/f;->a(J)V

    return-object v1

    :cond_8
    sget-object p1, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw p1

    :cond_9
    sget-object p1, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw p1

    :cond_a
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No block-info found on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
