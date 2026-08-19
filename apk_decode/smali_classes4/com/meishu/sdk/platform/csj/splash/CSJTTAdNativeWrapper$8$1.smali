.class Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->onSplashRenderSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

.field public final synthetic val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSplashAdClick(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "CSJTTAdNativeWrapper"

    .line 30
    .line 31
    const-string v0, "send onAdClicked"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/meishu/sdk/core/utils/i;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void

    .line 115
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public onSplashAdClose(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onSplashAdShow(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationSplashManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->getSplashView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->this$1:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;->val$csjNewSplashAd:Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_3
    return-void
.end method
