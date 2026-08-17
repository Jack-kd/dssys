.class Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->onNativeExpressAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

.field public final synthetic val$ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field public final synthetic val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

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
    const-string p1, "CSJDrawListenerImpl"

    .line 30
    .line 31
    const-string p2, "send onAdClicked"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 61
    .line 62
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 92
    .line 93
    .line 94
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$ad:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationBaseManager;->getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationAdEcpmInfo;->getEcpm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setGmShowEcpm(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$100(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    invoke-static {p1, p2}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$102(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;Z)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0, p2}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 60
    .line 61
    invoke-interface {p1, p2, p3}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void

    .line 68
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 31
    .line 32
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl;)Lcom/meishu/sdk/platform/csj/draw/CSJDrawAdWrapper;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJDrawListenerImpl$2;->val$drawAd:Lcom/meishu/sdk/platform/csj/draw/CSJDrawAd;

    .line 48
    .line 49
    invoke-interface {p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void

    .line 56
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
