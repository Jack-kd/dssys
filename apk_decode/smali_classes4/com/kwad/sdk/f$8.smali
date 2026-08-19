.class final Lcom/kwad/sdk/f$8;
.super Lcom/kwad/sdk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/f;->a(Lcom/kwad/sdk/api/SdkConfig;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aFT:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/f$8;->aFT:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/f$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/f$8;->aFT:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/kwad/sdk/f$8;->aFT:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-static {v0, v1}, Lcom/kwad/sdk/p;->as(J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/f;->access$000()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/sdk/f$a;->aFU:Lcom/kwad/sdk/api/KsInitCallback;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsInitCallback;->onSuccess()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
