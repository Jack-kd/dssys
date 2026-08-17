.class public Lcom/kwad/sdk/core/response/model/LiveRewardInfo;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33a0812e7ce4af9fL


# instance fields
.field public rewardAmount:J

.field public rewardTimeSecond:J

.field public rewardType:I

.field public rewardVerified:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardTimeSecond:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardAmount:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardType:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardVerified:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardTimeSecond:J

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
    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/LiveRewardInfo;->rewardAmount:J

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method
