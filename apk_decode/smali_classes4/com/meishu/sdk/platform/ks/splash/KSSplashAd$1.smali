.class Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private hasReportExposure:Z

.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->hasReportExposure:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "KSSplashAd"

    .line 26
    .line 27
    const-string v1, "send onAdClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->val$context:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 51
    .line 52
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void

    .line 103
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onAdShowEnd()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "KSSplashAd"

    .line 2
    .line 3
    const-string v1, "onAdShowEnd"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onAdShowError(ILjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "KSSplashAd"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onNoAD, code: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", msg: "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onAdShowStart()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "KSSplashAd"

    .line 2
    .line 3
    const-string v1, "onAdShowStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->hasReportExposure:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->hasReportExposure:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdPresent(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-void

    .line 80
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onDownloadTipsDialogCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$600(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$700(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/splash/a;->onDownloadTipsDialogCancel()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onDownloadTipsDialogDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$400(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$500(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/splash/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onDownloadTipsDialogShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$200(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->access$300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;)Lcom/meishu/sdk/core/ad/splash/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/splash/a;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onSkippedAd()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "KSSplashAd"

    .line 2
    .line 3
    const-string v1, "onSkippedAd"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;->getApiAdListener()Lcom/meishu/sdk/core/ad/splash/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAd$1;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAd;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void

    .line 57
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
