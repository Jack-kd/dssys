.class public Lcom/kwad/framework/filedownloader/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/kwad/framework/filedownloader/a/b;Ljava/util/List;)Lcom/kwad/framework/filedownloader/a/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/kwad/framework/filedownloader/a/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/framework/filedownloader/a/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a/b;->getResponseCode()I

    move-result v0

    .line 2
    const-string v1, "Location"

    invoke-interface {p1, v1}, Lcom/kwad/framework/filedownloader/a/b;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/a/d;->cA(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    .line 5
    sget-boolean v5, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v5, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 7
    const-class v5, Lcom/kwad/framework/filedownloader/a/d;

    const-string v6, "redirect to %s with %d, %s"

    invoke-static {v5, v6, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a/b;->BQ()V

    .line 9
    invoke-static {p0, v2}, Lcom/kwad/framework/filedownloader/a/d;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;

    move-result-object p1

    .line 10
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a/b;->execute()V

    .line 12
    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a/b;->getResponseCode()I

    move-result v0

    .line 13
    invoke-interface {p1, v1}, Lcom/kwad/framework/filedownloader/a/b;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "redirect too many times! %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessException;

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1}, Lcom/kwad/framework/filedownloader/a/b;->BP()Ljava/util/Map;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    const-string p2, "receive %d (redirect) but the location is null with response [%s]"

    invoke-static {p2, p1}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz p2, :cond_4

    .line 19
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object p1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kwad/framework/filedownloader/a/b;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/download/b;->ca(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;

    move-result-object p1

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-interface {p1, v1, v2}, Lcom/kwad/framework/filedownloader/a/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static cA(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-eq p0, v0, :cond_1

    const/16 v0, 0x134

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
