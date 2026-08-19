.class public LN1/m;
.super Lorg/eclipse/jetty/server/handler/h;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN1/m$a;
    }
.end annotation


# static fields
.field public static final t:LR1/c;

.field public static final u:Ljava/lang/String;


# instance fields
.field public final h:Lorg/eclipse/jetty/util/component/c;

.field public final i:Lorg/eclipse/jetty/util/c;

.field public j:LW1/d;

.field public k:[LN1/g;

.field public l:LN1/n;

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, LN1/m;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, LN1/m;->t:LR1/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Eclipse.org - Jetty"

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, LN1/m;->u:Ljava/lang/String;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const-string v0, "jetty.version"

    .line 53
    .line 54
    const-string v1, "8.y.z-SNAPSHOT"

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, LN1/m;->u:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/eclipse/jetty/util/component/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/eclipse/jetty/util/component/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 10
    .line 11
    new-instance v0, Lorg/eclipse/jetty/util/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/eclipse/jetty/util/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LN1/m;->i:Lorg/eclipse/jetty/util/c;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, LN1/m;->m:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, LN1/m;->n:Z

    .line 23
    .line 24
    iput v0, p0, LN1/m;->o:I

    .line 25
    .line 26
    iput-boolean v0, p0, LN1/m;->q:Z

    .line 27
    .line 28
    iput-boolean v0, p0, LN1/m;->r:Z

    .line 29
    .line 30
    iput-boolean v0, p0, LN1/m;->s:Z

    .line 31
    .line 32
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/handler/h;->a(LN1/m;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static n0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, LN1/m;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public P(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/util/component/b;->P(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/component/c;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public Z(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/util/component/b;->Z(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/component/c;->d(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public doStart()V
    .locals 5

    .line 1
    invoke-virtual {p0}, LN1/m;->l0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Lorg/eclipse/jetty/util/component/f;

    .line 10
    .line 11
    aput-object p0, v0, v1

    .line 12
    .line 13
    invoke-static {v0}, LW1/c;->d([Lorg/eclipse/jetty/util/component/f;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, LN1/p;->q()LN1/p;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, LN1/p;->r()V

    .line 21
    .line 22
    .line 23
    sget-object v0, LN1/m;->t:LR1/c;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "jetty-"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget-object v3, LN1/m;->u:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-array v4, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {v0, v2, v4}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lorg/eclipse/jetty/http/h;->G(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lorg/eclipse/jetty/util/MultiException;

    .line 53
    .line 54
    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, LN1/m;->j:LW1/d;

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    new-instance v2, LW1/b;

    .line 62
    .line 63
    invoke-direct {v2}, LW1/b;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, LN1/m;->w0(LW1/d;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/h;->doStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v2

    .line 74
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v2, p0, LN1/m;->k:[LN1/g;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiException;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    :goto_1
    iget-object v2, p0, LN1/m;->k:[LN1/g;

    .line 88
    .line 89
    array-length v3, v2

    .line 90
    if-ge v1, v3, :cond_2

    .line 91
    .line 92
    :try_start_1
    aget-object v2, v2, v1

    .line 93
    .line 94
    invoke-interface {v2}, Lorg/eclipse/jetty/util/component/f;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_1
    move-exception v2

    .line 99
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p0}, LN1/m;->q0()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/b;->U()V

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public doStop()V
    .locals 7

    .line 1
    invoke-virtual {p0}, LN1/m;->r0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/b;->U()V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/util/MultiException;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 13
    .line 14
    .line 15
    iget v1, p0, LN1/m;->o:I

    .line 16
    .line 17
    if-lez v1, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, LN1/m;->k:[LN1/g;

    .line 20
    .line 21
    const-string v2, "Graceful shutdown {}"

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    sget-object v1, LN1/m;->t:LR1/c;

    .line 31
    .line 32
    iget-object v4, p0, LN1/m;->k:[LN1/g;

    .line 33
    .line 34
    aget-object v4, v4, v3

    .line 35
    .line 36
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v1, v2, v4}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object v1, p0, LN1/m;->k:[LN1/g;

    .line 44
    .line 45
    aget-object v1, v1, v3

    .line 46
    .line 47
    invoke-interface {v1}, LN1/g;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    move v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-class v1, LN1/m$a;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/handler/b;->F(Ljava/lang/Class;)[LN1/h;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v3, 0x0

    .line 64
    :goto_2
    array-length v4, v1

    .line 65
    if-ge v3, v4, :cond_2

    .line 66
    .line 67
    aget-object v4, v1, v3

    .line 68
    .line 69
    check-cast v4, LN1/m$a;

    .line 70
    .line 71
    sget-object v5, LN1/m;->t:LR1/c;

    .line 72
    .line 73
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v5, v2, v6}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    invoke-interface {v4, v5}, LN1/m$a;->j(Z)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget v1, p0, LN1/m;->o:I

    .line 88
    .line 89
    int-to-long v1, v1

    .line 90
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v1, p0, LN1/m;->k:[LN1/g;

    .line 94
    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    array-length v1, v1

    .line 98
    :goto_3
    add-int/lit8 v2, v1, -0x1

    .line 99
    .line 100
    if-lez v1, :cond_4

    .line 101
    .line 102
    :try_start_1
    iget-object v1, p0, LN1/m;->k:[LN1/g;

    .line 103
    .line 104
    aget-object v1, v1, v2

    .line 105
    .line 106
    invoke-interface {v1}, Lorg/eclipse/jetty/util/component/f;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :catchall_1
    move-exception v1

    .line 111
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_4
    move v1, v2

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    :try_start_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/h;->doStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :catchall_2
    move-exception v1

    .line 121
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_5
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, LN1/m;->l0()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_5

    .line 132
    .line 133
    invoke-static {p0}, LW1/c;->a(Lorg/eclipse/jetty/util/component/f;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    return-void
.end method

.method public f0(LN1/g;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LN1/m;->g0()[LN1/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, LN1/g;

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [LN1/g;

    .line 12
    .line 13
    check-cast p1, [LN1/g;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, LN1/m;->t0([LN1/g;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public g0()[LN1/g;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->k:[LN1/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->i:Lorg/eclipse/jetty/util/c;

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

.method public h0()Lorg/eclipse/jetty/util/component/c;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/m;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public j0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/m;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->i:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/c;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k0()LN1/n;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->l:LN1/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/m;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/a;->V(Ljava/lang/Appendable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/h;->B()[LN1/h;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/b;->X()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, LN1/m;->k:[LN1/g;

    .line 17
    .line 18
    invoke-static {v2}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x3

    .line 23
    new-array v3, v3, [Ljava/util/Collection;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v0, v3, v4

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v3, v0

    .line 33
    .line 34
    invoke-static {p1, p2, v3}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public m0()LW1/d;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->j:LW1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public o0(LN1/c;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, LN1/c;->r()LN1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, LN1/k;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, LN1/c;->r()LN1/k;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, LN1/c;->v()LN1/l;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, LN1/m;->t:LR1/c;

    .line 18
    .line 19
    invoke-interface {v3}, LR1/c;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "REQUEST "

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v5, " on "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    new-array v6, v5, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-interface {v3, v4, v6}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/eclipse/jetty/server/handler/h;->l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "RESPONSE "

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, "  "

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, LN1/c;->v()LN1/l;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, LN1/l;->f()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " handled="

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, LN1/k;->z()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-array v0, v5, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-interface {v3, p1, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/eclipse/jetty/server/handler/h;->l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public p0(LN1/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, LN1/c;->r()LN1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, LN1/k;->b()LN1/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, LN1/d;->g()LN1/d$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, LN1/c;->r()LN1/k;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/m;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public r0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/m;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public s0(LN1/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LN1/m;->g0()[LN1/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [LN1/g;

    .line 10
    .line 11
    check-cast p1, [LN1/g;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, LN1/m;->t0([LN1/g;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/m;->i:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t0([LN1/g;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    invoke-interface {v1, p0}, LN1/g;->a(LN1/m;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 16
    .line 17
    iget-object v1, p0, LN1/m;->k:[LN1/g;

    .line 18
    .line 19
    const-string v2, "connector"

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1, p1, v2}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, LN1/m;->k:[LN1/g;

    .line 25
    .line 26
    return-void
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "@"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public u0(I)V
    .locals 0

    .line 1
    iput p1, p0, LN1/m;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public v0(LN1/n;)V
    .locals 7

    .line 1
    iget-object v0, p0, LN1/m;->l:LN1/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LN1/m;->Z(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 9
    .line 10
    iget-object v3, p0, LN1/m;->l:LN1/n;

    .line 11
    .line 12
    const-string v5, "sessionIdManager"

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v2, p0

    .line 16
    move-object v4, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iput-object v4, v2, LN1/m;->l:LN1/n;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v4}, LN1/m;->P(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public w0(LW1/d;)V
    .locals 7

    .line 1
    iget-object v0, p0, LN1/m;->j:LW1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, LN1/m;->Z(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, LN1/m;->h:Lorg/eclipse/jetty/util/component/c;

    .line 9
    .line 10
    iget-object v3, p0, LN1/m;->j:LW1/d;

    .line 11
    .line 12
    const-string v5, "threadpool"

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v2, p0

    .line 16
    move-object v4, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iput-object v4, v2, LN1/m;->j:LW1/d;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v4}, LN1/m;->P(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
