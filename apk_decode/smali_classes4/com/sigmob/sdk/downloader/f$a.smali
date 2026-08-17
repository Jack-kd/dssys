.class public Lcom/sigmob/sdk/downloader/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:I = 0x1000

.field public static final d:I = 0x4000

.field public static final e:I = 0x10000

.field public static final f:I = 0x7d0

.field public static final g:Z = true

.field public static final h:I = 0x3e8

.field public static final i:Z = true

.field public static final j:Z = false


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/net/Uri;

.field private volatile k:Ljava/util/Map;
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

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->m:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->n:I

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->o:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/f$a;->q:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/sigmob/sdk/downloader/f$a;->r:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/f$a;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/f$a;->u:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/f$a;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->m:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->n:I

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->o:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sigmob/sdk/downloader/f$a;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/f$a;->q:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/sigmob/sdk/downloader/f$a;->r:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/f$a;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/downloader/f$a;->u:Z

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p3}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->v:Ljava/lang/Boolean;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/sigmob/sdk/downloader/f$a;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->w:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$a;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->v:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Uri isn\'t file scheme we can\'t let filename from response"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/sigmob/sdk/downloader/f$a;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->k:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/f$a;->x:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Lcom/sigmob/sdk/downloader/f;
    .locals 19

    .line 6
    move-object/from16 v0, p0

    new-instance v1, Lcom/sigmob/sdk/downloader/f;

    iget-object v2, v0, Lcom/sigmob/sdk/downloader/f$a;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/sigmob/sdk/downloader/f$a;->b:Landroid/net/Uri;

    iget v4, v0, Lcom/sigmob/sdk/downloader/f$a;->l:I

    iget v5, v0, Lcom/sigmob/sdk/downloader/f$a;->m:I

    iget v6, v0, Lcom/sigmob/sdk/downloader/f$a;->n:I

    iget v7, v0, Lcom/sigmob/sdk/downloader/f$a;->o:I

    iget v8, v0, Lcom/sigmob/sdk/downloader/f$a;->p:I

    iget-boolean v9, v0, Lcom/sigmob/sdk/downloader/f$a;->q:Z

    iget v10, v0, Lcom/sigmob/sdk/downloader/f$a;->r:I

    iget-object v11, v0, Lcom/sigmob/sdk/downloader/f$a;->k:Ljava/util/Map;

    iget-object v12, v0, Lcom/sigmob/sdk/downloader/f$a;->s:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/sigmob/sdk/downloader/f$a;->t:Z

    iget-boolean v14, v0, Lcom/sigmob/sdk/downloader/f$a;->u:Z

    iget-object v15, v0, Lcom/sigmob/sdk/downloader/f$a;->v:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/f$a;->w:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/f$a;->x:Ljava/lang/Boolean;

    move-object/from16 v18, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    invoke-direct/range {v1 .. v17}, Lcom/sigmob/sdk/downloader/f;-><init>(Ljava/lang/String;Landroid/net/Uri;IIIIIZILjava/util/Map;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$a;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/f$a;->k:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/f$a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/f$a;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/downloader/f$a;->r:I

    return-object p0
.end method

.method public b(Z)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/f$a;->q:Z

    return-object p0
.end method

.method public c(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/downloader/f$a;->l:I

    return-object p0
.end method

.method public c(Z)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/f$a;->t:Z

    return-object p0
.end method

.method public d(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/downloader/f$a;->m:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Z)Lcom/sigmob/sdk/downloader/f$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/sigmob/sdk/downloader/f$a;->u:Z

    return-object p0
.end method

.method public e(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/downloader/f$a;->n:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/downloader/f$a;->o:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)Lcom/sigmob/sdk/downloader/f$a;
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/downloader/f$a;->p:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be positive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
