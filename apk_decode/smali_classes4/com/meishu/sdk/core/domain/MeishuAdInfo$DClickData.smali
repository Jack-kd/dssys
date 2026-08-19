.class public Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/domain/MeishuAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DClickData"
.end annotation


# instance fields
.field private power:I

.field private ptime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->power:I

    .line 6
    .line 7
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p0, "ptime"

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->setPtime(I)V

    .line 18
    .line 19
    .line 20
    const-string p0, "power"

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->setPower(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public getPower()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->power:I

    .line 2
    .line 3
    return v0
.end method

.method public getPtime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->ptime:I

    .line 2
    .line 3
    return v0
.end method

.method public setPower(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->power:I

    .line 2
    .line 3
    return-void
.end method

.method public setPtime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->ptime:I

    .line 2
    .line 3
    return-void
.end method
