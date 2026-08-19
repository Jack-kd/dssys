.class public abstract Lorg/eclipse/jetty/server/handler/h;
.super Lorg/eclipse/jetty/server/handler/b;
.source "SourceFile"


# instance fields
.field public g:LN1/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B()[LN1/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [LN1/h;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [LN1/h;

    .line 11
    .line 12
    aput-object v0, v2, v1

    .line 13
    .line 14
    return-object v2
.end method

.method public a(LN1/m;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/a;->a(LN1/m;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1, p1}, LN1/h;->a(LN1/m;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-eqz p1, :cond_2

    .line 27
    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 35
    .line 36
    const-string v1, "handler"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "STARTED"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public a0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/b;->b0(LN1/h;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d0()LN1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStopped()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/h;->e0(LN1/h;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, LN1/h;->destroy()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/a;->destroy()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "!STOPPED"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public doStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/f;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/a;->doStart()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public doStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/f;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/a;->doStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e0(LN1/h;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 8
    .line 9
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, LN1/h;->a(LN1/m;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "handler"

    .line 35
    .line 36
    invoke-virtual {v1, p0, v0, p1, v2}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "STARTED"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2, p3, p4}, LN1/h;->l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
