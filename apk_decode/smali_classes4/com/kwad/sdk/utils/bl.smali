.class public final Lcom/kwad/sdk/utils/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/utils/bl$b;,
        Lcom/kwad/sdk/utils/bl$a;
    }
.end annotation


# instance fields
.field private SW:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bqn:Lcom/kwad/sdk/utils/bl$b;

.field private final bqo:Lcom/kwad/sdk/utils/bl$b;

.field private final bqp:Lcom/kwad/sdk/utils/bl$b;

.field private bqq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bqr:Lcom/kwad/sdk/utils/bk$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/kwad/sdk/utils/bl$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/bl$b;-><init>(B)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqn:Lcom/kwad/sdk/utils/bl$b;

    .line 4
    new-instance v0, Lcom/kwad/sdk/utils/bl$b;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/bl$b;-><init>(B)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqo:Lcom/kwad/sdk/utils/bl$b;

    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/bl$b;

    invoke-direct {v0, v1}, Lcom/kwad/sdk/utils/bl$b;-><init>(B)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqp:Lcom/kwad/sdk/utils/bl$b;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/bl;->SW:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v0, Lcom/kwad/sdk/utils/bl$4;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/bl$4;-><init>(Lcom/kwad/sdk/utils/bl;)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqr:Lcom/kwad/sdk/utils/bk$b;

    .line 9
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    new-instance v0, Lcom/kwad/sdk/utils/bl$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/bl$1;-><init>(Lcom/kwad/sdk/utils/bl;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/c/b;->a(Lcom/kwad/sdk/core/c/c;)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bl;-><init>()V

    return-void
.end method

.method public static Wp()Lcom/kwad/sdk/utils/bl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/bl$a;->Ws()Lcom/kwad/sdk/utils/bl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private Wr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl;->SW:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/kwad/sdk/utils/bl$3;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/bl$3;-><init>(Lcom/kwad/sdk/utils/bl;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/utils/i;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/kwad/sdk/utils/bl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bl;->register()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/kwad/sdk/utils/bl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bl;->Wr()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/kwad/sdk/utils/bl;)Lcom/kwad/sdk/utils/bk$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/utils/bl;->bqr:Lcom/kwad/sdk/utils/bk$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/sdk/utils/bl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/utils/bl;->SW:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/sdk/utils/bl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/utils/bl;->bqq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method private register()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl;->SW:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/kwad/sdk/utils/bl$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/kwad/sdk/utils/bl$2;-><init>(Lcom/kwad/sdk/utils/bl;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/sdk/utils/i;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized Wq()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/k/a/e;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/utils/t;->UJ()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->isAppOnForeground()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bl;->register()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/kwad/sdk/utils/bl;->bqn:Lcom/kwad/sdk/utils/bl$b;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/utils/bl$b;->aa(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/kwad/sdk/utils/bl;->bqo:Lcom/kwad/sdk/utils/bl$b;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/utils/bl$b;->aa(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/kwad/sdk/utils/bl;->bqp:Lcom/kwad/sdk/utils/bl$b;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/utils/bl$b;->aa(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqp:Lcom/kwad/sdk/utils/bl$b;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/utils/bl$b;->b(Landroid/hardware/SensorEvent;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqo:Lcom/kwad/sdk/utils/bl$b;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/utils/bl$b;->b(Landroid/hardware/SensorEvent;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl;->bqn:Lcom/kwad/sdk/utils/bl$b;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/utils/bl$b;->b(Landroid/hardware/SensorEvent;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
