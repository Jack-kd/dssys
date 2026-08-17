.class public Lorg/eclipse/jetty/client/g;
.super Lorg/eclipse/jetty/util/component/b;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/d;
.implements Lorg/eclipse/jetty/util/b;
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/g$c;,
        Lorg/eclipse/jetty/client/g$b;
    }
.end annotation


# instance fields
.field public final A:Lorg/eclipse/jetty/http/e;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/util/concurrent/ConcurrentMap;

.field public l:LW1/d;

.field public m:Lorg/eclipse/jetty/client/g$b;

.field public n:J

.field public o:J

.field public p:I

.field public q:LW1/e;

.field public r:LW1/e;

.field public s:Lorg/eclipse/jetty/client/b;

.field public t:LJ1/a;

.field public u:Ljava/util/Set;

.field public v:I

.field public w:I

.field public x:Ljava/util/LinkedList;

.field public final y:LU1/b;

.field public z:Lorg/eclipse/jetty/util/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LU1/b;

    invoke-direct {v0}, LU1/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/g;-><init>(LU1/b;)V

    return-void
.end method

.method public constructor <init>(LU1/b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/b;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lorg/eclipse/jetty/client/g;->e:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/g;->f:Z

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/g;->g:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/g;->h:Z

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lorg/eclipse/jetty/client/g;->i:I

    .line 8
    iput v0, p0, Lorg/eclipse/jetty/client/g;->j:I

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->k:Ljava/util/concurrent/ConcurrentMap;

    const-wide/16 v0, 0x4e20

    .line 10
    iput-wide v0, p0, Lorg/eclipse/jetty/client/g;->n:J

    const-wide/32 v0, 0x4e200

    .line 11
    iput-wide v0, p0, Lorg/eclipse/jetty/client/g;->o:J

    const v0, 0x124f8

    .line 12
    iput v0, p0, Lorg/eclipse/jetty/client/g;->p:I

    .line 13
    new-instance v0, LW1/e;

    invoke-direct {v0}, LW1/e;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 14
    new-instance v0, LW1/e;

    invoke-direct {v0}, LW1/e;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->r:LW1/e;

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lorg/eclipse/jetty/client/g;->v:I

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lorg/eclipse/jetty/client/g;->w:I

    .line 17
    new-instance v0, Lorg/eclipse/jetty/util/c;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/c;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->z:Lorg/eclipse/jetty/util/c;

    .line 18
    new-instance v0, Lorg/eclipse/jetty/http/e;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/e;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 19
    iput-object p1, p0, Lorg/eclipse/jetty/client/g;->y:LU1/b;

    .line 20
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/component/b;->P(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/b;->P(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a0(Lorg/eclipse/jetty/client/g;)LW1/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b0(Lorg/eclipse/jetty/client/g;)LW1/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/client/g;->r:LW1/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A0(LW1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/b;->Z(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/component/b;->P(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public B0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/eclipse/jetty/client/g;->o:J

    .line 2
    .line 3
    return-void
.end method

.method public H()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/e;->H()Lorg/eclipse/jetty/io/Buffers;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c0(LW1/e$a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, LW1/e$a;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/client/g;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public doStart()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/g;->x0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 5
    .line 6
    iget-wide v1, p0, Lorg/eclipse/jetty/client/g;->o:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, LW1/e;->i(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 12
    .line 13
    invoke-virtual {v0}, LW1/e;->j()J

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->r:LW1/e;

    .line 17
    .line 18
    iget-wide v1, p0, Lorg/eclipse/jetty/client/g;->n:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, LW1/e;->i(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->r:LW1/e;

    .line 24
    .line 25
    invoke-virtual {v0}, LW1/e;->j()J

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lorg/eclipse/jetty/client/g$c;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v0, v2}, Lorg/eclipse/jetty/client/g$c;-><init>(Lorg/eclipse/jetty/client/g$a;)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x10

    .line 40
    .line 41
    invoke-virtual {v0, v2}, LW1/b;->e0(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, LW1/b;->d0(Z)V

    .line 45
    .line 46
    .line 47
    const-string v2, "HttpClient"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, LW1/b;->f0(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/component/b;->Q(Ljava/lang/Object;Z)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/client/g;->e:I

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    if-ne v0, v2, :cond_1

    .line 61
    .line 62
    new-instance v0, Lorg/eclipse/jetty/client/k;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/k;-><init>(Lorg/eclipse/jetty/client/g;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/client/l;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/l;-><init>(Lorg/eclipse/jetty/client/g;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->m:Lorg/eclipse/jetty/client/g$b;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/component/b;->Q(Ljava/lang/Object;Z)Z

    .line 76
    .line 77
    .line 78
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/b;->doStart()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 82
    .line 83
    new-instance v1, Lorg/eclipse/jetty/client/g$a;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lorg/eclipse/jetty/client/g$a;-><init>(Lorg/eclipse/jetty/client/g;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, LW1/d;->dispatch(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public doStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/eclipse/jetty/client/HttpDestination;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->b()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 28
    .line 29
    invoke-virtual {v0}, LW1/e;->b()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->r:LW1/e;

    .line 33
    .line 34
    invoke-virtual {v0}, LW1/e;->b()V

    .line 35
    .line 36
    .line 37
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/b;->doStop()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 41
    .line 42
    instance-of v1, v0, Lorg/eclipse/jetty/client/g$c;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/b;->Z(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->m:Lorg/eclipse/jetty/client/g$b;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/b;->Z(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public e0(Lorg/eclipse/jetty/client/b;Z)Lorg/eclipse/jetty/client/HttpDestination;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/g;->l0()LU1/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/client/g;->f0(Lorg/eclipse/jetty/client/b;ZLU1/b;)Lorg/eclipse/jetty/client/HttpDestination;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f0(Lorg/eclipse/jetty/client/b;ZLU1/b;)Lorg/eclipse/jetty/client/HttpDestination;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jetty/client/HttpDestination;-><init>(Lorg/eclipse/jetty/client/g;Lorg/eclipse/jetty/client/b;ZLU1/b;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lorg/eclipse/jetty/client/g;->s:Lorg/eclipse/jetty/client/b;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Lorg/eclipse/jetty/client/g;->u:Ljava/util/Set;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/b;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jetty/client/g;->s:Lorg/eclipse/jetty/client/b;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/client/HttpDestination;->w(Lorg/eclipse/jetty/client/b;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lorg/eclipse/jetty/client/g;->t:LJ1/a;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/client/HttpDestination;->x(LJ1/a;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p2, p0, Lorg/eclipse/jetty/client/g;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 49
    .line 50
    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lorg/eclipse/jetty/client/HttpDestination;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    return-object v0

    .line 60
    :cond_3
    new-instance p1, Ljava/net/UnknownHostException;

    .line 61
    .line 62
    const-string p2, "Remote socket address cannot be null."

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public g0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/client/g;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->z:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/client/g;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public i0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/client/g;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public j0()LJ1/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->z:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/c;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k0()Ljava/util/LinkedList;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->x:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public l0()LU1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->y:LU1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public m0()LW1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->l:LW1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public n0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/client/g;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public p0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/g;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/g;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public r0()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/client/g;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public s0(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->z:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t0(LW1/e$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LW1/e;->g(LW1/e$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u0(LW1/e$a;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->q:LW1/e;

    .line 2
    .line 3
    invoke-virtual {v0}, LW1/e;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sub-long/2addr p2, v1

    .line 8
    invoke-virtual {v0, p1, p2, p3}, LW1/e;->h(LW1/e$a;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v0(LW1/e$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->r:LW1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LW1/e;->g(LW1/e$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w0(Lorg/eclipse/jetty/client/j;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jetty/http/m;->b:LL1/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/j;->getScheme()LL1/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, LL1/d;->A0(LL1/d;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/j;->getAddress()Lorg/eclipse/jetty/client/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/client/g;->e0(Lorg/eclipse/jetty/client/b;Z)Lorg/eclipse/jetty/client/HttpDestination;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final x0()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/client/g;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 6
    .line 7
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->Q(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->R(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->S(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->T(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 29
    .line 30
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->Q(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 36
    .line 37
    iget-boolean v2, p0, Lorg/eclipse/jetty/client/g;->f:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    move-object v2, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v2, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/http/e;->R(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->S(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 54
    .line 55
    iget-boolean v2, p0, Lorg/eclipse/jetty/client/g;->f:Z

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/e;->T(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public y0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/eclipse/jetty/client/g;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public z()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/g;->A:Lorg/eclipse/jetty/http/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/e;->z()Lorg/eclipse/jetty/io/Buffers;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public z0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/eclipse/jetty/client/g;->v:I

    .line 2
    .line 3
    return-void
.end method
