.class public Lcom/anythink/network/meishu/MsATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source "SourceFile"


# static fields
.field public static CHANNEL:Ljava/lang/String; = "3718"

.field private static final g:Ljava/lang/String; = "MsATInitManager"

.field private static h:Lcom/anythink/network/meishu/MsATInitManager;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

.field private f:Lcom/meishu/sdk/core/MSAdConfig$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/core/api/ATInitMediation;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATInitManager;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATInitManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInitManager;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/anythink/core/api/MediationInitCallback;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {v4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, " | "

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v4, v5}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInitManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p1
.end method

.method public static getInstance()Lcom/anythink/network/meishu/MsATInitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/network/meishu/MsATInitManager;->h:Lcom/anythink/network/meishu/MsATInitManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/anythink/network/meishu/MsATInitManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/anythink/network/meishu/MsATInitManager;->h:Lcom/anythink/network/meishu/MsATInitManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/anythink/network/meishu/MsATInitManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/anythink/network/meishu/MsATInitManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/anythink/network/meishu/MsATInitManager;->h:Lcom/anythink/network/meishu/MsATInitManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/anythink/network/meishu/MsATInitManager;->h:Lcom/anythink/network/meishu/MsATInitManager;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public getAdapterBridgeVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.5.13.0.1.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Meishu"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.meishu.sdk.core.AdSdk"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getVersionName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/anythink/network/meishu/MsATInitManager;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-interface {p3}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInitManager;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_2
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 36
    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATInitManager;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_5
    const-string p3, "app_id"

    .line 61
    .line 62
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    const-string v0, "secure"

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    invoke-static {p2, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v3, 0x0

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    const-string p1, ""

    .line 81
    .line 82
    const-string p2, "ms init failed: app_id is empty"

    .line 83
    .line 84
    invoke-direct {p0, v3, p1, p2}, Lcom/anythink/network/meishu/MsATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 89
    .line 90
    if-nez v1, :cond_7

    .line 91
    .line 92
    new-instance v1, Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 93
    .line 94
    invoke-direct {v1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 104
    .line 105
    invoke-virtual {v1, p3}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p3, v1}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->enableDebug(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p3, v3}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->setUseMediation(Z)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p3, v0}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->secure(I)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p3, v2}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->downloadConfirm(I)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 126
    .line 127
    .line 128
    const-string p3, "wechat_app_id"

    .line 129
    .line 130
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    if-nez p3, :cond_8

    .line 139
    .line 140
    iget-object p3, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 141
    .line 142
    invoke-virtual {p3, p2}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->setWxAppid(Ljava/lang/String;)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 143
    .line 144
    .line 145
    :cond_8
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATInitManager;->e:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 146
    .line 147
    if-eqz p2, :cond_9

    .line 148
    .line 149
    iget-object p3, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 150
    .line 151
    invoke-virtual {p3, p2}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->customController(Lcom/meishu/sdk/core/MSAdConfig$CustomController;)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_9
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 156
    .line 157
    new-instance p3, Lcom/anythink/network/meishu/MsATInitManager$a;

    .line 158
    .line 159
    invoke-direct {p3, p0}, Lcom/anythink/network/meishu/MsATInitManager$a;-><init>(Lcom/anythink/network/meishu/MsATInitManager;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p3}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->customController(Lcom/meishu/sdk/core/MSAdConfig$CustomController;)Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 163
    .line 164
    .line 165
    :goto_2
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/meishu/sdk/core/MSAdConfig$Builder;->build()Lcom/meishu/sdk/core/MSAdConfig;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    const/16 p3, 0x5d

    .line 172
    .line 173
    invoke-static {p3}, Lcom/anythink/core/api/ATSDKGlobalSetting;->isShakeEnabled(I)Ljava/lang/Boolean;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    if-eqz p3, :cond_b

    .line 178
    .line 179
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    const/4 v0, 0x4

    .line 184
    const/16 v1, 0x9

    .line 185
    .line 186
    if-eqz p3, :cond_a

    .line 187
    .line 188
    invoke-virtual {p2, v2}, Lcom/meishu/sdk/core/MSAdConfig;->clearDisableSensor(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v1}, Lcom/meishu/sdk/core/MSAdConfig;->clearDisableSensor(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/MSAdConfig;->clearDisableSensor(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_a
    invoke-virtual {p2, v2}, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorType(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v1}, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorType(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/MSAdConfig;->disableSensorType(I)V

    .line 205
    .line 206
    .line 207
    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/AdSdk;->init(Landroid/content/Context;Lcom/meishu/sdk/core/MSAdConfig;)V

    .line 212
    .line 213
    .line 214
    iput-boolean v2, p0, Lcom/anythink/network/meishu/MsATInitManager;->c:Z

    .line 215
    .line 216
    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, v2, p1, p1}, Lcom/anythink/network/meishu/MsATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-string p2, ""

    .line 226
    .line 227
    invoke-direct {p0, v3, p2, p1}, Lcom/anythink/network/meishu/MsATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    throw p1
.end method

.method public setCustomController(Lcom/meishu/sdk/core/MSAdConfig$CustomController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATInitManager;->e:Lcom/meishu/sdk/core/MSAdConfig$CustomController;

    .line 2
    .line 3
    return-void
.end method

.method public setMSAdConfigBuilder(Lcom/meishu/sdk/core/MSAdConfig$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATInitManager;->f:Lcom/meishu/sdk/core/MSAdConfig$Builder;

    .line 2
    .line 3
    return-void
.end method
