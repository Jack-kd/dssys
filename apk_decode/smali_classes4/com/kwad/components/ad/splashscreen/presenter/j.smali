.class public final Lcom/kwad/components/ad/splashscreen/presenter/j;
.super Lcom/kwad/components/ad/splashscreen/presenter/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/splashscreen/presenter/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/presenter/j;->di()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private di()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/b;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/b;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/c;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/c;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bi(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/d;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/d;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/u;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/u;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/h;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/h;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 58
    .line 59
    iget-boolean v1, v1, Lcom/kwad/components/ad/splashscreen/h;->GV:Z

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/t;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/t;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ed(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->eh(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->eq(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->ej(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/r;

    .line 91
    .line 92
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/r;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    if-eqz v1, :cond_3

    .line 100
    .line 101
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/o;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/o;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-eqz v3, :cond_4

    .line 111
    .line 112
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/m;

    .line 113
    .line 114
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/m;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    if-eqz v4, :cond_5

    .line 122
    .line 123
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/t;

    .line 124
    .line 125
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/t;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    new-instance v1, Lcom/kwad/components/ad/splashscreen/presenter/t;

    .line 133
    .line 134
    invoke-direct {v1}, Lcom/kwad/components/ad/splashscreen/presenter/t;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 138
    .line 139
    .line 140
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aV(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/f;

    .line 147
    .line 148
    invoke-direct {v0}, Lcom/kwad/components/ad/splashscreen/presenter/f;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 155
    .line 156
    iget-boolean v0, v0, Lcom/kwad/components/ad/splashscreen/h;->bY:Z

    .line 157
    .line 158
    if-nez v0, :cond_7

    .line 159
    .line 160
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/b;

    .line 161
    .line 162
    invoke-direct {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/b;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 166
    .line 167
    .line 168
    :cond_7
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/a;

    .line 169
    .line 170
    invoke-direct {v0}, Lcom/kwad/components/ad/splashscreen/presenter/a;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/g;

    .line 177
    .line 178
    invoke-direct {v0}, Lcom/kwad/components/ad/splashscreen/presenter/g;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0, v2}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;Z)V

    .line 182
    .line 183
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 185
    .line 186
    iget-wide v3, v0, Lcom/kwad/components/ad/splashscreen/h;->mStartRenderTime:J

    .line 187
    .line 188
    const-wide/16 v5, 0x0

    .line 189
    .line 190
    cmp-long v1, v3, v5

    .line 191
    .line 192
    if-lez v1, :cond_8

    .line 193
    .line 194
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 201
    .line 202
    .line 203
    move-result-wide v3

    .line 204
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 205
    .line 206
    iget-wide v5, v1, Lcom/kwad/components/ad/splashscreen/h;->mStartRenderTime:J

    .line 207
    .line 208
    sub-long/2addr v3, v5

    .line 209
    invoke-static {v0, v2, v3, v4}, Lcom/kwad/sdk/commercial/convert/d;->b(IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    goto :goto_2

    .line 215
    :cond_8
    return-void

    .line 216
    :goto_2
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method


# virtual methods
.method public final ay()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/components/ad/splashscreen/presenter/e;->ay()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/j$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/splashscreen/presenter/j$1;-><init>(Lcom/kwad/components/ad/splashscreen/presenter/j;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->splash_play_card_view:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
