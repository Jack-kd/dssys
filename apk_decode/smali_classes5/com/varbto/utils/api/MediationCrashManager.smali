.class public Lcom/varbto/utils/api/MediationCrashManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Lcom/varbto/utils/api/MediationCrashManager;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/varbto/utils/crash/CrashHandler;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    iput v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->e:I

    .line 20
    .line 21
    iput v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->f:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->g:I

    .line 25
    .line 26
    iput v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->h:I

    .line 27
    .line 28
    iput v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->i:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 35
    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/varbto/utils/api/MediationCrashManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/varbto/utils/api/MediationCrashManager;->j:Lcom/varbto/utils/api/MediationCrashManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/varbto/utils/api/MediationCrashManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/varbto/utils/api/MediationCrashManager;->j:Lcom/varbto/utils/api/MediationCrashManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/varbto/utils/api/MediationCrashManager;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/varbto/utils/api/MediationCrashManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/varbto/utils/api/MediationCrashManager;->j:Lcom/varbto/utils/api/MediationCrashManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object p0, Lcom/varbto/utils/api/MediationCrashManager;->j:Lcom/varbto/utils/api/MediationCrashManager;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public applyFuseConfig(IIIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->g:I

    .line 2
    .line 3
    iput p3, p0, Lcom/varbto/utils/api/MediationCrashManager;->h:I

    .line 4
    .line 5
    iput p5, p0, Lcom/varbto/utils/api/MediationCrashManager;->i:I

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/varbto/utils/api/MediationCrashManager;->initNetworkCrashCounters(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p4}, Lcom/varbto/utils/api/MediationCrashManager;->initMediationCrashCounters(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getCrashCountWithinDays(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1}, Lcom/varbto/utils/crash/CrashHandler;->getCrashCountWithinDays(I)I

    move-result p1

    return p1
.end method

.method public getCrashCountWithinDays(Ljava/lang/String;I)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/varbto/utils/api/UtilConst;->isValidCrashCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1, p2}, Lcom/varbto/utils/crash/CrashHandler;->getCrashCountWithinDays(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getCrashFileList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/varbto/utils/crash/CrashHandler;->getCrashFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCrashFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1}, Lcom/varbto/utils/crash/CrashHandler;->getCrashFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCrashFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/varbto/utils/api/UtilConst;->isValidCrashCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1, p2}, Lcom/varbto/utils/crash/CrashHandler;->getCrashFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCrashHandler()Lcom/varbto/utils/crash/CrashHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrashHandlerBuilder()Lcom/varbto/utils/crash/CrashHandlerBuilder;
    .locals 2

    .line 1
    new-instance v0, Lcom/varbto/utils/crash/CrashHandlerBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getCrashTimestampsWithinDays(I)Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_0

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1}, Lcom/varbto/utils/crash/CrashHandler;->getCrashTimestampsWithinDays(I)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getCrashTimestampsWithinDays(Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_0

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/varbto/utils/api/UtilConst;->isValidCrashCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1, p2}, Lcom/varbto/utils/crash/CrashHandler;->getCrashTimestampsWithinDays(Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public getFuseLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public initCrashMonitoring(Lcom/varbto/utils/crash/CrashRecorder;Z)Lcom/varbto/utils/crash/CrashHandler;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/varbto/utils/crash/CrashHandler;->install()V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    return-object p1

    .line 18
    :cond_1
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_2

    .line 20
    new-instance v0, Lcom/varbto/utils/crash/CrashHandlerBuilder;

    iget-object v1, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->setCrashRecorder(Lcom/varbto/utils/crash/CrashRecorder;)Lcom/varbto/utils/crash/CrashHandlerBuilder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->setStartImmediately(Z)Lcom/varbto/utils/crash/CrashHandlerBuilder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->build()Lcom/varbto/utils/crash/CrashHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 24
    invoke-virtual {v0}, Lcom/varbto/utils/crash/CrashHandler;->install()V

    .line 25
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    return-object p1

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public initCrashMonitoring(ZZ)Lcom/varbto/utils/crash/CrashHandler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/varbto/utils/crash/CrashHandler;->install()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    return-object p1

    .line 4
    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/varbto/utils/crash/CrashHandlerBuilder;

    iget-object v1, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/varbto/utils/crash/LoggingCrashRecorder;

    iget-object v2, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/varbto/utils/crash/LoggingCrashRecorder;-><init>(Landroid/content/Context;Z)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->setCrashRecorder(Lcom/varbto/utils/crash/CrashRecorder;)Lcom/varbto/utils/crash/CrashHandlerBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->setStartImmediately(Z)Lcom/varbto/utils/crash/CrashHandlerBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->setSaveStackSwitch(Z)Lcom/varbto/utils/crash/CrashHandlerBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/varbto/utils/crash/CrashHandlerBuilder;->build()Lcom/varbto/utils/crash/CrashHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/varbto/utils/crash/CrashHandler;->install()V

    .line 12
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    return-object p1

    .line 14
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public initMediationCrashCounters(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->f:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/varbto/internal/i;->c(Landroid/content/Context;)Lcom/varbto/internal/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/varbto/internal/i;->n(I)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public initNetworkCrashCounters(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->e:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/varbto/internal/i;->c(Landroid/content/Context;)Lcom/varbto/internal/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/varbto/internal/i;->t(I)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public isNetworkIdReachedCrashLimit(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v0

    .line 18
    :goto_0
    if-lt p1, p2, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    return v0
.end method

.method public markCrashFileSent(Ljava/lang/String;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/varbto/utils/crash/CrashHandler;->markFileSent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public markCrashFileSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->b:Lcom/varbto/utils/crash/CrashHandler;

    invoke-virtual {v0, p1, p2}, Lcom/varbto/utils/crash/CrashHandler;->markFileSent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recordCrashServerStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/varbto/internal/i;->c(Landroid/content/Context;)Lcom/varbto/internal/i;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/varbto/internal/i;->p(ILjava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p3}, Lcom/varbto/utils/api/MediationCrashManager;->recordNetworkCrashAttribution(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    if-ne p2, v0, :cond_1

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1, p3}, Lcom/varbto/utils/api/MediationCrashManager;->recordMediationCrashAttribution(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    :cond_1
    return-void
.end method

.method public recordMediationCrashAttribution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/varbto/internal/i;->c(Landroid/content/Context;)Lcom/varbto/internal/i;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v1, p2}, Lcom/varbto/internal/i;->k(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->f:I

    .line 19
    .line 20
    int-to-long v4, p1

    .line 21
    const-wide/32 v6, 0x5265c00

    .line 22
    .line 23
    .line 24
    mul-long/2addr v4, v6

    .line 25
    sub-long/2addr v2, v4

    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :catchall_0
    :cond_1
    return-void
.end method

.method public recordNetworkCrashAttribution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/varbto/internal/i;->c(Landroid/content/Context;)Lcom/varbto/internal/i;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, v0, v1, p2}, Lcom/varbto/internal/i;->q(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->e:I

    .line 19
    .line 20
    int-to-long v4, p1

    .line 21
    const-wide/32 v6, 0x5265c00

    .line 22
    .line 23
    .line 24
    mul-long/2addr v4, v6

    .line 25
    sub-long/2addr v2, v4

    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-ltz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/varbto/utils/api/MediationCrashManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :catchall_0
    :cond_1
    return-void
.end method

.method public registerCrashSdk(I)V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-boolean v0, Lk1/h;->a:Z

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/varbto/internal/i;->c:Lcom/varbto/internal/i;

    .line 7
    :cond_0
    sget-object v0, Lcom/varbto/internal/i;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerCrashSdk(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lk1/h;->a:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/varbto/internal/i;->c:Lcom/varbto/internal/i;

    .line 3
    :cond_0
    sget-object v0, Lcom/varbto/internal/i;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldBlockMediationId(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->g:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move p1, v2

    .line 24
    :goto_0
    iget v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->i:I

    .line 25
    .line 26
    if-lt p1, v0, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_2
    return v2
.end method

.method public shouldBlockNetworkId(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget v0, p0, Lcom/varbto/utils/api/MediationCrashManager;->h:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/varbto/utils/api/MediationCrashManager;->isNetworkIdReachedCrashLimit(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method
