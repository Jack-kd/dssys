.class public Lcom/sigmob/sdk/downloader/core/breakpoint/c;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Ljava/io/File;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private final f:Lcom/sigmob/sdk/downloader/core/download/g$a;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/downloader/core/breakpoint/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private i:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-static {p4}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    return-void

    :cond_0
    new-instance p1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {p1, p4}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-static {p4}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-direct {p1, p4}, Lcom/sigmob/sdk/downloader/core/download/g$a;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    iput-boolean p5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    return v0
.end method

.method public a(ILjava/lang/String;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 6

    .line 2
    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    iput-boolean p1, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->g()Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/a;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->l()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->a()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2

    :cond_6
    return v1
.end method

.method public b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    return v0
.end method

.method public c(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 6

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    iput-boolean p1, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    iget-object v2, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->g()Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->d:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    return-object v0
.end method

.method public i()J
    .locals 7

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    instance-of v6, v5, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    if-eqz v6, :cond_0

    check-cast v5, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v5

    add-long/2addr v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public j()J
    .locals 7

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    instance-of v6, v5, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    invoke-virtual {v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->d()J

    move-result-wide v5

    add-long/2addr v1, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/sigmob/sdk/downloader/core/download/g$a;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    return-object v0
.end method

.method public o()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->e:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->e:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->e:Ljava/io/File;

    return-object v0
.end method

.method public p()Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 6

    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v4}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    iput-boolean v1, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i:Z

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    iget-object v3, v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->g()Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] url["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] etag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] taskOnlyProvidedParentPath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] parent path["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] filename["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->f:Lcom/sigmob/sdk/downloader/core/download/g$a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] block(s):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->g:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
