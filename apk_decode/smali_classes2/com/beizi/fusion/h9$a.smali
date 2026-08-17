.class Lcom/beizi/fusion/h9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/h9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/beizi/fusion/h9;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/h9;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/beizi/fusion/h9$a;->a:I

    .line 7
    .line 8
    return-void
.end method

.method private a()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/beizi/fusion/h9;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/beizi/fusion/h9;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/beizi/fusion/model/TaskBean;->getExpired()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {}, Lcom/beizi/fusion/h9;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lcom/beizi/fusion/model/TaskBean;->getBackTaskArray()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-lez v6, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v6}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    new-instance v7, Lcom/beizi/fusion/events/EventBean;

    .line 46
    .line 47
    sget-object v8, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-virtual {v9}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v17

    .line 73
    const-string v14, ""

    .line 74
    .line 75
    const-string v16, ""

    .line 76
    .line 77
    const-string v9, ""

    .line 78
    .line 79
    const-string v10, "500.200"

    .line 80
    .line 81
    const-string v11, ""

    .line 82
    .line 83
    const-string v13, ""

    .line 84
    .line 85
    invoke-direct/range {v7 .. v17}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v7}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 89
    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-ge v6, v7, :cond_1

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    sub-long/2addr v7, v3

    .line 103
    cmp-long v7, v7, v1

    .line 104
    .line 105
    if-lez v7, :cond_0

    .line 106
    .line 107
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v7}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    new-instance v8, Lcom/beizi/fusion/events/EventBean;

    .line 116
    .line 117
    sget-object v9, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v10}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v10

    .line 131
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    sub-int/2addr v10, v6

    .line 140
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v18

    .line 144
    const-string v15, ""

    .line 145
    .line 146
    const-string v17, ""

    .line 147
    .line 148
    const-string v10, ""

    .line 149
    .line 150
    const-string v11, "530.500"

    .line 151
    .line 152
    const-string v12, ""

    .line 153
    .line 154
    const-string v14, ""

    .line 155
    .line 156
    invoke-direct/range {v8 .. v18}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v8}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_0
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 168
    .line 169
    invoke-virtual {v7}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getType()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    iget-object v9, v0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 174
    .line 175
    invoke-static {v9}, Lcom/beizi/fusion/h9;->c(Lcom/beizi/fusion/h9;)Lcom/beizi/fusion/h9$b;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    new-instance v10, Lcom/beizi/fusion/h9$a$a;

    .line 180
    .line 181
    invoke-direct {v10, v0, v8, v7}, Lcom/beizi/fusion/h9$a$a;-><init>(Lcom/beizi/fusion/h9$a;ILcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    .line 186
    .line 187
    :try_start_0
    invoke-virtual {v7}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getSleepTime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v7

    .line 191
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    .line 194
    :catch_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/beizi/fusion/h9$a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/os/Message;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 28
    .line 29
    .line 30
    iput v2, v0, Landroid/os/Message;->what:I

    .line 31
    .line 32
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/beizi/fusion/h9;->c(Lcom/beizi/fusion/h9;)Lcom/beizi/fusion/h9$b;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/beizi/fusion/events/EventBean;

    .line 52
    .line 53
    sget-object v2, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const-string v8, ""

    .line 72
    .line 73
    const-string v10, ""

    .line 74
    .line 75
    const-string v3, ""

    .line 76
    .line 77
    const-string v4, "310.200"

    .line 78
    .line 79
    const-string v5, ""

    .line 80
    .line 81
    const-string v7, ""

    .line 82
    .line 83
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/beizi/fusion/h9;->b()Lcom/beizi/fusion/model/ResponseInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getTaskConfig()Lcom/beizi/fusion/model/TaskConfig;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-static {}, Lcom/beizi/fusion/h9;->b()Lcom/beizi/fusion/model/ResponseInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getTaskConfig()Lcom/beizi/fusion/model/TaskConfig;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskConfig;->getUrl()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskConfig;->getUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-static {v1, v0, v2, v3}, Lcom/beizi/fusion/o9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_4

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-lez v1, :cond_4

    .line 156
    .line 157
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "data"

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_4

    .line 173
    .line 174
    const-string v1, "null"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_4

    .line 181
    .line 182
    invoke-static {}, Lcom/beizi/fusion/tg;->b()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v1, v0}, Lcom/beizi/fusion/j2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_4

    .line 195
    .line 196
    invoke-static {v0}, Lcom/beizi/fusion/model/TaskBean;->objectFromData(Ljava/lang/String;)Lcom/beizi/fusion/model/TaskBean;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/beizi/fusion/h9;->a(Lcom/beizi/fusion/model/TaskBean;)Lcom/beizi/fusion/model/TaskBean;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/beizi/fusion/h9;->c()Lcom/beizi/fusion/model/TaskBean;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_4

    .line 208
    .line 209
    invoke-direct {p0}, Lcom/beizi/fusion/h9$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_2
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventCar;->doUpLoadLogs()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/beizi/fusion/h9;->a(Lcom/beizi/fusion/h9;)Ljava/lang/Boolean;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    const/4 v1, 0x0

    .line 236
    if-eqz v0, :cond_6

    .line 237
    .line 238
    iget-object v0, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 239
    .line 240
    invoke-static {v0}, Lcom/beizi/fusion/h9;->b(Lcom/beizi/fusion/h9;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_5

    .line 245
    .line 246
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/beizi/fusion/q1;->q()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_5

    .line 255
    .line 256
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/beizi/fusion/vo;->o(Landroid/content/Context;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_5

    .line 265
    .line 266
    :catch_0
    :cond_4
    :goto_0
    return-void

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 268
    .line 269
    invoke-static {v0, v1}, Lcom/beizi/fusion/h9;->a(Lcom/beizi/fusion/h9;Z)Z

    .line 270
    .line 271
    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    new-instance v0, Landroid/os/Message;

    .line 280
    .line 281
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 282
    .line 283
    .line 284
    iput v2, v0, Landroid/os/Message;->what:I

    .line 285
    .line 286
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 287
    .line 288
    iget-object v1, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 289
    .line 290
    invoke-static {v1}, Lcom/beizi/fusion/h9;->c(Lcom/beizi/fusion/h9;)Lcom/beizi/fusion/h9$b;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .line 296
    .line 297
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    new-instance v1, Lcom/beizi/fusion/events/EventBean;

    .line 306
    .line 307
    sget-object v2, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-virtual {v3}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 318
    .line 319
    .line 320
    move-result-wide v3

    .line 321
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    const-string v8, ""

    .line 326
    .line 327
    const-string v10, ""

    .line 328
    .line 329
    const-string v3, ""

    .line 330
    .line 331
    const-string v4, "310.200"

    .line 332
    .line 333
    const-string v5, ""

    .line 334
    .line 335
    const-string v7, ""

    .line 336
    .line 337
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/beizi/fusion/h9$a;->b:Lcom/beizi/fusion/h9;

    .line 345
    .line 346
    invoke-static {v0, v1}, Lcom/beizi/fusion/h9;->a(Lcom/beizi/fusion/h9;Z)Z

    .line 347
    .line 348
    .line 349
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    new-instance v1, Lcom/beizi/fusion/events/EventBean;

    .line 358
    .line 359
    sget-object v2, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v3}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 370
    .line 371
    .line 372
    move-result-wide v3

    .line 373
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    const-string v8, ""

    .line 378
    .line 379
    const-string v10, ""

    .line 380
    .line 381
    const-string v3, ""

    .line 382
    .line 383
    const-string v4, "310.210"

    .line 384
    .line 385
    const-string v5, ""

    .line 386
    .line 387
    const-string v7, ""

    .line 388
    .line 389
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 393
    .line 394
    .line 395
    return-void
.end method
