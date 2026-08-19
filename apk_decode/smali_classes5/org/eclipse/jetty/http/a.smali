.class public abstract Lorg/eclipse/jetty/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/c;


# static fields
.field public static final t:LR1/c;

.field public static final u:[B


# instance fields
.field public final a:Lorg/eclipse/jetty/io/Buffers;

.field public final b:LL1/k;

.field public c:I

.field public d:I

.field public e:I

.field public f:LL1/d;

.field public g:LL1/d;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/Boolean;

.field public o:LL1/d;

.field public p:LL1/d;

.field public q:LL1/d;

.field public r:LL1/d;

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/http/a;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/http/a;->t:LR1/c;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    sput-object v0, Lorg/eclipse/jetty/http/a;->u:[B

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;LL1/k;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 6
    .line 7
    iput v0, p0, Lorg/eclipse/jetty/http/a;->d:I

    .line 8
    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    iput v1, p0, Lorg/eclipse/jetty/http/a;->e:I

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 16
    .line 17
    const-wide/16 v1, -0x3

    .line 18
    .line 19
    iput-wide v1, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 29
    .line 30
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 31
    .line 32
    iput-object p2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, LL1/d;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 13
    .line 14
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 15
    .line 16
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffers;->b(LL1/d;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, LL1/d;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->a:Lorg/eclipse/jetty/io/Buffers;

    .line 32
    .line 33
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 34
    .line 35
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffers;->b(LL1/d;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->o:LL1/d;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public complete()V
    .locals 4

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-ltz v2, :cond_1

    .line 12
    .line 13
    iget-wide v2, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lorg/eclipse/jetty/http/a;->t:LR1/c;

    .line 24
    .line 25
    invoke-interface {v0}, LR1/c;->f()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "ContentLength written=="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v2, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " != contentLength=="

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v2, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 61
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v1, "State==HEADER"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public d(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 7
    .line 8
    iput p1, p0, Lorg/eclipse/jetty/http/a;->d:I

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-static {p2}, Lorg/eclipse/jetty/util/m;->c(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    array-length p2, p1

    .line 17
    const/16 v0, 0x400

    .line 18
    .line 19
    if-le p2, v0, :cond_0

    .line 20
    .line 21
    move p2, v0

    .line 22
    :cond_0
    new-instance v0, LL1/h;

    .line 23
    .line 24
    invoke-direct {v0, p2}, LL1/h;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-ge v0, p2, :cond_2

    .line 31
    .line 32
    aget-byte v1, p1, v0

    .line 33
    .line 34
    const/16 v2, 0xd

    .line 35
    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    const/16 v2, 0xa

    .line 39
    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    .line 43
    .line 44
    invoke-interface {v2, v1}, LL1/d;->put(B)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    .line 49
    .line 50
    const/16 v2, 0x20

    .line 51
    .line 52
    invoke-interface {v1, v2}, LL1/d;->put(B)V

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-void

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "STATE!=START"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    iput-wide v1, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 15
    .line 16
    const-wide/16 v1, -0x3

    .line 17
    .line 18
    iput-wide v1, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 19
    .line 20
    iput-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 21
    .line 22
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, LL1/d;->clear()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "Flushed"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public i(LL1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->r:LL1/d;

    .line 2
    .line 3
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lorg/eclipse/jetty/http/a;->d:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public isPersistent()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->v()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->e:I

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    if-le v0, v2, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/a;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public k()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 10
    .line 11
    cmp-long v0, v2, v0

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public abstract l()I
.end method

.method public abstract m(Lorg/eclipse/jetty/http/g;Z)V
.end method

.method public n(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    iput-object p4, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    sget-object p3, Lorg/eclipse/jetty/http/a;->t:LR1/c;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "sendError on committed: {} {}"

    .line 24
    .line 25
    invoke-interface {p3, p2, p1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    sget-object p4, Lorg/eclipse/jetty/http/a;->t:LR1/c;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "sendError: {} {}"

    .line 40
    .line 41
    invoke-interface {p4, v1, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/a;->d(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p4, 0x0

    .line 48
    const/4 v0, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v1, p4}, Lorg/eclipse/jetty/http/a;->m(Lorg/eclipse/jetty/http/g;Z)V

    .line 53
    .line 54
    .line 55
    new-instance p1, LL1/l;

    .line 56
    .line 57
    new-instance p2, LL1/h;

    .line 58
    .line 59
    invoke-direct {p2, p3}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, LL1/l;-><init>(LL1/d;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, p1, v0}, Lorg/eclipse/jetty/http/c;->g(LL1/d;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/16 p3, 0x190

    .line 70
    .line 71
    if-lt p1, p3, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, v1, p4}, Lorg/eclipse/jetty/http/a;->m(Lorg/eclipse/jetty/http/g;Z)V

    .line 74
    .line 75
    .line 76
    new-instance p3, LL1/l;

    .line 77
    .line 78
    new-instance p4, LL1/h;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "Error: "

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    if-nez p2, :cond_3

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, ""

    .line 98
    .line 99
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p4, p1}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p3, p4}, LL1/l;-><init>(LL1/d;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, p3, v0}, Lorg/eclipse/jetty/http/c;->g(LL1/d;Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/a;->m(Lorg/eclipse/jetty/http/g;Z)V

    .line 127
    .line 128
    .line 129
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->complete()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public o(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 p1, -0x3

    .line 8
    .line 9
    iput-wide p1, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-wide p1, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 13
    .line 14
    return-void
.end method

.method public p(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 2
    .line 3
    invoke-interface {v0}, LL1/k;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->l()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    iget-object p2, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 15
    .line 16
    invoke-interface {p2}, LL1/k;->close()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, LL1/k;->f(J)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->l()I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 33
    .line 34
    invoke-interface {p1}, LL1/k;->close()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    .line 38
    .line 39
    const-string p2, "timeout"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public q()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, LL1/d;->clear()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 14
    .line 15
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 16
    .line 17
    invoke-interface {v2}, LL1/d;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-long v2, v2

    .line 22
    add-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 30
    .line 31
    invoke-interface {v0}, LL1/d;->clear()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public r(J)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr p1, v0

    .line 6
    iget-object v2, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 7
    .line 8
    iget-object v3, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-interface {v2}, LL1/d;->length()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-gtz v4, :cond_2

    .line 17
    .line 18
    :cond_0
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v3}, LL1/d;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-gtz v4, :cond_2

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->u()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_6

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/a;->l()I

    .line 33
    .line 34
    .line 35
    :goto_0
    cmp-long v4, v0, p1

    .line 36
    .line 37
    if-gez v4, :cond_6

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-interface {v2}, LL1/d;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-gtz v4, :cond_4

    .line 46
    .line 47
    :cond_3
    if-eqz v3, :cond_6

    .line 48
    .line 49
    invoke-interface {v3}, LL1/d;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-lez v4, :cond_6

    .line 54
    .line 55
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 56
    .line 57
    invoke-interface {v4}, LL1/k;->isOpen()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    iget-object v4, p0, Lorg/eclipse/jetty/http/a;->b:LL1/k;

    .line 64
    .line 65
    invoke-interface {v4}, LL1/k;->o()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_5

    .line 70
    .line 71
    sub-long v0, p1, v0

    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/a;->p(J)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    .line 82
    .line 83
    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 3
    .line 4
    iput v0, p0, Lorg/eclipse/jetty/http/a;->d:I

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    iput v1, p0, Lorg/eclipse/jetty/http/a;->e:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->f:LL1/d;

    .line 12
    .line 13
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->k:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->l:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 18
    .line 19
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->n:Ljava/lang/Boolean;

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 24
    .line 25
    const-wide/16 v2, -0x3

    .line 26
    .line 27
    iput-wide v2, p0, Lorg/eclipse/jetty/http/a;->j:J

    .line 28
    .line 29
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->r:LL1/d;

    .line 30
    .line 31
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 32
    .line 33
    iput-object v1, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 34
    .line 35
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/a;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public setVersion(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lorg/eclipse/jetty/http/a;->e:I

    .line 6
    .line 7
    const/16 v0, 0x9

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "STATE!=START "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public t()LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, LL1/d;->f0()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 14
    .line 15
    invoke-interface {v0}, LL1/d;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 22
    .line 23
    invoke-interface {v0}, LL1/d;->s0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 30
    .line 31
    invoke-interface {v0}, LL1/d;->u0()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->p:LL1/d;

    .line 35
    .line 36
    invoke-interface {v0}, LL1/d;->f0()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    return v1

    .line 44
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/a;->q:LL1/d;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, LL1/d;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    return v2

    .line 55
    :cond_3
    return v1
.end method

.method public abstract v()Z
.end method

.method public w(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/http/a;->c:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public x()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/a;->i:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public abstract y()I
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "GET"

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/k;->a:LL1/e;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, LL1/e;->h(Ljava/lang/String;)LL1/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    sget-object p1, Lorg/eclipse/jetty/http/k;->b:LL1/d;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/eclipse/jetty/http/a;->g:LL1/d;

    .line 24
    .line 25
    :goto_1
    iput-object p2, p0, Lorg/eclipse/jetty/http/a;->h:Ljava/lang/String;

    .line 26
    .line 27
    iget p1, p0, Lorg/eclipse/jetty/http/a;->e:I

    .line 28
    .line 29
    const/16 p2, 0x9

    .line 30
    .line 31
    if-ne p1, p2, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/a;->m:Z

    .line 35
    .line 36
    :cond_2
    return-void
.end method
