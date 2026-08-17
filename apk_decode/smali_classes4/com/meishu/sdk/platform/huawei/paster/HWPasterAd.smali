.class public Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/paster/PasterAd;


# instance fields
.field private adWrapper:Lcom/meishu/sdk/core/loader/d;

.field private instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/huawei/hms/ads/instreamad/InstreamView;)V
    .locals 1

    .line 1
    const-string v0, "HW"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->mute()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->play()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;->instreamView:Lcom/huawei/hms/ads/instreamad/InstreamView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/ads/instreamad/InstreamView;->unmute()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
