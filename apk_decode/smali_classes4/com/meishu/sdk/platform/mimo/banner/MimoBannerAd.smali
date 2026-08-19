.class public Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;
.super Lcom/meishu/sdk/core/ad/banner/a;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoBannerAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

.field private bannerAd:Lcom/miui/zeus/mimo/sdk/BannerAd;

.field private isAdShowed:Z


# direct methods
.method public constructor <init>(Lcom/miui/zeus/mimo/sdk/BannerAd;Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "MIMO"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/banner/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->bannerAd:Lcom/miui/zeus/mimo/sdk/BannerAd;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->isAdShowed:Z

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->isAdShowed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->isAdShowed:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->bannerAd:Lcom/miui/zeus/mimo/sdk/BannerAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/app/Activity;

    .line 10
    .line 11
    new-instance v2, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;-><init>(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, v2}, Lcom/miui/zeus/mimo/sdk/BannerAd;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/miui/zeus/mimo/sdk/BannerAd$BannerInteractionListener;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/banner/a;->showAd(Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
