.class public Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public advancedReward:Ljava/lang/String;

.field public advancedUnit:Ljava/lang/String;

.field public basicReward:Ljava/lang/String;

.field public basicUnit:Ljava/lang/String;

.field public multiple:Ljava/lang/String;

.field public rewardType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public create()Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;-><init>(Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAdvancedReward(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->advancedReward:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdvancedUnit(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->advancedUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBasicReward(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->basicReward:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBasicUnit(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->basicUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMultiple(Ljava/lang/String;)Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->multiple:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRewardType(I)Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->rewardType:I

    .line 2
    .line 3
    return-object p0
.end method
