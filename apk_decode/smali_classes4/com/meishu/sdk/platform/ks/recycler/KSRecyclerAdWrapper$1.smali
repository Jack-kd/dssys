.class Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->loadNativeAd()V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$300(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

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

.method public onNativeAdLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$002(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "KSRecyclerAdWrapper"

    .line 9
    .line 10
    const-string v0, "onNativeAdLoad ksNativeAdList is null"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/kwad/sdk/api/KsNativeAd;

    .line 63
    .line 64
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget-object v3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;->access$100(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 84
    .line 85
    invoke-direct {v2, v1, v3}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;-><init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 110
    .line 111
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    return-void
.end method
