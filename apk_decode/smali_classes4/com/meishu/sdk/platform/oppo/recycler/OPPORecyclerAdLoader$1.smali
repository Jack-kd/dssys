.class Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/INativeTempletAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->loadTemplate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

.field public final synthetic val$adList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 17
    .line 18
    check-cast v3, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->getNativeTemplateAdView()Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-ne v4, p1, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 27
    .line 28
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v4, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->access$100()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "send onAdClick"

    .line 55
    .line 56
    invoke-static {v4, v5}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5, v3}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4, v5}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v4}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_0

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    return-void
.end method

.method public onAdClose(Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/heytap/msp/mobad/api/params/NativeAdError;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "onRenderFailed "

    .line 6
    .line 7
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p1, Lcom/heytap/msp/mobad/api/params/NativeAdError;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p1, Lcom/heytap/msp/mobad/api/params/NativeAdError;->code:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v1, p1, Lcom/heytap/msp/mobad/api/params/NativeAdError;->code:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p1, p1, Lcom/heytap/msp/mobad/api/params/NativeAdError;->msg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onAdSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 16
    .line 17
    new-instance v1, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;-><init>(Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_1
    if-ge v1, v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 65
    .line 66
    check-cast v2, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->getNativeTemplateAdView()Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;->render()V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    return-void
.end method

.method public onRenderFailed(Lcom/heytap/msp/mobad/api/params/NativeAdError;Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "onRenderFailed "

    .line 6
    .line 7
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lcom/heytap/msp/mobad/api/params/NativeAdError;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget p1, p1, Lcom/heytap/msp/mobad/api/params/NativeAdError;->code:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public onRenderSuccess(Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 17
    .line 18
    check-cast v3, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/oppo/recycler/OPPOTemplateRecyclerAd;->getNativeTemplateAdView()Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-ne v4, p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/heytap/msp/mobad/api/params/INativeTempletAdView;->getAdView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader$1;->val$adList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
