.class final Lcom/kwad/components/core/innerEc/live/b/c/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/g;->y(Landroid/view/View;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private WA:Z

.field final synthetic WB:Landroid/view/View;

.field final synthetic Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

.field private Wz:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/g;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WB:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WA:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/i/c;->az(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WB:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    new-array v2, v2, [I

    .line 38
    .line 39
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WB:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WB:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "rect:"

    .line 53
    .line 54
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, ",location:"

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, ", viewHeight: "

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "LiveInputPresenter"

    .line 85
    .line 86
    invoke-static {v5, v4}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-le v4, v3, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move v3, v4

    .line 97
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v6, "visibleHeight:"

    .line 100
    .line 101
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v6, ",curNavigationVisible:false"

    .line 108
    .line 109
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v6, ",curNavigationHeight:0"

    .line 113
    .line 114
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v6, ",location[1]:"

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    aget v2, v2, v6

    .line 124
    .line 125
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v5, v2}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 136
    .line 137
    sub-int v2, v3, v2

    .line 138
    .line 139
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const/4 v5, 0x0

    .line 144
    invoke-static {v4, v5}, Lcom/kwad/components/core/innerEc/live/i/c;->b(Landroid/content/Context;Z)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    iget v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 149
    .line 150
    if-eqz v6, :cond_d

    .line 151
    .line 152
    if-ne v6, v3, :cond_2

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_2
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iget v9, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 165
    .line 166
    add-int/2addr v8, v9

    .line 167
    add-int/2addr v7, v8

    .line 168
    invoke-static {v6, v7, v4}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;II)Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-nez v6, :cond_9

    .line 173
    .line 174
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 181
    .line 182
    add-int/2addr v8, v3

    .line 183
    add-int/2addr v7, v8

    .line 184
    invoke-static {v6, v7, v4}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;II)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-nez v6, :cond_9

    .line 189
    .line 190
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 191
    .line 192
    invoke-static {v6}, Lcom/kwad/components/core/innerEc/live/b/c/g;->m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-lez v6, :cond_3

    .line 197
    .line 198
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 199
    .line 200
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    iget-object v8, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 205
    .line 206
    invoke-static {v8}, Lcom/kwad/components/core/innerEc/live/b/c/g;->m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    invoke-static {v6, v7, v8}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;II)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_9

    .line 215
    .line 216
    :cond_3
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/c;->sK()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-lez v6, :cond_4

    .line 221
    .line 222
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 223
    .line 224
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    invoke-static {}, Lcom/kwad/components/core/innerEc/live/i/c;->sK()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    invoke-static {v6, v7, v8}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;II)Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-nez v6, :cond_9

    .line 237
    .line 238
    :cond_4
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 239
    .line 240
    invoke-static {v6}, Lcom/kwad/components/core/innerEc/live/b/c/g;->i(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-nez v6, :cond_5

    .line 245
    .line 246
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    iget-object v7, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 251
    .line 252
    invoke-static {v7}, Lcom/kwad/components/core/innerEc/live/b/c/g;->n(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-static {v7}, Lcom/kwad/components/core/innerEc/live/i/c;->ay(Landroid/content/Context;)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-gt v6, v7, :cond_9

    .line 261
    .line 262
    :cond_5
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 263
    .line 264
    invoke-static {v6}, Lcom/kwad/components/core/innerEc/live/b/c/g;->i(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-nez v6, :cond_6

    .line 269
    .line 270
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 271
    .line 272
    .line 273
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 274
    .line 275
    invoke-static {v6}, Lcom/kwad/components/core/innerEc/live/b/c/g;->o(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-static {v6}, Lcom/kwad/components/core/innerEc/live/i/c;->ay(Landroid/content/Context;)I

    .line 280
    .line 281
    .line 282
    :cond_6
    iget-boolean v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WA:Z

    .line 283
    .line 284
    if-eqz v6, :cond_7

    .line 285
    .line 286
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 287
    .line 288
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-static {v6, v2, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;II)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_c

    .line 297
    .line 298
    :cond_7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 299
    .line 300
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->i(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_c

    .line 305
    .line 306
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Lcom/kwad/sdk/c/a/a;->by(Landroid/content/Context;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-gtz v0, :cond_8

    .line 315
    .line 316
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 317
    .line 318
    add-int/2addr v0, v3

    .line 319
    sub-int v0, v4, v0

    .line 320
    .line 321
    :cond_8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 322
    .line 323
    invoke-static {v1, v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;I)I

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 327
    .line 328
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->c(Lcom/kwad/components/core/innerEc/live/b/c/g;I)V

    .line 333
    .line 334
    .line 335
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 336
    .line 337
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/i/c;->bc(I)V

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_9
    if-gez v2, :cond_b

    .line 346
    .line 347
    iget-boolean v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WA:Z

    .line 348
    .line 349
    if-eqz v1, :cond_a

    .line 350
    .line 351
    sub-int/2addr v2, v0

    .line 352
    :cond_a
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 353
    .line 354
    neg-int v1, v2

    .line 355
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;I)I

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 359
    .line 360
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;I)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 368
    .line 369
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->m(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/i/c;->bc(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_b
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 378
    .line 379
    invoke-static {v0, v5}, Lcom/kwad/components/core/innerEc/live/b/c/g;->c(Lcom/kwad/components/core/innerEc/live/b/c/g;I)V

    .line 380
    .line 381
    .line 382
    :cond_c
    :goto_1
    iput v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 383
    .line 384
    iput-boolean v5, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WA:Z

    .line 385
    .line 386
    return-void

    .line 387
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 388
    .line 389
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->i(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_e

    .line 394
    .line 395
    iget v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 396
    .line 397
    if-ne v0, v3, :cond_e

    .line 398
    .line 399
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 400
    .line 401
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->j(Lcom/kwad/components/core/innerEc/live/b/c/g;)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v0, :cond_e

    .line 406
    .line 407
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 408
    .line 409
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->k(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/os/Handler;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const/4 v1, 0x0

    .line 414
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 418
    .line 419
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->k(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/os/Handler;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    new-instance v1, Lcom/kwad/components/core/innerEc/live/b/c/g$4$1;

    .line 424
    .line 425
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/b/c/g$4$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/g$4;)V

    .line 426
    .line 427
    .line 428
    const-wide/16 v6, 0x258

    .line 429
    .line 430
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    .line 432
    .line 433
    :cond_e
    iput v3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->Wz:I

    .line 434
    .line 435
    iput-boolean v5, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$4;->WA:Z

    .line 436
    .line 437
    return-void
.end method
