.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;
.super Lcom/fl/saas/adx/base/base/BaseBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/builder/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Builder;,
        Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder$Default;
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
        "Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;",
        ">;"
    }
.end annotation


# instance fields
.field private autoCloseCountDown:I

.field private height:I

.field protected listener:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAutoCloseCountDown()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->autoCloseCountDown:I

    return v0
.end method

.method public getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    return-object v0
.end method

.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->height:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x12c

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->width:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x12c

    return v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public setAutoCloseCountDown(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->autoCloseCountDown:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setHeight(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->height:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setWidth(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;->width:I

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method
