.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadRewardImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [B

    .line 12
    .line 13
    if-eqz p1, :cond_9

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    if-lez v0, :cond_9

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 41
    .line 42
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;[B)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifWidth()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    move p1, v1

    .line 104
    move v0, p1

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    array-length v0, p1

    .line 107
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 122
    .line 123
    invoke-static {v3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    .line 129
    .line 130
    move p1, v0

    .line 131
    move v0, v2

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 133
    .line 134
    invoke-static {v2, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4502(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 138
    .line 139
    invoke-static {v2, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4602(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 143
    .line 144
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 153
    .line 154
    invoke-static {v3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 163
    .line 164
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    .line 166
    if-lez p1, :cond_4

    .line 167
    .line 168
    if-lez v0, :cond_4

    .line 169
    .line 170
    mul-int/2addr v4, v0

    .line 171
    div-int/2addr v4, p1

    .line 172
    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 173
    .line 174
    add-int/lit8 p1, p1, -0x64

    .line 175
    .line 176
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    iget p1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 184
    .line 185
    add-int/lit8 p1, p1, -0x64

    .line 186
    .line 187
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    .line 189
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)J

    .line 201
    .line 202
    .line 203
    move-result-wide v2

    .line 204
    const-wide/16 v4, 0x3e8

    .line 205
    .line 206
    mul-long/2addr v2, v4

    .line 207
    const-wide/16 v4, 0x0

    .line 208
    .line 209
    cmp-long p1, v2, v4

    .line 210
    .line 211
    if-lez p1, :cond_5

    .line 212
    .line 213
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 214
    .line 215
    long-to-int v0, v2

    .line 216
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4802(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_5
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 221
    .line 222
    const/16 v0, 0x3a98

    .line 223
    .line 224
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4802(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 225
    .line 226
    .line 227
    :goto_2
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    const/4 v0, 0x2

    .line 234
    if-ne p1, v0, :cond_6

    .line 235
    .line 236
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 237
    .line 238
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_6

    .line 243
    .line 244
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 245
    .line 246
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    int-to-long v2, v0

    .line 251
    invoke-static {p1, v2, v3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)V

    .line 252
    .line 253
    .line 254
    :cond_6
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 255
    .line 256
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 261
    .line 262
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 270
    .line 271
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 276
    .line 277
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-ne p1, v0, :cond_7

    .line 282
    .line 283
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 284
    .line 285
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-nez p1, :cond_7

    .line 290
    .line 291
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 292
    .line 293
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    :cond_7
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 306
    .line 307
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 312
    .line 313
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_9
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 318
    .line 319
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_a
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 324
    .line 325
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :catchall_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$13;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 330
    .line 331
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 332
    .line 333
    .line 334
    return-void
.end method
