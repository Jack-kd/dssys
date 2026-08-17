.class public Lcom/fl/saas/adx/api/FLInterstitial$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/FLInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Builder<",
        "Lcom/fl/saas/adx/api/FLInterstitial$Builder;",
        "Lcom/fl/saas/adx/api/FLInterstitial;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Builder;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/fl/saas/adx/api/FLInterstitial;
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/api/FLInterstitial;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/api/FLInterstitial;-><init>(Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/api/FLInterstitial$Builder;->build()Lcom/fl/saas/adx/api/FLInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public setInterstitialListener(Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;)Lcom/fl/saas/adx/api/FLInterstitial$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    return-object p0
.end method
