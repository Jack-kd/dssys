.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleKsAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$11;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleDownloadDialog(Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 1

    .line 1
    :try_start_0
    const-string p1, "SdkInterstitialActivity"

    .line 2
    .line 3
    const-string p2, "send onAdClicked"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_1

    .line 96
    .line 97
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_1
    return-void

    .line 119
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$11;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$700(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1900()Lcom/meishu/sdk/platform/BasePlatformLoader;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$11;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$702(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onDownloadTipsDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onDownloadTipsDialogShow()V
    .locals 0

    return-void
.end method
