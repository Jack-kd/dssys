.class public Lcom/meishu/sdk/platform/ms/d;
.super Lcom/meishu/sdk/core/loader/AdPlatformError;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/AdPlatformError;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MS"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method
