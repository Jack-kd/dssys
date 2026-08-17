.class final Lcom/kwad/components/ad/reward/k$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/k$2;->a(Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ud:Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;

.field final synthetic ue:Lcom/kwad/components/ad/reward/k$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/k$2;Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/k$2$1;->ue:Lcom/kwad/components/ad/reward/k$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/k$2$1;->ud:Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/k$2$1;->ue:Lcom/kwad/components/ad/reward/k$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/reward/k$2;->sh:Lcom/kwad/components/ad/reward/g;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/reward/k$2$1;->ud:Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;->isFraud()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    :goto_0
    iput v1, v0, Lcom/kwad/components/ad/reward/g;->sW:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/ad/reward/k$2$1;->ue:Lcom/kwad/components/ad/reward/k$2;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/kwad/components/ad/reward/k$2;->sh:Lcom/kwad/components/ad/reward/g;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kwad/components/ad/reward/k$2$1;->ud:Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/kwad/components/ad/reward/model/RewardFraudVerifyRespInfo;->getCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/kwad/components/ad/reward/g;->sX:I

    .line 29
    .line 30
    return-void
.end method
