.class public Lcom/sigmob/sdk/downloader/core/download/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/download/g$b;,
        Lcom/sigmob/sdk/downloader/core/download/g$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "DownloadStrategy"

.field private static final c:J = 0x100000L

.field private static final d:J = 0x500000L

.field private static final e:J = 0x3200000L

.field private static final f:J = 0x6400000L

.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field a:Ljava/lang/Boolean;

.field private h:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\\\|/([^\\\\|/|?]*)\\??"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/downloader/core/download/g;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;J)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->u()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->u()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long p1, p2, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-wide/32 v0, 0x500000

    cmp-long p1, p2, v0

    if-gez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-wide/32 v0, 0x3200000

    cmp-long p1, p2, v0

    if-gez p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const-wide/32 v0, 0x6400000

    cmp-long p1, p2, v0

    if-gez p1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x5

    return p1
.end method

.method public a()J
    .locals 2

    .line 2
    const-wide/16 v0, 0x2800

    return-wide v0
.end method

.method public a(IZLcom/sigmob/sdk/downloader/core/breakpoint/c;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/cause/b;
    .locals 1

    .line 3
    invoke-virtual {p3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x19c

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/sigmob/sdk/downloader/core/cause/b;->e:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object p1

    :cond_0
    invoke-static {p3}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p1, Lcom/sigmob/sdk/downloader/core/cause/b;->d:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object p1

    :cond_1
    const/16 p3, 0xc9

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/sigmob/sdk/downloader/core/cause/b;->f:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object p1

    :cond_2
    const/16 p3, 0xcd

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_3

    sget-object p1, Lcom/sigmob/sdk/downloader/core/cause/b;->g:Lcom/sigmob/sdk/downloader/core/cause/b;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/core/connection/a$a;ILcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/download/g$b;
    .locals 1

    .line 4
    new-instance v0, Lcom/sigmob/sdk/downloader/core/download/g$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/download/g$b;-><init>(Lcom/sigmob/sdk/downloader/core/connection/a$a;ILcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/j;)V
    .locals 9

    .line 5
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/j;->e(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->l()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;-><init>(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->h()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->c(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->m()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file is not ready on valid info for task on complete state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadStrategy"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    new-instance v2, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    const-wide/16 v3, 0x0

    move-wide v7, v5

    invoke-direct/range {v2 .. v8}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;-><init>(JJJ)V

    invoke-virtual {p2, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/a;)V

    :cond_2
    invoke-static {p1, p2}, Lcom/sigmob/sdk/downloader/f$c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/downloader/f;)V
    .locals 1

    .line 6
    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->g()Lcom/sigmob/sdk/downloader/core/download/g$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/downloader/core/download/g;->b(Ljava/lang/String;Lcom/sigmob/sdk/downloader/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->g()Lcom/sigmob/sdk/downloader/core/download/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->n()Lcom/sigmob/sdk/downloader/core/download/g$a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public a(IZ)Z
    .locals 3

    .line 8
    const/16 v0, 0xce

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 2

    .line 9
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->g()Lcom/sigmob/sdk/downloader/core/download/g$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/downloader/core/download/g$a;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;J)Z
    .locals 6

    .line 10
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/breakpoint/c;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(I)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v2

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/g;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v2

    cmp-long p3, v2, p3

    if-eqz p3, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->a(Lcom/sigmob/sdk/downloader/core/breakpoint/c;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reuse another same info: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadStrategy"

    invoke-static {p2, p1}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public a(Z)Z
    .locals 1

    .line 11
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->e()Lcom/sigmob/sdk/downloader/core/file/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/file/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public b(Ljava/lang/String;Lcom/sigmob/sdk/downloader/f;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sigmob/sdk/downloader/core/download/g;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Can\'t find valid filename."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p1
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "network is not available!"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/sigmob/sdk/downloader/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/core/c;->c(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->f()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/g;->a:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/g;->h()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/g;->h:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/core/c;->a(Landroid/net/ConnectivityManager;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lcom/sigmob/sdk/downloader/core/exception/d;

    invoke-direct {p1}, Lcom/sigmob/sdk/downloader/core/exception/d;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "required for access network state but don\'t have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
