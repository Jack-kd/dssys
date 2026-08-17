.class public final Lcom/smartdigimkt/n4/b;
.super Lcom/smartdigimkt/n4/d;
.source "SourceFile"


# instance fields
.field public volatile d:Z

.field public volatile e:J

.field public volatile f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/smartdigimkt/n4/d;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/smartdigimkt/n4/b;->d:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/smartdigimkt/n4/b;->e:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/smartdigimkt/n4/b;->f:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getInterceptKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_req_next_time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final a(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->getUrlKey()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->getReqNextTime()J

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->getHttpCode()I

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    const-string v1, "sdm_adx_rp_app_pl_cl_retry"

    .line 4
    invoke-static {}, Lcom/smartdigimkt/v4/c;->a()Lcom/smartdigimkt/v4/c;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/smartdigimkt/v4/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/smartdigimkt/v4/a;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getInterceptKey()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0, p2}, Lcom/smartdigimkt/n4/b;->a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_req_count_limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_req_count"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1, v0, p2}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x18

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final b(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getUrlType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "app_strategy"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getInterceptKey()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/smartdigimkt/z4/d;->a()Lcom/smartdigimkt/a5/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x1

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget v0, v0, Lcom/smartdigimkt/a5/a;->g0:I

    .line 46
    .line 47
    if-ne v0, p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/smartdigimkt/c5/k;->g(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return p1

    .line 60
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 61
    return p1
.end method

.method public final handleRespon(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/smartdigimkt/n4/b;->b(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->c:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/smartdigimkt/n4/b;->a(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/smartdigimkt/n4/b;->b(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-object v5

    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getInterceptKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual/range {p0 .. p1}, Lcom/smartdigimkt/n4/b;->a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v7, "_req_count"

    .line 26
    .line 27
    invoke-static {v4, v7}, Lcom/smartdigimkt/p/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-string v8, "_req_count_limit"

    .line 32
    .line 33
    invoke-static {v4, v8}, Lcom/smartdigimkt/p/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const-string v9, "_req_first_timestamp"

    .line 38
    .line 39
    invoke-static {v4, v9}, Lcom/smartdigimkt/p/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    :try_start_0
    invoke-super/range {p0 .. p1}, Lcom/smartdigimkt/n4/d;->interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 44
    .line 45
    .line 46
    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 47
    if-nez v10, :cond_1

    .line 48
    .line 49
    return-object v5

    .line 50
    :cond_1
    :try_start_1
    iget-object v5, v1, Lcom/smartdigimkt/n4/d;->c:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v11

    .line 57
    iget-object v13, v1, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 58
    .line 59
    const-string v14, "sdm_adx_rp_app_pl_cl_retry"

    .line 60
    .line 61
    invoke-static {}, Lcom/smartdigimkt/v4/c;->a()Lcom/smartdigimkt/v4/c;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    invoke-virtual {v15, v13, v14}, Lcom/smartdigimkt/v4/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/smartdigimkt/v4/a;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    const-wide/16 v14, 0x18

    .line 70
    .line 71
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    invoke-interface {v13, v14, v8}, Lcom/smartdigimkt/v4/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    check-cast v14, Ljava/lang/Long;

    .line 80
    .line 81
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v14

    .line 85
    invoke-virtual {v10}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->isIntercept()Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-nez v16, :cond_8

    .line 90
    .line 91
    move-wide/from16 v16, v2

    .line 92
    .line 93
    iget-wide v2, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 94
    .line 95
    cmp-long v4, v2, v16

    .line 96
    .line 97
    if-gtz v4, :cond_2

    .line 98
    .line 99
    invoke-interface {v13, v0, v9}, Lcom/smartdigimkt/v4/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_2
    :goto_0
    iput-wide v2, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 114
    .line 115
    iget-wide v2, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 116
    .line 117
    cmp-long v2, v2, v16

    .line 118
    .line 119
    if-lez v2, :cond_4

    .line 120
    .line 121
    const-wide/32 v18, 0x5265c00

    .line 122
    .line 123
    .line 124
    iget-wide v3, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 125
    .line 126
    sub-long v2, v11, v3

    .line 127
    .line 128
    cmp-long v2, v2, v18

    .line 129
    .line 130
    if-ltz v2, :cond_3

    .line 131
    .line 132
    iput-wide v11, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 133
    .line 134
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v13, v0, v9}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-interface {v13, v0, v7}, Lcom/smartdigimkt/v4/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const-wide/32 v18, 0x5265c00

    .line 154
    .line 155
    .line 156
    iput-wide v11, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 157
    .line 158
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v13, v0, v9}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_1
    move-wide/from16 v2, v16

    .line 166
    .line 167
    :goto_2
    const-wide/16 v11, 0x1

    .line 168
    .line 169
    sub-long v16, v14, v11

    .line 170
    .line 171
    cmp-long v0, v2, v16

    .line 172
    .line 173
    if-ltz v0, :cond_7

    .line 174
    .line 175
    iget-wide v2, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 176
    .line 177
    add-long v2, v2, v18

    .line 178
    .line 179
    iget-object v0, v1, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v0, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    :cond_5
    const-wide/16 v16, 0x4

    .line 191
    .line 192
    div-long v14, v14, v16

    .line 193
    .line 194
    cmp-long v0, v14, v11

    .line 195
    .line 196
    if-gtz v0, :cond_6

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_6
    move-wide v11, v14

    .line 200
    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-interface {v13, v0, v8}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v13, v0, v6}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    add-long/2addr v2, v11

    .line 216
    iput-wide v2, v1, Lcom/smartdigimkt/n4/b;->f:J

    .line 217
    .line 218
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-interface {v13, v0, v7}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_8
    iget-boolean v0, v1, Lcom/smartdigimkt/n4/b;->d:Z

    .line 227
    .line 228
    if-nez v0, :cond_9

    .line 229
    .line 230
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, v1, Lcom/smartdigimkt/n4/b;->d:Z

    .line 232
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v2, "_agent_event"

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 251
    .line 252
    invoke-interface {v13, v2, v0}, Lcom/smartdigimkt/v4/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Ljava/lang/Boolean;

    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-nez v2, :cond_9

    .line 263
    .line 264
    iget-wide v2, v1, Lcom/smartdigimkt/n4/b;->e:J

    .line 265
    .line 266
    iget-wide v6, v1, Lcom/smartdigimkt/n4/b;->f:J

    .line 267
    .line 268
    new-instance v4, Lcom/smartdigimkt/q3/c;

    .line 269
    .line 270
    const-string v8, ""

    .line 271
    .line 272
    const-string v9, ""

    .line 273
    .line 274
    invoke-direct {v4, v8, v9}, Lcom/smartdigimkt/q3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string v8, "3000008"

    .line 278
    .line 279
    iput-object v8, v4, Lcom/smartdigimkt/q3/c;->a:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    iput-object v2, v4, Lcom/smartdigimkt/q3/c;->l:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    iput-object v2, v4, Lcom/smartdigimkt/q3/c;->m:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iput-object v2, v4, Lcom/smartdigimkt/q3/c;->n:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v4}, Lcom/smartdigimkt/y3/h;->a(Lcom/smartdigimkt/q3/c;)V

    .line 300
    .line 301
    .line 302
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 303
    .line 304
    invoke-interface {v13, v2, v0}, Lcom/smartdigimkt/v4/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_9
    :goto_4
    monitor-exit v5

    .line 308
    return-object v10

    .line 309
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    move-object v5, v10

    .line 313
    goto :goto_6

    .line 314
    :catchall_2
    move-exception v0

    .line 315
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    return-object v5
.end method
