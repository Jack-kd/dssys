.class Lcom/umeng/analytics/process/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/process/c;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/process/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
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
    iput-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/umeng/analytics/process/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/umeng/analytics/process/c;

    invoke-direct {v1}, Lcom/umeng/analytics/process/c;-><init>()V

    sput-object v1, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    iput-object p0, v0, Lcom/umeng/analytics/process/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/umeng/analytics/process/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/umeng/analytics/process/c$a;

    .line 28
    .line 29
    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/process/c$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/umeng/analytics/process/c$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method
