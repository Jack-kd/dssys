.class public Lcom/meishu/sdk/meishu_ad/splash/h;
.super Lcom/meishu/sdk/core/webview/listener/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/splash/l$b;

.field public final synthetic f:Lcom/meishu/sdk/meishu_ad/splash/l;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/splash/l;Landroid/content/Context;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/l$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->f:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->d:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->e:Lcom/meishu/sdk/meishu_ad/splash/l$b;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/meishu/sdk/core/webview/listener/b;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public clickAppDownloadInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->e:Lcom/meishu/sdk/meishu_ad/splash/l$b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/meishu/sdk/meishu_ad/g0;

    .line 7
    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/g0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 9
    .line 10
    check-cast p1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 11
    .line 12
    iget-boolean p1, p1, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    return p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/splash/e;->b(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-float v2, v2

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 23
    .line 24
    div-float/2addr v2, v0

    .line 25
    float-to-int v0, v2

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getSkipBtnLocation()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/meishu/sdk/meishu_ad/splash/e;->a(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, 0x5

    .line 42
    .line 43
    add-int/2addr v2, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v2, v0

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-static {v3}, Lcom/meishu/sdk/meishu_ad/splash/e;->a(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .line 66
    div-float/2addr v1, v3

    .line 67
    float-to-int v1, v1

    .line 68
    :goto_2
    invoke-static {v2, v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->makeAdConfig(III)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/y0;->m(Landroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-float v2, v2

    .line 79
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 80
    .line 81
    .line 82
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    float-to-int v1, v1

    .line 84
    goto :goto_3

    .line 85
    :catch_0
    const/4 v1, 0x0

    .line 86
    :goto_3
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/meishu/sdk/core/utils/h;->a()V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->d:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 95
    .line 96
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {v3, v2}, Lcom/meishu/sdk/core/utils/h;->a(II)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/h;->d(I)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/h;->e(I)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {v1, v3, v2, v0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;->make(IZZLcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean$AdConfig;)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetDeviceInfoResBean;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v1, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0
.end method

.method public onWebClicked(Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->d:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/TouchData;->getTouchPosition()Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->d:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/ad/TouchData;->setTouchPosition(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    new-instance v1, Ljava/sql/Timestamp;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getMsec()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setDownTime(Ljava/sql/Timestamp;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getDown_x()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    float-to-int v1, v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setDownX(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getDown_y()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    float-to-int v1, v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setDownY(I)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Ljava/sql/Timestamp;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getUp_msec()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setUpTime(Ljava/sql/Timestamp;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getUp_x()F

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    float-to-int v1, v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setUpX(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->a:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getUp_y()F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/m;->a(Landroid/content/Context;F)F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    float-to-int v1, v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setUpY(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->e:Lcom/meishu/sdk/meishu_ad/splash/l$b;

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/ClickTempParam;->getAct_type()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    check-cast v0, Lcom/meishu/sdk/meishu_ad/g0;

    .line 123
    .line 124
    :try_start_1
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/g0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 125
    .line 126
    check-cast v1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 127
    .line 128
    iget-boolean v1, v1, Lcom/meishu/sdk/platform/ms/splash/g;->e:Z

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/g0;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    .line 140
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/g0;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 141
    .line 142
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_1

    .line 149
    .line 150
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/g0;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catch_1
    move-exception p1

    .line 161
    goto :goto_5

    .line 162
    :cond_1
    :goto_3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/g0;->a:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    if-eqz v1, :cond_2

    .line 166
    .line 167
    check-cast v1, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 168
    .line 169
    iput-boolean v2, v1, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 170
    .line 171
    :cond_2
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/g0;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 174
    .line 175
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/g0;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 179
    .line 180
    invoke-static {p1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 181
    .line 182
    .line 183
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/g0;->c:Lcom/meishu/sdk/meishu_ad/v;

    .line 184
    .line 185
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 186
    .line 187
    if-eqz v0, :cond_3

    .line 188
    .line 189
    sget v1, Lcom/meishu/sdk/R$id;->ms_skipView:I

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_3
    const/4 v0, 0x0

    .line 199
    :goto_4
    invoke-static {p1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    :cond_4
    :goto_6
    return-void
.end method

.method public onWebReady(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onWebReady:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "l"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->f:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/l;->b:Lcom/meishu/sdk/core/webview/s;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/s;->d:Lcom/meishu/sdk/core/webview/b;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget v0, v0, Lcom/meishu/sdk/core/webview/b;->f:I

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-ne v0, v2, :cond_0

    .line 37
    .line 38
    const-string p1, "onWebReady timeOut return"

    .line 39
    .line 40
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->f:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/splash/l;->a()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->f:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/splash/l;->a()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->f:Lcom/meishu/sdk/meishu_ad/splash/l;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/splash/h;->d:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/meishu/sdk/meishu_ad/splash/i;

    .line 65
    .line 66
    invoke-direct {v1, p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/i;-><init>(Lcom/meishu/sdk/meishu_ad/splash/l;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
