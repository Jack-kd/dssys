.class Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->loadExpressAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KSRecyclerAdWrapper"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/meishu/sdk/platform/ks/KSPlatformError;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$500(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$400(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$602(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/kwad/sdk/api/KsFeedAd;

    .line 43
    .line 44
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsFeedAd;->getECPM()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$700(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 64
    .line 65
    invoke-direct {v2, v1, v3}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;-><init>(Lcom/kwad/sdk/api/KsFeedAd;Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 74
    .line 75
    invoke-direct {v3, v4, v2}, Lcom/meishu/sdk/platform/ks/recycler/KSExpressListener;-><init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;Lcom/meishu/sdk/platform/ks/recycler/KSExpressFeedAd;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v3}, Lcom/kwad/sdk/api/KsFeedAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 91
    .line 92
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    :goto_1
    const-string p1, "KSRecyclerAdWrapper"

    .line 108
    .line 109
    const-string v0, "onNativeAdLoad KSExpressAd is null"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 129
    .line 130
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void

    .line 134
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    return-void
.end method
