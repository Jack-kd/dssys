.class public Lcom/sigmob/sdk/downloader/core/download/a;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field private d:Z

.field private final e:Lcom/sigmob/sdk/downloader/f;

.field private final f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private final g:J


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/a;->e:Lcom/sigmob/sdk/downloader/f;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iput-wide p3, p0, Lcom/sigmob/sdk/downloader/core/download/a;->g:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->d:Z

    return v0
.end method

.method public b()Lcom/sigmob/sdk/downloader/core/cause/b;
    .locals 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/b;->a:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/b;->b:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->c:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/sigmob/sdk/downloader/core/cause/b;->c:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cause find with dirty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 8

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sigmob/sdk/downloader/core/download/a;->g:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    return v1

    :cond_5
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v3, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->d()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 4

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->e()Lcom/sigmob/sdk/downloader/core/file/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/file/a$a;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->f:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->f()Lcom/sigmob/sdk/downloader/core/file/e;

    move-result-object v0

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/download/a;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/downloader/core/file/e;->b(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public e()Z
    .locals 6

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->c(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->e:Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/a;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->a:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->b:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/download/a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->c:Z

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/a;->b:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/a;->a:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/download/a;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileExist["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] infoRight["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] outputStreamSupport["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/download/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
