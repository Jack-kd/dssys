.class public Lcom/anythink/network/ubix/UbATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "UbATInitManager"

.field private static f:Lcom/anythink/network/ubix/UbATInitManager;


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

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

.field public volatile mHasInit:Z


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
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATInitManager;->a:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATInitManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATInitManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/ubix/UbATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInitManager;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 5
    iget-object v4, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/api/MediationInitCallback;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {v4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/anythink/network/ubix/UbATInitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/network/ubix/UbATInitManager;->f:Lcom/anythink/network/ubix/UbATInitManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/anythink/network/ubix/UbATInitManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/anythink/network/ubix/UbATInitManager;->f:Lcom/anythink/network/ubix/UbATInitManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/anythink/network/ubix/UbATInitManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/anythink/network/ubix/UbATInitManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/anythink/network/ubix/UbATInitManager;->f:Lcom/anythink/network/ubix/UbATInitManager;

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
    sget-object v0, Lcom/anythink/network/ubix/UbATInitManager;->f:Lcom/anythink/network/ubix/UbATInitManager;

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
    const-string v0, "2.10.2.11.1.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UBiX"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.ubix.ssp.open.UBiXInitManger"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/anythink/network/ubix/UbATConst;->getNetworkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    const-string v0, ""

    .line 7
    .line 8
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
    iget-boolean v0, p0, Lcom/anythink/network/ubix/UbATInitManager;->mHasInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_9

    .line 6
    .line 7
    invoke-interface {p3}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATInitManager;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

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
    :cond_1
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

    .line 45
    .line 46
    :cond_3
    if-eqz p3, :cond_4

    .line 47
    .line 48
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATInitManager;->b:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-object p3, p0, Lcom/anythink/network/ubix/UbATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const-string p3, "app_id"

    .line 61
    .line 62
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p3, :cond_5

    .line 79
    .line 80
    const-string p1, ""

    .line 81
    .line 82
    const-string p2, "ubix init failed: app_id is empty"

    .line 83
    .line 84
    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/network/ubix/UbATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    :try_start_1
    iget-object p3, p0, Lcom/anythink/network/ubix/UbATInitManager;->d:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    .line 89
    .line 90
    if-nez p3, :cond_8

    .line 91
    .line 92
    new-instance p3, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;

    .line 93
    .line 94
    invoke-direct {p3}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-static {}, Lcom/anythink/core/api/ATDeviceUtils;->getOaid()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    invoke-virtual {p3, v1}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->setCanUseOaid(Z)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v2}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->setDevOaid(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    .line 113
    .line 114
    :catchall_1
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->getPersionalizedAdStatus()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, 0x2

    .line 119
    if-ne v2, v3, :cond_7

    .line 120
    .line 121
    move v2, v1

    .line 122
    goto :goto_1

    .line 123
    :cond_7
    move v2, v0

    .line 124
    :goto_1
    invoke-virtual {p3, v2}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->setPersonalizedState(I)Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 125
    .line 126
    .line 127
    :catchall_2
    :try_start_4
    invoke-virtual {p3}, Lcom/ubix/ssp/open/UBiXAdPrivacyManager$Builder;->build()Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    iput-object p3, p0, Lcom/anythink/network/ubix/UbATInitManager;->d:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_3
    move-exception p1

    .line 135
    goto :goto_3

    .line 136
    :cond_8
    :goto_2
    new-instance p3, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    .line 137
    .line 138
    invoke-direct {p3}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lcom/anythink/network/ubix/UbATInitManager;->d:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    .line 142
    .line 143
    invoke-virtual {p3, v2}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->setPrivacyManager(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    const-string v2, "TaKu"

    .line 148
    .line 149
    invoke-virtual {p3, v2}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->setPublisherId(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p3, v1}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->setUseTextureView(Z)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p0}, Lcom/anythink/core/api/ATInitMediation;->getUserId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p3, v1}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->setUserId(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXAdSetting$Builder;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p3}, Lcom/ubix/ssp/open/UBiXAdSetting$Builder;->build()Lcom/ubix/ssp/open/UBiXAdSetting;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lcom/ubix/ssp/open/UBiXInitManger;->getInstance(Landroid/content/Context;)Lcom/ubix/ssp/open/manager/InitManager;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v1, Lcom/anythink/network/ubix/UbATInitManager$a;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/anythink/network/ubix/UbATInitManager$a;-><init>(Lcom/anythink/network/ubix/UbATInitManager;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, p2, p3, v1}, Lcom/ubix/ssp/open/manager/InitManager;->launchSDK(Ljava/lang/String;Lcom/ubix/ssp/open/UBiXAdSetting;Lcom/ubix/ssp/open/AdLoadCallbackListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string p2, ""

    .line 191
    .line 192
    invoke-direct {p0, v0, p2, p1}, Lcom/anythink/network/ubix/UbATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_9
    :goto_4
    return-void

    .line 196
    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    throw p1
.end method

.method public setUBiXAdPrivacyManager(Lcom/ubix/ssp/open/UBiXAdPrivacyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATInitManager;->d:Lcom/ubix/ssp/open/UBiXAdPrivacyManager;

    .line 2
    .line 3
    return-void
.end method
