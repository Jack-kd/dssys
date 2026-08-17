.class final Lcom/kwad/components/ad/splashscreen/presenter/m$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/m;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic IB:Lcom/kwad/components/ad/splashscreen/presenter/m;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/m$2;->IB:Lcom/kwad/components/ad/splashscreen/presenter/m;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/m$2;->IB:Lcom/kwad/components/ad/splashscreen/presenter/m;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/presenter/m$2;->IB:Lcom/kwad/components/ad/splashscreen/presenter/m;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/kwad/components/ad/splashscreen/presenter/m;->b(Lcom/kwad/components/ad/splashscreen/presenter/m;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long/2addr v1, v3

    .line 18
    iput-wide v1, v0, Lcom/kwad/components/ad/splashscreen/h;->He:J

    .line 19
    .line 20
    :cond_0
    return-void
.end method
