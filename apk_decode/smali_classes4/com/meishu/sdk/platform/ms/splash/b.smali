.class public Lcom/meishu/sdk/platform/ms/splash/b;
.super Lcom/meishu/sdk/core/ad/splash/c;
.source "SourceFile"


# instance fields
.field public a:Lcom/meishu/sdk/platform/ms/splash/a;

.field public b:Lcom/meishu/sdk/meishu_ad/splash/b;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/b;Lcom/meishu/sdk/platform/ms/splash/a;Lcom/meishu/sdk/platform/ms/splash/g;Z)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    .line 2
    const-string p4, "MS"

    .line 3
    .line 4
    invoke-direct {p0, p3, p4}, Lcom/meishu/sdk/core/ad/splash/c;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 10
    .line 11
    instance-of p2, p1, Lcom/meishu/sdk/core/ad/splash/c;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/splash/c;->getWidth()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/core/ad/splash/c;->setWidth(Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/splash/c;->getHeight()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->setHeight(Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_4

    .line 12
    .line 13
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->g:Z

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    :cond_1
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d()V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/b;->c()V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void

    .line 50
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ms/splash/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public c()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    :try_start_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    instance-of v4, v3, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_1
    move-object v5, v3

    .line 29
    check-cast v5, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v4, v5, :cond_1

    .line 36
    .line 37
    move-object v5, v3

    .line 38
    check-cast v5, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 39
    .line 40
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    instance-of v6, v5, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    check-cast v5, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/meishu/sdk/core/view/gif/GifImageView;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_4

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_5

    .line 85
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_5
    return-void
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
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 35
    .line 36
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 48
    .line 49
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 61
    .line 62
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 74
    .line 75
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 87
    .line 88
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setInteractionType(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 100
    .line 101
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 113
    .line 114
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 129
    .line 130
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 131
    .line 132
    check-cast v2, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ""

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 156
    .line 157
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 167
    .line 168
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 169
    .line 170
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 182
    .line 183
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 184
    .line 185
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :catchall_0
    move-exception v1

    .line 194
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :goto_0
    const-string v1, "MS"

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-object v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const-wide/32 v0, 0x1a8ce0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 27
    .line 28
    check-cast v4, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sub-long/2addr v2, v4

    .line 35
    cmp-long v0, v2, v0

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    return v0
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLossUrl()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public sendWinNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->a:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWinUrl()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/a;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSplashFinishingTouchListener(Lcom/meishu/sdk/core/ad/splash/b;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/splash/c;->setSplashFinishingTouchListener(Lcom/meishu/sdk/core/ad/splash/b;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v2, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    move v3, v0

    .line 31
    :goto_1
    move-object v4, v2

    .line 32
    check-cast v4, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    move-object v4, v2

    .line 41
    check-cast v4, Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    instance-of v5, v4, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 48
    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    check-cast v4, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setCanClear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    const v0, 0x895442

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "adContainer \u4e3a\u7a7a"

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    :try_start_2
    new-instance v2, Lcom/google/gson/Gson;

    .line 35
    .line 36
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v4, "stepNum"

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-string v4, "msg"

    .line 54
    .line 55
    const-string v5, "showAd invoke"

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 61
    .line 62
    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    instance-of v4, v4, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    const-string v4, "creativeType"

    .line 71
    .line 72
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 73
    .line 74
    invoke-interface {v5}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception v2

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 95
    .line 96
    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v4, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :goto_2
    iget-boolean v2, p0, Lcom/meishu/sdk/platform/ms/splash/b;->c:Z

    .line 118
    .line 119
    if-nez v2, :cond_3

    .line 120
    .line 121
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 122
    .line 123
    instance-of v3, v2, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 124
    .line 125
    if-eqz v3, :cond_2

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 131
    .line 132
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/splash/c;->showAd(Landroid/view/ViewGroup;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 138
    .line 139
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 151
    .line 152
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 161
    .line 162
    check-cast v2, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    invoke-static {p1, v0, v2, v3}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 171
    .line 172
    .line 173
    iput-boolean v1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_2
    :try_start_4
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v1, "nativeAd \u4e0d\u662fSplashAdImpl\u5b9e\u4f8b"

    .line 187
    .line 188
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :catch_2
    move-exception p1

    .line 193
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_3
    :try_start_6
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 198
    .line 199
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const-string v1, "\u91cd\u590d\u8c03\u7528showAd"

    .line 210
    .line 211
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :catch_3
    move-exception p1

    .line 216
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :goto_3
    :try_start_8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 221
    .line 222
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/splash/b;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const v2, 0x895441

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v2, v1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :catch_4
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    :goto_5
    return-void
.end method

.method public splashAnimationFinish()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/b;->b:Lcom/meishu/sdk/meishu_ad/splash/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->h:Z

    .line 13
    .line 14
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->e:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 15
    .line 16
    sget v2, Lcom/meishu/sdk/R$id;->ms_click_eye_close:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v3, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/16 v4, 0x8

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/meishu/sdk/platform/ms/splash/b$a;

    .line 40
    .line 41
    invoke-direct {v3, p0, v0}, Lcom/meishu/sdk/platform/ms/splash/b$a;-><init>(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/b$b;

    .line 48
    .line 49
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/ms/splash/b$b;-><init>(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/b$c;

    .line 65
    .line 66
    invoke-direct {v2, p0, v0}, Lcom/meishu/sdk/platform/ms/splash/b$c;-><init>(Lcom/meishu/sdk/platform/ms/splash/b;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v3, 0x1388

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    return-void

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
