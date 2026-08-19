.class public Lcom/ubix/ssp/ad/e/v/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/v/c$b;,
        Lcom/ubix/ssp/ad/e/v/c$c;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Lcom/ubix/ssp/ad/e/v/c;

.field public static c:Lcom/ubix/ssp/ad/e/v/c$c;

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ubix/ssp/ad/e/v/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/ubix/ssp/ad/e/v/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/c;->e:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/v/c;->a()V

    new-instance v0, Lcom/ubix/ssp/ad/e/v/c$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/v/c$c;-><init>(Lcom/ubix/ssp/ad/e/v/c;)V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/c;->c:Lcom/ubix/ssp/ad/e/v/c$c;

    return-void
.end method

.method private a()V
    .locals 9

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/v/c;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ubix/ssp/ad/e/v/c$a;

    invoke-direct {v8, p0}, Lcom/ubix/ssp/ad/e/v/c$a;-><init>(Lcom/ubix/ssp/ad/e/v/c;)V

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    const/4 v2, 0x3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/ubix/ssp/ad/e/v/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/c;Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/v/c;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/v/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/e/v/b;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Lcom/ubix/ssp/ad/e/v/b;)V
    .locals 5

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sget-object v1, Lcom/ubix/ssp/ad/e/v/c;->e:Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ".download"

    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/v/d;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/v/d;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/v/d;->a()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance v1, Lcom/ubix/ssp/ad/e/v/d;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/ubix/ssp/ad/e/v/c$b;

    invoke-direct {p2, p0, p3}, Lcom/ubix/ssp/ad/e/v/c$b;-><init>(Lcom/ubix/ssp/ad/e/v/c;Lcom/ubix/ssp/ad/e/v/b;)V

    invoke-direct {v1, p1, v3, p2}, Lcom/ubix/ssp/ad/e/v/d;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/ubix/ssp/ad/e/v/b;)V

    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/ubix/ssp/ad/e/v/d;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/ubix/ssp/ad/e/v/c$b;

    invoke-direct {p2, p0, p3}, Lcom/ubix/ssp/ad/e/v/c$b;-><init>(Lcom/ubix/ssp/ad/e/v/c;Lcom/ubix/ssp/ad/e/v/b;)V

    invoke-direct {v1, p1, v3, p2}, Lcom/ubix/ssp/ad/e/v/d;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/ubix/ssp/ad/e/v/b;)V

    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/ad/e/v/b;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ubix/ssp/ad/e/v/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b()Lcom/ubix/ssp/ad/e/v/c;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/v/c;->b:Lcom/ubix/ssp/ad/e/v/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/v/c;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/v/c;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/v/c;->b:Lcom/ubix/ssp/ad/e/v/c;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/b;)V
    .locals 3

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    if-eqz p4, :cond_1

    const-string p1, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-interface {p4, p2, p1, v1}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    if-eqz p4, :cond_1

    const-string p1, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    invoke-static {v2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-interface {p4, p2, p1, v1}, Lcom/ubix/ssp/ad/e/v/b;->a(Ljava/lang/String;Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/k;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/k;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    :goto_0
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/ubix/ssp/ad/e/v/c;->a(Ljava/lang/String;Ljava/io/File;Lcom/ubix/ssp/ad/e/v/b;)V

    return-void
.end method
