.class public interface abstract Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdMaterial;
.implements Lcom/fl/saas/adx/base/bidding/BiddingResult;
.implements Lcom/fl/saas/adx/base/interfaces/AdValid;


# virtual methods
.method public biddingResult(ZIII)V
    .locals 2

    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fl/saas/adx/base/bidding/BiddingResult;->biddingResult(ZIII)V

    :cond_0
    return-void
.end method

.method public getAdMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/AdMaterial;->getAdMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public innerDestroy(Lcom/fl/saas/k0;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/fl/saas/adx/base/inner/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/fl/saas/adx/base/inner/a;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/fl/saas/adx/base/inner/b;

    .line 18
    .line 19
    invoke-direct {p2}, Lcom/fl/saas/adx/base/inner/b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public isValid()Z
    .locals 2

    invoke-interface {p0}, Lcom/fl/saas/adx/base/inner/InnerNativeAdapter;->getNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdValid;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdValid;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/AdValid;->isValid()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract loadNativeHandler()Lcom/fl/saas/k0;
.end method
