.class public abstract Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;
.super Lcom/meishu/sdk/core/ad/draw/DrawAd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;)V
    .locals 1

    .line 1
    const-string v0, "CUSTOM"

    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAd;-><init>(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/draw/MsCustomDrawAdapter;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/draw/DrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method
