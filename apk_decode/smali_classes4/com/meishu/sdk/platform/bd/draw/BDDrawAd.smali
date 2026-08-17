.class public Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;
.super Lcom/meishu/sdk/core/ad/draw/DrawAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/core/loader/d;

.field private hasExposed:Z

.field private loaderListener:Lcom/meishu/sdk/core/ad/draw/a;

.field private mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

.field private nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/d;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/meishu/sdk/core/ad/draw/a;)V
    .locals 1

    .line 1
    const-string v0, "BAIDU"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->adWrapper:Lcom/meishu/sdk/core/loader/d;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->loaderListener:Lcom/meishu/sdk/core/ad/draw/a;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1200(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/baidu/mobads/sdk/api/NativeResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->hasExposed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1402(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->hasExposed:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$1500(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->loaderListener:Lcom/meishu/sdk/core/ad/draw/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/draw/DrawAd;->listener:Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 10
    .line 11
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->getCurrentPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isShowEndFrame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->isShowEndFrame()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->nativeResponse:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 6
    .line 7
    check-cast v1, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setAdData(Lcom/baidu/mobads/sdk/api/AbstractData;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->play()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->resume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCanClickVideo(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setCanClickVideo(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setVideoMute(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setUseDownloadFrame(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setShowProgress(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 28
    .line 29
    const/high16 v2, -0x1000000

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setProgressBackgroundColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    invoke-virtual {v0, v2}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setProgressBarColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setProgressHeightInDp(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 46
    .line 47
    new-instance v1, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$1;-><init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setFeedPortraitListener(Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    .line 57
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroid/app/Activity;

    .line 70
    .line 71
    new-instance v0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd$2;-><init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;->mFeedVideoView:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
