.class public Lcom/meishu/sdk/platform/ms/draw/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/draw/f;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/f;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADExposure()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/draw/g;->c:Z

    .line 6
    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 10
    .line 11
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 26
    .line 27
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/ms/draw/g;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    const-string v1, "MeishuDrawAdWrapper"

    .line 62
    .line 63
    const-string v2, "send onADExposure"

    .line 64
    .line 65
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    array-length v1, v0

    .line 69
    const/4 v2, 0x0

    .line 70
    :goto_0
    if-ge v2, v1, :cond_1

    .line 71
    .line 72
    aget-object v3, v0, v2

    .line 73
    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_0

    .line 79
    .line 80
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 81
    .line 82
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 85
    .line 86
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->DRAW:Lcom/meishu/sdk/core/ad/AdType;

    .line 93
    .line 94
    invoke-static {v3, v4, v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v4, v3}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 141
    .line 142
    .line 143
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 162
    .line 163
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 164
    .line 165
    .line 166
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 169
    .line 170
    const/4 v1, 0x1

    .line 171
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/draw/g;->a(Lcom/meishu/sdk/platform/ms/draw/g;Z)Z

    .line 172
    .line 173
    .line 174
    :cond_4
    return-void
.end method

.method public onADLoaded(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 52
    .line 53
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    instance-of v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    iput-wide v2, v1, Lcom/meishu/sdk/platform/ms/draw/g;->g:J

    .line 105
    .line 106
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 113
    .line 114
    iget-object v2, v2, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 115
    .line 116
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget v3, Lcom/meishu/sdk/R$layout;->ms_draw_ad_layout:I

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget v3, Lcom/meishu/sdk/R$id;->ms_draw_rootView:I

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;

    .line 134
    .line 135
    new-instance v3, Lcom/meishu/sdk/core/view/DownloadView;

    .line 136
    .line 137
    invoke-direct {v3}, Lcom/meishu/sdk/core/view/DownloadView;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 141
    .line 142
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 143
    .line 144
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 145
    .line 146
    check-cast v5, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 147
    .line 148
    invoke-virtual {v3, v2, v5}, Lcom/meishu/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;)V

    .line 149
    .line 150
    .line 151
    sget v3, Lcom/meishu/sdk/R$id;->ms_draw_ad_video:I

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Landroid/widget/FrameLayout;

    .line 158
    .line 159
    new-instance v5, Lcom/meishu/sdk/core/bquery/i;

    .line 160
    .line 161
    invoke-direct {v5, v2}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    sget v6, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_logo:I

    .line 165
    .line 166
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Landroid/widget/ImageView;

    .line 171
    .line 172
    sget v6, Lcom/meishu/sdk/R$id;->draw_ad_detail_title:I

    .line 173
    .line 174
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Landroid/widget/TextView;

    .line 179
    .line 180
    sget v7, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_desc:I

    .line 181
    .line 182
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    check-cast v7, Landroid/widget/TextView;

    .line 187
    .line 188
    sget v8, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_btn:I

    .line 189
    .line 190
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Landroid/widget/TextView;

    .line 195
    .line 196
    sget v9, Lcom/meishu/sdk/R$id;->ms_draw_close_button:I

    .line 197
    .line 198
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    check-cast v9, Landroid/widget/ImageView;

    .line 203
    .line 204
    iget-object v10, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 205
    .line 206
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 207
    .line 208
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 209
    .line 210
    check-cast v10, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 211
    .line 212
    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-nez v10, :cond_3

    .line 221
    .line 222
    sget v10, Lcom/meishu/sdk/R$id;->ms_draw_ad_detail_logo:I

    .line 223
    .line 224
    invoke-virtual {v5, v10}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    check-cast v10, Lcom/meishu/sdk/core/bquery/i;

    .line 229
    .line 230
    iget-object v11, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 231
    .line 232
    iget-object v11, v11, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 233
    .line 234
    iget-object v11, v11, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 235
    .line 236
    check-cast v11, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 237
    .line 238
    iget-object v11, v11, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v10, v11, v0}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 241
    .line 242
    .line 243
    :cond_3
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    if-eqz v10, :cond_4

    .line 248
    .line 249
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    invoke-virtual {v10}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    .line 254
    .line 255
    .line 256
    move-result v10

    .line 257
    if-nez v10, :cond_4

    .line 258
    .line 259
    sget v10, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 260
    .line 261
    invoke-virtual {v5, v10}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    check-cast v5, Lcom/meishu/sdk/core/bquery/i;

    .line 266
    .line 267
    const/16 v10, 0x8

    .line 268
    .line 269
    invoke-virtual {v5, v10}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_4
    iget-object v10, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 274
    .line 275
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 276
    .line 277
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 278
    .line 279
    check-cast v10, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 280
    .line 281
    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    if-nez v10, :cond_5

    .line 290
    .line 291
    sget v10, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 292
    .line 293
    invoke-virtual {v5, v10}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, Lcom/meishu/sdk/core/bquery/i;

    .line 298
    .line 299
    iget-object v10, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 300
    .line 301
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 302
    .line 303
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 304
    .line 305
    check-cast v10, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 306
    .line 307
    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    invoke-virtual {v5, v10, v0}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 312
    .line 313
    .line 314
    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 315
    .line 316
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 317
    .line 318
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 319
    .line 320
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 321
    .line 322
    iget-object v5, v5, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    .line 326
    .line 327
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 328
    .line 329
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 330
    .line 331
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 332
    .line 333
    check-cast v5, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 334
    .line 335
    iget-object v5, v5, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .line 339
    .line 340
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 341
    .line 342
    iget-object v5, v5, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 343
    .line 344
    new-instance v6, Lcom/meishu/sdk/platform/ms/draw/a;

    .line 345
    .line 346
    iget-object v7, v5, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 347
    .line 348
    invoke-direct {v6, v7, v1}, Lcom/meishu/sdk/platform/ms/draw/a;-><init>(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/view/View;)V

    .line 349
    .line 350
    .line 351
    iput-object v6, v5, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 352
    .line 353
    new-instance v5, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 354
    .line 355
    iget-object v6, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 356
    .line 357
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 358
    .line 359
    iget-object v6, v6, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 360
    .line 361
    invoke-direct {v5, v6}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    new-instance v6, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 365
    .line 366
    invoke-direct {v6, p1}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v6}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    if-eqz v1, :cond_9

    .line 376
    .line 377
    new-instance v6, Lcom/meishu/sdk/platform/ms/recycler/b;

    .line 378
    .line 379
    iget-object v7, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 380
    .line 381
    iget-object v7, v7, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 382
    .line 383
    invoke-virtual {v7}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    iget-object v7, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 387
    .line 388
    iget-object v7, v7, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 389
    .line 390
    iget-object v10, v7, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 391
    .line 392
    check-cast v10, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 393
    .line 394
    iget-object v7, v7, Lcom/meishu/sdk/platform/ms/draw/g;->h:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 395
    .line 396
    invoke-direct {v6, v10, v7}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {p1, v3, v4, v6}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 400
    .line 401
    .line 402
    instance-of v3, v1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 403
    .line 404
    const/4 v4, 0x1

    .line 405
    if-eqz v3, :cond_6

    .line 406
    .line 407
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 408
    .line 409
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 410
    .line 411
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 420
    .line 421
    .line 422
    move-object v3, v1

    .line 423
    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 424
    .line 425
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRecycler(Z)V

    .line 426
    .line 427
    .line 428
    :cond_6
    new-instance v3, Lcom/meishu/sdk/platform/ms/draw/b;

    .line 429
    .line 430
    invoke-direct {v3, p0, v1}, Lcom/meishu/sdk/platform/ms/draw/b;-><init>(Lcom/meishu/sdk/platform/ms/draw/f$a;Landroid/view/View;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView;->setOnVisibilityChangeListener(Lcom/meishu/sdk/meishu_ad/draw/MeishuDrawRootView$a;)V

    .line 434
    .line 435
    .line 436
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 437
    .line 438
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 439
    .line 440
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 441
    .line 442
    invoke-virtual {v1, v5}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 443
    .line 444
    .line 445
    new-instance v1, Lcom/meishu/sdk/platform/ms/draw/c;

    .line 446
    .line 447
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/draw/c;-><init>(Lcom/meishu/sdk/platform/ms/draw/f$a;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 454
    .line 455
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 456
    .line 457
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 458
    .line 459
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    and-int/2addr v1, v4

    .line 466
    if-ne v1, v4, :cond_7

    .line 467
    .line 468
    move v0, v4

    .line 469
    :cond_7
    if-nez v0, :cond_8

    .line 470
    .line 471
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 472
    .line 473
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 474
    .line 475
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 476
    .line 477
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 478
    .line 479
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    const/4 v3, 0x2

    .line 484
    and-int/2addr v1, v3

    .line 485
    if-ne v1, v3, :cond_8

    .line 486
    .line 487
    new-instance v1, Lcom/meishu/sdk/platform/ms/draw/d;

    .line 488
    .line 489
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/ms/draw/d;-><init>(Lcom/meishu/sdk/platform/ms/draw/f$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    .line 494
    .line 495
    :cond_8
    if-eqz v0, :cond_9

    .line 496
    .line 497
    new-instance v0, Lcom/meishu/sdk/platform/ms/draw/e;

    .line 498
    .line 499
    invoke-direct {v0, p0, p1}, Lcom/meishu/sdk/platform/ms/draw/e;-><init>(Lcom/meishu/sdk/platform/ms/draw/f$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    .line 504
    .line 505
    :cond_9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 506
    .line 507
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 508
    .line 509
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    if-eqz p1, :cond_a

    .line 514
    .line 515
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 516
    .line 517
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 518
    .line 519
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 524
    .line 525
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 526
    .line 527
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 528
    .line 529
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 530
    .line 531
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 535
    .line 536
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 537
    .line 538
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 543
    .line 544
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 545
    .line 546
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 547
    .line 548
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 549
    .line 550
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    :cond_a
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 6
    .line 7
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 20
    .line 21
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    aget-object v0, v0, v1

    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v0, Lcom/meishu/sdk/platform/ms/d;

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-direct {v0, p1, p2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/f$a;->a:Lcom/meishu/sdk/platform/ms/draw/f;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/draw/f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
