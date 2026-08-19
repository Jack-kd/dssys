.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5412(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->a(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-long v1, v1

    .line 30
    iget-object v3, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    int-to-long v3, v3

    .line 37
    invoke-static {v0, v1, v2, v3, v4}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;JJ)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-lt v0, v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 76
    .line 77
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$002(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_skip_button:I

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 111
    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 129
    .line 130
    .line 131
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->onImageComplete()V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/os/Handler;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Runnable;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    int-to-float v0, v0

    .line 169
    const/high16 v1, 0x3f800000    # 1.0f

    .line 170
    .line 171
    mul-float/2addr v0, v1

    .line 172
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 173
    .line 174
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    int-to-float v1, v1

    .line 179
    div-float/2addr v0, v1

    .line 180
    float-to-double v0, v0

    .line 181
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .line 182
    .line 183
    cmpl-double v3, v0, v3

    .line 184
    .line 185
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 186
    .line 187
    if-ltz v3, :cond_3

    .line 188
    .line 189
    cmpg-double v3, v0, v4

    .line 190
    .line 191
    if-gez v3, :cond_3

    .line 192
    .line 193
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_5

    .line 200
    .line 201
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->OneQuarterReport()V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 207
    .line 208
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6002(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_3
    cmpl-double v3, v0, v4

    .line 213
    .line 214
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    .line 215
    .line 216
    if-ltz v3, :cond_4

    .line 217
    .line 218
    cmpg-double v3, v0, v4

    .line 219
    .line 220
    if-gez v3, :cond_4

    .line 221
    .line 222
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_5

    .line 229
    .line 230
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->OneHalfReport()V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 236
    .line 237
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_4
    cmpl-double v3, v0, v4

    .line 242
    .line 243
    if-ltz v3, :cond_5

    .line 244
    .line 245
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 246
    .line 247
    cmpg-double v0, v0, v3

    .line 248
    .line 249
    if-gez v0, :cond_5

    .line 250
    .line 251
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_5

    .line 258
    .line 259
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->ThreeQuarterReport()V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 265
    .line 266
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)Z

    .line 267
    .line 268
    .line 269
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/os/Handler;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$14;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 276
    .line 277
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/Runnable;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    const-wide/16 v2, 0x64

    .line 282
    .line 283
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    .line 289
    .line 290
    return-void
.end method
