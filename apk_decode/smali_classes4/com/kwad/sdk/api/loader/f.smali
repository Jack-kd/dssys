.class public Lcom/kwad/sdk/api/loader/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static aHX:Lcom/kwad/sdk/api/loader/f;


# instance fields
.field private DEBUG:Z

.field private aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private aHZ:I

.field private final aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aIb:J

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/api/loader/f;->DEBUG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/f;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static bn(Landroid/content/Context;)Lcom/kwad/sdk/api/loader/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/kwad/sdk/api/loader/f;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/sdk/api/loader/f;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/kwad/sdk/api/loader/f;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

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
    sget-object p0, Lcom/kwad/sdk/api/loader/f;->aHX:Lcom/kwad/sdk/api/loader/f;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final do(I)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 6
    .line 7
    iput p1, p0, Lcom/kwad/sdk/api/loader/f;->aHZ:I

    .line 8
    .line 9
    return-void
.end method

.method public final setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    if-eq p1, p0, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/sdk/api/loader/f;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aIa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/kwad/sdk/api/loader/f;->aIb:J

    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    iget v2, p0, Lcom/kwad/sdk/api/loader/f;->aHZ:I

    .line 37
    .line 38
    int-to-long v2, v2

    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-gtz v0, :cond_2

    .line 42
    .line 43
    const-string v0, "filterStack"

    .line 44
    .line 45
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/c;->g(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v0, v1

    .line 64
    :goto_1
    iget-object v2, p0, Lcom/kwad/sdk/api/loader/f;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    sget-object v0, Lcom/kwad/sdk/api/loader/i;->aIf:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/api/loader/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v1, p0, Lcom/kwad/sdk/api/loader/f;->aHY:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 100
    .line 101
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    throw v0
.end method
