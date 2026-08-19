.class public Lorg/eclipse/jetty/client/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/client/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lorg/eclipse/jetty/client/j;

.field public final b:Lorg/eclipse/jetty/client/h;

.field public final synthetic c:Lorg/eclipse/jetty/client/a;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/a$d;->c:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->a(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->f()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public h(LL1/d;LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/h;->h(LL1/d;LL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(LL1/d;ILL1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(LL1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$d;->b:Lorg/eclipse/jetty/client/h;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->a:Lorg/eclipse/jetty/client/j;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$d;->c:Lorg/eclipse/jetty/client/a;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l;->reset()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
