.class public final Lcom/kwad/library/solder/lib/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/library/solder/lib/i$a;
    }
.end annotation


# static fields
.field private static aEA:Lcom/kwad/library/solder/lib/i$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile aEx:Lcom/kwad/library/solder/lib/i;

.field private static aEz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aEy:Lcom/kwad/library/solder/lib/e;

.field private volatile mHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/kwad/library/solder/lib/i;->aEz:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/library/solder/lib/i;->mHasInit:Z

    .line 6
    .line 7
    return-void
.end method

.method public static DQ()Lcom/kwad/library/solder/lib/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/library/solder/lib/i;->aEx:Lcom/kwad/library/solder/lib/i;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/kwad/library/solder/lib/i;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/kwad/library/solder/lib/i;->aEx:Lcom/kwad/library/solder/lib/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/library/solder/lib/i;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/kwad/library/solder/lib/i;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/kwad/library/solder/lib/i;->aEx:Lcom/kwad/library/solder/lib/i;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

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
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/kwad/library/solder/lib/i;->aEx:Lcom/kwad/library/solder/lib/i;

    .line 27
    .line 28
    return-object v0
.end method

.method public static synthetic DR()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/library/solder/lib/i;->aEz:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic DS()Lcom/kwad/library/solder/lib/i$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/library/solder/lib/i;->aEA:Lcom/kwad/library/solder/lib/i$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/library/solder/lib/i;)Lcom/kwad/library/solder/lib/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/library/solder/lib/i;->aEy:Lcom/kwad/library/solder/lib/e;

    return-object p0
.end method

.method public static a(Lcom/kwad/library/solder/lib/i$a;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/kwad/library/solder/lib/i;->aEA:Lcom/kwad/library/solder/lib/i$a;

    return-void
.end method

.method public static cA(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/kwad/library/solder/lib/i;->aEz:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return p0

    .line 10
    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private static df(I)Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v7, Lcom/kwad/library/solder/lib/i$1;

    .line 11
    .line 12
    invoke-direct {v7}, Lcom/kwad/library/solder/lib/i$1;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const-wide/16 v3, 0x3c

    .line 17
    .line 18
    move v1, p0

    .line 19
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/i;->mHasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Lcom/kwad/library/solder/lib/ext/c$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/kwad/library/solder/lib/ext/c$a;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "sodler"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/kwad/library/solder/lib/ext/c$a;->cI(Ljava/lang/String;)Lcom/kwad/library/solder/lib/ext/c$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/kwad/library/solder/lib/i;->aEA:Lcom/kwad/library/solder/lib/i$a;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Lcom/kwad/library/solder/lib/i$a;->getMaxRetryCount()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    move-object p1, v0

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Lcom/kwad/library/solder/lib/ext/c$a;->di(I)Lcom/kwad/library/solder/lib/ext/c$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/kwad/library/solder/lib/ext/c$a;->bz(Z)Lcom/kwad/library/solder/lib/ext/c$a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v3, Lcom/kwad/library/solder/lib/i;->aEA:Lcom/kwad/library/solder/lib/i$a;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v3}, Lcom/kwad/library/solder/lib/i$a;->DT()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v3, v1

    .line 55
    :goto_1
    invoke-virtual {v0, v3}, Lcom/kwad/library/solder/lib/ext/c$a;->bA(Z)Lcom/kwad/library/solder/lib/ext/c$a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v3, Lcom/kwad/library/solder/lib/i;->aEA:Lcom/kwad/library/solder/lib/i$a;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-interface {v3}, Lcom/kwad/library/solder/lib/i$a;->getCorePoolSize()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v3, v1

    .line 69
    :goto_2
    invoke-static {v3}, Lcom/kwad/library/solder/lib/i;->df(I)Ljava/util/concurrent/ExecutorService;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v0, v3}, Lcom/kwad/library/solder/lib/ext/c$a;->a(Ljava/util/concurrent/ExecutorService;)Lcom/kwad/library/solder/lib/ext/c$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v3, Lcom/kwad/library/solder/lib/i;->aEA:Lcom/kwad/library/solder/lib/i$a;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-interface {v3}, Lcom/kwad/library/solder/lib/i$a;->getCorePoolSize()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :cond_4
    invoke-virtual {v0, v1}, Lcom/kwad/library/solder/lib/ext/c$a;->dj(I)Lcom/kwad/library/solder/lib/ext/c$a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/kwad/library/solder/lib/ext/c$a;->Ew()Lcom/kwad/library/solder/lib/ext/c;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    new-instance v4, Lcom/kwad/library/solder/lib/d;

    .line 94
    .line 95
    invoke-direct {v4, p1}, Lcom/kwad/library/solder/lib/d;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    new-instance v6, Lcom/kwad/library/solder/lib/c;

    .line 99
    .line 100
    invoke-direct {v6, p1, v7}, Lcom/kwad/library/solder/lib/c;-><init>(Landroid/content/Context;Lcom/kwad/library/solder/lib/ext/c;)V

    .line 101
    .line 102
    .line 103
    new-instance v5, Lcom/kwad/library/solder/lib/f;

    .line 104
    .line 105
    invoke-direct {v5, p1}, Lcom/kwad/library/solder/lib/f;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Lcom/kwad/library/solder/lib/i$2;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/kwad/library/solder/lib/i$2;-><init>(Lcom/kwad/library/solder/lib/i;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v5, p1}, Lcom/kwad/library/solder/lib/a/f;->a(Lcom/kwad/library/solder/lib/a/f$a;)Lcom/kwad/library/solder/lib/a/f;

    .line 114
    .line 115
    .line 116
    new-instance v3, Lcom/kwad/library/solder/lib/e;

    .line 117
    .line 118
    new-instance v8, Lcom/kwad/library/solder/lib/ext/a;

    .line 119
    .line 120
    invoke-direct {v8}, Lcom/kwad/library/solder/lib/ext/a;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-direct/range {v3 .. v8}, Lcom/kwad/library/solder/lib/e;-><init>(Lcom/kwad/library/solder/lib/a/c;Lcom/kwad/library/solder/lib/a/f;Lcom/kwad/library/solder/lib/a/b;Lcom/kwad/library/solder/lib/ext/c;Lcom/kwad/library/solder/lib/ext/a;)V

    .line 124
    .line 125
    .line 126
    iput-object v3, p0, Lcom/kwad/library/solder/lib/i;->aEy:Lcom/kwad/library/solder/lib/e;

    .line 127
    .line 128
    iput-boolean v2, p0, Lcom/kwad/library/solder/lib/i;->mHasInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 132
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    throw p1
.end method


