.class public Lcom/meishu/sdk/platform/ms/paster/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/paster/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/paster/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/paster/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/meishu/sdk/platform/ms/paster/d$a$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/meishu/sdk/platform/ms/paster/d$a$a;-><init>(Lcom/meishu/sdk/platform/ms/paster/d$a;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->a:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onADExposure()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/paster/d;->d:Z

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 8
    .line 9
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v1, "MeishuPasterAdWrapper"

    .line 44
    .line 45
    const-string v2, "send onADExposure"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    array-length v1, v0

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_0
    if-ge v2, v1, :cond_1

    .line 53
    .line 54
    aget-object v3, v0, v2

    .line 55
    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_0

    .line 61
    .line 62
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 63
    .line 64
    iget-object v4, v4, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 65
    .line 66
    check-cast v4, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->PASTER:Lcom/meishu/sdk/core/ad/AdType;

    .line 73
    .line 74
    invoke-static {v3, v4, v5}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v4, v3}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 109
    .line 110
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 137
    .line 138
    const/4 v1, 0x1

    .line 139
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/paster/d;->b(Lcom/meishu/sdk/platform/ms/paster/d;Z)Z

    .line 140
    .line 141
    .line 142
    :cond_4
    return-void
.end method

.method public onADLoaded(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_5

    .line 41
    .line 42
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_2
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->getMediaView()Lcom/meishu/sdk/meishu_ad/n0;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAutoStart(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 88
    .line 89
    new-instance v1, Lcom/meishu/sdk/core/ad/paster/a;

    .line 90
    .line 91
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 92
    .line 93
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 94
    .line 95
    invoke-direct {v1, v2}, Lcom/meishu/sdk/core/ad/paster/a;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 121
    .line 122
    new-instance v1, Lcom/meishu/sdk/platform/ms/paster/a;

    .line 123
    .line 124
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/ms/paster/a;-><init>(Lcom/meishu/sdk/platform/ms/paster/d$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 142
    .line 143
    invoke-direct {v1, p1}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lcom/meishu/sdk/platform/ms/paster/b;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/paster/b;-><init>(Lcom/meishu/sdk/platform/ms/paster/d$a;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/b;

    .line 158
    .line 159
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 165
    .line 166
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 167
    .line 168
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 169
    .line 170
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->a:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 171
    .line 172
    invoke-direct {v1, v2, v3}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-interface {p1, v0, v2, v1}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lcom/meishu/sdk/platform/ms/paster/c;

    .line 180
    .line 181
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/ms/paster/c;-><init>(Lcom/meishu/sdk/platform/ms/paster/d$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 188
    .line 189
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 195
    .line 196
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_5

    .line 208
    .line 209
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 220
    .line 221
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 231
    .line 232
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 233
    .line 234
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 235
    .line 236
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_5

    .line 253
    .line 254
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 267
    .line 268
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-eqz p1, :cond_5

    .line 285
    .line 286
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 299
    .line 300
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 301
    .line 302
    .line 303
    :cond_5
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 16
    .line 17
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 54
    .line 55
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, p1, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 74
    .line 75
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method
