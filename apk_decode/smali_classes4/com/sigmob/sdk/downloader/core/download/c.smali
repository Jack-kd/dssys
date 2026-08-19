.class public Lcom/sigmob/sdk/downloader/core/download/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ConnectTrial"

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/sigmob/sdk/downloader/f;

.field private final c:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private d:Z

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/downloader/core/download/c;->i:Ljava/util/regex/Pattern;

    const-string v0, "attachment;\\s*filename\\s*=\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/downloader/core/download/c;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/download/c;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/downloader/core/download/c;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sigmob/sdk/downloader/core/download/c;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_4

    const-string v1, "../"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/sigmob/sdk/downloader/core/exception/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The filename ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] from the response is not allowable, because it contains \'../\', which can raise the directory traversal vulnerability"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/downloader/core/exception/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method private static a(Lcom/sigmob/sdk/downloader/core/connection/a$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->d()I

    move-result v0

    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "Accept-Ranges"

    invoke-interface {p0, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bytes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Lcom/sigmob/sdk/downloader/core/connection/a$a;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const-string v0, "Content-Disposition"

    invoke-interface {p0, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/downloader/core/download/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 3
    if-eqz p0, :cond_0

    const-string v0, "chunked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/String;)J
    .locals 5

    .line 1
    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse instance length failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ConnectTrial"

    invoke-static {v2, p0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v0
.end method

.method private static c(Lcom/sigmob/sdk/downloader/core/connection/a$a;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "Etag"

    invoke-interface {p0, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/sigmob/sdk/downloader/core/connection/a$a;)J
    .locals 5

    .line 1
    const-string v0, "Content-Range"

    invoke-interface {p0, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/download/c;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-interface {p0, v0}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/downloader/core/download/c;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ConnectTrial"

    const-string v0, "Transfer-Encoding isn\'t chunked but there is no valid instance length found either!"

    invoke-static {p0, v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v2
.end method


# virtual methods
.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/download/g;->b(Lcom/sigmob/sdk/downloader/f;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g;->b()V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->d()Lcom/sigmob/sdk/downloader/core/connection/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/connection/a$b;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/connection/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "If-Match"

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/c;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/downloader/core/connection/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :cond_0
    :goto_0
    const-string v1, "Range"

    const-string v2, "bytes=0-0"

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/downloader/core/connection/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/util/Map;Lcom/sigmob/sdk/downloader/core/connection/a;)V

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v1

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->c()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v1, v3, v2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Map;)V

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->a()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/downloader/f;->a(Ljava/lang/String;)V

    const-string v3, "ConnectTrial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] redirect location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/f;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->d()I

    move-result v3

    iput v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->h:I

    invoke-static {v2}, Lcom/sigmob/sdk/downloader/core/download/c;->a(Lcom/sigmob/sdk/downloader/core/connection/a$a;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->d:Z

    invoke-static {v2}, Lcom/sigmob/sdk/downloader/core/download/c;->d(Lcom/sigmob/sdk/downloader/core/connection/a$a;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->e:J

    invoke-static {v2}, Lcom/sigmob/sdk/downloader/core/download/c;->c(Lcom/sigmob/sdk/downloader/core/connection/a$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/downloader/core/download/c;->b(Lcom/sigmob/sdk/downloader/core/connection/a$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->g:Ljava/lang/String;

    invoke-interface {v2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->f()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    iget v5, p0, Lcom/sigmob/sdk/downloader/core/download/c;->h:I

    invoke-interface {v1, v4, v5, v3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    iget-wide v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->e:J

    invoke-virtual {p0, v3, v4, v2}, Lcom/sigmob/sdk/downloader/core/download/c;->a(JLcom/sigmob/sdk/downloader/core/connection/a$a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->b()V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/c;->i()V

    :cond_3
    return-void

    :goto_1
    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->b()V

    throw v1
.end method

.method public a(JLcom/sigmob/sdk/downloader/core/connection/a$a;)Z
    .locals 2

    .line 3
    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const-string p1, "Content-Range"

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    return p2

    :cond_1
    const-string p1, "Transfer-Encoding"

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/download/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const-string p1, "Content-Length"

    invoke-interface {p3, p1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return p2
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->e:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->d:Z

    return v0
.end method

.method public d()Z
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->h:I

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/c;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->d()Lcom/sigmob/sdk/downloader/core/connection/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/connection/a$b;->a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/connection/a;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->a()Lcom/sigmob/sdk/downloader/c;

    move-result-object v1

    :try_start_0
    const-string v2, "HEAD"

    invoke-interface {v0, v2}, Lcom/sigmob/sdk/downloader/core/connection/a;->a(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->b()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/util/Map;Lcom/sigmob/sdk/downloader/core/connection/a;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Ljava/util/Map;)V

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->a()Lcom/sigmob/sdk/downloader/core/connection/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/c;->b:Lcom/sigmob/sdk/downloader/f;

    invoke-interface {v2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->d()I

    move-result v4

    invoke-interface {v2}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->f()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v3, v4, v5}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;ILjava/util/Map;)V

    const-string v1, "Content-Length"

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sigmob/sdk/downloader/core/download/c;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->b()V

    return-void

    :goto_1
    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/connection/a;->b()V

    throw v1
.end method
