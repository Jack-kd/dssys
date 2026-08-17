.class public Lcom/meishu/sdk/core/loader/AdPlatformError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

.field public code:Ljava/lang/Integer;

.field public message:Ljava/lang/String;

.field public platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->adInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
