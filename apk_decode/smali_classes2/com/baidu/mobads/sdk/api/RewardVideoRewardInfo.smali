.class public Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    }
.end annotation


# instance fields
.field private final builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;


# direct methods
.method private constructor <init>(Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;-><init>(Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;)V

    return-void
.end method

.method public static builder()Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getBuilder()Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTwoStageRewardInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "rewardType"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 9
    .line 10
    iget v2, v2, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->rewardType:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "basicReward"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->basicReward:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "basicUnit"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->basicUnit:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "advancedReward"

    .line 34
    .line 35
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->advancedReward:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "advancedUnit"

    .line 43
    .line 44
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->advancedUnit:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v1, "multiple"

    .line 52
    .line 53
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo;->builder:Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/baidu/mobads/sdk/api/RewardVideoRewardInfo$Builder;->multiple:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
