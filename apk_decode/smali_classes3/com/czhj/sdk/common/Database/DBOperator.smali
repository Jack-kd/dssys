.class public Lcom/czhj/sdk/common/Database/DBOperator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/Database/DBOperator$SQLiteThread;,
        Lcom/czhj/sdk/common/Database/DBOperator$SQLiteDeleteThread;,
        Lcom/czhj/sdk/common/Database/DBOperator$DataSQLiteLisenter;
    }
.end annotation


# static fields
.field private static final a:Lcom/czhj/sdk/common/Database/DBOperator;


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/czhj/sdk/common/Database/DBOperator;

    invoke-direct {v0}, Lcom/czhj/sdk/common/Database/DBOperator;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/Database/DBOperator;->a:Lcom/czhj/sdk/common/Database/DBOperator;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/czhj/sdk/common/Database/DBOperator;->c:Ljava/lang/Object;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/czhj/sdk/common/ThreadPool/BackgroundThreadFactory;

    invoke-direct {v8}, Lcom/czhj/sdk/common/ThreadPool/BackgroundThreadFactory;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/czhj/sdk/common/Database/DBOperator;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/czhj/sdk/common/Database/DBOperator;
    .locals 2

    const-class v0, Lcom/czhj/sdk/common/Database/DBOperator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/czhj/sdk/common/Database/DBOperator;->a:Lcom/czhj/sdk/common/Database/DBOperator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/czhj/sdk/common/Database/DBOperator;->count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public count(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p2, v0

    const/4 p1, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_2
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p2
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/czhj/sdk/common/Database/SQLiteLisenter;)V
    .locals 7

    :try_start_0
    new-instance v0, Lcom/czhj/sdk/common/Database/DBOperator$SQLiteDeleteThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/czhj/sdk/common/Database/DBOperator$SQLiteDeleteThread;-><init>(Lcom/czhj/sdk/common/Database/DBOperator;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/czhj/sdk/common/Database/SQLiteLisenter;)V

    iget-object p1, v1, Lcom/czhj/sdk/common/Database/DBOperator;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p0

    move-object v6, p5

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, p2}, Lcom/czhj/sdk/common/Database/SQLiteLisenter;->onFailed(Ljava/lang/Error;)V

    return-void
.end method

.method public find(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/sdk/common/Database/DBOperator$DataSQLiteLisenter;)V
    .locals 12

    new-instance v0, Lcom/czhj/sdk/common/Database/DBOperator$SQLiteThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/czhj/sdk/common/Database/DBOperator$SQLiteThread;-><init>(Lcom/czhj/sdk/common/Database/DBOperator;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/sdk/common/Database/DBOperator$DataSQLiteLisenter;)V

    iget-object p1, p0, Lcom/czhj/sdk/common/Database/DBOperator;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
