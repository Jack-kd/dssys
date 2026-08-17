.class public Lcom/kwad/framework/filedownloader/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/f/e$a;
    }
.end annotation


# instance fields
.field public final aDs:I

.field public final aDt:J

.field public final aDu:Z

.field public final aDv:Z

.field public final aDw:I

.field public final aDx:Z

.field public final aDy:Z


# direct methods
.method private constructor <init>()V
    .locals 17

    move-object/from16 v1, p0

    .line 2
    const-class v2, Lcom/kwad/framework/filedownloader/f/e;

    const-string v3, "broadcast.completed"

    const-string v4, "file.non-pre-allocation"

    const-string v5, "http.lenient"

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v8, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/c;->Dx()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "filedownloader.properties"

    .line 7
    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v0, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    const-string v12, "download.min-progress-step"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    const-string v13, "download.min-progress-time"

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    :try_start_4
    const-string v14, "download.max-network-thread-count"

    .line 13
    invoke-virtual {v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :try_start_5
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :try_start_6
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v9

    move-object v9, v11

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_0
    const/4 v15, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_1
    const/4 v14, 0x0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    const/4 v13, 0x0

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_3
    const/4 v12, 0x0

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 16
    :goto_5
    invoke-static {v10}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_12

    :catch_6
    move-exception v0

    const/4 v10, 0x0

    goto :goto_4

    .line 17
    :goto_6
    :try_start_7
    instance-of v9, v0, Ljava/io/FileNotFoundException;

    if-eqz v9, :cond_1

    .line 18
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_2

    .line 19
    const-string v0, "not found filedownloader.properties"

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v2, v0, v9}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 21
    :cond_2
    :goto_7
    invoke-static {v10}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    move-object v9, v11

    const/4 v0, 0x0

    .line 22
    :goto_8
    const-string v10, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const-string v11, "false"

    const-string v8, "true"

    if-eqz v9, :cond_5

    .line 23
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_9

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v5, v8, v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 25
    invoke-static {v10, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_4
    :goto_9
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/kwad/framework/filedownloader/f/e;->aDu:Z

    const/4 v5, 0x0

    goto :goto_a

    :cond_5
    const/4 v5, 0x0

    .line 27
    iput-boolean v5, v1, Lcom/kwad/framework/filedownloader/f/e;->aDu:Z

    :goto_a
    const/4 v9, 0x1

    .line 28
    iput-boolean v9, v1, Lcom/kwad/framework/filedownloader/f/e;->aDv:Z

    if-eqz v12, :cond_6

    .line 29
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 30
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 31
    iput v12, v1, Lcom/kwad/framework/filedownloader/f/e;->aDs:I

    goto :goto_b

    :cond_6
    const/high16 v5, 0x10000

    .line 32
    iput v5, v1, Lcom/kwad/framework/filedownloader/f/e;->aDs:I

    :goto_b
    if-eqz v13, :cond_7

    .line 33
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move/from16 v16, v9

    move-object v5, v10

    const-wide/16 v9, 0x0

    .line 34
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 35
    iput-wide v9, v1, Lcom/kwad/framework/filedownloader/f/e;->aDt:J

    goto :goto_c

    :cond_7
    move/from16 v16, v9

    move-object v5, v10

    const-wide/16 v9, 0x7d0

    .line 36
    iput-wide v9, v1, Lcom/kwad/framework/filedownloader/f/e;->aDt:J

    :goto_c
    if-eqz v14, :cond_8

    .line 37
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 38
    invoke-static {v9}, Lcom/kwad/framework/filedownloader/f/e;->dd(I)I

    move-result v9

    iput v9, v1, Lcom/kwad/framework/filedownloader/f/e;->aDw:I

    goto :goto_d

    :cond_8
    const/4 v9, 0x3

    .line 39
    iput v9, v1, Lcom/kwad/framework/filedownloader/f/e;->aDw:I

    :goto_d
    if-eqz v15, :cond_b

    .line 40
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 41
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_e

    .line 42
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v4, v8, v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 43
    invoke-static {v5, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_a
    :goto_e
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/kwad/framework/filedownloader/f/e;->aDx:Z

    goto :goto_f

    :cond_b
    const/4 v4, 0x0

    .line 45
    iput-boolean v4, v1, Lcom/kwad/framework/filedownloader/f/e;->aDx:Z

    :goto_f
    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 47
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_10

    .line 48
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v3, v8, v11}, [Ljava/lang/Object;

    move-result-object v2

    .line 49
    invoke-static {v5, v2}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_d
    :goto_10
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/kwad/framework/filedownloader/f/e;->aDy:Z

    goto :goto_11

    :cond_e
    const/4 v4, 0x0

    .line 51
    iput-boolean v4, v1, Lcom/kwad/framework/filedownloader/f/e;->aDy:Z

    .line 52
    :goto_11
    sget-boolean v0, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    if-eqz v0, :cond_f

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-boolean v0, v1, Lcom/kwad/framework/filedownloader/f/e;->aDu:Z

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 55
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v0, v1, Lcom/kwad/framework/filedownloader/f/e;->aDs:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-wide v3, v1, Lcom/kwad/framework/filedownloader/f/e;->aDt:J

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v0, v1, Lcom/kwad/framework/filedownloader/f/e;->aDw:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v6, "http.lenient"

    const-string v8, "process.non-separate"

    const-string v10, "download.min-progress-step"

    const-string v12, "download.min-progress-time"

    const-string v14, "download.max-network-thread-count"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    .line 59
    const-string v3, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d"

    invoke-static {v2, v3, v0}, Lcom/kwad/framework/filedownloader/f/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    return-void

    .line 60
    :goto_12
    invoke-static {v9}, Lcom/kwad/sdk/crash/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    throw v0

    .line 62
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/f/e;-><init>()V

    return-void
.end method

.method public static Dz()Lcom/kwad/framework/filedownloader/f/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/e$a;->DA()Lcom/kwad/framework/filedownloader/f/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static dd(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0xc

    .line 7
    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-class v4, Lcom/kwad/framework/filedownloader/f/e;

    .line 13
    .line 14
    if-le p0, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0, v3, v3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    .line 25
    .line 26
    invoke-static {v4, v0, p0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    if-gtz p0, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    filled-new-array {p0, v1, v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v1, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    .line 41
    .line 42
    invoke-static {v4, v1, p0}, Lcom/kwad/framework/filedownloader/f/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_1
    return p0
.end method