# virtual methods
.method public final DK()Lcom/kwad/library/solder/lib/ext/c;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/i;->mHasInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/library/solder/lib/i;->aEy:Lcom/kwad/library/solder/lib/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kwad/library/solder/lib/e;->DK()Lcom/kwad/library/solder/lib/ext/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v1, "Sodler has not yet been init."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/kwad/library/solder/lib/a/e;Lcom/kwad/library/solder/lib/ext/b;)V
    .locals 1
    .param p2    # Lcom/kwad/library/solder/lib/a/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/kwad/library/solder/lib/a/a;",
            "R:",
            "Lcom/kwad/library/solder/lib/a/e<",
            "TP;>;>(",
            "Landroid/content/Context;",
            "TR;",
            "Lcom/kwad/library/solder/lib/ext/b<",
            "TP;TR;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/library/solder/lib/i;->init(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/kwad/library/solder/lib/i;->aEy:Lcom/kwad/library/solder/lib/e;

    invoke-virtual {p1}, Lcom/kwad/library/solder/lib/e;->DK()Lcom/kwad/library/solder/lib/ext/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/library/solder/lib/ext/c;->getRetryCount()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/kwad/library/solder/lib/a/e;->dh(I)V

    .line 5
    new-instance p1, Lcom/kwad/library/solder/lib/i$3;

    new-instance v0, Lcom/kwad/library/solder/lib/ext/b$b;

    invoke-direct {v0}, Lcom/kwad/library/solder/lib/ext/b$b;-><init>()V

    invoke-direct {p1, p0, p3, v0}, Lcom/kwad/library/solder/lib/i$3;-><init>(Lcom/kwad/library/solder/lib/i;Lcom/kwad/library/solder/lib/ext/b;Lcom/kwad/library/solder/lib/ext/b;)V

    invoke-virtual {p2, p1}, Lcom/kwad/library/solder/lib/a/e;->a(Lcom/kwad/library/solder/lib/ext/b;)V

    .line 6
    iget-object p1, p0, Lcom/kwad/library/solder/lib/i;->aEy:Lcom/kwad/library/solder/lib/e;

    const/16 p3, 0x10

    invoke-virtual {p1, p2, p3}, Lcom/kwad/library/solder/lib/e;->a(Lcom/kwad/library/solder/lib/a/e;I)Lcom/kwad/library/solder/lib/e$b;

    return-void
.end method

.method public final o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/i;->mHasInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/library/solder/lib/i;->init(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/library/solder/lib/i;->DK()Lcom/kwad/library/solder/lib/ext/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/kwad/library/solder/lib/i;->DK()Lcom/kwad/library/solder/lib/ext/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/kwad/library/solder/lib/ext/c;->Eu()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/kwad/library/solder/lib/i;->DK()Lcom/kwad/library/solder/lib/ext/c;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/kwad/library/solder/lib/ext/c;->Eu()Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Lcom/kwad/library/solder/lib/i$4;

    .line 35
    .line 36
    invoke-direct {v0, p0, p2}, Lcom/kwad/library/solder/lib/i$4;-><init>(Lcom/kwad/library/solder/lib/i;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final p(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/library/solder/lib/a/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/kwad/library/solder/lib/i;->mHasInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/kwad/library/solder/lib/i;->init(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/kwad/library/solder/lib/i;->aEy:Lcom/kwad/library/solder/lib/e;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/kwad/library/solder/lib/e;->DL()Lcom/kwad/library/solder/lib/a/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, p2}, Lcom/kwad/library/solder/lib/a/c;->cy(Ljava/lang/String;)Lcom/kwad/library/solder/lib/a/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method
