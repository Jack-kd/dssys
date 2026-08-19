.class public Lcom/baidu/mobads/sdk/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/IOAdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/internal/b/a$b;,
        Lcom/baidu/mobads/sdk/internal/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "layout_bd_oauth_sdk_webview_with_title"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p0, Lcom/baidu/mobads/proxy/R$layout;->layout_bd_oauth_sdk_webview_with_title:I

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, "layout_bd_oauth_sdk_network_unavailable"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget p0, Lcom/baidu/mobads/proxy/R$layout;->layout_bd_oauth_sdk_network_unavailable:I

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string v0, "layout_bd_oauth_sdk_loading_timeout"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget p0, Lcom/baidu/mobads/proxy/R$layout;->layout_bd_oauth_sdk_loading_timeout:I

    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string v0, "oauth_title"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    sget p0, Lcom/baidu/mobads/proxy/R$id;->oauth_title:I

    .line 55
    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3
    const-string v0, "oauth_title_back"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    sget p0, Lcom/baidu/mobads/proxy/R$id;->oauth_title_back:I

    .line 70
    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_4
    const-string v0, "oauth_webview_container"

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    sget p0, Lcom/baidu/mobads/proxy/R$id;->oauth_webview_container:I

    .line 85
    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_5
    const-string v0, "btn_network_settings"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    sget p0, Lcom/baidu/mobads/proxy/R$id;->btn_network_settings:I

    .line 100
    .line 101
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_6
    const-string v0, "btn_retry"

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_7

    .line 113
    .line 114
    sget p0, Lcom/baidu/mobads/proxy/R$id;->btn_retry:I

    .line 115
    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_7
    const/4 p0, 0x0

    .line 122
    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "bg_blur_white"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_blur_white:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const-string v0, "bg_app_icon"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_app_icon:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    const-string v0, "bg_hot_recommendation"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_hot_recommendation:I

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_2
    const-string v0, "bg_black_round_rectangle"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_black_round_rectangle:I

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    const-string v0, "bg_red_rectangle"

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_red_rect:I

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4
    const-string v0, "bg_red_circle"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_red_circle:I

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_5
    const-string v0, "bg_red_ribbon_rectangle"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_red_ribbon_rect:I

    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_6
    const-string v0, "bg_red_ribbon_circle"

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_red_ribbon_circle:I

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_7
    const-string v0, "ic_video_play"

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_video_play:I

    .line 130
    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :cond_8
    const-string v0, "ic_stars"

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_stars:I

    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_9
    const-string v0, "ic_fallback"

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_fallback:I

    .line 160
    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1

    .line 166
    :cond_a
    const-string v0, "ic_guide_circle"

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_b

    .line 173
    .line 174
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_guide_circle:I

    .line 175
    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    return-object p1

    .line 181
    :cond_b
    const-string v0, "ic_guide_finger"

    .line 182
    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_c

    .line 188
    .line 189
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_guide_finger:I

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1

    .line 196
    :cond_c
    const-string v0, "ic_white_play"

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_d

    .line 203
    .line 204
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_play:I

    .line 205
    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    return-object p1

    .line 211
    :cond_d
    const-string v0, "ic_white_pause"

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_e

    .line 218
    .line 219
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_pause:I

    .line 220
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    return-object p1

    .line 226
    :cond_e
    const-string v0, "ic_white_apo"

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_f

    .line 233
    .line 234
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_apo:I

    .line 235
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    return-object p1

    .line 241
    :cond_f
    const-string v0, "ic_white_dl"

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_10

    .line 248
    .line 249
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_dl:I

    .line 250
    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    return-object p1

    .line 256
    :cond_10
    const-string v0, "ic_white_link"

    .line 257
    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_11

    .line 263
    .line 264
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_link:I

    .line 265
    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    return-object p1

    .line 271
    :cond_11
    const-string v0, "ic_white_fullscreen_shrink"

    .line 272
    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_12

    .line 278
    .line 279
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_fullscreen_shrink:I

    .line 280
    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    return-object p1

    .line 286
    :cond_12
    const-string v0, "ic_white_fullscreen_stretch"

    .line 287
    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_13

    .line 293
    .line 294
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_fullscreen_stretch:I

    .line 295
    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    return-object p1

    .line 301
    :cond_13
    const-string v0, "ic_black_cross"

    .line 302
    .line 303
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_14

    .line 308
    .line 309
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_black_cross:I

    .line 310
    .line 311
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :cond_14
    const-string v0, "ic_white_cross_dark_round"

    .line 317
    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_15

    .line 323
    .line 324
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_cross_dark_round:I

    .line 325
    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    return-object p1

    .line 331
    :cond_15
    const-string v0, "rsp_big_red_heart"

    .line 332
    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_16

    .line 338
    .line 339
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_rsp_big_red_heart:I

    .line 340
    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    return-object p1

    .line 346
    :cond_16
    const-string v0, "rsp_small_red_heart"

    .line 347
    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_17

    .line 353
    .line 354
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_rsp_small_red_heart:I

    .line 355
    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    return-object p1

    .line 361
    :cond_17
    const-string v0, "ic_gray_cross"

    .line 362
    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_18

    .line 368
    .line 369
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_cross:I

    .line 370
    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    return-object p1

    .line 376
    :cond_18
    const-string v0, "ic_light_gray_cross"

    .line 377
    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_19

    .line 383
    .line 384
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_light_gray_cross:I

    .line 385
    .line 386
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    return-object p1

    .line 391
    :cond_19
    const-string v0, "ic_white_cross"

    .line 392
    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_1a

    .line 398
    .line 399
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_cross:I

    .line 400
    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    return-object p1

    .line 406
    :cond_1a
    const-string v0, "ic_gray_complaints"

    .line 407
    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_1b

    .line 413
    .line 414
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_complaints:I

    .line 415
    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    return-object p1

    .line 421
    :cond_1b
    const-string v0, "ic_gray_low_quality"

    .line 422
    .line 423
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_1c

    .line 428
    .line 429
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_low_quality:I

    .line 430
    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    return-object p1

    .line 436
    :cond_1c
    const-string v0, "ic_gray_repeat"

    .line 437
    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_1d

    .line 443
    .line 444
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_repeat:I

    .line 445
    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    return-object p1

    .line 451
    :cond_1d
    const-string v0, "ic_gray_unlike"

    .line 452
    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_1e

    .line 458
    .line 459
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_unlike:I

    .line 460
    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    return-object p1

    .line 466
    :cond_1e
    const-string v0, "ic_white_ad_logo_gray_bg"

    .line 467
    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_1f

    .line 473
    .line 474
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_ad_logo_gray_bg:I

    .line 475
    .line 476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    return-object p1

    .line 481
    :cond_1f
    const-string v0, "ic_white_bqt_logo_gray_bg"

    .line 482
    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_20

    .line 488
    .line 489
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_bqt_logo_gray_bg:I

    .line 490
    .line 491
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    return-object p1

    .line 496
    :cond_20
    const-string v0, "ic_white_shake_gesture"

    .line 497
    .line 498
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_21

    .line 503
    .line 504
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_shake_gesture:I

    .line 505
    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    return-object p1

    .line 511
    :cond_21
    const-string v0, "ic_arrow_up"

    .line 512
    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_22

    .line 518
    .line 519
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_arrow_up:I

    .line 520
    .line 521
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    return-object p1

    .line 526
    :cond_22
    const-string v0, "ic_blue_no_ad"

    .line 527
    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    if-eqz v0, :cond_23

    .line 533
    .line 534
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_blue_no_ad:I

    .line 535
    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    return-object p1

    .line 541
    :cond_23
    const-string v0, "ic_fallback_gray"

    .line 542
    .line 543
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-eqz v0, :cond_24

    .line 548
    .line 549
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_fallback_gray:I

    .line 550
    .line 551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    return-object p1

    .line 556
    :cond_24
    const-string v0, "ic_gift_box"

    .line 557
    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-eqz v0, :cond_25

    .line 563
    .line 564
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gift_box:I

    .line 565
    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    return-object p1

    .line 571
    :cond_25
    const-string v0, "ic_gift_ribbon"

    .line 572
    .line 573
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_26

    .line 578
    .line 579
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gift_ribbon:I

    .line 580
    .line 581
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    return-object p1

    .line 586
    :cond_26
    const-string v0, "ic_gold_star"

    .line 587
    .line 588
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    if-eqz v0, :cond_27

    .line 593
    .line 594
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gold_star:I

    .line 595
    .line 596
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    return-object p1

    .line 601
    :cond_27
    const-string v0, "ic_gray_left_quot"

    .line 602
    .line 603
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_28

    .line 608
    .line 609
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_left_quot:I

    .line 610
    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    return-object p1

    .line 616
    :cond_28
    const-string v0, "ic_gray_right_quot"

    .line 617
    .line 618
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    if-eqz v0, :cond_29

    .line 623
    .line 624
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_right_quot:I

    .line 625
    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    return-object p1

    .line 631
    :cond_29
    const-string v0, "ic_gray_star"

    .line 632
    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_2a

    .line 638
    .line 639
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_star:I

    .line 640
    .line 641
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 642
    .line 643
    .line 644
    move-result-object p1

    .line 645
    return-object p1

    .line 646
    :cond_2a
    const-string v0, "ic_half_gold_star"

    .line 647
    .line 648
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-eqz v0, :cond_2b

    .line 653
    .line 654
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_half_gold_star:I

    .line 655
    .line 656
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    return-object p1

    .line 661
    :cond_2b
    const-string v0, "ic_orange_cross"

    .line 662
    .line 663
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v0

    .line 667
    if-eqz v0, :cond_2c

    .line 668
    .line 669
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_orange_cross:I

    .line 670
    .line 671
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object p1

    .line 675
    return-object p1

    .line 676
    :cond_2c
    const-string v0, "ic_twist_phone"

    .line 677
    .line 678
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-eqz v0, :cond_2d

    .line 683
    .line 684
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_twist_phone:I

    .line 685
    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 687
    .line 688
    .line 689
    move-result-object p1

    .line 690
    return-object p1

    .line 691
    :cond_2d
    const-string v0, "ic_white_ad_logo"

    .line 692
    .line 693
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_2e

    .line 698
    .line 699
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_ad_logo:I

    .line 700
    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    return-object p1

    .line 706
    :cond_2e
    const-string v0, "ic_white_answer_error"

    .line 707
    .line 708
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    if-eqz v0, :cond_2f

    .line 713
    .line 714
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_answer_error:I

    .line 715
    .line 716
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    return-object p1

    .line 721
    :cond_2f
    const-string v0, "ic_white_answer_right"

    .line 722
    .line 723
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v0

    .line 727
    if-eqz v0, :cond_30

    .line 728
    .line 729
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_answer_right:I

    .line 730
    .line 731
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 732
    .line 733
    .line 734
    move-result-object p1

    .line 735
    return-object p1

    .line 736
    :cond_30
    const-string v0, "ic_white_cross_in_circle"

    .line 737
    .line 738
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_31

    .line 743
    .line 744
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_cross_in_circle:I

    .line 745
    .line 746
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    return-object p1

    .line 751
    :cond_31
    const-string v0, "ic_black_arrow_left"

    .line 752
    .line 753
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v0

    .line 757
    if-eqz v0, :cond_32

    .line 758
    .line 759
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_black_arrow_left:I

    .line 760
    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 762
    .line 763
    .line 764
    move-result-object p1

    .line 765
    return-object p1

    .line 766
    :cond_32
    const-string v0, "ic_black_three_points"

    .line 767
    .line 768
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    if-eqz v0, :cond_33

    .line 773
    .line 774
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_black_three_points:I

    .line 775
    .line 776
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object p1

    .line 780
    return-object p1

    .line 781
    :cond_33
    const-string v0, "ic_gray_ad"

    .line 782
    .line 783
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    if-eqz v0, :cond_34

    .line 788
    .line 789
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_ad:I

    .line 790
    .line 791
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    return-object p1

    .line 796
    :cond_34
    const-string v0, "ic_gray_ad_logo"

    .line 797
    .line 798
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v0

    .line 802
    if-eqz v0, :cond_35

    .line 803
    .line 804
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_ad_logo:I

    .line 805
    .line 806
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    return-object p1

    .line 811
    :cond_35
    const-string v0, "ic_gray_bqt_logo"

    .line 812
    .line 813
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    if-eqz v0, :cond_36

    .line 818
    .line 819
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_bqt_logo:I

    .line 820
    .line 821
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 822
    .line 823
    .line 824
    move-result-object p1

    .line 825
    return-object p1

    .line 826
    :cond_36
    const-string v0, "ic_gray_cross_black_round"

    .line 827
    .line 828
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-eqz v0, :cond_37

    .line 833
    .line 834
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_cross_black_round:I

    .line 835
    .line 836
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    return-object p1

    .line 841
    :cond_37
    const-string v0, "ic_gray_cross_white_oval"

    .line 842
    .line 843
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-eqz v0, :cond_38

    .line 848
    .line 849
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_cross_white_oval:I

    .line 850
    .line 851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 852
    .line 853
    .line 854
    move-result-object p1

    .line 855
    return-object p1

    .line 856
    :cond_38
    const-string v0, "ic_gray_logo"

    .line 857
    .line 858
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_39

    .line 863
    .line 864
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_gray_logo:I

    .line 865
    .line 866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    return-object p1

    .line 871
    :cond_39
    const-string v0, "ic_slide_arrow_duplicate"

    .line 872
    .line 873
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    if-eqz v0, :cond_3a

    .line 878
    .line 879
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_slide_arrow_duplicate:I

    .line 880
    .line 881
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 882
    .line 883
    .line 884
    move-result-object p1

    .line 885
    return-object p1

    .line 886
    :cond_3a
    const-string v0, "ic_slide_arrow_point"

    .line 887
    .line 888
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    if-eqz v0, :cond_3b

    .line 893
    .line 894
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_slide_arrow_point:I

    .line 895
    .line 896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    return-object p1

    .line 901
    :cond_3b
    const-string v0, "ic_white_ad_gray_bg"

    .line 902
    .line 903
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-eqz v0, :cond_3c

    .line 908
    .line 909
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_ad_gray_bg:I

    .line 910
    .line 911
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 912
    .line 913
    .line 914
    move-result-object p1

    .line 915
    return-object p1

    .line 916
    :cond_3c
    const-string v0, "ic_white_arrow_left"

    .line 917
    .line 918
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    if-eqz v0, :cond_3d

    .line 923
    .line 924
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_arrow_left:I

    .line 925
    .line 926
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 927
    .line 928
    .line 929
    move-result-object p1

    .line 930
    return-object p1

    .line 931
    :cond_3d
    const-string v0, "ic_white_arrow_right"

    .line 932
    .line 933
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result v0

    .line 937
    if-eqz v0, :cond_3e

    .line 938
    .line 939
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_arrow_right:I

    .line 940
    .line 941
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 942
    .line 943
    .line 944
    move-result-object p1

    .line 945
    return-object p1

    .line 946
    :cond_3e
    const-string v0, "ic_white_bqt_gray_bg"

    .line 947
    .line 948
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    if-eqz v0, :cond_3f

    .line 953
    .line 954
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_bqt_gray_bg:I

    .line 955
    .line 956
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 957
    .line 958
    .line 959
    move-result-object p1

    .line 960
    return-object p1

    .line 961
    :cond_3f
    const-string v0, "ic_white_bqt_logo"

    .line 962
    .line 963
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    move-result v0

    .line 967
    if-eqz v0, :cond_40

    .line 968
    .line 969
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_bqt_logo:I

    .line 970
    .line 971
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 972
    .line 973
    .line 974
    move-result-object p1

    .line 975
    return-object p1

    .line 976
    :cond_40
    const-string v0, "ic_white_comments"

    .line 977
    .line 978
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    if-eqz v0, :cond_41

    .line 983
    .line 984
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_comments:I

    .line 985
    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    .line 988
    .line 989
    move-result-object p1

    .line 990
    return-object p1

    .line 991
    :cond_41
    const-string v0, "ic_white_cross_circle_shadow"

    .line 992
    .line 993
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v0

    .line 997
    if-eqz v0, :cond_42

    .line 998
    .line 999
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_cross_circle_shadow:I

    .line 1000
    .line 1001
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p1

    .line 1005
    return-object p1

    .line 1006
    :cond_42
    const-string v0, "ic_white_finger_shadow"

    .line 1007
    .line 1008
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_43

    .line 1013
    .line 1014
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_finger_shadow:I

    .line 1015
    .line 1016
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p1

    .line 1020
    return-object p1

    .line 1021
    :cond_43
    const-string v0, "ic_white_logo"

    .line 1022
    .line 1023
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    if-eqz v0, :cond_44

    .line 1028
    .line 1029
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_logo:I

    .line 1030
    .line 1031
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1032
    .line 1033
    .line 1034
    move-result-object p1

    .line 1035
    return-object p1

    .line 1036
    :cond_44
    const-string v0, "ic_white_logo_gray_bg"

    .line 1037
    .line 1038
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    if-eqz v0, :cond_45

    .line 1043
    .line 1044
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_logo_gray_bg:I

    .line 1045
    .line 1046
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1047
    .line 1048
    .line 1049
    move-result-object p1

    .line 1050
    return-object p1

    .line 1051
    :cond_45
    const-string v0, "ic_white_pause_gray_round"

    .line 1052
    .line 1053
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    if-eqz v0, :cond_46

    .line 1058
    .line 1059
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_pause_gray_round:I

    .line 1060
    .line 1061
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1062
    .line 1063
    .line 1064
    move-result-object p1

    .line 1065
    return-object p1

    .line 1066
    :cond_46
    const-string v0, "ic_white_replay"

    .line 1067
    .line 1068
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    if-eqz v0, :cond_47

    .line 1073
    .line 1074
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_replay:I

    .line 1075
    .line 1076
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1077
    .line 1078
    .line 1079
    move-result-object p1

    .line 1080
    return-object p1

    .line 1081
    :cond_47
    const-string v0, "ic_white_replay_gray_round"

    .line 1082
    .line 1083
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    if-eqz v0, :cond_48

    .line 1088
    .line 1089
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_replay_gray_round:I

    .line 1090
    .line 1091
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p1

    .line 1095
    return-object p1

    .line 1096
    :cond_48
    const-string v0, "ic_white_speed075"

    .line 1097
    .line 1098
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    if-eqz v0, :cond_49

    .line 1103
    .line 1104
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_speed075:I

    .line 1105
    .line 1106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1107
    .line 1108
    .line 1109
    move-result-object p1

    .line 1110
    return-object p1

    .line 1111
    :cond_49
    const-string v0, "ic_white_speed100"

    .line 1112
    .line 1113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result v0

    .line 1117
    if-eqz v0, :cond_4a

    .line 1118
    .line 1119
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_speed100:I

    .line 1120
    .line 1121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1122
    .line 1123
    .line 1124
    move-result-object p1

    .line 1125
    return-object p1

    .line 1126
    :cond_4a
    const-string v0, "ic_white_speed125"

    .line 1127
    .line 1128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v0

    .line 1132
    if-eqz v0, :cond_4b

    .line 1133
    .line 1134
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_speed125:I

    .line 1135
    .line 1136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    .line 1138
    .line 1139
    move-result-object p1

    .line 1140
    return-object p1

    .line 1141
    :cond_4b
    const-string v0, "ic_white_speed150"

    .line 1142
    .line 1143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v0

    .line 1147
    if-eqz v0, :cond_4c

    .line 1148
    .line 1149
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_speed150:I

    .line 1150
    .line 1151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1152
    .line 1153
    .line 1154
    move-result-object p1

    .line 1155
    return-object p1

    .line 1156
    :cond_4c
    const-string v0, "ic_white_speed175"

    .line 1157
    .line 1158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    move-result v0

    .line 1162
    if-eqz v0, :cond_4d

    .line 1163
    .line 1164
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_speed175:I

    .line 1165
    .line 1166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    return-object p1

    .line 1171
    :cond_4d
    const-string v0, "ic_white_speed200"

    .line 1172
    .line 1173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v0

    .line 1177
    if-eqz v0, :cond_4e

    .line 1178
    .line 1179
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_speed200:I

    .line 1180
    .line 1181
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1182
    .line 1183
    .line 1184
    move-result-object p1

    .line 1185
    return-object p1

    .line 1186
    :cond_4e
    const-string v0, "ic_white_three_points"

    .line 1187
    .line 1188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v0

    .line 1192
    if-eqz v0, :cond_4f

    .line 1193
    .line 1194
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_three_points:I

    .line 1195
    .line 1196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1197
    .line 1198
    .line 1199
    move-result-object p1

    .line 1200
    return-object p1

    .line 1201
    :cond_4f
    const-string v0, "ic_white_voice"

    .line 1202
    .line 1203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v0

    .line 1207
    if-eqz v0, :cond_50

    .line 1208
    .line 1209
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_voice:I

    .line 1210
    .line 1211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1212
    .line 1213
    .line 1214
    move-result-object p1

    .line 1215
    return-object p1

    .line 1216
    :cond_50
    const-string v0, "ic_white_voice_mute"

    .line 1217
    .line 1218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v0

    .line 1222
    if-eqz v0, :cond_51

    .line 1223
    .line 1224
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_white_voice_mute:I

    .line 1225
    .line 1226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1227
    .line 1228
    .line 1229
    move-result-object p1

    .line 1230
    return-object p1

    .line 1231
    :cond_51
    const-string v0, "ic_yellow_dl_black_bg"

    .line 1232
    .line 1233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v0

    .line 1237
    if-eqz v0, :cond_52

    .line 1238
    .line 1239
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_yellow_dl_black_bg:I

    .line 1240
    .line 1241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1242
    .line 1243
    .line 1244
    move-result-object p1

    .line 1245
    return-object p1

    .line 1246
    :cond_52
    const-string v0, "ic_yellow_lp_black_bg"

    .line 1247
    .line 1248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    if-eqz v0, :cond_53

    .line 1253
    .line 1254
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_yellow_lp_black_bg:I

    .line 1255
    .line 1256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1257
    .line 1258
    .line 1259
    move-result-object p1

    .line 1260
    return-object p1

    .line 1261
    :cond_53
    const-string v0, "ic_live"

    .line 1262
    .line 1263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v0

    .line 1267
    if-eqz v0, :cond_54

    .line 1268
    .line 1269
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_live:I

    .line 1270
    .line 1271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1272
    .line 1273
    .line 1274
    move-result-object p1

    .line 1275
    return-object p1

    .line 1276
    :cond_54
    const-string v0, "ic_highest"

    .line 1277
    .line 1278
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v0

    .line 1282
    if-eqz v0, :cond_55

    .line 1283
    .line 1284
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->highest:I

    .line 1285
    .line 1286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1287
    .line 1288
    .line 1289
    move-result-object p1

    .line 1290
    return-object p1

    .line 1291
    :cond_55
    const-string v0, "ic_rmb"

    .line 1292
    .line 1293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result v0

    .line 1297
    if-eqz v0, :cond_56

    .line 1298
    .line 1299
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->rmb:I

    .line 1300
    .line 1301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1302
    .line 1303
    .line 1304
    move-result-object p1

    .line 1305
    return-object p1

    .line 1306
    :cond_56
    const-string v0, "bg_magnetic_sticker_center"

    .line 1307
    .line 1308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1309
    .line 1310
    .line 1311
    move-result v0

    .line 1312
    if-eqz v0, :cond_57

    .line 1313
    .line 1314
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_magnetic_sticker_middle:I

    .line 1315
    .line 1316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1317
    .line 1318
    .line 1319
    move-result-object p1

    .line 1320
    return-object p1

    .line 1321
    :cond_57
    const-string v0, "bg_magnetic_sticker_right"

    .line 1322
    .line 1323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    if-eqz v0, :cond_58

    .line 1328
    .line 1329
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_magnetic_sticker_right:I

    .line 1330
    .line 1331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1332
    .line 1333
    .line 1334
    move-result-object p1

    .line 1335
    return-object p1

    .line 1336
    :cond_58
    const-string v0, "ic_bookmark_line"

    .line 1337
    .line 1338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1339
    .line 1340
    .line 1341
    move-result v0

    .line 1342
    if-eqz v0, :cond_59

    .line 1343
    .line 1344
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_mob_ad_bookmark_line:I

    .line 1345
    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1347
    .line 1348
    .line 1349
    move-result-object p1

    .line 1350
    return-object p1

    .line 1351
    :cond_59
    const-string v0, "ic_fb_img_splash"

    .line 1352
    .line 1353
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v0

    .line 1357
    if-eqz v0, :cond_5a

    .line 1358
    .line 1359
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->fb_img:I

    .line 1360
    .line 1361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object p1

    .line 1365
    return-object p1

    .line 1366
    :cond_5a
    const-string v0, "ic_entry_guidance_default_icon"

    .line 1367
    .line 1368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v0

    .line 1372
    if-eqz v0, :cond_5b

    .line 1373
    .line 1374
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_splash_guide_default_icon:I

    .line 1375
    .line 1376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1377
    .line 1378
    .line 1379
    move-result-object p1

    .line 1380
    return-object p1

    .line 1381
    :cond_5b
    const-string v0, "ic_entry_guidance_arrow"

    .line 1382
    .line 1383
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v0

    .line 1387
    if-eqz v0, :cond_5c

    .line 1388
    .line 1389
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_ic_splash_guide_arrow:I

    .line 1390
    .line 1391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1392
    .line 1393
    .line 1394
    move-result-object p1

    .line 1395
    return-object p1

    .line 1396
    :cond_5c
    const-string v0, "splash_noti_bg"

    .line 1397
    .line 1398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1399
    .line 1400
    .line 1401
    move-result v0

    .line 1402
    if-eqz v0, :cond_5d

    .line 1403
    .line 1404
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_bg_splash_noti_bg:I

    .line 1405
    .line 1406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1407
    .line 1408
    .line 1409
    move-result-object p1

    .line 1410
    return-object p1

    .line 1411
    :cond_5d
    const-string v0, "tpl_discount_bg"

    .line 1412
    .line 1413
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    move-result p1

    .line 1417
    if-eqz p1, :cond_5e

    .line 1418
    .line 1419
    sget p1, Lcom/baidu/mobads/proxy/R$drawable;->bd_mob_tpl_discount_bg:I

    .line 1420
    .line 1421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1422
    .line 1423
    .line 1424
    move-result-object p1

    .line 1425
    return-object p1

    .line 1426
    :cond_5e
    const/4 p1, 0x0

    .line 1427
    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public run(Lcom/baidu/mobads/sdk/api/IOAdEvent;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/IOAdEvent;->getData()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "name"

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "drawable"

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lcom/baidu/mobads/sdk/internal/b/a;->b(Ljava/lang/String;)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v2, "layout"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-static {v1}, Lcom/baidu/mobads/sdk/internal/b/a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v2, "string"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/baidu/mobads/sdk/internal/b/a;->c(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "style"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-direct {p0, v1}, Lcom/baidu/mobads/sdk/internal/b/a;->d(Ljava/lang/String;)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :goto_0
    const-string v1, "id"

    .line 73
    .line 74
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method
