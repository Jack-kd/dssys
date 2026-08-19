.class final Lcom/kwad/framework/filedownloader/services/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/y;


# instance fields
.field private final aDg:Lcom/kwad/framework/filedownloader/services/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/framework/filedownloader/services/h;

    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/download/b;->Cd()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/services/h;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 18
    .line 19
    return-void
.end method

.method private static Dp()Lcom/kwad/framework/filedownloader/b/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/b;->Cc()Lcom/kwad/framework/filedownloader/b/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private da(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/kwad/framework/filedownloader/services/g;->a(Lcom/kwad/framework/filedownloader/d/c;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method


# virtual methods
.method public final B(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/kwad/framework/filedownloader/f/f;->D(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/services/g;->da(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final CH()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/b/a;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Dq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/h;->Dt()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "pause all tasks %d"

    .line 24
    .line 25
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/kwad/framework/filedownloader/services/g;->cv(I)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public final a(Lcom/kwad/framework/filedownloader/d/c;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v1, v2}, Lcom/kwad/framework/filedownloader/services/h;->dc(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Lcom/kwad/framework/filedownloader/d/d;->cX(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return v3

    .line 29
    :cond_1
    return v0

    .line 30
    :cond_2
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v3

    .line 33
    :cond_3
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v1, "%d status is[%s](not finish) & but not in the pool"

    .line 54
    .line 55
    invoke-static {p0, v1, p1}, Lcom/kwad/framework/filedownloader/f/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwad/framework/filedownloader/d/b;Z)V
    .locals 16

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "request start the task with url(%s) path(%s) isDirectory(%B)"

    .line 3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v6, v7, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-static {v5, v0, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 5
    :cond_0
    :goto_0
    invoke-static/range {p1 .. p3}, Lcom/kwad/framework/filedownloader/f/f;->g(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 6
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    move-result-object v9

    .line 7
    invoke-interface {v9, v0}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_3

    if-nez v1, :cond_3

    .line 8
    invoke-static {v7}, Lcom/kwad/framework/filedownloader/f/f;->co(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v10}, Lcom/kwad/framework/filedownloader/f/f;->g(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 9
    invoke-interface {v9, v1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    sget-boolean v4, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v4, :cond_1

    .line 12
    const-string v4, "task[%d] find model by dirCaseId[%d]"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v5, v4, v11}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    invoke-interface {v9, v1}, Lcom/kwad/framework/filedownloader/b/a;->cD(I)Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    :goto_1
    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object v12, v2

    goto :goto_1

    :cond_3
    move-object v11, v1

    move-object v12, v2

    .line 14
    :goto_2
    invoke-static {v0, v11, v5, v10}, Lcom/kwad/framework/filedownloader/f/c;->a(ILcom/kwad/framework/filedownloader/d/c;Lcom/kwad/framework/filedownloader/y;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v1, :cond_4

    .line 16
    const-string v1, "has already started download %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    if-eqz v11, :cond_6

    .line 18
    :try_start_1
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->getTargetFilePath()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move/from16 v13, p7

    move-object v4, v1

    goto :goto_4

    .line 19
    :cond_6
    invoke-static {v7, v8, v2}, Lcom/kwad/framework/filedownloader/f/f;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 20
    :goto_4
    invoke-static {v0, v4, v13, v10}, Lcom/kwad/framework/filedownloader/f/c;->a(ILjava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v1, :cond_7

    .line 22
    const-string v1, "has already completed downloading %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    const-wide/16 v14, 0x0

    if-eqz v11, :cond_9

    .line 24
    :try_start_2
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    move-result-wide v1

    goto :goto_5

    :cond_9
    move-wide v1, v14

    :goto_5
    if-eqz v11, :cond_a

    .line 25
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->Cp()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 26
    :cond_a
    invoke-static {v4}, Lcom/kwad/framework/filedownloader/f/f;->cm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_6
    invoke-static/range {v0 .. v5}, Lcom/kwad/framework/filedownloader/f/c;->a(IJLjava/lang/String;Ljava/lang/String;Lcom/kwad/framework/filedownloader/y;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 28
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v1, :cond_b

    .line 29
    const-string v1, "there is an another task with the same target-file-path %d %s"

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-static {v5, v1, v2}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v11, :cond_b

    .line 32
    invoke-interface {v9, v0}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 33
    invoke-interface {v9, v0}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :cond_b
    monitor-exit p0

    return-void

    :cond_c
    if-eqz v11, :cond_10

    .line 35
    :try_start_3
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_d

    .line 36
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 37
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v1

    if-eq v1, v10, :cond_d

    .line 38
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    .line 39
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 40
    :cond_d
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    if-eq v1, v0, :cond_e

    .line 41
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    invoke-interface {v9, v1}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 42
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    move-result v1

    invoke-interface {v9, v1}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 43
    invoke-virtual {v11, v0}, Lcom/kwad/framework/filedownloader/d/c;->setId(I)V

    .line 44
    invoke-virtual {v11, v7, v8}, Lcom/kwad/framework/filedownloader/d/c;->d(Ljava/lang/String;Z)V

    if-eqz v12, :cond_12

    .line 45
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/framework/filedownloader/d/a;

    .line 46
    invoke-virtual {v2, v0}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 47
    invoke-interface {v9, v2}, Lcom/kwad/framework/filedownloader/b/a;->a(Lcom/kwad/framework/filedownloader/d/a;)V

    goto :goto_7

    .line 48
    :cond_e
    invoke-virtual {v11}, Lcom/kwad/framework/filedownloader/d/c;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 49
    invoke-virtual {v11, v6}, Lcom/kwad/framework/filedownloader/d/c;->setUrl(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    goto :goto_8

    :cond_10
    if-nez v11, :cond_11

    .line 50
    new-instance v11, Lcom/kwad/framework/filedownloader/d/c;

    invoke-direct {v11}, Lcom/kwad/framework/filedownloader/d/c;-><init>()V

    .line 51
    :cond_11
    invoke-virtual {v11, v6}, Lcom/kwad/framework/filedownloader/d/c;->setUrl(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v11, v7, v8}, Lcom/kwad/framework/filedownloader/d/c;->d(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v11, v0}, Lcom/kwad/framework/filedownloader/d/c;->setId(I)V

    .line 54
    invoke-virtual {v11, v14, v15}, Lcom/kwad/framework/filedownloader/d/c;->af(J)V

    .line 55
    invoke-virtual {v11, v14, v15}, Lcom/kwad/framework/filedownloader/d/c;->ah(J)V

    .line 56
    invoke-virtual {v11, v10}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 57
    invoke-virtual {v11, v10}, Lcom/kwad/framework/filedownloader/d/c;->cV(I)V

    :cond_12
    :goto_8
    if-eqz v10, :cond_13

    .line 58
    invoke-interface {v9, v11}, Lcom/kwad/framework/filedownloader/b/a;->b(Lcom/kwad/framework/filedownloader/d/c;)V

    .line 59
    :cond_13
    new-instance v0, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;-><init>()V

    .line 60
    invoke-virtual {v0, v11}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->e(Lcom/kwad/framework/filedownloader/d/c;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    move-object/from16 v1, p8

    .line 61
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->b(Lcom/kwad/framework/filedownloader/d/b;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v5}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->a(Lcom/kwad/framework/filedownloader/y;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 63
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->f(Ljava/lang/Integer;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 64
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->g(Ljava/lang/Integer;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 65
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->b(Ljava/lang/Boolean;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 66
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->c(Ljava/lang/Boolean;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 67
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->h(Ljava/lang/Integer;)Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable$a;->Cq()Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;

    move-result-object v0

    .line 69
    iget-object v1, v5, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    invoke-virtual {v1, v0}, Lcom/kwad/framework/filedownloader/services/h;->a(Lcom/kwad/framework/filedownloader/download/DownloadLaunchRunnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :goto_9
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized cP(I)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/services/h;->cP(I)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public final cR(I)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getTotal()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public final cv(I)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "request pause the task %d"

    .line 14
    .line 15
    invoke-static {p0, v1, v0}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 v1, -0x2

    .line 31
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/d/c;->d(B)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/kwad/framework/filedownloader/services/h;->cancel(I)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1
.end method

.method public final cw(I)B
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->AH()B

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final cx(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "The task[%d] id is invalid, can\'t clear it."

    .line 13
    .line 14
    invoke-static {p0, v1, p1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/framework/filedownloader/services/g;->da(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "The task[%d] is downloading, can\'t clear it."

    .line 33
    .line 34
    invoke-static {p0, v1, p1}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cF(I)Z

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cE(I)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public final db(I)J
    .locals 6

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/services/g;->Dp()Lcom/kwad/framework/filedownloader/b/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cC(I)Lcom/kwad/framework/filedownloader/d/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    if-gt v4, v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/kwad/framework/filedownloader/d/c;->CX()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :cond_1
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/b/a;->cD(I)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eq v0, v4, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lcom/kwad/framework/filedownloader/d/a;->y(Ljava/util/List;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    return-wide v0

    .line 44
    :cond_3
    :goto_0
    return-wide v2
.end method

.method public final isIdle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/services/h;->Ds()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final p(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/services/g;->aDg:Lcom/kwad/framework/filedownloader/services/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/kwad/framework/filedownloader/services/h;->p(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
