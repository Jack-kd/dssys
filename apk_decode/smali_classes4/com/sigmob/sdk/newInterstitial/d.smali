.class public Lcom/sigmob/sdk/newInterstitial/d;
.super Lcom/sigmob/sdk/base/common/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;-><init>()V

    return-void
.end method

.method public static d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/newInterstitial/d;
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/newInterstitial/d;

    invoke-direct {v0}, Lcom/sigmob/sdk/newInterstitial/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method
