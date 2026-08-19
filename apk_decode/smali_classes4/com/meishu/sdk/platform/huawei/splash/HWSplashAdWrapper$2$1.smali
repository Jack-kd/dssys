.class Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;
.super Lcom/huawei/hms/ads/splash/SplashAdDisplayListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/ads/splash/SplashAdDisplayListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string v0, "HWSplashAdWrapper"

    .line 30
    .line 31
    const-string v1, "send onAdClicked"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 106
    .line 107
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    .line 119
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 132
    .line 133
    .line 134
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;)V

    .line 141
    .line 142
    .line 143
    const-wide/16 v2, 0x5dc

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2, v3}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V

    .line 146
    .line 147
    .line 148
    return-void
.end method
