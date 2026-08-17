.class public Lcom/sigmob/sdk/downloader/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/l$a;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/downloader/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/downloader/l;->b(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/l$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->c(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/f;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/l$a;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/downloader/l;->d(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/l$a;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/g;->a()Lcom/sigmob/sdk/downloader/core/dispatcher/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->f(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->a:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_1
    invoke-virtual {v1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->d(Lcom/sigmob/sdk/downloader/f;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->b:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_2
    invoke-virtual {v1, p0}, Lcom/sigmob/sdk/downloader/core/dispatcher/b;->e(Lcom/sigmob/sdk/downloader/f;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->e:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/downloader/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/downloader/l;->c(Lcom/sigmob/sdk/downloader/f;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/downloader/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/downloader/l;->e(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/sigmob/sdk/downloader/l;->d(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/l$a;

    move-result-object p0

    sget-object v0, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/sigmob/sdk/downloader/f$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/sigmob/sdk/downloader/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/f$a;->a()Lcom/sigmob/sdk/downloader/f;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/l$a;
    .locals 9

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->l()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->n()Ljava/io/File;

    move-result-object v4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-gtz p0, :cond_0

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->f:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->i()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->j()J

    move-result-wide v7

    cmp-long p0, v5, v7

    if-nez p0, :cond_1

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->d:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_2
    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->o()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->d:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_3
    invoke-interface {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/f;->i()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->c:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_6
    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->f:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0

    :cond_7
    :goto_0
    sget-object p0, Lcom/sigmob/sdk/downloader/l$a;->f:Lcom/sigmob/sdk/downloader/l$a;

    return-object p0
.end method

.method public static e(Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/core/breakpoint/c;
    .locals 1

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/g;->c()Lcom/sigmob/sdk/downloader/core/breakpoint/g;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->b(Lcom/sigmob/sdk/downloader/f;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/g;->a(I)Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->p()Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    move-result-object p0

    return-object p0
.end method
