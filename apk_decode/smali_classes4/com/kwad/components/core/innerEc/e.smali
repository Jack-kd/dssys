.class public Lcom/kwad/components/core/innerEc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile ST:Lcom/kwad/components/core/innerEc/e;

.field private static final SV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SW:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SX:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private SU:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

.field private SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/kwad/components/core/innerEc/e;->SW:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/kwad/components/core/innerEc/e;->SX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "InnerEcLoginManager"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/e;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 14
    .line 15
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/kwad/components/core/innerEc/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/d;

    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/d;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/kwad/components/core/innerEc/d;->a(Ljava/lang/String;Lcom/kwad/components/core/innerEc/c;Ljava/lang/String;)V

    return-void
.end method

.method private getExpire()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;->expire:J

    .line 4
    .line 5
    return-wide v0
.end method

.method private init()V
    .locals 6

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/kwad/components/core/innerEc/e;->SX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    sget-object v1, Lcom/kwad/components/core/innerEc/e;->SW:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    const-class v2, Lcom/kwad/sdk/service/a/f;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/kwad/sdk/service/ServiceProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/kwad/sdk/service/a/f;

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/kwad/sdk/service/a/f;->getApiVersion()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v4, "4.10.30"

    .line 43
    .line 44
    invoke-static {v2, v4}, Lcom/kwad/sdk/utils/bz;->aE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const-class v4, Lcom/kwad/components/core/innerEc/RouteHandlerActivityProxy;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    :try_start_0
    const-class v2, Lcom/kwad/auth/login/KwadRouteHandlerActivity;

    .line 53
    .line 54
    sget v5, Lcom/kwad/auth/login/KwadRouteHandlerActivity;->b:I

    .line 55
    .line 56
    invoke-static {v2, v4}, Lcom/kwad/sdk/service/c;->putComponentProxy(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    :try_start_1
    const-string v2, "com.kwai.auth.login.kwailogin.applogin.RouteHandlerActivity"

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2, v4}, Lcom/kwad/sdk/service/c;->putComponentProxy(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    :goto_1
    const-class v1, Lcom/kwad/components/core/offline/a/a/a;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/kwad/components/core/offline/a/a/a;

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    invoke-interface {v1}, Lcom/kwad/components/core/offline/a/a/a;->tr()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v5, "getApp: "

    .line 108
    .line 109
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    const-string v5, "InnerEcLoginManager"

    .line 120
    .line 121
    invoke-static {v5, v4}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    invoke-interface {v1}, Lcom/kwad/components/core/offline/a/a/a;->ts()Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, p0, Lcom/kwad/components/core/innerEc/e;->SU:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/e;->rh()Z

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_2
    return-void
.end method

.method public static isReady()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static rf()Lcom/kwad/components/core/innerEc/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->ST:Lcom/kwad/components/core/innerEc/e;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/kwad/components/core/innerEc/e;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/kwad/components/core/innerEc/e;->ST:Lcom/kwad/components/core/innerEc/e;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/core/innerEc/e;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/e;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/kwad/components/core/innerEc/e;->ST:Lcom/kwad/components/core/innerEc/e;

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
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->ST:Lcom/kwad/components/core/innerEc/e;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/e;->init()V

    .line 37
    .line 38
    .line 39
    :cond_2
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->ST:Lcom/kwad/components/core/innerEc/e;

    .line 40
    .line 41
    return-object v0
.end method

.method private rh()Z
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ai;->f(Landroid/content/Context;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 17
    .line 18
    invoke-direct {v2}, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 35
    :goto_1
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "InnerEcLoginManager"

    const-string v1, "click start"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "adInnerEcExternalModule is null"

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2, v3, v2, v1}, Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;->onFailed(ILjava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SU:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p2, v3, v2, v1}, Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;->onFailed(ILjava/lang/String;I)V

    return-void

    .line 6
    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->startLoginAuth(Landroid/app/Activity;Lcom/kwad/components/offline/api/adInnerEc/login/IAdInnerEcLoginBindListener;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/kwad/components/offline/api/adInnerEc/login/InnerEcLoginResponse;Landroid/app/Activity;)V
    .locals 1

    .line 7
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SU:Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void

    .line 11
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/kwad/components/offline/api/core/adInnerEc/IAdInnerEcExternalModule;->handleLoginResponse(Lcom/kwad/components/offline/api/adInnerEc/login/InnerEcLoginResponse;Landroid/app/Activity;)V

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 4
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Lcom/kwad/sdk/utils/ai;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final getServiceToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;->serviceToken:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;->sid:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;->userId:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final re()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/e;->SY:Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/InnerEcUserLoginBindInfo;->userName:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public final rg()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/kwad/components/core/innerEc/e;->SV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Vf()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->Ve()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/e;->rh()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/e;->getExpire()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    cmp-long v0, v2, v4

    .line 38
    .line 39
    if-lez v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/e;->getServiceToken()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/e;->getSid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/kwad/components/core/innerEc/e;->getUserId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    cmp-long v0, v2, v4

    .line 66
    .line 67
    if-gtz v0, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/e;->getExpire()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    cmp-long v0, v2, v4

    .line 79
    .line 80
    if-gez v0, :cond_4

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    return v0

    .line 84
    :cond_4
    :goto_0
    return v1
.end method
