.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

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
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1012(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;I)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1000(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 24
    .line 25
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$002(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Lcom/meishu/sdk/core/bquery/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v1, Lcom/meishu/sdk/R$id;->ms_reward_close_button_parent:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 47
    .line 48
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v1, 0x11

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/16 v1, 0x1f

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 75
    .line 76
    const-string v1, "broadcast_onreward"

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->onImageComplete()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1300(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Landroid/os/Handler;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1200(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Ljava/lang/Runnable;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1000(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    sub-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 119
    .line 120
    new-instance v3, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;

    .line 121
    .line 122
    invoke-direct {v3, p0, v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6$2;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1000(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    int-to-float v0, v0

    .line 135
    const/high16 v1, 0x3f800000    # 1.0f

    .line 136
    .line 137
    mul-float/2addr v0, v1

    .line 138
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    int-to-float v1, v1

    .line 145
    div-float/2addr v0, v1

    .line 146
    float-to-double v0, v0

    .line 147
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .line 148
    .line 149
    cmpl-double v3, v0, v3

    .line 150
    .line 151
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 152
    .line 153
    if-ltz v3, :cond_1

    .line 154
    .line 155
    cmpg-double v3, v0, v4

    .line 156
    .line 157
    if-gez v3, :cond_1

    .line 158
    .line 159
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1500(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->OneQuarterReport()V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 173
    .line 174
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1502(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_1
    cmpl-double v3, v0, v4

    .line 179
    .line 180
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    .line 181
    .line 182
    if-ltz v3, :cond_2

    .line 183
    .line 184
    cmpg-double v3, v0, v4

    .line 185
    .line 186
    if-gez v3, :cond_2

    .line 187
    .line 188
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1600(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_3

    .line 195
    .line 196
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->OneHalfReport()V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 202
    .line 203
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1602(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_2
    cmpl-double v3, v0, v4

    .line 208
    .line 209
    if-ltz v3, :cond_3

    .line 210
    .line 211
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 212
    .line 213
    cmpg-double v0, v0, v3

    .line 214
    .line 215
    if-gez v0, :cond_3

    .line 216
    .line 217
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1700(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_3

    .line 224
    .line 225
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->ThreeQuarterReport()V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 231
    .line 232
    invoke-static {v0, v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1702(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Z)Z

    .line 233
    .line 234
    .line 235
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1300(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Landroid/os/Handler;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$6;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 242
    .line 243
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$1200(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Ljava/lang/Runnable;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-wide/16 v2, 0x64

    .line 248
    .line 249
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    return-void
.end method
