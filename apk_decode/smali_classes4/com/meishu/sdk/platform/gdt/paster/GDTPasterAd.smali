.class public Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/paster/PasterAd;


# instance fields
.field private interactionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

.field private nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "GDT"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method public getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->interactionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTouchData()Lcom/meishu/sdk/core/ad/TouchData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mute()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public replay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->startVideo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resumeVideo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->interactionListener:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreparedListener(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAd;->nativeUnifiedADData:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->startVideo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unmute()V
    .locals 0

    return-void
.end method
