.class public Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoSplashAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "MIMO"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
