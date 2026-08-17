.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;
.super Lcom/fl/saas/adx/base/base/BaseBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/builder/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder$Builder;,
        Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fl/saas/adx/base/base/BaseBuilder<",
        "TT;>;",
        "Lcom/fl/saas/adx/base/base/builder/AdEventListener<",
        "Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private height:I

.field protected listener:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    return-object v0
.end method

.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->height:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->width:I

    int-to-float v0, v0

    const v1, 0x40cccccd    # 6.4f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->height:I

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->width:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getMobileWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->px2dip(F)I

    move-result v0

    iput v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->width:I

    :cond_0
    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->width:I

    return v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public setExpressHeight(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->height:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setExpressWidth(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->width:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method
