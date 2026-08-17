.class public Lcom/meishu/sdk/platform/gdt/GDTPlatformError;
.super Lcom/meishu/sdk/core/loader/AdPlatformError;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/util/AdError;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/AdPlatformError;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GDT"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->adInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    return-void
.end method
