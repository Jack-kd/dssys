.class public Lcom/meishu/sdk/meishu_ad/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/e;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/e;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/d;->c:Lcom/meishu/sdk/meishu_ad/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/d;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/d;->b:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError()V
    .locals 0

    return-void
.end method

.method public onVideoLoaded()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d;->c:Lcom/meishu/sdk/meishu_ad/e;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/e;->d:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 6
    .line 7
    iget-object v5, v0, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/meishu/sdk/meishu_ad/e;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    iget-object v7, v0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 12
    .line 13
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/d;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static/range {v1 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;[BLcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;ZLcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d;->c:Lcom/meishu/sdk/meishu_ad/e;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/e;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 25
    .line 26
    iput-object v2, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/e;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/ad/splash/c;->setWidth(Ljava/lang/Integer;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d;->c:Lcom/meishu/sdk/meishu_ad/e;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/e;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/d;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/splash/c;->setHeight(Ljava/lang/Integer;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    int-to-long v0, v0

    .line 83
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/meishu/sdk/core/MSAdConfig;->getSplashShowTime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d;->c:Lcom/meishu/sdk/meishu_ad/e;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/e;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 98
    .line 99
    iget v2, v2, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    if-eq v2, v3, :cond_1

    .line 103
    .line 104
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d;->b:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 105
    .line 106
    long-to-int v0, v0

    .line 107
    invoke-virtual {v2, v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setTotalTime(I)V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d;->c:Lcom/meishu/sdk/meishu_ad/e;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/e;->f:Lcom/meishu/sdk/meishu_ad/v;

    .line 113
    .line 114
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/v;->j:Z

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void
.end method

.method public onVideoPause()V
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
