.class public Lorg/eclipse/jetty/servlet/b;
.super Lorg/eclipse/jetty/server/handler/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/b$a;
    }
.end annotation


# instance fields
.field public final P:Ljava/util/List;

.field public Q:Ljava/lang/Class;

.field public R:LP1/g;

.field public S:Lorg/eclipse/jetty/servlet/c;

.field public T:Lorg/eclipse/jetty/server/handler/h;

.field public U:I

.field public V:Ljava/lang/Object;

.field public W:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1}, Lorg/eclipse/jetty/servlet/b;-><init>(LN1/i;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(LN1/i;Ljava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/servlet/b;-><init>(LN1/i;Ljava/lang/String;LP1/g;LM1/c;Lorg/eclipse/jetty/servlet/c;Lorg/eclipse/jetty/server/handler/f;)V

    .line 3
    iput p3, v0, Lorg/eclipse/jetty/servlet/b;->U:I

    return-void
.end method

.method public constructor <init>(LN1/i;Ljava/lang/String;LP1/g;LM1/c;Lorg/eclipse/jetty/servlet/c;Lorg/eclipse/jetty/server/handler/f;)V
    .locals 0

    const/4 p4, 0x0

    .line 4
    invoke-direct {p0, p4}, Lorg/eclipse/jetty/server/handler/d;-><init>(Lorg/eclipse/jetty/server/handler/d$d;)V

    .line 5
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 6
    const-class p4, LM1/a;

    iput-object p4, p0, Lorg/eclipse/jetty/servlet/b;->Q:Ljava/lang/Class;

    const/4 p4, 0x1

    .line 7
    iput-boolean p4, p0, Lorg/eclipse/jetty/servlet/b;->W:Z

    .line 8
    new-instance p4, Lorg/eclipse/jetty/servlet/b$a;

    invoke-direct {p4, p0}, Lorg/eclipse/jetty/servlet/b$a;-><init>(Lorg/eclipse/jetty/servlet/b;)V

    iput-object p4, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 9
    iput-object p3, p0, Lorg/eclipse/jetty/servlet/b;->R:LP1/g;

    .line 10
    iput-object p5, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/d;->G0(Ljava/lang/String;)V

    .line 12
    :cond_0
    instance-of p2, p1, Lorg/eclipse/jetty/server/handler/h;

    if-eqz p2, :cond_1

    .line 13
    check-cast p1, Lorg/eclipse/jetty/server/handler/h;

    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/server/handler/h;->e0(LN1/h;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public J0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->O0()LP1/g;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->M0()LM1/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->N0()Lorg/eclipse/jetty/servlet/c;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->R:LP1/g;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/h;->e0(LN1/h;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->R:LP1/g;

    .line 20
    .line 21
    :cond_0
    iput-object p0, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 22
    .line 23
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 24
    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v1, v1, Lorg/eclipse/jetty/server/handler/h;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lorg/eclipse/jetty/server/handler/h;

    .line 42
    .line 43
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 47
    .line 48
    if-eq v1, v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/h;->e0(LN1/h;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v1, "!ScopedHandler"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_3
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/d;->J0()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 74
    .line 75
    if-eqz v0, :cond_9

    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/lit8 v0, v0, -0x1

    .line 90
    .line 91
    :goto_2
    if-ltz v0, :cond_8

    .line 92
    .line 93
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 103
    .line 104
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->o0()[Lorg/eclipse/jetty/servlet/a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/4 v2, 0x0

    .line 109
    const/4 v3, 0x0

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 113
    .line 114
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->o0()[Lorg/eclipse/jetty/servlet/a;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    array-length v4, v1

    .line 119
    if-gtz v4, :cond_4

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    aget-object v0, v1, v3

    .line 123
    .line 124
    throw v2

    .line 125
    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 126
    .line 127
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->t0()[Lorg/eclipse/jetty/servlet/d;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 134
    .line 135
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->t0()[Lorg/eclipse/jetty/servlet/d;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    array-length v4, v1

    .line 140
    if-gtz v4, :cond_6

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    aget-object v0, v1, v3

    .line 144
    .line 145
    throw v2

    .line 146
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->u0()V

    .line 152
    .line 153
    .line 154
    :cond_9
    return-void
.end method

.method public K0(Lorg/eclipse/jetty/servlet/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->N0()Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/c;->k0(Lorg/eclipse/jetty/servlet/d;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public L0(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method

.method public M0()LM1/c;
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/servlet/b;->U:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->P0()LM1/c;

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public N0()Lorg/eclipse/jetty/servlet/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->Q0()Lorg/eclipse/jetty/servlet/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->S:Lorg/eclipse/jetty/servlet/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public O0()LP1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->R:LP1/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/eclipse/jetty/servlet/b;->U:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/b;->R0()LP1/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/b;->R:LP1/g;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->R:LP1/g;

    .line 24
    .line 25
    return-object v0
.end method

.method public P0()LM1/c;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->Q:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0}, Lt/f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

.method public Q0()Lorg/eclipse/jetty/servlet/c;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public R0()LP1/g;
    .locals 1

    .line 1
    new-instance v0, LP1/g;

    .line 2
    .line 3
    invoke-direct {v0}, LP1/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public doStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/d;->doStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b;->T:Lorg/eclipse/jetty/server/handler/h;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/h;->e0(LN1/h;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public p0(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/b;->V:Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {v1, p1}, Lorg/eclipse/jetty/util/LazyList;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->B0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/handler/d$d;->f(Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/d;->p0(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->B0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/d$d;->f(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->B0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/handler/d$d;->f(Z)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
