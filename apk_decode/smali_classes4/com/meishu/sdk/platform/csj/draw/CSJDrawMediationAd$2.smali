.class Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

.field public final synthetic val$adContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->val$adContainer:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    const-string v0, "CSJDrawMediationAd"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "onAdCreativeClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string v1, "send onAdClicked"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 72
    .line 73
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 83
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void

    .line 100
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$100(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$200(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$202(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;Z)Z

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 83
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FFZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$100(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;->access$100(Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd;)Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->val$adContainer:Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    instance-of p2, p2, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/view/ViewGroup;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawMediationAd$2;->val$adContainer:Landroid/view/ViewGroup;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method
