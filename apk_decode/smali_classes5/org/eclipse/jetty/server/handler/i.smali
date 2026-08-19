.class public abstract Lorg/eclipse/jetty/server/handler/i;
.super Lorg/eclipse/jetty/server/handler/h;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/ThreadLocal;


# instance fields
.field public h:Lorg/eclipse/jetty/server/handler/i;

.field public i:Lorg/eclipse/jetty/server/handler/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/eclipse/jetty/server/handler/i;->j:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/server/handler/i;->j:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Lorg/eclipse/jetty/server/handler/i;

    .line 9
    .line 10
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/h;->doStart()V

    .line 21
    .line 22
    .line 23
    const-class v2, Lorg/eclipse/jetty/server/handler/i;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/handler/b;->c0(Ljava/lang/Class;)LN1/h;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lorg/eclipse/jetty/server/handler/i;

    .line 30
    .line 31
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void

    .line 41
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    sget-object v2, Lorg/eclipse/jetty/server/handler/i;->j:Ljava/lang/ThreadLocal;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    throw v1
.end method

.method public abstract f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end method

.method public abstract g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
.end method

.method public h0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final i0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3, p4}, LN1/h;->l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final j0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
