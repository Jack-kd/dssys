.class public Lcom/sigmob/sdk/downloader/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/downloader/a$d;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/downloader/a$d;)Ljava/util/Map;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic e(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic f(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic g(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic j(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic k(Lcom/sigmob/sdk/downloader/a$d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/downloader/a$d;->k:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->b:Landroid/net/Uri;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parent path only accept directory path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Boolean;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 1

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/downloader/a$d;->a(Ljava/io/File;)Lcom/sigmob/sdk/downloader/a$d;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->a:Ljava/util/Map;

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public b(I)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/Boolean;)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c(I)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(I)Lcom/sigmob/sdk/downloader/a$d;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$d;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public d()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->e:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x7d0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->h:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$d;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()Lcom/sigmob/sdk/downloader/a$b;
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/downloader/a$b;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/downloader/a$b;-><init>(Lcom/sigmob/sdk/downloader/a$d;)V

    return-object v0
.end method
