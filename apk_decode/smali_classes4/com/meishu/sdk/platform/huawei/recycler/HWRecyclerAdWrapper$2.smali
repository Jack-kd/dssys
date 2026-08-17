.class Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/nativead/NativeAd$NativeAdLoadedListener;


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
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->val$hwAdDatas:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onNativeAdLoaded(Lcom/huawei/hms/ads/nativead/NativeAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$002(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Lcom/huawei/hms/ads/nativead/NativeAd;)Lcom/huawei/hms/ads/nativead/NativeAd;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/huawei/hms/ads/nativead/NativeAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/huawei/hms/ads/BiddingInfo;->getPrice()Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/high16 v1, 0x42c80000    # 100.0f

    .line 31
    .line 32
    mul-float/2addr v0, v1

    .line 33
    float-to-int v0, v0

    .line 34
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    const-string v0, "createType="

    .line 53
    .line 54
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/huawei/hms/ads/nativead/NativeAd;->getCreativeType()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "HWRecyclerAdWrapper"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/huawei/hms/ads/nativead/NativeAd;->getCreativeType()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/16 v1, 0x63

    .line 79
    .line 80
    if-ne v0, v1, :cond_1

    .line 81
    .line 82
    new-instance v0, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/huawei/recycler/HWExpressAd;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/huawei/hms/ads/nativead/NativeView;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;)Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v1, v2}, Lcom/huawei/hms/ads/nativead/NativeView;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2$1;

    .line 101
    .line 102
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2$1;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/nativead/NativeView;->setAdFeedbackListener(Lcom/huawei/hms/ads/AdFeedbackListener;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2$2;

    .line 109
    .line 110
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2$2;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/huawei/hms/ads/nativead/NativeView;->setAdCloseBtnClickListener(Lcom/huawei/hms/ads/AdCloseBtnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lcom/huawei/hms/ads/nativead/NativeView;->setNativeAd(Lcom/huawei/hms/ads/nativead/NativeAd;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->val$hwAdDatas:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    new-instance v0, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;

    .line 131
    .line 132
    invoke-direct {v0, v1, p1}, Lcom/meishu/sdk/platform/huawei/recycler/HWNativeAdData;-><init>(Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper;Lcom/huawei/hms/ads/nativead/NativeAd;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/recycler/HWRecyclerAdWrapper$2;->val$hwAdDatas:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_1
    return-void
.end method
