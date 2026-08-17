.class public Lcom/meishu/sdk/platform/bd/BDPlatformError;
.super Lcom/meishu/sdk/core/loader/AdPlatformError;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/AdPlatformError;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->adInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 7
    .line 8
    const-string p1, "BAIDU"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
