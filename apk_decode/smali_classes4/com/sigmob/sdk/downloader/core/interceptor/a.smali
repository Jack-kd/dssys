.class public Lcom/sigmob/sdk/downloader/core/interceptor/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$a;
.implements Lcom/sigmob/sdk/downloader/core/interceptor/c$b;


# static fields
.field private static final a:Ljava/lang/String; = "BreakpointInterceptor"

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\d+ *- *(\\d+) */ *\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/downloader/core/interceptor/a;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2

    .line 2
    sget-object v0, Lcom/sigmob/sdk/downloader/core/interceptor/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/connection/a$a;)J
    .locals 6

    .line 1
    const-string v0, "Content-Range"

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/interceptor/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-string v2, "Content-Length"

    invoke-interface {p1, v2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/download/f;)Lcom/sigmob/sdk/downloader/core/connection/a$a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const-string v0, "Update store failed!"

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->n()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->d()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/download/d;->k()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/downloader/core/interceptor/a;->a(Lcom/sigmob/sdk/downloader/core/connection/a$a;)J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v5, v9

    if-lez v3, :cond_2

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SingleBlock special check: the response instance-length["

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "] isn\'t equal to the instance length from trial-connection["

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BreakpointInterceptor"

    invoke-static {v7, v3}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->c()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    new-instance v3, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    invoke-direct {v3, v9, v10, v5, v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;-><init>(JJ)V

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f()V

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/a;)V

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->c()Lcom/sigmob/sdk/downloader/f;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/downloader/core/cause/b;->h:Lcom/sigmob/sdk/downloader/core/cause/b;

    invoke-interface {v3, v4, v2, v5}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;Lcom/sigmob/sdk/downloader/core/cause/b;)V

    goto :goto_1

    :cond_1
    const-string p1, "Discard breakpoint because of on this special case, we have to download from beginning"

    invoke-static {v7, p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/downloader/core/exception/g;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/downloader/core/exception/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->r()Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    move-result-object p1

    :try_start_0
    invoke-interface {p1, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    sget-object p1, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    throw p1
.end method

.method public b(Lcom/sigmob/sdk/downloader/core/download/f;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->e()I

    move-result v2

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->g()Lcom/sigmob/sdk/downloader/core/file/d;

    move-result-object v6

    const-wide/16 v7, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->p()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v11, v9, v3

    if-nez v11, :cond_4

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->j()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/d;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v6, v2}, Lcom/sigmob/sdk/downloader/core/file/d;->a(I)V

    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v6, v2}, Lcom/sigmob/sdk/downloader/core/file/d;->b(I)V

    cmp-long p1, v7, v0

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch-length isn\'t equal to the response content-length, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "!= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-wide v7

    :cond_4
    add-long/2addr v7, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->j()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/f;->f()Lcom/sigmob/sdk/downloader/core/download/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/d;->d()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v6, v2}, Lcom/sigmob/sdk/downloader/core/file/d;->a(I)V

    :cond_5
    throw v0
.end method
