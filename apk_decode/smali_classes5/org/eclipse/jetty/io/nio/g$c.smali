.class public Lorg/eclipse/jetty/io/nio/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lorg/eclipse/jetty/io/nio/g;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/nio/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(LL1/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    check-cast p1, Lorg/eclipse/jetty/io/nio/a;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lorg/eclipse/jetty/io/nio/g;->n(Lorg/eclipse/jetty/io/nio/g;Lorg/eclipse/jetty/io/nio/a;)Lorg/eclipse/jetty/io/nio/a;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->r(Lorg/eclipse/jetty/io/nio/g;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->q(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLSession;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "{} ssl endp.close"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 23
    .line 24
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->x(Lorg/eclipse/jetty/io/nio/g;)LL1/k;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, LL1/k;->close()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->d()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/c;->e()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->h(Lorg/eclipse/jetty/io/nio/g;)LL1/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, LL1/k;->f(J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lorg/eclipse/jetty/io/nio/g;->y(Lorg/eclipse/jetty/io/nio/g;LL1/d;LL1/d;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g(LL1/d;LL1/d;LL1/d;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, LL1/d;->B0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/g$c;->i(LL1/d;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-interface {p2}, LL1/d;->B0()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/g$c;->i(LL1/d;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1
    if-eqz p3, :cond_2

    .line 28
    .line 29
    invoke-interface {p3}, LL1/d;->B0()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/g$c;->i(LL1/d;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public getConnection()LL1/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->l(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->getLocalPort()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->getRemotePort()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->r(Lorg/eclipse/jetty/io/nio/g;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->q(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLSession;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "{} ssl endp.ishut!"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public i(LL1/d;)I
    .locals 3

    .line 1
    invoke-interface {p1}, LL1/d;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2, p1}, Lorg/eclipse/jetty/io/nio/g;->y(Lorg/eclipse/jetty/io/nio/g;LL1/d;LL1/d;)Z

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, LL1/d;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr v0, p1

    .line 16
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->i(Lorg/eclipse/jetty/io/nio/g;)LL1/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->isOpen()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 5
    .line 6
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->r(Lorg/eclipse/jetty/io/nio/g;)LR1/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "{} ssl endp.oshut {}"

    .line 11
    .line 12
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 13
    .line 14
    invoke-static {v3}, Lorg/eclipse/jetty/io/nio/g;->q(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLSession;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v3, p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v1, v2}, Lorg/eclipse/jetty/io/nio/g;->t(Lorg/eclipse/jetty/io/nio/g;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 32
    .line 33
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->f(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLEngine;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g$c;->flush()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v2

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->k(Lorg/eclipse/jetty/io/nio/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, LL1/k;->l(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->j(Lorg/eclipse/jetty/io/nio/g;)LL1/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 5
    .line 6
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->s(Lorg/eclipse/jetty/io/nio/g;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g$c;->isOpen()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 19
    .line 20
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->f(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLEngine;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 36
    :goto_1
    monitor-exit v0

    .line 37
    return v1

    .line 38
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/k;->p()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, LL1/c;->q()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public r(LW1/e$a;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3}, LL1/c;->r(LW1/e$a;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 5
    .line 6
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->u(Lorg/eclipse/jetty/io/nio/g;)LL1/k;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, LL1/k;->s()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 17
    .line 18
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->v(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 25
    .line 26
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->v(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, LL1/d;->B0()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 40
    .line 41
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->w(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 48
    .line 49
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->w(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, LL1/d;->B0()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    :cond_1
    const/4 v1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    :goto_1
    monitor-exit v0

    .line 63
    return v1

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v1
.end method

.method public t(LL1/d;)I
    .locals 3

    .line 1
    invoke-interface {p1}, LL1/d;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, p1, v2}, Lorg/eclipse/jetty/io/nio/g;->y(Lorg/eclipse/jetty/io/nio/g;LL1/d;LL1/d;)Z

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, LL1/d;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr p1, v0

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g$c;->s()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->w(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/g;->o(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 14
    .line 15
    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/g;->v(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v0}, LL1/d;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {v1}, LL1/d;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_1
    if-nez v2, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-interface {v2}, LL1/d;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 44
    .line 45
    invoke-static {v2}, Lorg/eclipse/jetty/io/nio/g;->f(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLEngine;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 66
    .line 67
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->p(Lorg/eclipse/jetty/io/nio/g;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 76
    .line 77
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->s(Lorg/eclipse/jetty/io/nio/g;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g$c;->b:Lorg/eclipse/jetty/io/nio/g;

    .line 86
    .line 87
    invoke-static {v0}, Lorg/eclipse/jetty/io/nio/g;->l(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/a;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}"

    .line 96
    .line 97
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method
