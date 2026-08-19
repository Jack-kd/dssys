.class final Lcom/kwad/sdk/utils/bl$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/utils/bl;->Wr()V
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
    iput-object p1, p0, Lcom/kwad/sdk/utils/bl$3;->bqs:Lcom/kwad/sdk/utils/bl;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/bk;->Wo()Lcom/kwad/sdk/utils/bk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/sdk/utils/bl$3;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/utils/bk;->a(Landroid/hardware/SensorEventListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/sdk/utils/bl$3;->bqs:Lcom/kwad/sdk/utils/bl;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/sdk/utils/bl;->d(Lcom/kwad/sdk/utils/bl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
