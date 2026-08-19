.class Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->showNativeSplash(Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

.field public final synthetic val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    const-string p1, "KSSplashAdWrapper"

    .line 2
    .line 3
    const-string p2, "send onAdClicked"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1400(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 41
    .line 42
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1500(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1502(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Z)Z

    .line 51
    .line 52
    .line 53
    :cond_2
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
