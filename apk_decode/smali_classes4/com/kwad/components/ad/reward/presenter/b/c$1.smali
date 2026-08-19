.class final Lcom/kwad/components/ad/reward/presenter/b/c$1;
.super Lcom/kwad/components/core/video/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ym:Lcom/kwad/components/ad/reward/presenter/b/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/c$1;->ym:Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/video/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMediaPlayProgress(JJ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/kwad/components/core/video/m;->onMediaPlayProgress(JJ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/c$1;->ym:Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/b/c;->a(Lcom/kwad/components/ad/reward/presenter/b/c;)Lcom/kwad/components/ad/reward/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/c$1;->ym:Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/b/c;->b(Lcom/kwad/components/ad/reward/presenter/b/c;)Lcom/kwad/components/ad/reward/g;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/c$1;->ym:Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/b/c;->c(Lcom/kwad/components/ad/reward/presenter/b/c;)Lcom/kwad/components/ad/reward/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/c$1;->ym:Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/b/c;->d(Lcom/kwad/components/ad/reward/presenter/b/c;)Lcom/kwad/components/ad/reward/g;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 43
    .line 44
    const-wide/16 v0, 0x3e8

    .line 45
    .line 46
    div-long/2addr p3, v0

    .line 47
    long-to-double p2, p3

    .line 48
    iput-wide p2, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->hasRewardTime:D

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/b/c$1;->ym:Lcom/kwad/components/ad/reward/presenter/b/c;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/b/c;->e(Lcom/kwad/components/ad/reward/presenter/b/c;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
