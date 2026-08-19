.class public Lcom/sigmob/sdk/downloader/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/g$a;
    }
.end annotation


# static fields
.field static volatile a:Lcom/sigmob/sdk/downloader/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field b:Lcom/sigmob/sdk/downloader/d;

.field private final c:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

.field private final d:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

.field private final e:Lcom/sigmob/sdk/downloader/core/breakpoint/g;

.field private final f:Lcom/sigmob/sdk/downloader/core/connection/a$b;

.field private final g:Lcom/sigmob/sdk/downloader/core/file/a$a;

.field private final h:Lcom/sigmob/sdk/downloader/core/file/e;

.field private final i:Lcom/sigmob/sdk/downloader/core/download/g;

.field private final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/downloader/core/dispatcher/b;Lcom/sigmob/sdk/downloader/core/dispatcher/a;Lcom/sigmob/sdk/downloader/core/breakpoint/j;Lcom/sigmob/sdk/downloader/core/connection/a$b;Lcom/sigmob/sdk/downloader/core/file/a$a;Lcom/sigmob/sdk/downloader/core/file/e;Lcom/sigmob/sdk/downloader/core/download/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/g;->c:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/g;->d:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    iput-object p4, p0, Lcom/sigmob/sdk/downloader/g;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    iput-object p5, p0, Lcom/sigmob/sdk/downloader/g;->f:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    iput-object p6, p0, Lcom/sigmob/sdk/downloader/g;->g:Lcom/sigmob/sdk/downloader/core/file/a$a;

    iput-object p7, p0, Lcom/sigmob/sdk/downloader/g;->h:Lcom/sigmob/sdk/downloader/core/file/e;

    iput-object p8, p0, Lcom/sigmob/sdk/downloader/g;->i:Lcom/sigmob/sdk/downloader/core/download/g;

    invoke-static {p4}, Lcom/sigmob/sdk/downloader/core/c;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/j;)Lcom/sigmob/sdk/downloader/core/breakpoint/j;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/downloader/g;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    if-nez v0, :cond_1

    const-class v0, Lcom/sigmob/sdk/downloader/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    if-nez v1, :cond_0

    sput-object p0, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FileDownload must be null."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "FileDownload must be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j()Lcom/sigmob/sdk/downloader/g;
    .locals 3

    sget-object v0, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    if-nez v0, :cond_2

    const-class v0, Lcom/sigmob/sdk/downloader/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sigmob/sdk/downloader/g$a;

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/downloader/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g$a;->a()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    sget-object v0, Lcom/sigmob/sdk/downloader/g;->a:Lcom/sigmob/sdk/downloader/g;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->c:Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/downloader/g;->b:Lcom/sigmob/sdk/downloader/d;

    return-void
.end method

.method public b()Lcom/sigmob/sdk/downloader/core/dispatcher/a;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->d:Lcom/sigmob/sdk/downloader/core/dispatcher/a;

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->e:Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    return-object v0
.end method

.method public d()Lcom/sigmob/sdk/downloader/core/connection/a$b;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->f:Lcom/sigmob/sdk/downloader/core/connection/a$b;

    return-object v0
.end method

.method public e()Lcom/sigmob/sdk/downloader/core/file/a$a;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->g:Lcom/sigmob/sdk/downloader/core/file/a$a;

    return-object v0
.end method

.method public f()Lcom/sigmob/sdk/downloader/core/file/e;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->h:Lcom/sigmob/sdk/downloader/core/file/e;

    return-object v0
.end method

.method public g()Lcom/sigmob/sdk/downloader/core/download/g;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->i:Lcom/sigmob/sdk/downloader/core/download/g;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->j:Landroid/content/Context;

    return-object v0
.end method

.method public i()Lcom/sigmob/sdk/downloader/d;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/g;->b:Lcom/sigmob/sdk/downloader/d;

    return-object v0
.end method
