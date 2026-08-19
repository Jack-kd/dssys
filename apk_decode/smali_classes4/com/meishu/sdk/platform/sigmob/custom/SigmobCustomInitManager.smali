.class public Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SigmobCustomInitManager"

.field private static sInstance:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;


# instance fields
.field private isInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->isInit:Z

    .line 2
    .line 3
    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;
    .locals 2

    .line 1
    const-class v0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->sInstance:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->sInstance:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->sInstance:Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method private static sensorCanUse()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->getDisableSensorTypes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/16 v2, 0x9

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    :catch_0
    :cond_1
    return v0
.end method

.method private static setSensorStatus(Lcom/sigmob/windad/WindAds;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/sigmob/windad/WindAds;

    .line 8
    .line 9
    const-string v2, "setSensorStatus"

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-class v0, Ljava/lang/Boolean;

    .line 18
    .line 19
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v1, v2, v0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->sensorCanUse()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, p0, v1}, Lcom/meishu/sdk/core/utils/ReflectUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized initSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->isInit:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-interface {p4}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->enableDebug()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAds;->setDebugEnable(Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->setSensorStatus(Lcom/sigmob/windad/WindAds;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->getCanUseSdkPersonalRecommend()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAds;->setPersonalizedAdvertisingOn(Z)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/sigmob/windad/WindAdOptions;

    .line 59
    .line 60
    invoke-direct {v1, p2, p3}, Lcom/sigmob/windad/WindAdOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$1;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$1;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2}, Lcom/sigmob/windad/WindAdOptions;->setCustomController(Lcom/sigmob/windad/WindCustomController;)Lcom/sigmob/windad/WindAdOptions;

    .line 69
    .line 70
    .line 71
    const-class p2, Landroid/content/Context;

    .line 72
    .line 73
    const-class p3, Lcom/sigmob/windad/WindAdOptions;

    .line 74
    .line 75
    const-class v3, Lcom/sigmob/windad/OnInitializationListener;

    .line 76
    .line 77
    filled-new-array {p2, p3, v3}, [Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-class p3, Lcom/sigmob/windad/WindAds;

    .line 82
    .line 83
    const-string v3, "init"

    .line 84
    .line 85
    invoke-static {p3, v3, p2}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    const-string p3, "SigmobCustomInitManager"

    .line 92
    .line 93
    const-string v2, "new api"

    .line 94
    .line 95
    invoke-static {p3, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-class p3, Lcom/sigmob/windad/OnInitializationListener;

    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const-class v2, Lcom/sigmob/windad/OnInitializationListener;

    .line 105
    .line 106
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;

    .line 111
    .line 112
    new-instance v4, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;

    .line 113
    .line 114
    invoke-direct {v4, p0, p4, v0}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$2;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;Lcom/sigmob/windad/WindAds;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v4}, Lcom/meishu/sdk/platform/sigmob/custom/init/ProxyOnInitializationListener;-><init>(Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p3, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    check-cast p3, Lcom/sigmob/windad/OnInitializationListener;

    .line 125
    .line 126
    filled-new-array {p1, v1, p3}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p2, v0, p1}, Lcom/meishu/sdk/core/utils/ReflectUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :cond_3
    :try_start_2
    const-class p2, Landroid/content/Context;

    .line 136
    .line 137
    const-class p3, Lcom/sigmob/windad/WindAdOptions;

    .line 138
    .line 139
    filled-new-array {p2, p3}, [Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    const-class p3, Lcom/sigmob/windad/WindAds;

    .line 144
    .line 145
    const-string v3, "startWithOptions"

    .line 146
    .line 147
    invoke-static {p3, v3, p2}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_4

    .line 152
    .line 153
    const-string p3, "SigmobCustomInitManager"

    .line 154
    .line 155
    const-string v3, "old api"

    .line 156
    .line 157
    invoke-static {p3, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p2, v0, p1}, Lcom/meishu/sdk/core/utils/ReflectUtil;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    iput-boolean v2, p0, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager;->isInit:Z

    .line 168
    .line 169
    if-eqz p4, :cond_4

    .line 170
    .line 171
    invoke-interface {p4}, Lcom/meishu/sdk/platform/sigmob/custom/SigmobCustomInitManager$InitCallback;->onSuccess()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    :cond_4
    monitor-exit p0

    .line 175
    return-void

    .line 176
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    throw p1
.end method
