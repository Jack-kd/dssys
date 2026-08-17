.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->onSuccess(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

.field public final synthetic val$mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->val$mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 0

    return-void
.end method

.method public onVideoError()V
    .locals 2

    .line 1
    const-string v0, "SdkInterstitialActivity"

    .line 2
    .line 3
    const-string v1, "onVideoError"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoLoaded()V
    .locals 3

    .line 1
    const-string v0, "SdkInterstitialActivity"

    .line 2
    .line 3
    const-string v1, "onADLoaded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->this$1:Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->i:J

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;->val$mediaView:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 19
    .line 20
    new-instance v1, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1$1;-><init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity$7$1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onVideoMute()V
    .locals 0

    return-void
.end method

.method public onVideoOneHalf()V
    .locals 0

    return-void
.end method

.method public onVideoOneQuarter()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReplay()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method

.method public onVideoThreeQuarter()V
    .locals 0

    return-void
.end method

.method public onVideoUnmute()V
    .locals 0

    return-void
.end method
