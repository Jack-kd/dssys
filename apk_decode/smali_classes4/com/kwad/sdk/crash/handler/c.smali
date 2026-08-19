.class public final Lcom/kwad/sdk/crash/handler/c;
.super Lcom/kwad/sdk/crash/handler/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/handler/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/sdk/crash/handler/b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/crash/handler/c;-><init>()V

    return-void
.end method

.method public static Qs()Lcom/kwad/sdk/crash/handler/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/crash/handler/c$a;->Qt()Lcom/kwad/sdk/crash/handler/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;Z)V
    .locals 16
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/crash/model/message/ExceptionMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 3
    const-string v3, "uploader.uploadEvent(message);"

    const-string v4, "AnrAndNativeAdExceptionCollector"

    iget-object v0, v1, Lcom/kwad/sdk/crash/handler/b;->mIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 4
    iget-object v5, v1, Lcom/kwad/sdk/crash/handler/b;->mDumpDir:Ljava/io/File;

    .line 5
    iget-object v6, v1, Lcom/kwad/sdk/crash/handler/b;->mLogcatFile:Ljava/io/File;

    .line 6
    iget-object v7, v1, Lcom/kwad/sdk/crash/handler/b;->mJavaTraceFile:Ljava/io/File;

    .line 7
    iget-object v8, v1, Lcom/kwad/sdk/crash/handler/b;->mMemoryInfoFile:Ljava/io/File;

    .line 8
    invoke-virtual {v1}, Lcom/kwad/sdk/crash/handler/b;->getUploader()Lcom/kwad/sdk/crash/report/e;

    move-result-object v9

    .line 9
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashDetail:Ljava/lang/String;

    .line 10
    iget-object v14, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 11
    iget-object v14, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_0

    .line 12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "create "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kwad/sdk/crash/handler/c;->Qs()Lcom/kwad/sdk/crash/handler/c;

    move-result-object v15

    iget-object v15, v15, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " failed!\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_0
    const/4 v14, 0x1

    .line 13
    :goto_0
    const-string v15, "-"

    if-eqz v5, :cond_1

    if-eqz v0, :cond_2

    .line 14
    :cond_1
    :try_start_1
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kwad/sdk/crash/handler/b;->FILE_NAME_BASE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".dump"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v10

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v0, :cond_4

    .line 15
    :cond_3
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kwad/sdk/crash/handler/b;->FILE_NAME_BASE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".log"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v10

    :cond_4
    if-eqz v7, :cond_5

    if-eqz v0, :cond_6

    .line 16
    :cond_5
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kwad/sdk/crash/handler/b;->FILE_NAME_BASE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ".jtrace"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v10

    :cond_6
    if-eqz v8, :cond_7

    if-eqz v0, :cond_8

    .line 17
    :cond_7
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/kwad/sdk/crash/handler/b;->FILE_NAME_BASE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".minfo"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v10

    .line 18
    :cond_8
    invoke-static/range {p1 .. p3}, Lcom/kwad/sdk/crash/utils/g;->b(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V

    .line 19
    invoke-virtual {v1}, Lcom/kwad/sdk/crash/handler/c;->getCrashType()I

    move-result v0

    invoke-static {v2, v0}, Lcom/kwad/sdk/crash/utils/g;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;I)V

    .line 20
    iget-object v0, v1, Lcom/kwad/sdk/crash/handler/b;->mExceptionListener:Lcom/kwad/sdk/crash/f;

    if-eqz v0, :cond_9

    .line 21
    invoke-virtual {v1}, Lcom/kwad/sdk/crash/handler/c;->getCrashType()I

    move-result v10

    invoke-interface {v0, v10, v2}, Lcom/kwad/sdk/crash/f;->a(ILcom/kwad/sdk/crash/model/message/ExceptionMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    .line 22
    :cond_9
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_d

    .line 23
    invoke-static {v5, v0}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    .line 24
    invoke-static {v7}, Lcom/kwad/sdk/crash/utils/g;->H(Ljava/io/File;)V

    .line 25
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/g;->F(Ljava/io/File;)V

    .line 26
    invoke-static {}, Lcom/kwad/sdk/crash/e;->Qd()Lcom/kwad/sdk/crash/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/e;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    iget-object v0, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/handler/b;->backupLogFiles(Ljava/io/File;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_a
    :goto_2
    if-eqz v9, :cond_c

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-eqz p4, :cond_b

    .line 29
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    filled-new-array {v5}, [Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/kwad/sdk/crash/handler/c;->reportException([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    :try_start_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 32
    :cond_b
    :try_start_4
    invoke-virtual {v1}, Lcom/kwad/sdk/crash/handler/b;->uploadRemainingExceptions()V

    .line 33
    :catch_0
    :cond_c
    :goto_3
    invoke-static {v8}, Lcom/kwad/sdk/crash/utils/g;->I(Ljava/io/File;)V

    goto :goto_5

    :cond_d
    if-eqz v9, :cond_f

    .line 34
    invoke-static {v4, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_e

    .line 35
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v10, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    .line 36
    :goto_4
    invoke-interface {v9, v2, v10}, Lcom/kwad/sdk/crash/report/e;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Ljava/util/concurrent/CountDownLatch;)V

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_f

    .line 38
    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v10, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    :catch_1
    :cond_f
    :goto_5
    :try_start_6
    invoke-static {}, Lcom/kwad/sdk/m/b;->TD()Lcom/kwad/sdk/m/b;

    move-result-object v0

    iget-object v2, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/m/b;->hx(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_e

    :goto_6
    if-eqz v9, :cond_16

    .line 40
    :goto_7
    :try_start_7
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/g;->x(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_e

    .line 41
    :goto_8
    :try_start_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mErrorMessage:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 42
    :try_start_9
    invoke-virtual {v2}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_13

    .line 43
    invoke-static {v5, v0}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {v7}, Lcom/kwad/sdk/crash/utils/g;->H(Ljava/io/File;)V

    .line 45
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/g;->F(Ljava/io/File;)V

    .line 46
    invoke-static {}, Lcom/kwad/sdk/crash/e;->Qd()Lcom/kwad/sdk/crash/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/e;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/handler/b;->backupLogFiles(Ljava/io/File;)V

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_d

    :cond_10
    :goto_9
    if-eqz v9, :cond_12

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-eqz p4, :cond_11

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 50
    filled-new-array {v5}, [Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/kwad/sdk/crash/handler/c;->reportException([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 51
    :try_start_a
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    .line 52
    :cond_11
    :try_start_b
    invoke-virtual {v1}, Lcom/kwad/sdk/crash/handler/b;->uploadRemainingExceptions()V

    .line 53
    :catch_2
    :cond_12
    :goto_a
    invoke-static {v8}, Lcom/kwad/sdk/crash/utils/g;->I(Ljava/io/File;)V

    goto :goto_c

    :cond_13
    if-eqz v9, :cond_15

    .line 54
    invoke-static {v4, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_14

    .line 55
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v10, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_b

    :cond_14
    const/4 v10, 0x0

    .line 56
    :goto_b
    invoke-interface {v9, v2, v10}, Lcom/kwad/sdk/crash/report/e;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Ljava/util/concurrent/CountDownLatch;)V

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v10, :cond_15

    .line 58
    :try_start_c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v10, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 59
    :catch_3
    :cond_15
    :goto_c
    :try_start_d
    invoke-static {}, Lcom/kwad/sdk/m/b;->TD()Lcom/kwad/sdk/m/b;

    move-result-object v0

    iget-object v2, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/m/b;->hx(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_e

    :goto_d
    if-eqz v9, :cond_16

    goto/16 :goto_7

    :catch_4
    :cond_16
    :goto_e
    return-void

    :catchall_4
    move-exception v0

    move-object v10, v0

    .line 60
    :try_start_e
    invoke-virtual {v2}, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_1a

    .line 61
    invoke-static {v5, v0}, Lcom/kwad/sdk/crash/utils/g;->a(Ljava/io/File;Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {v7}, Lcom/kwad/sdk/crash/utils/g;->H(Ljava/io/File;)V

    .line 63
    invoke-static {v6}, Lcom/kwad/sdk/crash/utils/g;->F(Ljava/io/File;)V

    .line 64
    invoke-static {}, Lcom/kwad/sdk/crash/e;->Qd()Lcom/kwad/sdk/crash/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/crash/e;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 65
    iget-object v0, v1, Lcom/kwad/sdk/crash/handler/b;->mLogDir:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/crash/handler/b;->backupLogFiles(Ljava/io/File;)V

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_13

    :cond_17
    :goto_f
    if-eqz v9, :cond_19

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    if-eqz p4, :cond_18

    .line 67
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 68
    filled-new-array {v5}, [Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/kwad/sdk/crash/handler/c;->reportException([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 69
    :try_start_f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_10

    .line 70
    :cond_18
    :try_start_10
    invoke-virtual {v1}, Lcom/kwad/sdk/crash/handler/b;->uploadRemainingExceptions()V

    .line 71
    :catch_5
    :cond_19
    :goto_10
    invoke-static {v8}, Lcom/kwad/sdk/crash/utils/g;->I(Ljava/io/File;)V

    goto :goto_12

    :cond_1a
    if-eqz v9, :cond_1c

    .line 72
    invoke-static {v4, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1b

    .line 73
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_11

    :cond_1b
    const/4 v0, 0x0

    .line 74
    :goto_11
    invoke-interface {v9, v2, v0}, Lcom/kwad/sdk/crash/report/e;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Ljava/util/concurrent/CountDownLatch;)V

    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v0, :cond_1c

    .line 76
    :try_start_11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 77
    :catch_6
    :cond_1c
    :goto_12
    :try_start_12
    invoke-static {}, Lcom/kwad/sdk/m/b;->TD()Lcom/kwad/sdk/m/b;

    move-result-object v0

    iget-object v2, v2, Lcom/kwad/sdk/crash/model/message/ExceptionMessage;->mCrashDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/m/b;->hx(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_14

    :goto_13
    if-eqz v9, :cond_1d

    .line 78
    :try_start_13
    invoke-static {v0}, Lcom/kwad/sdk/crash/utils/g;->x(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 79
    :catch_7
    :cond_1d
    :goto_14
    throw v10
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/crash/model/message/ExceptionMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/kwad/sdk/service/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/service/a/f;

    invoke-interface {v0}, Lcom/kwad/sdk/service/a/f;->Fu()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kwad/sdk/crash/handler/c;->a(Ljava/lang/Throwable;Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Landroid/content/Context;Z)V

    return-void
.end method

.method public final getCrashType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final init(Ljava/io/File;Lcom/kwad/sdk/crash/f;Lcom/kwad/sdk/crash/report/e;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/crash/handler/b;->init(Ljava/io/File;Lcom/kwad/sdk/crash/f;Lcom/kwad/sdk/crash/report/e;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/crash/e;->Qd()Lcom/kwad/sdk/crash/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/kwad/sdk/crash/e;->isDebug()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/io/File;

    .line 15
    .line 16
    const-string p2, "sdcard/kwad_ex/java_crash/dump"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/kwad/sdk/crash/handler/b;->initBackupDir(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final reportException([Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1    # [Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/CountDownLatch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/sdk/crash/report/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/crash/report/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kwad/sdk/crash/handler/b;->getUploader()Lcom/kwad/sdk/crash/report/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/crash/report/d;->a(Lcom/kwad/sdk/crash/report/e;)V

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v3, p2}, Lcom/kwad/sdk/crash/report/f;->a(Ljava/io/File;Ljava/util/concurrent/CountDownLatch;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
