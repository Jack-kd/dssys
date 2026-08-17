.class public Lcom/meishu/sdk/core/utils/RecordBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clickNum:I

.field private dynamicClickNum:I

.field private exposureNum:I

.field private lastClickTime:J

.field private lastDynamicClickTime:J

.field private lastDynamicLoadedTime:J

.field private loadNum:I

.field private loadSucc:I

.field private pid:Ljava/lang/String;


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

.method public static fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/utils/RecordBean;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/utils/RecordBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/RecordBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pid"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/RecordBean;->setPid(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "loadNum"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/RecordBean;->setLoadNum(I)V

    .line 25
    .line 26
    .line 27
    const-string v1, "loadSucc"

    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/RecordBean;->setLoadSucc(I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "exposureNum"

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/RecordBean;->setExposureNum(I)V

    .line 43
    .line 44
    .line 45
    const-string v1, "clickNum"

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/RecordBean;->setClickNum(I)V

    .line 52
    .line 53
    .line 54
    const-string v1, "dynamicClickNum"

    .line 55
    .line 56
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/RecordBean;->setDynamicClickNum(I)V

    .line 61
    .line 62
    .line 63
    const-string v1, "lastDynamicLoadedTime"

    .line 64
    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .line 67
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    invoke-virtual {v0, v4, v5}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastDynamicLoadedTime(J)V

    .line 72
    .line 73
    .line 74
    const-string v1, "lastDynamicClickTime"

    .line 75
    .line 76
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-virtual {v0, v4, v5}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastDynamicClickTime(J)V

    .line 81
    .line 82
    .line 83
    const-string v1, "lastClickTime"

    .line 84
    .line 85
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/RecordBean;->setLastClickTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method


# virtual methods
.method public getClickNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->clickNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getDynamicClickNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->dynamicClickNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getExposureNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->exposureNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getLastClickTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->lastClickTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastDynamicClickTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->lastDynamicClickTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastDynamicLoadedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->lastDynamicLoadedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLoadNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->loadNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadSucc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->loadSucc:I

    .line 2
    .line 3
    return v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/RecordBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClickNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->clickNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setDynamicClickNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->dynamicClickNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setExposureNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->exposureNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setLastClickTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->lastClickTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastDynamicClickTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->lastDynamicClickTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLastDynamicLoadedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->lastDynamicLoadedTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLoadNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->loadNum:I

    .line 2
    .line 3
    return-void
.end method

.method public setLoadSucc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->loadSucc:I

    .line 2
    .line 3
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/RecordBean;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
