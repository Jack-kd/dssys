.class public Lcom/meishu/sdk/platform/huawei/HWPlatformError;
.super Lcom/meishu/sdk/core/loader/AdPlatformError;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/AdPlatformError;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HW"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->adInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    .line 18
    return-void
.end method
