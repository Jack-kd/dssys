.class Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jd/ad/sdk/nativead/JADNativeLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->loadNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

.field public final synthetic val$jadNative:Lcom/jd/ad/sdk/nativead/JADNative;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;Lcom/jd/ad/sdk/nativead/JADNative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->val$jadNative:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
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
    const-string v1, "JDFeedAdWrapper"

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onLoadSuccess()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->val$jadNative:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jd/ad/sdk/nativead/JADNative;->getDataList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gtz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/meishu/sdk/platform/jd/JDPlatformError;

    .line 14
    .line 15
    const-string v2, "list size is "

    .line 16
    .line 17
    invoke-static {v2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v1, v0, v2, v3}, Lcom/meishu/sdk/platform/jd/JDPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->val$jadNative:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/jd/ad/sdk/nativead/JADNative;->getJADExtra()Lcom/jd/ad/sdk/dl/model/IJADExtra;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/jd/ad/sdk/dl/model/IJADExtra;->getPrice()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/jd/ad/sdk/dl/addata/JADMaterialData;

    .line 99
    .line 100
    new-instance v2, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 103
    .line 104
    invoke-direct {v2, v3}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;-><init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->val$jadNative:Lcom/jd/ad/sdk/nativead/JADNative;

    .line 108
    .line 109
    invoke-virtual {v2, v0, v3}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->setFeedAd(Lcom/jd/ad/sdk/dl/addata/JADMaterialData;Lcom/jd/ad/sdk/nativead/JADNative;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->access$000(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 122
    .line 123
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->access$100(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 133
    .line 134
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
