.class public Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;
.super Lcom/anythink/network/baidu/BaiduATNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;
    }
.end annotation


# instance fields
.field private j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

.field private k:Landroid/content/Context;

.field l:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

.field m:Lcom/baidu/mobads/sdk/api/RequestParameters;

.field n:Z

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/BaiduNativeManager;Lcom/baidu/mobads/sdk/api/RequestParameters;ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/mobads/sdk/api/BaiduNativeManager;",
            "Lcom/baidu/mobads/sdk/api/RequestParameters;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/baidu/BaiduATNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->k:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->l:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->m:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->n:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->o:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->k:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->o:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->stop()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 6
    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    new-instance p1, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setAdData(Lcom/baidu/mobads/sdk/api/AbstractData;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->h:Ljava/lang/Boolean;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setVideoMute(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lcom/anythink/core/api/ATSDKGlobalSetting;->isGlobalMute:Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setVideoMute(Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 51
    .line 52
    new-instance v0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$b;-><init>(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setFeedPortraitListener(Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method public getVideoProgress()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

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
    long-to-double v0, v0

    .line 10
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    div-double/2addr v0, v2

    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    return-wide v0
.end method

.method public load(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->l:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->m:Lcom/baidu/mobads/sdk/api/RequestParameters;

    .line 4
    .line 5
    new-instance v2, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$a;-><init>(Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd$LoadCallbackListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadPortraitVideoAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->pauseVideo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2, p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setClickViewList(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 33
    .line 34
    invoke-super {p0, p1, p2}, Lcom/anythink/network/baidu/BaiduATNativeAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/anythink/network/baidu/BaiduATNativeAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->n:Z

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->play()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public resumeVideo()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->resumeVideo()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->resume()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/anythink/network/baidu/BaiduATNativeAd;->setVideoMute(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativePortraitVideoAd;->j:Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->setVideoMute(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
