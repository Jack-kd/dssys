.class public Lcom/sigmob/sdk/downloader/core/download/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/download/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lcom/sigmob/sdk/downloader/core/file/d;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Ljava/io/IOException;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->b:Lcom/sigmob/sdk/downloader/core/file/d;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/downloader/core/file/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/d;->b:Lcom/sigmob/sdk/downloader/core/file/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/downloader/core/file/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->b:Lcom/sigmob/sdk/downloader/core/file/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public a(Ljava/io/IOException;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->c:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/d;->i:Ljava/io/IOException;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/io/IOException;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->e:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/d;->i:Ljava/io/IOException;

    return-void
.end method

.method public c(Ljava/io/IOException;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->f:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/d;->i:Ljava/io/IOException;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->c:Z

    return v0
.end method

.method public d(Ljava/io/IOException;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->h:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/d;->i:Ljava/io/IOException;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->d:Z

    return v0
.end method

.method public e(Ljava/io/IOException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/sigmob/sdk/downloader/core/exception/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;->a(Ljava/io/IOException;)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/sigmob/sdk/downloader/core/exception/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;->b(Ljava/io/IOException;)V

    return-void

    :cond_2
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/b;->a:Lcom/sigmob/sdk/downloader/core/exception/b;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/d;->m()V

    return-void

    :cond_3
    instance-of v0, p1, Lcom/sigmob/sdk/downloader/core/exception/e;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;->d(Ljava/io/IOException;)V

    return-void

    :cond_4
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/c;->a:Lcom/sigmob/sdk/downloader/core/exception/c;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/downloader/core/download/d;->c(Ljava/io/IOException;)V

    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catch unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadCache"

    invoke-static {v0, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->h:Z

    return v0
.end method

.method public i()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->i:Ljava/io/IOException;

    return-object v0
.end method

.method public j()Lcom/sigmob/sdk/downloader/core/cause/b;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->i:Ljava/io/IOException;

    check-cast v0, Lcom/sigmob/sdk/downloader/core/exception/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/exception/f;->a()Lcom/sigmob/sdk/downloader/core/cause/b;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->d:Z

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/d;->g:Z

    return-void
.end method
