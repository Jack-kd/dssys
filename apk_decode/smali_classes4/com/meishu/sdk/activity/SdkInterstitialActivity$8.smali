.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->startShake(Lcom/meishu/sdk/meishu_ad/interstitial/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

.field public final synthetic val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->c(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1602(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index2()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 32
    .line 33
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->b()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1702(Lcom/meishu/sdk/activity/SdkInterstitialActivity;I)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/h;->b(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v8, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    iget-object v10, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 75
    .line 76
    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v0, v2, v8, v9, v10}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Ljava/lang/String;JLcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    int-to-long v8, v0

    .line 94
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_count()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v10, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 101
    .line 102
    invoke-static {v10}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1700(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    iget-object v11, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 107
    .line 108
    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    move-wide v12, v6

    .line 113
    move-wide v6, v8

    .line 114
    move v9, v10

    .line 115
    move v10, v11

    .line 116
    new-instance v11, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;

    .line 117
    .line 118
    invoke-direct {v11, p0, v12, v13}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;J)V

    .line 119
    .line 120
    .line 121
    move v8, v0

    .line 122
    invoke-virtual/range {v2 .. v11}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(IIIJIIILcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    return-void

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    return-void
.end method
