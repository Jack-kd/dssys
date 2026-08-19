.class final Lcom/kwad/components/ad/feed/e$2;
.super Lcom/kwad/components/core/request/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/e;->a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J

.field final synthetic gZ:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

.field final synthetic hE:Z

.field final synthetic hF:J


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Lcom/kwad/sdk/internal/api/SceneImpl;ZJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/e$2;->gZ:Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kwad/components/ad/feed/e$2;->hE:Z

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/kwad/components/ad/feed/e$2;->hF:J

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/kwad/components/ad/feed/e$2;->ch:J

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/kwad/components/core/request/d;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/response/model/AdResultData;)V
    .locals 9
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "loadFeedAd onSuccess:"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v4, "KsAdFeedLoadManager"

    .line 29
    .line 30
    invoke-static {v4, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/kwad/components/ad/feed/monitor/b;->cn()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 58
    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    invoke-static {v5}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v5}, Lcom/kwad/components/model/FeedType;->checkTypeValid(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_2

    .line 70
    .line 71
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget v7, v5, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 80
    .line 81
    iget v8, v5, Lcom/kwad/sdk/core/response/model/AdTemplate;->defaultType:I

    .line 82
    .line 83
    invoke-static {v7, v8}, Lcom/kwad/components/model/FeedType;->fromInt(II)Lcom/kwad/components/model/FeedType;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    filled-new-array {v2, v7}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-string v7, "(\u6a21\u677f\u4e0d\u5339\u914dmaterialType:%s_feedType:%s)"

    .line 92
    .line 93
    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    iget v7, v5, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 102
    .line 103
    invoke-static {v6, v7, v5}, Lcom/kwad/components/ad/feed/monitor/b;->b(IILcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v7, p0, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 108
    .line 109
    iput-object v7, v5, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 110
    .line 111
    invoke-static {v6}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_3

    .line 120
    .line 121
    invoke-static {v5}, Lcom/kwad/components/ad/feed/monitor/a;->q(Lcom/kwad/sdk/core/response/model/AdTemplate;)Landroid/util/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v7, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v6, Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v7, v6}, Lcom/kwad/components/ad/feed/monitor/b;->g(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-static {p1, v5}, Lcom/kwad/sdk/core/response/helper/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    new-instance v6, Lcom/kwad/components/ad/feed/c;

    .line 145
    .line 146
    iget-boolean v7, p0, Lcom/kwad/components/ad/feed/e$2;->hE:Z

    .line 147
    .line 148
    invoke-direct {v6, v5, v7}, Lcom/kwad/components/ad/feed/c;-><init>(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v4, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-static {p1}, Lcom/kwad/components/ad/feed/monitor/b;->N(I)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_5

    .line 186
    .line 187
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 188
    .line 189
    iget p1, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    sget-object v1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 197
    .line 198
    iget-object v1, v1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {p1, v0}, Lcom/kwad/components/ad/feed/monitor/b;->f(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sget-object p1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 214
    .line 215
    iget p1, p1, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 216
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    sget-object v1, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 223
    .line 224
    iget-object v1, v1, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p0, p1, v0}, Lcom/kwad/components/ad/feed/e$2;->onError(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string p1, "loadFeedAd onError"

    .line 240
    .line 241
    invoke-static {v4, p1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/kwad/components/ad/feed/e$2;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {p1, v1}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jn()Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-eqz p1, :cond_7

    .line 259
    .line 260
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/kwad/sdk/o;->Fu()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_6

    .line 269
    .line 270
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/kwad/sdk/o;->Fu()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_7

    .line 279
    .line 280
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Jo()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    const/4 v1, 0x1

    .line 285
    if-ne p1, v1, :cond_7

    .line 286
    .line 287
    :cond_6
    new-instance p1, Lcom/kwad/components/ad/feed/e$2$2;

    .line 288
    .line 289
    invoke-direct {p1, p0, v0}, Lcom/kwad/components/ad/feed/e$2$2;-><init>(Lcom/kwad/components/ad/feed/e$2;Ljava/util/List;)V

    .line 290
    .line 291
    .line 292
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :cond_7
    new-instance p1, Lcom/kwad/components/ad/feed/e$2$3;

    .line 297
    .line 298
    invoke-direct {p1, p0, v0}, Lcom/kwad/components/ad/feed/e$2$3;-><init>(Lcom/kwad/components/ad/feed/e$2;Ljava/util/List;)V

    .line 299
    .line 300
    .line 301
    invoke-static {p1}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/feed/e$2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/feed/e$2$1;-><init>(Lcom/kwad/components/ad/feed/e$2;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/kwad/components/ad/feed/monitor/b;->f(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aSZ:Lcom/kwad/sdk/core/network/e;

    .line 13
    .line 14
    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 19
    .line 20
    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/kwad/components/ad/feed/monitor/b;->h(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
