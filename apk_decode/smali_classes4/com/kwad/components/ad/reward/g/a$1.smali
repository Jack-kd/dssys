.class final Lcom/kwad/components/ad/reward/g/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/g/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/g/a;->loadRewardVideoAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/g/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bN:Lcom/kwad/sdk/api/KsScene;

.field final synthetic vF:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

.field final synthetic vG:Lcom/kwad/components/ad/reward/g/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/g/a;Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/g/a$1;->vG:Lcom/kwad/components/ad/reward/g/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/g/a$1;->bN:Lcom/kwad/sdk/api/KsScene;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/reward/g/a$1;->vF:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/kwad/components/ad/reward/g/a$1;->bN:Lcom/kwad/sdk/api/KsScene;

    .line 8
    .line 9
    new-instance v0, Lcom/kwad/components/ad/reward/g/c;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsScene;->getPosId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/kwad/components/ad/reward/g/a$1;->vF:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    .line 16
    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/kwad/components/ad/reward/g/c;-><init>(JLcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/kwad/components/ad/reward/g/b;->a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/components/ad/reward/g/c;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/g/a$1;->vF:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    .line 25
    .line 26
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTn:Lcom/kwad/sdk/core/network/e;

    .line 27
    .line 28
    iget v1, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 29
    .line 30
    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, v1, v0}, Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/reward/g/a$1;->a(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
