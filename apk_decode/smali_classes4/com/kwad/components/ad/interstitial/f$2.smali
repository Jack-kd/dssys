.class final Lcom/kwad/components/ad/interstitial/f$2;
.super Lcom/kwad/components/core/request/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/interstitial/f;->loadInterstitialAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J

.field final synthetic di:J

.field final synthetic li:Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/f$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/interstitial/f$2;->li:Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/kwad/components/ad/interstitial/f$2;->di:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/kwad/components/ad/interstitial/f$2;->ch:J

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/kwad/components/core/request/d;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
    .locals 10
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lcom/kwad/components/core/offline/a/d/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "onInterstitialAdCacheFailed"

    .line 12
    .line 13
    const-string v4, "insertAd_"

    .line 14
    .line 15
    if-eqz v2, :cond_1

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
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/ad/interstitial/f$2;->onError(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v3}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v2, Lcom/kwad/components/ad/interstitial/f$2$2;

    .line 44
    .line 45
    invoke-direct {v2, p0, v1}, Lcom/kwad/components/ad/interstitial/f$2$2;-><init>(Lcom/kwad/components/ad/interstitial/f$2;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    :try_start_0
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-static {v0}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_2
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/c;->eZ()Lcom/kwad/components/ad/interstitial/report/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 82
    .line 83
    invoke-virtual {v0, v5, p2}, Lcom/kwad/components/ad/interstitial/report/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/kwad/components/ad/interstitial/f$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-static {v0, v5}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 96
    .line 97
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/c;->u(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_9

    .line 108
    .line 109
    new-instance v5, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_8

    .line 123
    .line 124
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 129
    .line 130
    if-eqz v7, :cond_3

    .line 131
    .line 132
    iget-object v8, v7, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 133
    .line 134
    if-nez v8, :cond_4

    .line 135
    .line 136
    iget-object v8, p0, Lcom/kwad/components/ad/interstitial/f$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 137
    .line 138
    iput-object v8, v7, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 139
    .line 140
    :cond_4
    invoke-static {v7}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v8}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static {v7}, Lcom/kwad/sdk/core/response/helper/b;->dJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_5

    .line 153
    .line 154
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->fd()Lcom/kwad/components/ad/interstitial/report/realtime/a;

    .line 155
    .line 156
    .line 157
    invoke-static {v7}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->J(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_7

    .line 165
    .line 166
    invoke-static {v7}, Lcom/kwad/components/ad/interstitial/a/a;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jp()Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-nez v9, :cond_6

    .line 175
    .line 176
    if-eqz v8, :cond_3

    .line 177
    .line 178
    :cond_6
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_7
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    invoke-virtual {p1, v5}, Lcom/kwad/sdk/core/response/model/AdResultData;->setAdTemplateList(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/e;->f(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    :cond_a
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_f

    .line 206
    .line 207
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 212
    .line 213
    if-eqz v6, :cond_a

    .line 214
    .line 215
    iget-object v7, v6, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 216
    .line 217
    if-nez v7, :cond_b

    .line 218
    .line 219
    iget-object v7, p0, Lcom/kwad/components/ad/interstitial/f$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 220
    .line 221
    iput-object v7, v6, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 222
    .line 223
    :cond_b
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-static {v7}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/b;->dJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-nez v8, :cond_c

    .line 236
    .line 237
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->fd()Lcom/kwad/components/ad/interstitial/report/realtime/a;

    .line 238
    .line 239
    .line 240
    invoke-static {v6}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->J(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    invoke-static {p1, v6}, Lcom/kwad/sdk/core/response/helper/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-nez v7, :cond_e

    .line 252
    .line 253
    invoke-static {v6}, Lcom/kwad/components/ad/interstitial/a/a;->w(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jp()Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-nez v7, :cond_d

    .line 262
    .line 263
    if-eqz v6, :cond_a

    .line 264
    .line 265
    :cond_d
    invoke-static {v8}, Lcom/kwad/components/ad/interstitial/e;->f(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_e
    invoke-static {v8}, Lcom/kwad/components/ad/interstitial/e;->f(Lcom/kwad/sdk/core/response/model/AdResultData;)Lcom/kwad/sdk/api/KsInterstitialAd;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_f
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-nez v5, :cond_11

    .line 286
    .line 287
    sget-object p2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 288
    .line 289
    iget p2, p2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 290
    .line 291
    iget-object v0, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_10

    .line 298
    .line 299
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 300
    .line 301
    iget-object p1, p1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_10
    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 305
    .line 306
    :goto_4
    invoke-virtual {p0, p2, p1}, Lcom/kwad/components/ad/interstitial/f$2;->onError(ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->fd()Lcom/kwad/components/ad/interstitial/report/realtime/a;

    .line 310
    .line 311
    .line 312
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/kwad/components/ad/interstitial/report/realtime/a;->a(Lcom/kwad/sdk/core/network/e;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v4, v3}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_11
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/c;->eZ()Lcom/kwad/components/ad/interstitial/report/c;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 330
    .line 331
    invoke-virtual {p1, v1, p2}, Lcom/kwad/components/ad/interstitial/report/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 332
    .line 333
    .line 334
    new-instance p1, Lcom/kwad/components/ad/interstitial/f$2$3;

    .line 335
    .line 336
    invoke-direct {p1, p0, v0}, Lcom/kwad/components/ad/interstitial/f$2$3;-><init>(Lcom/kwad/components/ad/interstitial/f$2;Ljava/util/List;)V

    .line 337
    .line 338
    .line 339
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    .line 341
    .line 342
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/c;->eZ()Lcom/kwad/components/ad/interstitial/report/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/ad/interstitial/f$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/kwad/components/ad/interstitial/report/c;->a(ILjava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/kwad/components/ad/interstitial/f$2$1;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/interstitial/f$2$1;-><init>(Lcom/kwad/components/ad/interstitial/f$2;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
