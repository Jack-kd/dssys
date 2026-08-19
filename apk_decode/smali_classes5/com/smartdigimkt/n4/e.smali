.class public final Lcom/smartdigimkt/n4/e;
.super Lcom/smartdigimkt/n4/d;
.source "SourceFile"


# instance fields
.field public volatile d:Lcom/smartdigimkt/n4/h;


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
.method public final a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/smartdigimkt/n4/h;->a(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getUrlType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final handleRespon(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/smartdigimkt/c5/k;->g(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getUrlType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "eu_traffic"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/smartdigimkt/n4/h;->a(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Lcom/smartdigimkt/c5/k;->g(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;->getUrlType()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "eu_traffic"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/smartdigimkt/n4/d;->c:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Lcom/smartdigimkt/n4/h;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/smartdigimkt/n4/d;->a:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/smartdigimkt/n4/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    new-instance v4, Lcom/smartdigimkt/n4/g;

    .line 43
    .line 44
    invoke-direct {v4}, Lcom/smartdigimkt/n4/g;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2, v3, v4}, Lcom/smartdigimkt/n4/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;Lcom/smartdigimkt/n4/g;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit v0

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1

    .line 59
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Lcom/smartdigimkt/n4/d;->interceptRequest(Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/smartdigimkt/n4/e;->d:Lcom/smartdigimkt/n4/h;

    .line 64
    .line 65
    invoke-virtual {v1, v0, p1}, Lcom/smartdigimkt/n4/h;->b(Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;Lcom/smartdigimkt/sdk/core/net/entity/HttpReqEntity;)Lcom/smartdigimkt/sdk/core/net/entity/HttpRespEntity;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_2
    const/4 p1, 0x0

    .line 71
    return-object p1
.end method
