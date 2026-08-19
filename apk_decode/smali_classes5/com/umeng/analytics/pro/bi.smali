.class public Lcom/umeng/analytics/pro/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/analytics/pro/bf;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SuspiciousIndentation"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Brand"

    .line 4
    .line 5
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Device"

    .line 10
    .line 11
    invoke-static {v2, v1}, Lcom/umeng/analytics/pro/bu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/bt;->d()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/umeng/analytics/pro/bk;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bk;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-static {}, Lcom/umeng/analytics/pro/bt;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/umeng/analytics/pro/bl;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bl;-><init>()V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    const-string v1, "xiaomi"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_f

    .line 53
    .line 54
    const-string v1, "redmi"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_f

    .line 61
    .line 62
    const-string v1, "meitu"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_f

    .line 69
    .line 70
    const-string v1, "\u5c0f\u7c73"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_f

    .line 77
    .line 78
    const-string v1, "blackshark"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_3
    const-string v1, "vivo"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    new-instance v0, Lcom/umeng/analytics/pro/br;

    .line 97
    .line 98
    invoke-direct {v0}, Lcom/umeng/analytics/pro/br;-><init>()V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_4
    const-string v1, "oppo"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_e

    .line 109
    .line 110
    const-string v1, "oneplus"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_e

    .line 117
    .line 118
    const-string v1, "realme"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_5
    const-string v1, "lenovo"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_d

    .line 135
    .line 136
    const-string v1, "zuk"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    const-string v1, "motorola"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    const-string v1, "nubia"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    new-instance v0, Lcom/umeng/analytics/pro/bo;

    .line 162
    .line 163
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bo;-><init>()V

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_7
    const-string v1, "samsung"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    new-instance v0, Lcom/umeng/analytics/pro/bq;

    .line 176
    .line 177
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bq;-><init>()V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_8
    const-string v1, "meizu"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_c

    .line 188
    .line 189
    const-string v1, "mblu"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_c

    .line 196
    .line 197
    invoke-static {}, Lcom/umeng/analytics/pro/bt;->a()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_9

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_9
    invoke-static {}, Lcom/umeng/analytics/pro/bt;->f()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    new-instance v0, Lcom/umeng/analytics/pro/bh;

    .line 211
    .line 212
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bh;-><init>()V

    .line 213
    .line 214
    .line 215
    return-object v0

    .line 216
    :cond_a
    invoke-static {}, Lcom/umeng/analytics/pro/bt;->g()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_b

    .line 221
    .line 222
    new-instance v0, Lcom/umeng/analytics/pro/bj;

    .line 223
    .line 224
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bj;-><init>()V

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_b
    return-object v2

    .line 229
    :cond_c
    :goto_0
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    .line 230
    .line 231
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bn;-><init>()V

    .line 232
    .line 233
    .line 234
    return-object v0

    .line 235
    :cond_d
    :goto_1
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    .line 236
    .line 237
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bm;-><init>()V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
    :cond_e
    :goto_2
    new-instance v0, Lcom/umeng/analytics/pro/bp;

    .line 242
    .line 243
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bp;-><init>()V

    .line 244
    .line 245
    .line 246
    return-object v0

    .line 247
    :cond_f
    :goto_3
    new-instance v0, Lcom/umeng/analytics/pro/bs;

    .line 248
    .line 249
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bs;-><init>()V

    .line 250
    .line 251
    .line 252
    return-object v0
.end method
