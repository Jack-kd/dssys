.class public Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;
.super Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/DownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationClickReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/DownloadUtils;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/DownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 12
    .line 13
    iget-wide v5, v4, Lcom/meishu/sdk/core/utils/DownloadUtils;->e:J

    .line 14
    .line 15
    sub-long/2addr v2, v5

    .line 16
    iput-wide v2, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->f:J

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v4, Lcom/meishu/sdk/core/utils/DownloadUtils;->e:J

    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 25
    .line 26
    iget-wide v1, v1, Lcom/meishu/sdk/core/utils/DownloadUtils;->f:J

    .line 27
    .line 28
    const-wide/16 v3, 0x1f4

    .line 29
    .line 30
    cmp-long v1, v1, v3

    .line 31
    .line 32
    if-gez v1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    const-string v1, "notify_url"

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "notify_id"

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const v4, 0x418dd5be

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    const/4 v6, 0x2

    .line 58
    if-eq v2, v4, :cond_3

    .line 59
    .line 60
    const v4, 0x42454c88

    .line 61
    .line 62
    .line 63
    if-eq v2, v4, :cond_2

    .line 64
    .line 65
    const v3, 0x69ebebad

    .line 66
    .line 67
    .line 68
    if-eq v2, v3, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v2, "ACTION_DOWNLOAD_INSTALL"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    move v3, v6

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_2
    const-string v2, "ACTION_DOWNLOAD_PAUSE"

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const-string v2, "ACTION_DOWNLOAD_CACEL"

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    move v3, v5

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    :goto_0
    const/4 v3, -0x1

    .line 104
    :goto_1
    if-eqz v3, :cond_9

    .line 105
    .line 106
    if-eq v3, v5, :cond_7

    .line 107
    .line 108
    if-eq v3, v6, :cond_5

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_5
    sget-object v0, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/download/a;->b(Ljava/lang/String;)Lcom/meishu/sdk/core/download/d;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_f

    .line 119
    .line 120
    iget-object v2, v2, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 121
    .line 122
    if-eqz v2, :cond_f

    .line 123
    .line 124
    iget v2, v2, Lcom/meishu/sdk/core/download/b;->g:I

    .line 125
    .line 126
    const/4 v3, 0x5

    .line 127
    if-ne v2, v3, :cond_f

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/download/a;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_7
    sget-object p1, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/download/a;->a(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 166
    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 170
    .line 171
    .line 172
    :cond_8
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_9
    sget-object v0, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/download/a;->b(Ljava/lang/String;)Lcom/meishu/sdk/core/download/d;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_e

    .line 193
    .line 194
    iget-object v1, v0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 195
    .line 196
    if-eqz v1, :cond_e

    .line 197
    .line 198
    const-string v2, "ms_notification_pause"

    .line 199
    .line 200
    const-string v3, "id"

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v4, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_a

    .line 215
    .line 216
    sget p1, Lcom/meishu/sdk/R$id;->ms_notification_pause:I

    .line 217
    .line 218
    :cond_a
    iget v1, v1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 219
    .line 220
    const/4 v2, 0x3

    .line 221
    if-ne v1, v2, :cond_b

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/meishu/sdk/core/download/d;->a()V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    .line 229
    .line 230
    if-eqz v0, :cond_e

    .line 231
    .line 232
    const-string v1, "\u6682\u505c"

    .line 233
    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_b
    iget-object v1, v0, Lcom/meishu/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/meishu/sdk/core/download/d;->a:Lcom/meishu/sdk/core/download/b;

    .line 244
    .line 245
    iget v3, v1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 246
    .line 247
    if-ne v3, v5, :cond_c

    .line 248
    .line 249
    iput v2, v1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 250
    .line 251
    sget-object v2, Lcom/meishu/sdk/core/download/d;->g:Landroid/os/Handler;

    .line 252
    .line 253
    new-instance v3, Lcom/meishu/sdk/core/download/f;

    .line 254
    .line 255
    invoke-direct {v3, v0, v1}, Lcom/meishu/sdk/core/download/f;-><init>(Lcom/meishu/sdk/core/download/d;Lcom/meishu/sdk/core/download/b;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_c
    if-ne v3, v6, :cond_d

    .line 263
    .line 264
    iput v2, v1, Lcom/meishu/sdk/core/download/b;->g:I

    .line 265
    .line 266
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 267
    .line 268
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->b:Landroid/widget/RemoteViews;

    .line 269
    .line 270
    if-eqz v0, :cond_e

    .line 271
    .line 272
    const-string v1, "\u7ee7\u7eed"

    .line 273
    .line 274
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    :cond_e
    :goto_3
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 278
    .line 279
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 280
    .line 281
    if-eqz p1, :cond_f

    .line 282
    .line 283
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 284
    .line 285
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_f

    .line 294
    .line 295
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 296
    .line 297
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    check-cast p1, Lcom/meishu/sdk/core/utils/l0;

    .line 306
    .line 307
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/DownloadUtils$NotificationClickReceiver;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 308
    .line 309
    iget-object v0, v0, Lcom/meishu/sdk/core/utils/DownloadUtils;->a:Landroid/app/NotificationManager;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/l0;->a:Landroid/app/Notification;

    .line 312
    .line 313
    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .line 315
    .line 316
    :cond_f
    :goto_4
    return-void

    .line 317
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    return-void
.end method
