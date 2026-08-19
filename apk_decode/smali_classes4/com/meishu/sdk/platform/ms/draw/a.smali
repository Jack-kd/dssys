.class public Lcom/meishu/sdk/platform/ms/draw/a;
.super Lcom/meishu/sdk/core/ad/draw/DrawAd;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/c;


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/AdSlot;

.field public b:Landroid/view/View;

.field public c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/draw/DrawAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/meishu/sdk/core/ad/AdSlot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getData()Lcom/meishu/sdk/core/utils/ResultBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/ResultBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/ResultBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 7
    .line 8
    instance-of v2, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 33
    .line 34
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 44
    .line 45
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 55
    .line 56
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 66
    .line 67
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 77
    .line 78
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 88
    .line 89
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 104
    .line 105
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ""

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 127
    .line 128
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 138
    .line 139
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v1, "MS"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 154
    .line 155
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 156
    .line 157
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V

    .line 162
    .line 163
    .line 164
    :cond_0
    return-object v0
.end method

.method public getDrawType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    const-wide/32 v0, 0x1a8ce0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 16
    .line 17
    int-to-long v0, v0

    .line 18
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 23
    .line 24
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    sub-long/2addr v2, v4

    .line 31
    cmp-long v0, v2, v0

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    return v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    return v0
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->pause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->pause()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->resume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 19
    .line 20
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->resume()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/draw/a;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLossUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public sendWinNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/draw/a;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWinUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/draw/a;->c:Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz v1, :cond_3

    .line 8
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 9
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->showAd(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 10
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v0

    invoke-static {p2, p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 11
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz v1, :cond_3

    .line 18
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    instance-of v1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v1, :cond_4

    .line 20
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/a;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    return-void
.end method
