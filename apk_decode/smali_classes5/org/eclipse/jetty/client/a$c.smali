.class public Lorg/eclipse/jetty/client/a$c;
.super Lorg/eclipse/jetty/http/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lorg/eclipse/jetty/client/a;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/l$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/a$c;-><init>(Lorg/eclipse/jetty/client/a;)V

    return-void
.end method


# virtual methods
.method public a(LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->j(LL1/d;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->isDone()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    .line 26
    .line 27
    const-string v2, "early EOF"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "CONNECT"

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getMethod()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/l;->c(Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x7

    .line 8
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public e(LL1/d;LL1/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v1, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, LL1/e;->e(LL1/d;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 17
    .line 18
    sget-object v2, Lorg/eclipse/jetty/http/i;->d:Lorg/eclipse/jetty/http/i;

    .line 19
    .line 20
    invoke-virtual {v2, p2}, LL1/e;->g(LL1/d;)LL1/d;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v1, Lorg/eclipse/jetty/client/a;->j:LL1/d;

    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/client/h;->h(LL1/d;LL1/d;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public f(LL1/d;LL1/d;LL1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(LL1/d;ILL1/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/eclipse/jetty/client/a;->f()LR1/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string p3, "No exchange for response"

    .line 15
    .line 16
    invoke-interface {p1, p3, p2}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 20
    .line 21
    invoke-static {p1}, Lorg/eclipse/jetty/client/a;->g(Lorg/eclipse/jetty/client/a;)LL1/k;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, LL1/k;->close()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const/16 v1, 0x64

    .line 30
    .line 31
    if-eq p2, v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x66

    .line 34
    .line 35
    if-eq p2, v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0xc8

    .line 38
    .line 39
    if-eq p2, v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "CONNECT"

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getMethod()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 55
    .line 56
    iget-object v1, v1, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/l;->l(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance v1, Lorg/eclipse/jetty/client/a$d;

    .line 64
    .line 65
    iget-object v2, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 66
    .line 67
    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/client/a$d;-><init>(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 74
    .line 75
    sget-object v2, Lorg/eclipse/jetty/http/p;->d:LL1/d;

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput-boolean v2, v1, Lorg/eclipse/jetty/client/a;->h:Z

    .line 82
    .line 83
    iget-object v1, p0, Lorg/eclipse/jetty/client/a$c;->a:Lorg/eclipse/jetty/client/a;

    .line 84
    .line 85
    iput p2, v1, Lorg/eclipse/jetty/client/a;->i:I

    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1, p1, p2, p3}, Lorg/eclipse/jetty/client/h;->i(LL1/d;ILL1/d;)V

    .line 92
    .line 93
    .line 94
    const/4 p1, 0x5

    .line 95
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method
