.class final Lcom/kwad/components/ad/c/g$2;
.super Lcom/kwad/components/core/request/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/c/g;->loadBannerAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/internal/api/SceneImpl;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/c/g$2;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/c/g$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/request/d;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
    .locals 6
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/kwad/components/ad/c/g;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 18
    .line 19
    iget p2, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 20
    .line 21
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/ad/c/g$2;->onError(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "bannerAd_"

    .line 40
    .line 41
    const-string p2, "onBannerAdCacheFailed"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/c/g$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iget-wide v4, p0, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 62
    .line 63
    sub-long/2addr v2, v4

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/internal/api/SceneImpl;IJI)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    iget v2, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adStyle:I

    .line 87
    .line 88
    const/4 v3, 0x5

    .line 89
    if-eq v2, v3, :cond_2

    .line 90
    .line 91
    invoke-static {v1}, Lcom/kwad/components/ad/c/c/c;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ga()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->obtainVideoPreCacheConfig(Lcom/kwad/sdk/core/response/model/AdResultData;I)Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/kwad/components/ad/c/g$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 110
    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v2, v3}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lcom/kwad/components/ad/c/h;

    .line 119
    .line 120
    invoke-direct {v2, p1}, Lcom/kwad/components/ad/c/h;-><init>(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KB()Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/kwad/components/ad/c/h;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v3}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    iget-object p1, p0, Lcom/kwad/components/ad/c/g$2;->bO:Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;

    .line 141
    .line 142
    iget-wide v3, p0, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 143
    .line 144
    invoke-static {v1, p1, v2, v3, v4}, Lcom/kwad/components/ad/c/g;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsLoadManager$BannerAdListener;Lcom/kwad/sdk/api/KsBannerAd;J)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    new-instance v3, Lcom/kwad/components/ad/c/g$2$2;

    .line 149
    .line 150
    invoke-direct {v3, p0, v1, v2}, Lcom/kwad/components/ad/c/g$2$2;-><init>(Lcom/kwad/components/ad/c/g$2;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsBannerAd;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v0, v3}, Lcom/kwad/components/ad/c/a/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;Lcom/kwad/components/ad/c/a/b;)Z

    .line 154
    .line 155
    .line 156
    :goto_2
    const-string p1, "KsAdBannerLoadManager"

    .line 157
    .line 158
    const-string v0, "loadFullScreenVideoAd after cache"

    .line 159
    .line 160
    invoke-static {p1, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/kwad/components/ad/c/g$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 164
    .line 165
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 170
    .line 171
    .line 172
    move-result-wide v0

    .line 173
    iget-wide v2, p0, Lcom/kwad/components/ad/c/g$2;->ch:J

    .line 174
    .line 175
    sub-long/2addr v0, v2

    .line 176
    invoke-static {p1, p2, v0, v1}, Lcom/kwad/components/ad/c/c/c;->a(Lcom/kwad/sdk/internal/api/SceneImpl;IJ)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 2
    .line 3
    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/components/ad/c/g$2$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/c/g$2$1;-><init>(Lcom/kwad/components/ad/c/g$2;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
