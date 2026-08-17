.class public Lorg/eclipse/jetty/client/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/client/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lorg/eclipse/jetty/client/j;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jetty/client/j;Lorg/eclipse/jetty/client/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/j$b;-><init>(Lorg/eclipse/jetty/client/j;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/j;->onConnectionFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/eclipse/jetty/client/j;->access$100(Lorg/eclipse/jetty/client/j;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/eclipse/jetty/client/j;->access$100(Lorg/eclipse/jetty/client/j;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setRetryStatus(Z)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->onRetry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lorg/eclipse/jetty/client/j;->LOG:LR1/c;

    .line 15
    .line 16
    invoke-interface {v1, v0}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->onResponseHeaderComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/j;->onException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/eclipse/jetty/client/j;->access$100(Lorg/eclipse/jetty/client/j;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/eclipse/jetty/client/j;->access$100(Lorg/eclipse/jetty/client/j;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public e()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->onRequestComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 11
    .line 12
    iput-boolean v0, v2, Lorg/eclipse/jetty/client/j;->_onRequestCompleteDone:Z

    .line 13
    .line 14
    iget-boolean v0, v2, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 15
    .line 16
    iget-boolean v3, v2, Lorg/eclipse/jetty/client/j;->_onResponseCompleteDone:Z

    .line 17
    .line 18
    or-int/2addr v0, v3

    .line 19
    iput-boolean v0, v2, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    iget-object v2, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 40
    .line 41
    monitor-enter v2

    .line 42
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 43
    .line 44
    iput-boolean v0, v3, Lorg/eclipse/jetty/client/j;->_onRequestCompleteDone:Z

    .line 45
    .line 46
    iget-boolean v0, v3, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 47
    .line 48
    iget-boolean v4, v3, Lorg/eclipse/jetty/client/j;->_onResponseCompleteDone:Z

    .line 49
    .line 50
    or-int/2addr v0, v4

    .line 51
    iput-boolean v0, v3, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_2
    move-exception v0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    .line 65
    .line 66
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    throw v1

    .line 68
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    throw v0
.end method

.method public f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->onExpire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/eclipse/jetty/client/j;->access$100(Lorg/eclipse/jetty/client/j;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 14
    .line 15
    invoke-static {v1}, Lorg/eclipse/jetty/client/j;->access$100(Lorg/eclipse/jetty/client/j;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->onRequestCommitted()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(LL1/d;LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/client/j;->onResponseHeader(LL1/d;LL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(LL1/d;ILL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/client/j;->onResponseStatus(LL1/d;ILL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/j;->onResponseContent(LL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->onResponseComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 11
    .line 12
    iput-boolean v0, v2, Lorg/eclipse/jetty/client/j;->_onResponseCompleteDone:Z

    .line 13
    .line 14
    iget-boolean v0, v2, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 15
    .line 16
    iget-boolean v3, v2, Lorg/eclipse/jetty/client/j;->_onRequestCompleteDone:Z

    .line 17
    .line 18
    or-int/2addr v0, v3

    .line 19
    iput-boolean v0, v2, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw v0

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    iget-object v2, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 40
    .line 41
    monitor-enter v2

    .line 42
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 43
    .line 44
    iput-boolean v0, v3, Lorg/eclipse/jetty/client/j;->_onResponseCompleteDone:Z

    .line 45
    .line 46
    iget-boolean v0, v3, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 47
    .line 48
    iget-boolean v4, v3, Lorg/eclipse/jetty/client/j;->_onRequestCompleteDone:Z

    .line 49
    .line 50
    or-int/2addr v0, v4

    .line 51
    iput-boolean v0, v3, Lorg/eclipse/jetty/client/j;->_onDone:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_2
    move-exception v0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/j$b;->a:Lorg/eclipse/jetty/client/j;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    .line 65
    .line 66
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    throw v1

    .line 68
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    throw v0
.end method
