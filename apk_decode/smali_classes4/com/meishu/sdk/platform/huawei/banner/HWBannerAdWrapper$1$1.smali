.class Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;
.super Lcom/huawei/hms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

.field public final synthetic val$bannerView:Lcom/huawei/hms/ads/banner/BannerView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;Lcom/huawei/hms/ads/banner/BannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->val$bannerView:Lcom/huawei/hms/ads/banner/BannerView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/huawei/hms/ads/AdListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    const-string v0, "onAdClicked: "

    .line 2
    .line 3
    const-string v1, "HWBannerAdWrapper"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string v0, "send onAdClicked"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    const-string v0, "HWBannerAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdClosed: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public onAdFailed(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailed: errorCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HWBannerAdWrapper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "\u52a0\u8f7d\u51fa\u9519"

    .line 34
    .line 35
    invoke-direct {v0, v2, p1, v1}, Lcom/meishu/sdk/platform/huawei/HWPlatformError;-><init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$300(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$302(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;Z)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public onAdLeave()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 4
    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->val$bannerView:Lcom/huawei/hms/ads/banner/BannerView;

    .line 8
    .line 9
    invoke-direct {v1, v0, v2}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/huawei/hms/ads/banner/BannerView;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$102(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->val$bannerView:Lcom/huawei/hms/ads/banner/BannerView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1$1;->this$1:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/banner/HWBannerAdWrapper;)Lcom/meishu/sdk/platform/huawei/banner/HWBannerAd;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
