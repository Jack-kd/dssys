.class final Lcom/kwad/components/core/pfmonitor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/pfmonitor/b$b;,
        Lcom/kwad/components/core/pfmonitor/b$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/File;Lcom/kwad/components/core/pfmonitor/b$a;ILcom/kwad/components/core/pfmonitor/b$b;)Lcom/kwad/components/core/pfmonitor/model/c;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u76ee\u5f55\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u6709\u6548\u76ee\u5f55: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DirectoryScanner"

    invoke-static {p3, p1}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 7
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_7

    .line 9
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v2, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 12
    new-instance v8, Lcom/kwad/components/core/pfmonitor/model/d;

    invoke-direct {v8, v2, v3, v4, v6}, Lcom/kwad/components/core/pfmonitor/model/d;-><init>(Ljava/io/File;JZ)V

    .line 13
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    array-length v2, v7

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v7, v3

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 18
    new-instance v6, Lcom/kwad/components/core/pfmonitor/model/d;

    invoke-direct {v6, v4, v8, v9, v5}, Lcom/kwad/components/core/pfmonitor/model/d;-><init>(Ljava/io/File;JZ)V

    .line 19
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-long v10, p2

    .line 20
    invoke-static {v6, v10, v11, p3}, Lcom/kwad/components/core/pfmonitor/b;->a(Lcom/kwad/components/core/pfmonitor/model/d;JLjava/util/List;)V

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_6

    .line 22
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_5

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v5, p0, :cond_a

    .line 27
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kwad/components/core/pfmonitor/model/d;

    .line 28
    invoke-virtual {p0}, Lcom/kwad/components/core/pfmonitor/model/d;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 29
    invoke-virtual {p0}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_8

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 31
    :cond_8
    new-instance v1, Lcom/kwad/components/core/pfmonitor/model/d;

    invoke-virtual {p0}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v1, p0, v7, v8, v6}, Lcom/kwad/components/core/pfmonitor/model/d;-><init>(Ljava/io/File;JZ)V

    invoke-interface {p1, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 32
    :cond_a
    new-instance p0, Lcom/kwad/components/core/pfmonitor/model/c;

    invoke-direct {p0, p1, p3}, Lcom/kwad/components/core/pfmonitor/model/c;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Lcom/kwad/components/core/pfmonitor/model/d;JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            "J",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/pfmonitor/model/d;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/kwad/components/core/pfmonitor/model/d;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/components/core/pfmonitor/model/d;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    cmp-long p1, v0, p1

    if-ltz p1, :cond_1

    .line 35
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
