.class public abstract Lcom/smartdigimkt/n4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/smartdigimkt/n4/d;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getInterceptKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    const-string p1, ""

    .line 9
    .line 10
    return-object p1
.end method

.method public interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartdigimkt/n4/d;->a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-static {}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->create()Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/smartdigimkt/n4/d;->c:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Long;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 34
    .line 35
    const-string v3, "sdm_adx_rp_app_pl_cl_retry"

    .line 36
    .line 37
    invoke-static {v2, v3, p1}, Lcom/smartdigimkt/c5/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    cmp-long p1, v3, v5

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->setIntercept(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    const-wide/16 v9, -0x1

    .line 73
    .line 74
    cmp-long p1, v7, v9

    .line 75
    .line 76
    const/16 v4, 0x2bc

    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v7}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->setIntercept(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->setInterceptStatusCode(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    sub-long/2addr v8, v10

    .line 97
    cmp-long p1, v8, v5

    .line 98
    .line 99
    if-gez p1, :cond_4

    .line 100
    .line 101
    move v3, v7

    .line 102
    :cond_4
    if-eqz v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->setInterceptStatusCode(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {v0, v3}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->setIntercept(Z)V

    .line 108
    .line 109
    .line 110
    :goto_1
    monitor-exit v1

    .line 111
    return-object v0

    .line 112
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p1

    .line 114
    :cond_6
    :goto_3
    const/4 p1, 0x0

    .line 115
    return-object p1
.end method
