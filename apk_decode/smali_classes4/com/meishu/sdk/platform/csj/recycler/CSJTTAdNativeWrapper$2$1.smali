.class Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->onFeedAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

.field public final synthetic val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

.field public final synthetic val$mediationManager:Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

.field public final synthetic val$ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$mediationManager:Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "CSJTTAdNativeWrapper"

    .line 20
    .line 21
    const-string v1, "send onAdClicked"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void

    .line 109
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$mediationManager:Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->isHasExposed()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->setHasExposed(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_3
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FFZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    .line 5
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->val$csjMediationExpressAd:Lcom/meishu/sdk/platform/csj/recycler/CSJMediationExpressAd;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 31
    .line 32
    invoke-interface {p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
