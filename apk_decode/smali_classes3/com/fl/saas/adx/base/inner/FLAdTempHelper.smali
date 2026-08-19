.class public Lcom/fl/saas/adx/base/inner/FLAdTempHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/fl/saas/adx/base/inner/FLAdTempHelper;


# instance fields
.field private listActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private listInterstitialHelperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;",
            ">;"
        }
    .end annotation
.end field

.field private spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fl/saas/adx/base/inner/FLAdTempHelper;
    .locals 2

    sget-object v0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->sInstance:Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;-><init>()V

    sput-object v1, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->sInstance:Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->sInstance:Lcom/fl/saas/adx/base/inner/FLAdTempHelper;

    return-object v0
.end method


# virtual methods
.method public addInterstitialHelper(Ljava/lang/String;Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listInterstitialHelperMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listInterstitialHelperMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listInterstitialHelperMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSpreadListener(Ljava/lang/String;Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listActivityMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listActivityMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listActivityMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearSpreadAd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    return-void
.end method

.method public closeSpreadSpread(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listActivityMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/FLAdTempHelper$SpreadActivityListener;->closeActivity()V

    :cond_0
    return-void
.end method

.method public getInterstitialHelper(Ljava/lang/String;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listInterstitialHelperMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpreadAd()Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    return-object v0
.end method

.method public removeInterstitialHelper(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listInterstitialHelperMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeSpreadListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->listActivityMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSpreadAd(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/FLAdTempHelper;->spreadAd:Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    return-void
.end method
