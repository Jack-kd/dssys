.class public Lcom/sigmob/sdk/downloader/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

.field private b:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

.field private c:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

.field private d:Lcom/sigmob/sdk/downloader/core/connection/a$b;

.field private e:Lcom/sigmob/sdk/downloader/core/file/e;

.field private f:Lcom/sigmob/sdk/downloader/core/download/g;

.field private g:Lcom/sigmob/sdk/downloader/core/file/a$a;

.field private h:Lcom/sigmob/sdk/downloader/d;

.field private final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/connection/a$b;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->d:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/dispatcher/a;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->b:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/dispatcher/b;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->a:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/download/g;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->f:Lcom/sigmob/sdk/downloader/core/download/g;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/file/a$a;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->g:Lcom/sigmob/sdk/downloader/core/file/a$a;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/file/e;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->e:Lcom/sigmob/sdk/downloader/core/file/e;

    return-object p0
.end method

.method public a(Lcom/sigmob/sdk/downloader/d;)Lcom/sigmob/sdk/downloader/g$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g$a;->h:Lcom/sigmob/sdk/downloader/d;

    return-object p0
.end method

.method public a()Lcom/sigmob/sdk/downloader/g;
    .locals 10

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->a:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->a:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->b:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->b:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Landroid/content/Context;)Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->d:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/downloader/core/c;->c()Lcom/sigmob/sdk/downloader/core/connection/a$b;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->d:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->g:Lcom/sigmob/sdk/downloader/core/file/a$a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sigmob/sdk/downloader/core/file/b$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/file/b$a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->g:Lcom/sigmob/sdk/downloader/core/file/a$a;

    :cond_4
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->e:Lcom/sigmob/sdk/downloader/core/file/e;

    if-nez v0, :cond_5

    new-instance v0, Lcom/sigmob/sdk/downloader/core/file/e;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/file/e;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->e:Lcom/sigmob/sdk/downloader/core/file/e;

    :cond_5
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->f:Lcom/sigmob/sdk/downloader/core/download/g;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/g;

    invoke-direct {v0}, Lcom/sigmob/sdk/downloader/core/download/g;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->f:Lcom/sigmob/sdk/downloader/core/download/g;

    :cond_6
    new-instance v1, Lcom/sigmob/sdk/downloader/g;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/g$a;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/downloader/g$a;->a:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    iget-object v4, p0, Lcom/sigmob/sdk/downloader/g$a;->b:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    iget-object v5, p0, Lcom/sigmob/sdk/downloader/g$a;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    iget-object v6, p0, Lcom/sigmob/sdk/downloader/g$a;->d:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    iget-object v7, p0, Lcom/sigmob/sdk/downloader/g$a;->g:Lcom/sigmob/sdk/downloader/core/file/a$a;

    iget-object v8, p0, Lcom/sigmob/sdk/downloader/g$a;->e:Lcom/sigmob/sdk/downloader/core/file/e;

    iget-object v9, p0, Lcom/sigmob/sdk/downloader/g$a;->f:Lcom/sigmob/sdk/downloader/core/download/g;

    invoke-direct/range {v1 .. v9}, Lcom/sigmob/sdk/downloader/g;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/downloader/core/dispatcher/b;Lcom/sigmob/sdk/downloader/core/dispatcher/a;Lcom/sigmob/sdk/downloader/core/breakpoint/j;Lcom/sigmob/sdk/downloader/core/connection/a$b;Lcom/sigmob/sdk/downloader/core/file/a$a;Lcom/sigmob/sdk/downloader/core/file/e;Lcom/sigmob/sdk/downloader/core/download/g;)V

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g$a;->h:Lcom/sigmob/sdk/downloader/d;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/downloader/g;->a(Lcom/sigmob/sdk/downloader/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadStore["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/g$a;->c:Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] connectionFactory["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/g$a;->d:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileDownload"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
