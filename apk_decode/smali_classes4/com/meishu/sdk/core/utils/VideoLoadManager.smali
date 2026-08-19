.class public Lcom/meishu/sdk/core/utils/VideoLoadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/VideoLoadManager$d;,
        Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;
    }
.end annotation


# static fields
.field public static b:Lcom/meishu/sdk/core/utils/VideoLoadManager;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meishu/sdk/core/utils/VideoLoadManager$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;

    if-eqz v0, :cond_0

    .line 35
    sget-object v1, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->FAILED:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    iput-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 36
    iput p2, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->c:I

    .line 37
    iput-object p3, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->d:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;

    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p1, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 42
    new-instance p1, Lcom/meishu/sdk/core/utils/q1;

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/meishu/sdk/core/utils/q1;-><init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Ljava/util/List;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;IZLcom/meishu/sdk/core/bquery/h;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/meishu/sdk/core/bquery/h<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v2, p4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;

    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto/16 :goto_4

    .line 5
    :cond_0
    :goto_0
    sget-object v1, Lcom/meishu/sdk/core/utils/VideoLoadManager$c;->a:[I

    iget-object v3, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    :goto_1
    move-object v6, v2

    goto/16 :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    iget-object p2, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    if-nez p5, :cond_4

    if-eqz v2, :cond_4

    .line 7
    :try_start_1
    iget v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->c:I

    iget-object v6, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->d:Ljava/lang/String;

    .line 8
    new-instance v7, Lcom/meishu/sdk/core/utils/s1;

    invoke-direct {v7, p0, v2, v1, v6}, Lcom/meishu/sdk/core/utils/s1;-><init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Lcom/meishu/sdk/core/bquery/h;ILjava/lang/String;)V

    invoke-static {v7}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 9
    :cond_4
    sget-object v1, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->IDLE:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    iput-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 10
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 11
    :cond_5
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 13
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v1, v8, v3

    if-lez v1, :cond_7

    int-to-long v8, p2

    cmp-long v1, v6, v8

    if-gez v1, :cond_7

    .line 14
    iget-object v4, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    if-eqz v2, :cond_6

    .line 15
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object p2

    new-instance v0, Lcom/meishu/sdk/core/utils/r1;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meishu/sdk/core/utils/r1;-><init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Lcom/meishu/sdk/core/bquery/h;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    move-object v6, v2

    .line 16
    :try_start_2
    iget-object v7, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 17
    sget-object v7, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->IDLE:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    iput-object v7, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    goto :goto_2

    :cond_8
    move-object v6, v2

    .line 18
    sget-object v7, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->IDLE:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    iput-object v7, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    :goto_2
    if-eqz v6, :cond_9

    .line 19
    iget-object v7, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz p3, :cond_a

    .line 20
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/meishu/sdk/core/bquery/g;->a(Landroid/content/Context;)V

    .line 21
    :cond_a
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/meishu/sdk/core/bquery/g;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    .line 22
    invoke-static {v6, p1, v7}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 23
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    move-object v7, v6

    :cond_c
    :goto_3
    if-eqz v7, :cond_e

    .line 24
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 26
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v3, v10, v3

    if-lez v3, :cond_d

    int-to-long v3, p2

    cmp-long p2, v8, v3

    if-gez p2, :cond_d

    .line 27
    sget-object p2, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->SUCCESS:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    iput-object p2, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 28
    iput-object v7, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->b:Ljava/io/File;

    .line 29
    invoke-virtual {p0, p1, v7, v5}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 30
    :cond_d
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 31
    :cond_e
    sget-object p2, Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;->LOADING:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    iput-object p2, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->a:Lcom/meishu/sdk/core/utils/VideoLoadManager$LoadState;

    .line 32
    new-instance p2, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;

    invoke-direct {p2, p0, p1}, Lcom/meishu/sdk/core/utils/VideoLoadManager$a;-><init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 33
    :goto_4
    :try_start_4
    const-string v0, "load video error: "

    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 8

    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/VideoLoadManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/VideoLoadManager$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v2, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/meishu/sdk/core/utils/VideoLoadManager$b;-><init>(Lcom/meishu/sdk/core/utils/VideoLoadManager;Ljava/util/List;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
