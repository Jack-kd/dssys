.class public final Lcom/kwad/components/ad/reward/g/a;
.super Lcom/kwad/components/ad/c;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/b/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getComponentsType()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/components/ad/b/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/reward/retryReward/d;->kF()Lcom/kwad/components/ad/reward/retryReward/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/retryReward/d;->kG()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    .locals 1
    .param p2    # Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/kwad/components/ad/reward/g/a$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/reward/g/a$1;-><init>(Lcom/kwad/components/ad/reward/g/a;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/components/ad/c;->a(Lcom/kwad/sdk/g/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final notifyRewardVerify()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/reward/b;->gw()Lcom/kwad/components/ad/reward/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/b;->notifyRewardVerify()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
