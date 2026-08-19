.class public Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;
.super Lcom/meishu/sdk/core/ad/draw/DrawAd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getDrawType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
