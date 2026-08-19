.class public final Lcom/kwad/framework/filedownloader/download/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/b$a;
    }
.end annotation


# instance fields
.field private aAZ:Lcom/kwad/framework/filedownloader/services/c;

.field private aBa:Lcom/kwad/framework/filedownloader/f/c$a;

.field private aBb:Lcom/kwad/framework/filedownloader/f/c$b;

.field private aBc:Lcom/kwad/framework/filedownloader/f/c$e;

.field private volatile aBd:Lcom/kwad/framework/filedownloader/b/a;

.field private aBe:Lcom/kwad/framework/filedownloader/f/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ca()Lcom/kwad/framework/filedownloader/download/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b$a;->Cj()Lcom/kwad/framework/filedownloader/download/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private Cf()Lcom/kwad/framework/filedownloader/f/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBa:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBa:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ci()Lcom/kwad/framework/filedownloader/services/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/c;->Dg()Lcom/kwad/framework/filedownloader/f/c$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBa:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBa:Lcom/kwad/framework/filedownloader/f/c$a;

    .line 26
    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method private Cg()Lcom/kwad/framework/filedownloader/f/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBb:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBb:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ci()Lcom/kwad/framework/filedownloader/services/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/c;->Df()Lcom/kwad/framework/filedownloader/f/c$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBb:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBb:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 26
    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method private Ch()Lcom/kwad/framework/filedownloader/f/c$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBc:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBc:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ci()Lcom/kwad/framework/filedownloader/services/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/c;->De()Lcom/kwad/framework/filedownloader/f/c$e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBc:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBc:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 26
    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method private Ci()Lcom/kwad/framework/filedownloader/services/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aAZ:Lcom/kwad/framework/filedownloader/services/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aAZ:Lcom/kwad/framework/filedownloader/services/c;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/kwad/framework/filedownloader/services/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/services/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aAZ:Lcom/kwad/framework/filedownloader/services/c;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aAZ:Lcom/kwad/framework/filedownloader/services/c;

    .line 23
    .line 24
    return-object v0

    .line 25
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method private static a(Lcom/kwad/framework/filedownloader/b/a$a;)V
    .locals 23

    move-object/from16 v1, p0

    .line 10
    const-string v2, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d"

    const-class v3, Lcom/kwad/framework/filedownloader/b/a;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/download/b;->Cb()Lcom/kwad/framework/filedownloader/f/c$d;

    move-result-object v4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    .line 13
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/kwad/framework/filedownloader/d/c;

    const-wide/16 v16, 0x0

    .line 15
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v7

    const/4 v8, 0x3

    move-object/from16 v18, v0

    const/4 v0, 0x1

    if-eq v7, v8, :cond_0

    .line 16
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 17
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 18
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v7

    if-ne v7, v0, :cond_1

    .line 19
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-lez v7, :cond_1

    :cond_0
    const/4 v7, -0x2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-wide/from16 v21, v5

    goto/16 :goto_5

    .line 20
    :goto_1
    invoke-virtual {v15, v7}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 21
    :cond_1
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v19, 0x1

    if-nez v7, :cond_2

    move-wide/from16 v21, v5

    goto/16 :goto_3

    .line 22
    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v7

    const/4 v0, -0x2

    if-ne v7, v0, :cond_3

    .line 24
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v0

    .line 25
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getPath()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v21, v5

    const/4 v5, 0x0

    .line 26
    :try_start_1
    invoke-static {v0, v15, v7, v5}, Lcom/kwad/framework/filedownloader/f/f;->a(ILcom/kwad/framework/filedownloader/d/c;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 29
    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    .line 30
    sget-boolean v6, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v6, :cond_4

    .line 31
    const-string v6, "resume from the old no-temp-file architecture [%B], [%s]->[%s]"

    .line 32
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-static {v3, v6, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_3
    move-wide/from16 v21, v5

    .line 34
    :cond_4
    :goto_2
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v5

    cmp-long v0, v5, v16

    if-gtz v0, :cond_5

    goto :goto_3

    .line 35
    :cond_5
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v0

    invoke-static {v0, v15}, Lcom/kwad/framework/filedownloader/f/f;->b(ILcom/kwad/framework/filedownloader/d/c;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 36
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    add-long v11, v11, v19

    :goto_4
    move-object/from16 v0, v18

    move-wide/from16 v5, v21

    goto/16 :goto_0

    .line 38
    :cond_7
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v0

    .line 39
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-virtual {v15}, Lcom/kwad/framework/filedownloader/d/c;->AB()Z

    move-result v7

    .line 41
    invoke-interface {v4, v5, v6, v7}, Lcom/kwad/framework/filedownloader/f/c$d;->f(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    if-eq v5, v0, :cond_9

    .line 42
    sget-boolean v6, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v6, :cond_8

    .line 43
    const-string v6, "the id is changed on restoring from db: old[%d] -> new[%d]"

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 45
    invoke-static {v3, v6, v7}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_8
    invoke-virtual {v15, v5}, Lcom/kwad/framework/filedownloader/d/c;->setId(I)V

    .line 47
    invoke-interface {v1, v0, v15}, Lcom/kwad/framework/filedownloader/b/a$a;->a(ILcom/kwad/framework/filedownloader/d/c;)V

    add-long v13, v13, v19

    .line 48
    :cond_9
    invoke-interface {v1, v15}, Lcom/kwad/framework/filedownloader/b/a$a;->c(Lcom/kwad/framework/filedownloader/d/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-long v9, v9, v19

    goto :goto_4

    :cond_a
    move-wide/from16 v21, v5

    .line 49
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/framework/filedownloader/f/f;->ba(Landroid/content/Context;)V

    .line 50
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/b/a$a;->BS()V

    .line 51
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_b

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v21

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v0, v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-static {v3, v2, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 55
    :goto_5
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/framework/filedownloader/f/f;->ba(Landroid/content/Context;)V

    .line 56
    invoke-interface {v1}, Lcom/kwad/framework/filedownloader/b/a$a;->BS()V

    .line 57
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v1, :cond_c

    .line 58
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v21

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v1, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-static {v3, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_c
    throw v0
.end method


# virtual methods
.method public final Cb()Lcom/kwad/framework/filedownloader/f/c$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBe:Lcom/kwad/framework/filedownloader/f/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBe:Lcom/kwad/framework/filedownloader/f/c$d;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ci()Lcom/kwad/framework/filedownloader/services/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/c;->Dh()Lcom/kwad/framework/filedownloader/f/c$d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBe:Lcom/kwad/framework/filedownloader/f/c$d;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBe:Lcom/kwad/framework/filedownloader/f/c$d;

    .line 26
    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final declared-synchronized Cc()Lcom/kwad/framework/filedownloader/b/a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBd:Lcom/kwad/framework/filedownloader/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ci()Lcom/kwad/framework/filedownloader/services/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/c;->Dd()Lcom/kwad/framework/filedownloader/b/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/b/a;->BR()Lcom/kwad/framework/filedownloader/b/a$a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/download/b;->a(Lcom/kwad/framework/filedownloader/b/a$a;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBd:Lcom/kwad/framework/filedownloader/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw v0
.end method

.method public final Cd()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ci()Lcom/kwad/framework/filedownloader/services/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/c;->Cd()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final Ce()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ch()Lcom/kwad/framework/filedownloader/f/c$e;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    return v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Cf()Lcom/kwad/framework/filedownloader/f/c$a;

    move-result-object p1

    .line 9
    invoke-interface {p1, p4, p5}, Lcom/kwad/framework/filedownloader/f/c$a;->ab(J)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/kwad/framework/filedownloader/services/c$b;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/kwad/framework/filedownloader/services/c;

    invoke-direct {v0, p1}, Lcom/kwad/framework/filedownloader/services/c;-><init>(Lcom/kwad/framework/filedownloader/services/c$b;)V

    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aAZ:Lcom/kwad/framework/filedownloader/services/c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/b;->aBb:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 4
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/b;->aBc:Lcom/kwad/framework/filedownloader/f/c$e;

    .line 5
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/b;->aBd:Lcom/kwad/framework/filedownloader/b/a;

    .line 6
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/b;->aBe:Lcom/kwad/framework/filedownloader/f/c$d;

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/io/File;)Lcom/kwad/framework/filedownloader/e/a;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Ch()Lcom/kwad/framework/filedownloader/f/c$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/f/c$e;->c(Ljava/io/File;)Lcom/kwad/framework/filedownloader/e/a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/kwad/framework/filedownloader/services/c$b;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/kwad/framework/filedownloader/services/c;

    invoke-direct {v0, p1}, Lcom/kwad/framework/filedownloader/services/c;-><init>(Lcom/kwad/framework/filedownloader/services/c$b;)V

    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aAZ:Lcom/kwad/framework/filedownloader/services/c;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ca(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/download/b;->Cg()Lcom/kwad/framework/filedownloader/f/c$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/f/c$b;->bX(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    new-instance v0, Lcom/kwad/framework/filedownloader/a/c$b;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/a/c$b;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/download/b;->aBb:Lcom/kwad/framework/filedownloader/f/c$b;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/f/c$b;->bX(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
