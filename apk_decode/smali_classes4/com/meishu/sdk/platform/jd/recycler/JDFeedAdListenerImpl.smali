.class public Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jd/ad/sdk/feed/JADFeedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JDFeedAdListenerImpl"


# instance fields
.field private jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

.field private jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

.field private loadListener:Lcom/meishu/sdk/core/ad/recycler/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;Lcom/meishu/sdk/core/ad/recycler/a;Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

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
    const-string v0, "JDFeedAdListenerImpl"

    .line 26
    .line 27
    const-string v1, "send onADClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public onExposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->a(Lcom/meishu/sdk/core/domain/SdkAdInfo;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public onLoadFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onNoAD, code: "

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
    const-string v1, ", msg: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "JDFeedAdListenerImpl"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/meishu/sdk/platform/jd/JDPlatformError;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/jd/JDPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onLoadSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getFeedAd()Lcom/jd/ad/sdk/feed/JADFeed;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getImp()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getFeedAd()Lcom/jd/ad/sdk/feed/JADFeed;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/jd/ad/sdk/feed/JADFeed;->getExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/jd/ad/sdk/feed/JADFeed;->getExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/jd/ad/sdk/dl/model/IJADExtra;->getPrice()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 77
    .line 78
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public onRenderFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2, p1}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdRenderFailed()V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "onAdRenderFailed, code: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", msg: "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "JDFeedAdListenerImpl"

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/meishu/sdk/platform/jd/JDPlatformError;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAdWrapper:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/jd/JDPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->jdFeedAd:Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;->loadListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
