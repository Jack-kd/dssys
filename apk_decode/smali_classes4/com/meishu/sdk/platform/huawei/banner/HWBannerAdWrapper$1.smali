.class Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/ads/banner/BannerView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/huawei/hms/ads/banner/BannerView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/banner/BannerView;->setAdId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/huawei/hms/ads/BannerAdSize;->BANNER_SIZE_360_57:Lcom/huawei/hms/ads/BannerAdSize;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/banner/BannerView;->setBannerAdSize(Lcom/huawei/hms/ads/BannerAdSize;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/ads/banner/BannerView;->setBannerRefresh(J)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/huawei/hms/ads/AdParam$Builder;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/huawei/hms/ads/AdParam$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/huawei/hms/ads/AdParam$Builder;->build()Lcom/huawei/hms/ads/AdParam;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;

    .line 51
    .line 52
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;-><init>(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;Lcom/huawei/hms/ads/banner/BannerView;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/huawei/hms/ads/banner/BannerView;->setAdListener(Lcom/huawei/hms/ads/AdListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/banner/BannerView;->loadAd(Lcom/huawei/hms/ads/AdParam;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
