.class public Lcom/fl/saas/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/fl/saas/f0;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/fl/saas/f0;
    .locals 2

    .line 2
    sget-object v0, Lcom/fl/saas/f0;->a:Lcom/fl/saas/f0;

    if-nez v0, :cond_0

    const-class v0, Lcom/fl/saas/f0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/fl/saas/f0;

    invoke-direct {v1}, Lcom/fl/saas/f0;-><init>()V

    sput-object v1, Lcom/fl/saas/f0;->a:Lcom/fl/saas/f0;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/fl/saas/f0;->a:Lcom/fl/saas/f0;

    return-object v0
.end method

.method private c()Lorg/json/JSONObject;
    .locals 11

    .line 1
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_zz_number"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/S0;->a(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/fl/saas/z;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string v3, "id"

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    invoke-static {v4}, Lcom/fl/saas/adx/util/DeviceUtil;->getReqID(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v3, "version"

    .line 37
    .line 38
    const-string v4, "29109"

    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v3, "secure"

    .line 44
    .line 45
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->isHttpSupported()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v3, "dpVersion"

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string v0, "sdkPackageName"

    .line 66
    .line 67
    const-string v3, "com.fl.saas.adx"

    .line 68
    .line 69
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getDeviceInfo()Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDebug()Z

    .line 77
    .line 78
    .line 79
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/4 v4, 0x1

    .line 81
    const-string v5, "isDebug"

    .line 82
    .line 83
    const-string v6, "rootEnabled"

    .line 84
    .line 85
    const-string v7, "proxyEnabled"

    .line 86
    .line 87
    const-string v8, "usbEnabled"

    .line 88
    .line 89
    const-string v9, "hasSimCard"

    .line 90
    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    :try_start_1
    invoke-static {}, Lcom/fl/saas/S0;->a()Lcom/fl/saas/S0;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const-string v10, "fl_mit_state"

    .line 98
    .line 99
    invoke-virtual {v3, v10, v2}, Lcom/fl/saas/S0;->a(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto :goto_3

    .line 123
    :cond_2
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDeveloperOptionsEnabled(Landroid/content/Context;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isNetworkProxyEnabled(Landroid/content/Context;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDeviceRooted()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDebug()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceStateUtil;->hasSimCard(Landroid/content/Context;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_1

    .line 168
    .line 169
    :goto_1
    move v2, v4

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDeveloperOptionsEnabled(Landroid/content/Context;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isNetworkProxyEnabled(Landroid/content/Context;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDeviceRooted()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceStateUtil;->isDebug()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-static {v3}, Lcom/fl/saas/adx/util/DeviceStateUtil;->hasSimCard(Landroid/content/Context;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_1

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :goto_2
    const-string v2, "device"

    .line 219
    .line 220
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    const-string v0, "app"

    .line 224
    .line 225
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getAppInfo()Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .line 231
    .line 232
    return-object v1

    .line 233
    :goto_3
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://dp.funlinkads.com/api/dp/content?md5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/fl/saas/f0$b;

    invoke-direct {v1, p0}, Lcom/fl/saas/f0$b;-><init>(Lcom/fl/saas/f0;)V

    invoke-virtual {v0, p1, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Lcom/fl/saas/T;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/fl/saas/f0;->c()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/fl/saas/k;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/fl/saas/f0$a;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/fl/saas/f0$a;-><init>(Lcom/fl/saas/f0;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "https://dp.funlinkads.com/api/dp/config"

    .line 23
    .line 24
    invoke-virtual {v0, v3, v1, v2}, Lcom/fl/saas/Y;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/T;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
