.class public Lcom/sigmob/sdk/downloader/core/breakpoint/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->a:I

    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, ""

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->b:Ljava/lang/String;

    const-string v0, "etag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->c:Ljava/lang/String;

    const-string v0, "parent_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->d:Ljava/lang/String;

    const-string v0, "filename"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->e:Ljava/lang/String;

    const-string v0, "task_only_parent_path"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->f:Z

    const-string v0, "chunked"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v2, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->g:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->g:Z

    return v0
.end method

.method public h()Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 6

    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->a:I

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->b:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->f:Z

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/d;->g:Z

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Z)V

    return-object v0
.end method
