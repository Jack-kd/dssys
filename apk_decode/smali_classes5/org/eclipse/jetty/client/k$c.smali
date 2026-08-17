.class public Lorg/eclipse/jetty/client/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public b:LL1/c;

.field public c:Ljavax/net/ssl/SSLEngine;


# direct methods
.method public constructor <init>(LL1/c;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/eclipse/jetty/client/k$c;->c:Ljavax/net/ssl/SSLEngine;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(LL1/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LL1/i;->a(LL1/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/c;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, LL1/k;->f(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(LL1/d;LL1/d;LL1/d;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, LL1/k;->g(LL1/d;LL1/d;LL1/d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getConnection()LL1/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/i;->getConnection()LL1/j;

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
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->getLocalPort()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->getRemotePort()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(LL1/d;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LL1/k;->i(LL1/d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/c;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LL1/k;->l(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->m()Ljava/lang/Object;

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
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->p()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/c;->q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(LW1/e$a;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, LL1/c;->r(LW1/e$a;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public t(LL1/d;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, LL1/k;->t(LL1/d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Upgradable:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/i;->getConnection()LL1/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/eclipse/jetty/client/c;

    .line 8
    .line 9
    new-instance v1, Lorg/eclipse/jetty/io/nio/g;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/eclipse/jetty/client/k$c;->c:Ljavax/net/ssl/SSLEngine;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/io/nio/g;-><init>(Ljavax/net/ssl/SSLEngine;LL1/k;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 19
    .line 20
    invoke-interface {v2, v1}, LL1/i;->a(LL1/j;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->C()LL1/c;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lorg/eclipse/jetty/client/k$c;->b:LL1/c;

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->C()LL1/c;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2, v0}, LL1/i;->a(LL1/j;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lorg/eclipse/jetty/client/k;->a0()LR1/c;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "upgrade {} to {} for {}"

    .line 41
    .line 42
    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v2, v3, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
