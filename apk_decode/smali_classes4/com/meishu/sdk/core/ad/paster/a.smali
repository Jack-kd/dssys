.class public Lcom/meishu/sdk/core/ad/paster/a;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/paster/PasterAd;


# instance fields
.field public a:Lcom/meishu/sdk/meishu_ad/nativ/f;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getCurrentPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    int-to-long v0, v0

    .line 20
    return-wide v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    return-wide v0
.end method

.method public getData()Lcom/meishu/sdk/core/utils/ResultBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/ResultBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/ResultBean;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "MS"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    int-to-long v0, v0

    .line 20
    return-wide v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    return-wide v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const-wide/32 v0, 0x1a8ce0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 14
    .line 15
    int-to-long v0, v0

    .line 16
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-object v4, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sub-long/2addr v2, v4

    .line 27
    cmp-long v0, v2, v0

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v0, 0x1

    .line 38
    return v0
.end method

.method public mute()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public replay()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/meishu/sdk/core/ad/paster/a$a;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/ad/paster/a$a;-><init>(Lcom/meishu/sdk/core/ad/paster/a;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x12c

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setOnPreparedListener(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/paster/a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
