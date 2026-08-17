.class public abstract Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;
.super Lcom/fl/saas/adx/base/base/BaseBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/builder/AdEventListener;
.implements Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder$Builder;,
        Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder$Default;
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
        "Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;",
        ">;",
        "Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREEN_PERCENTAGE:I = 0x1


# instance fields
.field private container:Landroid/view/ViewGroup;

.field protected listener:Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

.field private screenPercentage:F

.field protected spreadLoadListener:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->screenPercentage:F

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    move-result-object v0

    return-object v0
.end method

.method public getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    return-object v0
.end method

.method public getScreenPercentage()F
    .locals 5

    iget v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->screenPercentage:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v3, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public getSpreadLoadListener()Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->spreadLoadListener:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;

    return-object v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->listener:Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->spreadLoadListener:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;->onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->container:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")TT;"
        }
    .end annotation

    sput-object p1, Lcom/fl/saas/adx/util/DeviceUtil;->scaleType:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method

.method public setScreenPercentage(F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/fl/saas/adx/base/base/builder/InnerSpreadBuilder;->screenPercentage:F

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseBuilder;->builder:Ljava/lang/Object;

    return-object p1
.end method
