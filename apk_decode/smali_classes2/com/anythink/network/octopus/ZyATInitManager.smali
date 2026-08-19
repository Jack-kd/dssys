.class public Lcom/anythink/network/octopus/ZyATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "ZyATInitManager"

.field private static f:Lcom/anythink/network/octopus/ZyATInitManager;


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

.field private d:Lcom/octopus/ad/OctopusAdSdkController;

.field public mHasInit:Z


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
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATInitManager;->a:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInitManager;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

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
    iget-object v4, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

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
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public static getInstance()Lcom/anythink/network/octopus/ZyATInitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATInitManager;->f:Lcom/anythink/network/octopus/ZyATInitManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/anythink/network/octopus/ZyATInitManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/anythink/network/octopus/ZyATInitManager;->f:Lcom/anythink/network/octopus/ZyATInitManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/anythink/network/octopus/ZyATInitManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/anythink/network/octopus/ZyATInitManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/anythink/network/octopus/ZyATInitManager;->f:Lcom/anythink/network/octopus/ZyATInitManager;

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
    sget-object v0, Lcom/anythink/network/octopus/ZyATInitManager;->f:Lcom/anythink/network/octopus/ZyATInitManager;

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
    const-string v0, "2.6.5.7.1.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Octopus"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.octopus.ad.Octopus"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/octopus/ad/Octopus;->getSdkVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getServiceStatus()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.octopus.ad.DownloadService"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 3
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
    iget-boolean v0, p0, Lcom/anythink/network/octopus/ZyATInitManager;->mHasInit:Z

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInitManager;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

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
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

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
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

    .line 45
    .line 46
    :cond_3
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-eqz p3, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATInitManager;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_4
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
    const-string p2, "Octopus init failed: app_id is empty"

    .line 83
    .line 84
    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/network/octopus/ZyATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->getPersionalizedAdStatus()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    const/4 v1, 0x2

    .line 93
    if-ne p3, v1, :cond_6

    .line 94
    .line 95
    move p3, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    move p3, v0

    .line 98
    :goto_1
    invoke-static {p3}, Lcom/octopus/ad/Octopus;->setLimitPersonalAds(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    .line 101
    :catchall_1
    const/16 p3, 0x60

    .line 102
    .line 103
    invoke-static {p3}, Lcom/anythink/core/api/ATSDKGlobalSetting;->isShakeEnabled(I)Ljava/lang/Boolean;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    if-eqz p3, :cond_7

    .line 108
    .line 109
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-nez p3, :cond_7

    .line 114
    .line 115
    move p3, v0

    .line 116
    goto :goto_2

    .line 117
    :cond_7
    move p3, v2

    .line 118
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->d:Lcom/octopus/ad/OctopusAdSdkController;

    .line 119
    .line 120
    if-nez v1, :cond_8

    .line 121
    .line 122
    new-instance v1, Lcom/anythink/network/octopus/ZyATInitManager$a;

    .line 123
    .line 124
    invoke-direct {v1, p0, p3}, Lcom/anythink/network/octopus/ZyATInitManager$a;-><init>(Lcom/anythink/network/octopus/ZyATInitManager;Z)V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->d:Lcom/octopus/ad/OctopusAdSdkController;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catchall_2
    move-exception p1

    .line 131
    goto :goto_4

    .line 132
    :cond_8
    :goto_3
    iget-object p3, p0, Lcom/anythink/network/octopus/ZyATInitManager;->d:Lcom/octopus/ad/OctopusAdSdkController;

    .line 133
    .line 134
    invoke-static {p1, p2, p3}, Lcom/octopus/ad/Octopus;->init(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/OctopusAdSdkController;)V

    .line 135
    .line 136
    .line 137
    iput-boolean v2, p0, Lcom/anythink/network/octopus/ZyATInitManager;->mHasInit:Z

    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    invoke-direct {p0, v2, p1, p1}, Lcom/anythink/network/octopus/ZyATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const-string p2, ""

    .line 149
    .line 150
    invoke-direct {p0, v0, p2, p1}, Lcom/anythink/network/octopus/ZyATInitManager;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_9
    :goto_5
    return-void

    .line 154
    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    throw p1
.end method

.method public setOctopusAdSdkController(Lcom/octopus/ad/OctopusAdSdkController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATInitManager;->d:Lcom/octopus/ad/OctopusAdSdkController;

    .line 2
    .line 3
    return-void
.end method
