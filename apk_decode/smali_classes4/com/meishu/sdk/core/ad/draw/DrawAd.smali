.class public Lcom/meishu/sdk/core/ad/draw/DrawAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/draw/IDrawAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    }
.end annotation


# static fields
.field public static final DRAW_AD_TYPE_EXPRESS:I = 0x2

.field public static final DRAW_AD_TYPE_NATIVE:I = 0x1


# instance fields
.field private adWrapper:Lcom/meishu/sdk/core/loader/d;

.field public listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowEndFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setCanClickVideo(Z)V
    .locals 0

    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 0

    return-void
.end method

.method public setOnDrawVideoListener(Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .locals 0

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 0

    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
