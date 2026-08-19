.class public final Lcom/smartdigimkt/n4/a;
.super Lcom/smartdigimkt/n4/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartdigimkt/n4/d;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getUrlType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getInterceptKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v2, "app_strategy"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "placement_strategy"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v2, "get_plugin"

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_2
    :goto_0
    return v1
.end method

.method public final handleRespon(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/smartdigimkt/n4/a;->b(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->getHttpCode()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->getUrlKey()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->getReqNextTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const/16 p1, 0x2bb

    .line 23
    .line 24
    if-ne p2, p1, :cond_2

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    cmp-long p1, v1, p1

    .line 29
    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/smartdigimkt/n4/d;->c:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    iget-object p2, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 50
    .line 51
    const-string v3, "sdm_adx_rp_app_pl_cl_retry"

    .line 52
    .line 53
    invoke-static {p2, v3, v0, v1, v2}, Lcom/smartdigimkt/c5/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    .line 55
    .line 56
    monitor-exit p1

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p2

    .line 60
    :cond_2
    :goto_2
    return-void
.end method

.method public final interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartdigimkt/n4/a;->b(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/smartdigimkt/n4/d;->interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->isIntercept()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x2bb

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;->setInterceptStatusCode(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-object p1
.end method
