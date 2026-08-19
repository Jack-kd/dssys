.class public Lcom/sigmob/sdk/downloader/core/download/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/sigmob/sdk/downloader/core/cause/b;

.field private b:Z

.field private c:Z

.field private d:J

.field private final e:Lcom/sigmob/sdk/downloader/f;

.field private final f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/b;->e:Lcom/sigmob/sdk/downloader/f;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/downloader/core/cause/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/b;->a:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object v0
.end method

.method public a(IJZ)Z
    .locals 2

    .line 2
    const/16 v0, 0x1a0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Lcom/sigmob/sdk/downloader/core/cause/b;
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/b;->a:Lcom/sigmob/sdk/downloader/core/cause/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cause find with resumable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/download/b;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/b;->b:Z

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/download/b;->d:J

    return-wide v0
.end method

.method public f()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/b;->g()Lcom/sigmob/sdk/downloader/core/download/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->a()V

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->c()Z

    move-result v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->d()Z

    move-result v3

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->b()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/c;->g()I

    move-result v1

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/core/download/b;->e:Lcom/sigmob/sdk/downloader/f;

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0, v7, v8, v9}, Lcom/sigmob/sdk/downloader/core/download/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v7, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Z)V

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v3, v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v3

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/core/download/b;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v3, v7}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->g(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iget-object v11, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0, v1, v3, v11, v6}, Lcom/sigmob/sdk/downloader/core/download/g;->a(IZLcom/sigmob/sdk/downloader/core/breakpoint/c;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/cause/b;

    move-result-object v3

    if-nez v3, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/sigmob/sdk/downloader/core/download/b;->c:Z

    iput-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/b;->a:Lcom/sigmob/sdk/downloader/core/cause/b;

    iput-wide v4, p0, Lcom/sigmob/sdk/downloader/core/download/b;->d:J

    iput-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/download/b;->b:Z

    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/sigmob/sdk/downloader/core/download/b;->a(IJZ)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {v0, v1, v7}, Lcom/sigmob/sdk/downloader/core/download/g;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/sigmob/sdk/downloader/core/exception/i;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/downloader/core/exception/i;-><init>(IJ)V

    throw v0

    :cond_4
    :goto_2
    return-void

    :cond_5
    sget-object v0, Lcom/sigmob/sdk/downloader/core/exception/b;->a:Lcom/sigmob/sdk/downloader/core/exception/b;

    throw v0
.end method

.method public g()Lcom/sigmob/sdk/downloader/core/download/c;
    .locals 3

    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/c;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/b;->e:Lcom/sigmob/sdk/downloader/f;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/b;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/downloader/core/download/c;-><init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] resumable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] failedCause["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/b;->a:Lcom/sigmob/sdk/downloader/core/cause/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] instanceLength["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sigmob/sdk/downloader/core/download/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
