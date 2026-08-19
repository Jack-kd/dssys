.class public final Lcom/kwad/components/core/pfmonitor/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aik:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static P(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x400

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " B"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const-wide/32 v0, 0x100000

    .line 26
    .line 27
    .line 28
    cmp-long v0, p0, v0

    .line 29
    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    long-to-double p0, p0

    .line 33
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 34
    .line 35
    div-double/2addr p0, v0

    .line 36
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "%.1f KB"

    .line 45
    .line 46
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    const-wide/32 v0, 0x40000000

    .line 52
    .line 53
    .line 54
    cmp-long v0, p0, v0

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    long-to-double p0, p0

    .line 59
    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    .line 60
    .line 61
    div-double/2addr p0, v0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, "%.1f MB"

    .line 71
    .line 72
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_2
    long-to-double p0, p0

    .line 78
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    .line 79
    .line 80
    div-double/2addr p0, v0

    .line 81
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "%.1f GB"

    .line 90
    .line 91
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/kwad/components/core/pfmonitor/model/a;I)Lcom/kwad/components/core/pfmonitor/model/c;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/kwad/components/core/pfmonitor/model/a;->aim:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/kwad/components/core/pfmonitor/model/e;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/kwad/components/core/pfmonitor/model/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/kwad/components/core/pfmonitor/a;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Lcom/kwad/components/core/pfmonitor/a;-><init>(Lcom/kwad/components/core/pfmonitor/model/e;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kwad/components/core/pfmonitor/a;->run()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kwad/components/core/pfmonitor/a;->getStatus()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 p2, 0x2

    .line 23
    if-ne p0, p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/kwad/components/core/pfmonitor/a;->vr()Lcom/kwad/components/core/pfmonitor/model/c;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    return-object p1
.end method

.method public static aF(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KV()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "startByConfig delay: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "ms, context: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "DiskScanner"

    .line 28
    .line 29
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-gtz v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v1, Lcom/kwad/components/core/pfmonitor/d$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/kwad/components/core/pfmonitor/d$1;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    int-to-long v2, v0

    .line 41
    invoke-static {v1, v2, v3}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static aG(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KW()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "startByConfig confStr: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "DiskScanner"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/core/pfmonitor/model/b;->bf(Ljava/lang/String;)Lcom/kwad/components/core/pfmonitor/model/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->NV()Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/kwad/components/core/pfmonitor/d$2;

    .line 33
    .line 34
    invoke-direct {v2, v0, p0}, Lcom/kwad/components/core/pfmonitor/d$2;-><init>(Lcom/kwad/components/core/pfmonitor/model/b;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/kwad/components/core/pfmonitor/d;->aik:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Lcom/kwad/components/core/pfmonitor/d;->aik:Z

    .line 3
    .line 4
    return p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/kwad/components/core/pfmonitor/model/a;I)Lcom/kwad/components/core/pfmonitor/model/c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/kwad/components/core/pfmonitor/d;->a(Landroid/content/Context;Lcom/kwad/components/core/pfmonitor/model/a;I)Lcom/kwad/components/core/pfmonitor/model/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
