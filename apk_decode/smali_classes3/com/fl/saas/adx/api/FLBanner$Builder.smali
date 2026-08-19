.class public final Lcom/fl/saas/adx/api/FLBanner$Builder;
.super Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/adx/api/FLBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder$Builder<",
        "Lcom/fl/saas/adx/api/FLBanner$Builder;",
        "Lcom/fl/saas/adx/api/FLBanner;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder$Builder;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/fl/saas/adx/api/FLBanner;
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/adx/api/FLBanner;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/api/FLBanner;-><init>(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/api/FLBanner$Builder;->build()Lcom/fl/saas/adx/api/FLBanner;

    move-result-object v0

    return-object v0
.end method

.method public setBannerListener(Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)Lcom/fl/saas/adx/api/FLBanner$Builder;
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    return-object p0
.end method
