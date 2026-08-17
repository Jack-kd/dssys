.class public abstract Lcom/smartdigimkt/k4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const v0, 0x2c90bd0

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_5

    .line 15
    .line 16
    const v0, 0x2e53ab4

    .line 17
    .line 18
    .line 19
    if-eq p1, v0, :cond_4

    .line 20
    .line 21
    const v0, 0x2d72333

    .line 22
    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const v0, 0x2d72334

    .line 27
    .line 28
    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    const v0, 0x339c7ba

    .line 32
    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const v0, 0x339c7bb

    .line 37
    .line 38
    .line 39
    if-eq p1, v0, :cond_0

    .line 40
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_0
    const-string p1, "10009"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    const/16 p1, 0x8

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :pswitch_1
    const-string p1, "10008"

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    const/4 p1, 0x7

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :pswitch_2
    const-string p1, "10007"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    const/4 p1, 0x6

    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :pswitch_3
    const-string p1, "10006"

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    const/4 p1, 0x5

    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :pswitch_4
    const-string p1, "10005"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    const/4 p1, 0x4

    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :pswitch_5
    const-string p1, "10004"

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    const/4 p1, 0x3

    .line 111
    goto :goto_1

    .line 112
    :pswitch_6
    const-string p1, "10003"

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    const/4 p1, 0x2

    .line 121
    goto :goto_1

    .line 122
    :pswitch_7
    const-string p1, "10002"

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    const/4 p1, 0x1

    .line 131
    goto :goto_1

    .line 132
    :pswitch_8
    const-string p1, "10001"

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    goto :goto_1

    .line 142
    :cond_0
    const-string p1, "90002"

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    const/16 p1, 0xa

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    const-string p1, "90001"

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    const/16 p1, 0xb

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    const-string p1, "20002"

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_6

    .line 171
    .line 172
    const/16 p1, 0xc

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    const-string p1, "20001"

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_6

    .line 182
    .line 183
    const/16 p1, 0xd

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    const-string p1, "30001"

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    const/16 p1, 0xe

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    const-string p1, "10010"

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_6

    .line 204
    .line 205
    const/16 p1, 0x9

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_6
    :goto_0
    const/4 p1, -0x1

    .line 209
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 210
    .line 211
    .line 212
    const-string p1, "Unknown error."

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :pswitch_9
    const-string p1, "Ad is loaded but not ready."

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_a
    const-string p1, "Failed to display ad."

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :pswitch_b
    const-string p1, "Service status error."

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :pswitch_c
    const-string p1, "Possible network issue on device. Please check your network."

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :pswitch_d
    const-string p1, "Ad request failed."

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :pswitch_e
    const-string p1, "Mediation SDK request failed."

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :pswitch_f
    const-string p1, "Bid request failed."

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :pswitch_10
    const-string p1, "Bid request timeout."

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :pswitch_11
    const-string p1, "Ad slot strategy loading failed."

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :pswitch_12
    const-string p1, "Ad slot loading timeout."

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_13
    const-string p1, "Ad slot is loading, please wait."

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :pswitch_14
    const-string p1, "AppId or AppKey is empty."

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :pswitch_15
    const-string p1, "SDK is not initialized."

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :pswitch_16
    const-string p1, "Parameter error."

    .line 255
    .line 256
    :cond_7
    :goto_2
    new-instance v0, Lcom/smartdigimkt/k4/a;

    .line 257
    .line 258
    invoke-direct {v0, p0, p1}, Lcom/smartdigimkt/k4/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-object v0

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x2c90bb2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
