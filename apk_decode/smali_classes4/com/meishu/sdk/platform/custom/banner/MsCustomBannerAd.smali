.class public abstract Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;
.super Lcom/meishu/sdk/core/ad/banner/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;)V
    .locals 1

    .line 1
    const-string v0, "CUSTOM"

    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAd;-><init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/banner/MsCustomBannerAdapter;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/banner/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method
