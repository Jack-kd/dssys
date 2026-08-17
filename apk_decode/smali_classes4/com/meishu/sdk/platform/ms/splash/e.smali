.class public Lcom/meishu/sdk/platform/ms/splash/e;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

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
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 14
    .line 15
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "sensor"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/hardware/SensorManager;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 36
    .line 37
    if-eqz v1, :cond_e

    .line 38
    .line 39
    iget v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a:I

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v2, v4, :cond_b

    .line 44
    .line 45
    const/4 v5, 0x6

    .line 46
    if-ne v2, v5, :cond_1

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    const/16 v5, 0x9

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    if-eq v2, v6, :cond_7

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v7, 0x3

    .line 59
    if-eq v2, v7, :cond_3

    .line 60
    .line 61
    const/4 v7, 0x5

    .line 62
    if-eq v2, v7, :cond_3

    .line 63
    .line 64
    const/4 v7, 0x7

    .line 65
    if-eq v2, v7, :cond_3

    .line 66
    .line 67
    const/16 v7, 0x8

    .line 68
    .line 69
    if-ne v2, v7, :cond_d

    .line 70
    .line 71
    :cond_3
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 84
    .line 85
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 93
    .line 94
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 99
    .line 100
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 107
    .line 108
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 109
    .line 110
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 113
    .line 114
    invoke-virtual {v1, v2, v0, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 120
    .line 121
    if-nez v1, :cond_6

    .line 122
    .line 123
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 124
    .line 125
    invoke-virtual {v1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 130
    .line 131
    :cond_6
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 134
    .line 135
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 138
    .line 139
    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 144
    .line 145
    if-nez v2, :cond_8

    .line 146
    .line 147
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 152
    .line 153
    :cond_8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 154
    .line 155
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 156
    .line 157
    if-nez v1, :cond_9

    .line 158
    .line 159
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 160
    .line 161
    invoke-virtual {v1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 166
    .line 167
    :cond_9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 168
    .line 169
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 170
    .line 171
    if-nez v1, :cond_a

    .line 172
    .line 173
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 180
    .line 181
    :cond_a
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 182
    .line 183
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 184
    .line 185
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->l:Landroid/hardware/Sensor;

    .line 188
    .line 189
    invoke-virtual {v1, v2, v0, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 193
    .line 194
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 195
    .line 196
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 199
    .line 200
    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 204
    .line 205
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 206
    .line 207
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->m:Landroid/hardware/Sensor;

    .line 210
    .line 211
    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_b
    :goto_2
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 216
    .line 217
    if-nez v2, :cond_c

    .line 218
    .line 219
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 224
    .line 225
    :cond_c
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 226
    .line 227
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 228
    .line 229
    iget-object v2, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->k:Landroid/hardware/Sensor;

    .line 232
    .line 233
    invoke-virtual {v1, v2, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 234
    .line 235
    .line 236
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/e;->a:Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 237
    .line 238
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->n:Z

    .line 239
    .line 240
    if-eqz v1, :cond_e

    .line 241
    .line 242
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->c:Landroid/hardware/SensorManager;

    .line 243
    .line 244
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->o:Landroid/hardware/SensorEventListener;

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 247
    .line 248
    .line 249
    const-string v0, "ShakeUtil"

    .line 250
    .line 251
    const-string v1, "initSensorPause"

    .line 252
    .line 253
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .line 255
    .line 256
    :cond_e
    return-void

    .line 257
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    .line 259
    .line 260
    return-void
.end method
