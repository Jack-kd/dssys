.class public final Lcom/smartdigimkt/n4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/smartdigimkt/n4/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/smartdigimkt/n4/f;->a:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/smartdigimkt/n4/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    new-instance v0, Lcom/smartdigimkt/n4/a;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/smartdigimkt/n4/a;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/smartdigimkt/n4/f;->c:Lcom/smartdigimkt/n4/a;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, Lcom/smartdigimkt/n4/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_4

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getUrlType()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v1, p0, Lcom/smartdigimkt/n4/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;

    .line 21
    .line 22
    if-nez v1, :cond_6

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, -0x1

    .line 40
    sparse-switch v1, :sswitch_data_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_0
    const-string v1, "get_area"

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x2

    .line 54
    goto :goto_0

    .line 55
    :sswitch_1
    const-string v1, "eu_traffic"

    .line 56
    .line 57
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :sswitch_2
    const-string v1, "app_strategy"

    .line 67
    .line 68
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v2, 0x0

    .line 76
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/smartdigimkt/n4/c;

    .line 81
    .line 82
    invoke-direct {v0, p1}, Lcom/smartdigimkt/n4/c;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_3

    .line 88
    :pswitch_1
    new-instance v0, Lcom/smartdigimkt/n4/e;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Lcom/smartdigimkt/n4/e;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_2
    new-instance v0, Lcom/smartdigimkt/n4/b;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lcom/smartdigimkt/n4/b;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    if-eqz v0, :cond_5

    .line 100
    .line 101
    iget-object p1, p0, Lcom/smartdigimkt/n4/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_2
    monitor-exit p0

    .line 107
    return-object v0

    .line 108
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    throw p1

    .line 110
    :cond_6
    return-object v1

    .line 111
    :cond_7
    :goto_4
    return-object v0

    .line 112
    nop

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x5e742fd1 -> :sswitch_2
        0x7132256e -> :sswitch_1
        0x75c91fd6 -> :sswitch_0
    .end sparse-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleRespon(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/smartdigimkt/n4/f;->c:Lcom/smartdigimkt/n4/a;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/smartdigimkt/n4/a;->handleRespon(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartdigimkt/n4/f;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/smartdigimkt/n4/f;->a(Landroid/content/Context;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;->handleRespon(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_2
    return-void
.end method

.method public final interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/smartdigimkt/n4/f;->c:Lcom/smartdigimkt/n4/a;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/smartdigimkt/n4/a;->interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->isIntercept()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/smartdigimkt/n4/f;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/smartdigimkt/n4/f;->a(Landroid/content/Context;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/smartdigimkt/sdk/core/net/interceptor/IHttpLoaderInterceptor;->interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    return-object p1

    .line 41
    :cond_3
    return-object v1

    .line 42
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    :cond_4
    :goto_2
    return-object v1
.end method
