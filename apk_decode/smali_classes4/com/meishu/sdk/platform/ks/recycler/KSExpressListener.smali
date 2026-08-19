.class public Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KSExpressListener"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

.field private ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

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
    const-string v0, "KSExpressListener"

    .line 26
    .line 27
    const-string v1, "send onADClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 55
    .line 56
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 86
    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void

    .line 105
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onDislikeClicked()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->getAdView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;->ksExpressFeedAd:Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
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
