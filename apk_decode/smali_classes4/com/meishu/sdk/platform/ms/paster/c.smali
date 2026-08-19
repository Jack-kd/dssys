.class public Lcom/meishu/sdk/platform/ms/paster/c;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/b;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/paster/d$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/paster/d$a;Lcom/meishu/sdk/meishu_ad/nativ/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/paster/c;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "-999"

    .line 4
    .line 5
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 8
    .line 9
    iget-boolean v3, v2, Lcom/meishu/sdk/platform/ms/paster/d;->d:Z

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v2, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/paster/c;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 52
    .line 53
    iget-object v3, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/paster/d;->f:Lcom/meishu/sdk/core/ad/paster/a;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v2, v3}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/paster/c;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 67
    .line 68
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v3, 0x1

    .line 73
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    iget-object v2, v1, Lcom/meishu/sdk/platform/ms/paster/c;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 77
    .line 78
    invoke-interface {v2}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClickUrl()[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    iget-object v6, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 93
    .line 94
    iget v6, v6, Lcom/meishu/sdk/platform/ms/paster/d;->g:I

    .line 95
    .line 96
    const/16 v7, -0x3e7

    .line 97
    .line 98
    if-nez v6, :cond_2

    .line 99
    .line 100
    move v6, v7

    .line 101
    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iget-object v8, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 106
    .line 107
    iget-object v8, v8, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 108
    .line 109
    iget v8, v8, Lcom/meishu/sdk/platform/ms/paster/d;->h:I

    .line 110
    .line 111
    if-nez v8, :cond_3

    .line 112
    .line 113
    move v8, v7

    .line 114
    :cond_3
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    iget-object v9, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 119
    .line 120
    iget-object v9, v9, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 121
    .line 122
    iget v9, v9, Lcom/meishu/sdk/platform/ms/paster/d;->i:I

    .line 123
    .line 124
    if-nez v9, :cond_4

    .line 125
    .line 126
    move v9, v7

    .line 127
    :cond_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    iget-object v10, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 132
    .line 133
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 134
    .line 135
    iget v10, v10, Lcom/meishu/sdk/platform/ms/paster/d;->j:I

    .line 136
    .line 137
    if-nez v10, :cond_5

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    move v7, v10

    .line 141
    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    const-wide/16 v10, 0x3e8

    .line 146
    .line 147
    div-long v10, v4, v10

    .line 148
    .line 149
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v17

    .line 153
    iget-object v10, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 154
    .line 155
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 156
    .line 157
    iget-wide v10, v10, Lcom/meishu/sdk/platform/ms/paster/d;->k:J

    .line 158
    .line 159
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v18

    .line 163
    iget-object v10, v1, Lcom/meishu/sdk/platform/ms/paster/c;->b:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 164
    .line 165
    iget-object v10, v10, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 166
    .line 167
    iget-wide v10, v10, Lcom/meishu/sdk/platform/ms/paster/d;->k:J

    .line 168
    .line 169
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v19

    .line 173
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :try_start_1
    iget-object v4, v1, Lcom/meishu/sdk/platform/ms/paster/c;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 178
    .line 179
    invoke-interface {v4}, Lcom/meishu/sdk/meishu_ad/nativ/b;->a()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-eqz v4, :cond_9

    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefault_coord()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_6

    .line 196
    .line 197
    move-object v6, v4

    .line 198
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_7

    .line 203
    .line 204
    move-object v8, v4

    .line 205
    :cond_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_8

    .line 210
    .line 211
    move-object v9, v4

    .line 212
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    move-object/from16 v16, v4

    .line 219
    .line 220
    move-object v13, v6

    .line 221
    :goto_1
    move-object v14, v8

    .line 222
    move-object v15, v9

    .line 223
    goto :goto_3

    .line 224
    :cond_9
    :goto_2
    move-object v13, v6

    .line 225
    move-object/from16 v16, v7

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :goto_3
    const/4 v0, 0x0

    .line 234
    :goto_4
    array-length v4, v2

    .line 235
    if-ge v0, v4, :cond_a

    .line 236
    .line 237
    aget-object v12, v2, v0

    .line 238
    .line 239
    invoke-static/range {v12 .. v20}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    aput-object v4, v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    .line 245
    add-int/lit8 v0, v0, 0x1

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    :cond_a
    iget-object v0, v1, Lcom/meishu/sdk/platform/ms/paster/c;->a:Lcom/meishu/sdk/meishu_ad/nativ/b;

    .line 253
    .line 254
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 255
    .line 256
    .line 257
    return-void
.end method
