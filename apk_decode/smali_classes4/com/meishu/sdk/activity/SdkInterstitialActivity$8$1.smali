.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

.field public final synthetic val$startShakeTime:J


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->val$startShakeTime:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1700(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p2}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 51
    .line 52
    .line 53
    :cond_0
    if-eqz p4, :cond_1

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-wide v2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->val$startShakeTime:J

    .line 60
    .line 61
    sub-long/2addr v0, v2

    .line 62
    invoke-virtual {p4, v0, v1}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTotalTurnTime(J)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1800()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setShakeResult(Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    :try_start_0
    iget-object p4, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 86
    .line 87
    iget-object p4, p4, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 88
    .line 89
    invoke-static {p4}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1000(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-eqz p4, :cond_2

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    invoke-virtual {p4, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAdClosed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p4

    .line 104
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    const/16 p4, 0x32

    .line 108
    .line 109
    if-lt p3, p4, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    const/4 p1, 0x0

    .line 113
    :goto_1
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1000(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$8;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 158
    .line 159
    .line 160
    :cond_4
    return-void
.end method
