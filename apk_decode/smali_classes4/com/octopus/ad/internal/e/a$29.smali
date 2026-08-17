.class Lcom/octopus/ad/internal/e/a$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;ILcom/octopus/ad/d/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Lcom/octopus/ad/a/d;

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/octopus/ad/d/k$a;

.field final synthetic k:Lcom/octopus/ad/internal/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a;Lcom/octopus/ad/a/d;ILjava/lang/String;Lcom/octopus/ad/d/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->k:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 4
    .line 5
    iput p3, p0, Lcom/octopus/ad/internal/e/a$29;->h:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/octopus/ad/internal/e/a$29;->i:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/octopus/ad/internal/e/a$29;->j:Lcom/octopus/ad/d/k$a;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->c:F

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->d:F

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    float-to-int v1, v1

    .line 36
    invoke-virtual {p1, v1}, Lcom/octopus/ad/a/d;->c(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    float-to-int p2, p2

    .line 46
    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/d;->d(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget p1, p0, Lcom/octopus/ad/internal/e/a$29;->d:F

    .line 63
    .line 64
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->b:F

    .line 65
    .line 66
    sub-float v1, p1, p2

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    cmpl-float v1, v1, v2

    .line 70
    .line 71
    if-lez v1, :cond_2

    .line 72
    .line 73
    sub-float/2addr p1, p2

    .line 74
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->h:I

    .line 79
    .line 80
    int-to-float p2, p2

    .line 81
    cmpl-float p1, p1, p2

    .line 82
    .line 83
    if-lez p1, :cond_2

    .line 84
    .line 85
    const-string p1, "down"

    .line 86
    .line 87
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->i:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->j:Lcom/octopus/ad/d/k$a;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 100
    .line 101
    invoke-interface {p1, p2}, Lcom/octopus/ad/d/k$a;->a(Lcom/octopus/ad/a/d;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :cond_2
    iget p1, p0, Lcom/octopus/ad/internal/e/a$29;->d:F

    .line 107
    .line 108
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->b:F

    .line 109
    .line 110
    sub-float v1, p1, p2

    .line 111
    .line 112
    cmpg-float v1, v1, v2

    .line 113
    .line 114
    if-gez v1, :cond_3

    .line 115
    .line 116
    sub-float/2addr p1, p2

    .line 117
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->h:I

    .line 122
    .line 123
    int-to-float p2, p2

    .line 124
    cmpl-float p1, p1, p2

    .line 125
    .line 126
    if-lez p1, :cond_3

    .line 127
    .line 128
    const-string p1, "up"

    .line 129
    .line 130
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->i:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->j:Lcom/octopus/ad/d/k$a;

    .line 139
    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 143
    .line 144
    invoke-interface {p1, p2}, Lcom/octopus/ad/d/k$a;->a(Lcom/octopus/ad/a/d;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_3
    iget p1, p0, Lcom/octopus/ad/internal/e/a$29;->c:F

    .line 150
    .line 151
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->a:F

    .line 152
    .line 153
    sub-float v1, p1, p2

    .line 154
    .line 155
    cmpg-float v1, v1, v2

    .line 156
    .line 157
    if-gez v1, :cond_4

    .line 158
    .line 159
    sub-float/2addr p1, p2

    .line 160
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->h:I

    .line 165
    .line 166
    int-to-float p2, p2

    .line 167
    cmpl-float p1, p1, p2

    .line 168
    .line 169
    if-lez p1, :cond_4

    .line 170
    .line 171
    const-string p1, "left"

    .line 172
    .line 173
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->i:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->j:Lcom/octopus/ad/d/k$a;

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 186
    .line 187
    invoke-interface {p1, p2}, Lcom/octopus/ad/d/k$a;->a(Lcom/octopus/ad/a/d;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_4
    iget p1, p0, Lcom/octopus/ad/internal/e/a$29;->c:F

    .line 193
    .line 194
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->a:F

    .line 195
    .line 196
    sub-float v1, p1, p2

    .line 197
    .line 198
    cmpg-float v1, v1, v2

    .line 199
    .line 200
    if-gez v1, :cond_6

    .line 201
    .line 202
    sub-float/2addr p1, p2

    .line 203
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iget p2, p0, Lcom/octopus/ad/internal/e/a$29;->h:I

    .line 208
    .line 209
    int-to-float p2, p2

    .line 210
    cmpl-float p1, p1, p2

    .line 211
    .line 212
    if-lez p1, :cond_6

    .line 213
    .line 214
    const-string p1, "right"

    .line 215
    .line 216
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->i:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_6

    .line 223
    .line 224
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->j:Lcom/octopus/ad/d/k$a;

    .line 225
    .line 226
    if-eqz p1, :cond_6

    .line 227
    .line 228
    iget-object p2, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 229
    .line 230
    invoke-interface {p1, p2}, Lcom/octopus/ad/d/k$a;->a(Lcom/octopus/ad/a/d;)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->a:F

    .line 239
    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->b:F

    .line 245
    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->c:F

    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->d:F

    .line 257
    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->e:F

    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    iput p1, p0, Lcom/octopus/ad/internal/e/a$29;->f:F

    .line 269
    .line 270
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    float-to-int v1, v1

    .line 277
    invoke-virtual {p1, v1}, Lcom/octopus/ad/a/d;->a(I)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    float-to-int p2, p2

    .line 287
    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/d;->b(I)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 291
    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 293
    .line 294
    .line 295
    move-result-wide v1

    .line 296
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/d;->a(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 304
    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 306
    .line 307
    .line 308
    move-result-wide v1

    .line 309
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/d;->d(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p0, Lcom/octopus/ad/internal/e/a$29;->g:Lcom/octopus/ad/a/d;

    .line 317
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide v1

    .line 322
    const-wide/16 v3, 0x3e8

    .line 323
    .line 324
    div-long/2addr v1, v3

    .line 325
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/d;->c(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_6
    :goto_0
    return v0
.end method
