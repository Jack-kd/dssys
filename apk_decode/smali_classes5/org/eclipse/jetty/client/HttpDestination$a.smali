.class public Lorg/eclipse/jetty/client/HttpDestination$a;
.super Lorg/eclipse/jetty/client/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/HttpDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/eclipse/jetty/client/k$c;

.field public final synthetic b:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/b;Lorg/eclipse/jetty/client/k$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/eclipse/jetty/client/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->a:Lorg/eclipse/jetty/client/k$c;

    .line 7
    .line 8
    const-string p1, "CONNECT"

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setMethod(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/b;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/j;->setRequestURI(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "Host"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jetty/client/j;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "Proxy-Connection"

    .line 26
    .line 27
    const-string p2, "keep-alive"

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/client/j;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "User-Agent"

    .line 33
    .line 34
    const-string p2, "Jetty-Client"

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/client/j;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->o(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 5
    .line 6
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->a(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->a(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/eclipse/jetty/client/j;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x9

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public onExpire()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 5
    .line 6
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->a(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->b:Lorg/eclipse/jetty/client/HttpDestination;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/eclipse/jetty/client/HttpDestination;->a(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/eclipse/jetty/client/j;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->f()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method

.method public onResponseComplete()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/e;->getResponseStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->a:Lorg/eclipse/jetty/client/k$c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/k$c;->u()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/16 v1, 0x1f8

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination$a;->onExpire()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "Proxy: "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->a:Lorg/eclipse/jetty/client/k$c;

    .line 36
    .line 37
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/k$c;->p()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ":"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination$a;->a:Lorg/eclipse/jetty/client/k$c;

    .line 50
    .line 51
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/k$c;->getRemotePort()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, " didn\'t return http return code 200, but "

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/HttpDestination$a;->onException(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
