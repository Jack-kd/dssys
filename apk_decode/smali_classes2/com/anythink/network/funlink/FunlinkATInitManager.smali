.class public Lcom/anythink/network/funlink/FunlinkATInitManager;
.super Lcom/anythink/core/api/ATInitMediation;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "FunlinkATInitManager"

.field private static f:Lcom/anythink/network/funlink/FunlinkATInitManager;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/api/MediationInitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/fl/saas/adx/api/FLParamConfig$Builder;

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
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->a:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_2

    .line 15
    .line 16
    iget-object v4, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/anythink/core/api/MediationInitCallback;

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {v4}, Lcom/anythink/core/api/MediationInitCallback;->onSuccess()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    invoke-interface {v4, p2}, Lcom/anythink/core/api/MediationInitCallback;->onFail(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method

.method public static getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATInitManager;->f:Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/anythink/network/funlink/FunlinkATInitManager;->f:Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/anythink/network/funlink/FunlinkATInitManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/anythink/network/funlink/FunlinkATInitManager;->f:Lcom/anythink/network/funlink/FunlinkATInitManager;

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
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATInitManager;->f:Lcom/anythink/network/funlink/FunlinkATInitManager;

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
    const-string v0, "2.9.1.1.1"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Funlink"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkSDKClass()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.fl.saas.adx.api.FLConfig"

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/api/FLConfig;->getInstance()Lcom/fl/saas/adx/api/FLConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/fl/saas/adx/api/FLConfig;->getSdkVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public varargs handleAdCacheLoadedCallback(ZLjava/lang/Object;JLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;[Lcom/anythink/core/api/BaseAd;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p5, :cond_3

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p1, p3, v0

    .line 8
    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p2, "error price: "

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p5, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    if-eqz p7, :cond_1

    .line 37
    .line 38
    array-length p1, p7

    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    aget-object p1, p7, p1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_0
    new-instance p6, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;

    .line 47
    .line 48
    invoke-direct {p6, p2}, Lcom/anythink/network/funlink/FunlinkATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    long-to-double p2, p3

    .line 52
    new-instance p4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p7, ""

    .line 65
    .line 66
    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    sget-object p7, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 74
    .line 75
    invoke-static {p2, p3, p4, p6, p7}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p5, p2, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    if-eqz p6, :cond_3

    .line 84
    .line 85
    invoke-interface {p6, p7}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    .locals 9
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
    iget-boolean v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->mHasInit:Z

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
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    if-eqz p3, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p1, v0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_3
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 48
    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    .line 63
    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz p3, :cond_6

    .line 66
    .line 67
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->c:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_6
    const-string p3, "app_id"

    .line 73
    .line 74
    invoke-static {p2, p3}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    const/4 p3, 0x0

    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    const-string p1, "funlink init failed: appId is empty"

    .line 93
    .line 94
    invoke-direct {p0, p3, p1}, Lcom/anythink/network/funlink/FunlinkATInitManager;->a(ZLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_7
    :try_start_1
    iget-object p2, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->d:Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    .line 99
    .line 100
    if-nez p2, :cond_8

    .line 101
    .line 102
    new-instance p2, Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    .line 103
    .line 104
    invoke-direct {p2}, Lcom/fl/saas/adx/api/FLParamConfig$Builder;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p2, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->d:Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    move-object p1, v0

    .line 112
    goto :goto_2

    .line 113
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->d:Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    .line 114
    .line 115
    const-string v0, "TAKU"

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lcom/fl/saas/adx/base/base/builder/InnerBuilder;->setSourceTag(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/fl/saas/adx/api/FLParamConfig$Builder;->build()Lcom/fl/saas/adx/api/FLParamConfig;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {}, Lcom/fl/saas/adx/api/FLConfig;->getInstance()Lcom/fl/saas/adx/api/FLConfig;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v6, ""

    .line 132
    .line 133
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    move-object v4, p1

    .line 138
    invoke-virtual/range {v3 .. v8}, Lcom/fl/saas/adx/api/FLConfig;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fl/saas/adx/api/FLParamConfig;Z)V

    .line 139
    .line 140
    .line 141
    iput-boolean v2, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->mHasInit:Z

    .line 142
    .line 143
    const-string p1, ""

    .line 144
    .line 145
    invoke-direct {p0, v2, p1}, Lcom/anythink/network/funlink/FunlinkATInitManager;->a(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p3, p1}, Lcom/anythink/network/funlink/FunlinkATInitManager;->a(ZLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    throw p1
.end method

.method public setFunlinkParamConfigBuilder(Lcom/fl/saas/adx/api/FLParamConfig$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInitManager;->d:Lcom/fl/saas/adx/api/FLParamConfig$Builder;

    .line 2
    .line 3
    return-void
.end method
