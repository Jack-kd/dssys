.class Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;
.super Lcom/huawei/hms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->loadNativeAD(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

.field public final synthetic val$hwAdDatas:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/huawei/hms/ads/AdListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/ads/AdListener;->onAdClicked()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onAdClicked: "

    .line 5
    .line 6
    const-string v1, "HWRecyclerAdWrapper"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const-string v2, "send onADClicked"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getCreativeType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v4, 0x63

    .line 33
    .line 34
    if-ne v0, v4, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    .line 80
    .line 81
    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_2

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    .line 148
    .line 149
    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_3

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .line 167
    .line 168
    :cond_3
    return-void

    .line 169
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/ads/AdListener;->onAdClosed()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HWRecyclerAdWrapper"

    .line 5
    .line 6
    const-string v1, "onAdClosed: "

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/huawei/hms/ads/nativead/NativeAd;->getCreativeType()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x63

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public onAdFailed(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailed: "

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HWRecyclerAdWrapper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "onAdFailed"

    .line 32
    .line 33
    invoke-direct {v0, v2, p1, v1}, Lcom/meishu/sdk/platform/huawei/HWPlatformError;-><init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/ads/AdListener;->onAdImpression()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "HWRecyclerAdWrapper"

    .line 21
    .line 22
    const-string v1, "onAdImpression: "

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$102(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Z)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 42
    .line 43
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;->getRecylcerAdInteractionListener()Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$1;->val$hwAdDatas:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
