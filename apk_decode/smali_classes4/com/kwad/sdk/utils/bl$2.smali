.class final Lcom/kwad/sdk/utils/bl$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/bl;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bqs:Lcom/kwad/sdk/utils/bl;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/utils/bl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/utils/bl$2;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/kwad/sdk/utils/bl$2;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 7
    .line 8
    invoke-static {v2}, Lcom/kwad/sdk/utils/bl;->c(Lcom/kwad/sdk/utils/bl;)Lcom/kwad/sdk/utils/bk$b;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x3

    .line 13
    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/kwad/sdk/utils/bk;->a(IILandroid/hardware/SensorEventListener;Lcom/kwad/sdk/utils/bk$b;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/kwad/sdk/utils/bl$2;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/kwad/sdk/utils/bl;->c(Lcom/kwad/sdk/utils/bl;)Lcom/kwad/sdk/utils/bk$b;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/kwad/sdk/utils/bk;->a(IILandroid/hardware/SensorEventListener;Lcom/kwad/sdk/utils/bk$b;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/kwad/sdk/utils/bl$2;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/kwad/sdk/utils/bl;->c(Lcom/kwad/sdk/utils/bl;)Lcom/kwad/sdk/utils/bk$b;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v5, 0x4

    .line 41
    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/kwad/sdk/utils/bk;->a(IILandroid/hardware/SensorEventListener;Lcom/kwad/sdk/utils/bk$b;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/kwad/sdk/utils/bl$2;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/kwad/sdk/utils/bl;->d(Lcom/kwad/sdk/utils/bl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    iget-object v1, p0, Lcom/kwad/sdk/utils/bl$2;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/kwad/sdk/utils/bl;->e(Lcom/kwad/sdk/utils/bl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
