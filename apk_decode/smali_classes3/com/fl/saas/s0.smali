.class public abstract Lcom/fl/saas/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/fl/saas/j;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "click"

    .line 2
    .line 3
    const-string v1, "mit"

    .line 4
    .line 5
    const-string v2, "msg"

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    new-instance v3, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "taskId"

    .line 26
    .line 27
    iget-object v6, p1, Lcom/fl/saas/j;->w2:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const-string v6, "maxShowRatio"

    .line 37
    .line 38
    const-string v7, "type"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string p0, "place_id"

    .line 46
    .line 47
    iget-object v0, p1, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string p0, "reqTime"

    .line 53
    .line 54
    iget-wide v0, p1, Lcom/fl/saas/j;->l:J

    .line 55
    .line 56
    invoke-virtual {v4, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    const-string p0, "task_type"

    .line 60
    .line 61
    iget-object v0, p1, Lcom/fl/saas/j;->m:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string p0, "trackId"

    .line 67
    .line 68
    iget-object v0, p1, Lcom/fl/saas/j;->r:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string p0, "realWidth"

    .line 74
    .line 75
    iget v0, p1, Lcom/fl/saas/j;->P1:I

    .line 76
    .line 77
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string p0, "realHeight"

    .line 81
    .line 82
    iget v0, p1, Lcom/fl/saas/j;->Q1:I

    .line 83
    .line 84
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string p0, "width"

    .line 88
    .line 89
    iget v0, p1, Lcom/fl/saas/j;->v1:I

    .line 90
    .line 91
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string p0, "height"

    .line 95
    .line 96
    iget v0, p1, Lcom/fl/saas/j;->w1:I

    .line 97
    .line 98
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    iget p0, p1, Lcom/fl/saas/j;->n2:I

    .line 102
    .line 103
    invoke-virtual {v4, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_1

    .line 117
    .line 118
    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string p0, "down_x"

    .line 122
    .line 123
    iget v0, p1, Lcom/fl/saas/j;->E1:I

    .line 124
    .line 125
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string p0, "down_y"

    .line 129
    .line 130
    iget v0, p1, Lcom/fl/saas/j;->F1:I

    .line 131
    .line 132
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    const-string p0, "up_x"

    .line 136
    .line 137
    iget v0, p1, Lcom/fl/saas/j;->G1:I

    .line 138
    .line 139
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    const-string p0, "up_y"

    .line 143
    .line 144
    iget v0, p1, Lcom/fl/saas/j;->H1:I

    .line 145
    .line 146
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    const-string p0, "abs_down_x"

    .line 150
    .line 151
    iget v0, p1, Lcom/fl/saas/j;->I1:I

    .line 152
    .line 153
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string p0, "abs_down_y"

    .line 157
    .line 158
    iget v0, p1, Lcom/fl/saas/j;->J1:I

    .line 159
    .line 160
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    const-string p0, "abs_up_x"

    .line 164
    .line 165
    iget v0, p1, Lcom/fl/saas/j;->K1:I

    .line 166
    .line 167
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    const-string p0, "abs_up_y"

    .line 171
    .line 172
    iget v0, p1, Lcom/fl/saas/j;->L1:I

    .line 173
    .line 174
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    const-string p0, "clickArea"

    .line 178
    .line 179
    iget-object v0, p1, Lcom/fl/saas/j;->o2:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    const-string p0, "DOWN_TIME"

    .line 185
    .line 186
    iget-wide v0, p1, Lcom/fl/saas/j;->R1:J

    .line 187
    .line 188
    invoke-virtual {v4, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    const-string p0, "UP_TIME"

    .line 192
    .line 193
    iget-wide v0, p1, Lcom/fl/saas/j;->S1:J

    .line 194
    .line 195
    invoke-virtual {v4, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    const-string p0, "shake_x"

    .line 199
    .line 200
    iget v0, p1, Lcom/fl/saas/j;->M1:I

    .line 201
    .line 202
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    const-string p0, "shake_y"

    .line 206
    .line 207
    iget v0, p1, Lcom/fl/saas/j;->N1:I

    .line 208
    .line 209
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    const-string p0, "shake_z"

    .line 213
    .line 214
    iget v0, p1, Lcom/fl/saas/j;->O1:I

    .line 215
    .line 216
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    const-string p0, "clickTypeValue"

    .line 220
    .line 221
    iget-object v0, p1, Lcom/fl/saas/j;->s0:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v4, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    iget p0, p1, Lcom/fl/saas/j;->n2:I

    .line 227
    .line 228
    invoke-virtual {v4, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    const-string p0, "ACH"

    .line 232
    .line 233
    iget p1, p1, Lcom/fl/saas/j;->L2:I

    .line 234
    .line 235
    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :goto_1
    invoke-virtual {v3, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    return-object p0

    .line 248
    :catchall_0
    :cond_2
    const-string p0, ""

    .line 249
    .line 250
    return-object p0
.end method
