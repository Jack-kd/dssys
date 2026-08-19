.class final Lcom/kwad/components/ad/feed/widget/q$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/feed/widget/q$12;->a(Lcom/kwad/components/core/webview/a;Lcom/kwad/sdk/core/webview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic jw:Lcom/kwad/components/ad/feed/widget/q$12;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/feed/widget/q$12;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->f(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->g(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bi(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->h(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->i(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->j(Lcom/kwad/components/ad/feed/widget/q;)D

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    double-to-int v0, v0

    .line 65
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->k(Lcom/kwad/components/ad/feed/widget/q;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-wide v2, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->widthRation:D

    .line 74
    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .line 77
    cmpl-double v2, v2, v4

    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    const-wide v2, 0x3fed70a3e0000000L    # 0.9200000166893005

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    iput-wide v2, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->widthRation:D

    .line 87
    .line 88
    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    iput-wide v2, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->leftMarginRation:D

    .line 94
    .line 95
    :cond_1
    iget-object v2, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/kwad/components/ad/feed/widget/q;->l(Lcom/kwad/components/ad/feed/widget/q;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-wide v3, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->topMarginRation:D

    .line 104
    .line 105
    int-to-double v5, v0

    .line 106
    mul-double/2addr v3, v5

    .line 107
    double-to-int v0, v3

    .line 108
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 109
    .line 110
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->l(Lcom/kwad/components/ad/feed/widget/q;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-wide v2, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->leftMarginRation:D

    .line 119
    .line 120
    int-to-double v4, v1

    .line 121
    mul-double/2addr v2, v4

    .line 122
    double-to-int v1, v2

    .line 123
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 124
    .line 125
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->l(Lcom/kwad/components/ad/feed/widget/q;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-wide v1, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->widthRation:D

    .line 134
    .line 135
    mul-double/2addr v4, v1

    .line 136
    double-to-int v1, v4

    .line 137
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 138
    .line 139
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->l(Lcom/kwad/components/ad/feed/widget/q;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 150
    .line 151
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->l(Lcom/kwad/components/ad/feed/widget/q;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 156
    .line 157
    int-to-double v1, v1

    .line 158
    iget-wide v3, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->heightWidthRation:D

    .line 159
    .line 160
    mul-double/2addr v1, v3

    .line 161
    double-to-int v1, v1

    .line 162
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 163
    .line 164
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->i(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget p1, p1, Lcom/kwad/components/core/webview/jshandler/WebCardVideoPositionHandler$VideoPosition;->borderRadius:I

    .line 173
    .line 174
    int-to-float p1, p1

    .line 175
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/widget/KSRelativeLayout;->setRadius(F)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->i(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/kwad/components/ad/feed/widget/q;->l(Lcom/kwad/components/ad/feed/widget/q;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 198
    .line 199
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->i(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/widget/KSRelativeLayout;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 210
    .line 211
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->m(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    instance-of p1, p1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 218
    .line 219
    if-eqz p1, :cond_2

    .line 220
    .line 221
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 222
    .line 223
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->m(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/kwad/components/core/internal/api/KSAdVideoPlayConfigImpl;->getVideoSoundValue()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_2

    .line 236
    .line 237
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 238
    .line 239
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 240
    .line 241
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->m(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig;->isVideoSoundEnable()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-static {p1, v1}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/components/ad/feed/widget/q;Z)Z

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 256
    .line 257
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->n(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->ch(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-static {p1, v1}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/components/ad/feed/widget/q;Z)Z

    .line 266
    .line 267
    .line 268
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 269
    .line 270
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->o(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 277
    .line 278
    iget-object v1, v1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->p(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    iput-boolean v1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 285
    .line 286
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 287
    .line 288
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 289
    .line 290
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->q(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->bv(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {p1, v1}, Lcom/kwad/components/ad/feed/widget/q;->a(Lcom/kwad/components/ad/feed/widget/q;Ljava/util/List;)Ljava/util/List;

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 302
    .line 303
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 304
    .line 305
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->h(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_3

    .line 310
    .line 311
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 312
    .line 313
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 314
    .line 315
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->m(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_3
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 324
    .line 325
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 326
    .line 327
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    if-eqz p1, :cond_4

    .line 332
    .line 333
    iget-object p1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 334
    .line 335
    iget-object p1, p1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 336
    .line 337
    invoke-static {p1}, Lcom/kwad/components/ad/feed/widget/q;->b(Lcom/kwad/components/ad/feed/widget/q;)Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    iget-object v1, p0, Lcom/kwad/components/ad/feed/widget/q$12$1;->jw:Lcom/kwad/components/ad/feed/widget/q$12;

    .line 342
    .line 343
    iget-object v1, v1, Lcom/kwad/components/ad/feed/widget/q$12;->jt:Lcom/kwad/components/ad/feed/widget/q;

    .line 344
    .line 345
    invoke-static {v1}, Lcom/kwad/components/ad/feed/widget/q;->p(Lcom/kwad/components/ad/feed/widget/q;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    invoke-static {v1, v2}, Lcom/kwad/components/ad/feed/widget/q;->c(Lcom/kwad/components/ad/feed/widget/q;Z)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    invoke-interface {p1, v1, v0}, Lcom/kwad/components/offline/api/core/adlive/IAdLivePlayModule;->setAudioEnabled(ZZ)V

    .line 354
    .line 355
    .line 356
    :cond_4
    return-void
.end method
