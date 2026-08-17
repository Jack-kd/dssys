.class public abstract Lorg/eclipse/jetty/client/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/client/h;


# instance fields
.field public a:Lorg/eclipse/jetty/client/h;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:LL1/d;

.field public f:I

.field public g:LL1/d;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/h;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/i;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 10
    .line 11
    iput-boolean p2, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->a(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->f()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public h(LL1/d;LL1/d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/h;->h(LL1/d;LL1/d;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public i(LL1/d;ILL1/d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/client/h;->i(LL1/d;ILL1/d;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/client/i;->e:LL1/d;

    .line 12
    .line 13
    iput p2, p0, Lorg/eclipse/jetty/client/i;->f:I

    .line 14
    .line 15
    iput-object p3, p0, Lorg/eclipse/jetty/client/i;->g:LL1/d;

    .line 16
    .line 17
    return-void
.end method

.method public j(LL1/d;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->j(LL1/d;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/eclipse/jetty/client/i;->e:LL1/d;

    .line 12
    .line 13
    iget v2, p0, Lorg/eclipse/jetty/client/i;->f:I

    .line 14
    .line 15
    iget-object v3, p0, Lorg/eclipse/jetty/client/i;->g:LL1/d;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/client/h;->i(LL1/d;ILL1/d;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/i;->a:Lorg/eclipse/jetty/client/h;

    .line 21
    .line 22
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->k()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/i;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/i;->c:Z

    .line 2
    .line 3
    return-void
.end method
