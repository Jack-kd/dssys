.class public LJ1/c;
.super Lorg/eclipse/jetty/client/i;
.source "SourceFile"


# static fields
.field public static final n:LR1/c;


# instance fields
.field public h:Lorg/eclipse/jetty/client/HttpDestination;

.field public i:Lorg/eclipse/jetty/client/j;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LJ1/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LJ1/c;->n:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/j;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/client/i;-><init>(Lorg/eclipse/jetty/client/h;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, LJ1/c;->m:I

    .line 11
    .line 12
    iput-object p1, p0, LJ1/c;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 13
    .line 14
    iput-object p2, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget v0, p0, LJ1/c;->m:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, LJ1/c;->m:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/i;->m(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/i;->n(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, LJ1/c;->j:Z

    .line 15
    .line 16
    iput-boolean v0, p0, LJ1/c;->k:Z

    .line 17
    .line 18
    iput-boolean v0, p0, LJ1/c;->l:Z

    .line 19
    .line 20
    invoke-super {p0}, Lorg/eclipse/jetty/client/i;->b()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LJ1/c;->j:Z

    .line 3
    .line 4
    iget-boolean v1, p0, LJ1/c;->l:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-boolean v1, p0, LJ1/c;->k:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, LJ1/c;->n:LR1/c;

    .line 14
    .line 15
    invoke-interface {v1}, LR1/c;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "onRequestComplete, Both complete: Resending from onResponseComplete "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-array v4, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {v1, v3, v4}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-boolean v2, p0, LJ1/c;->k:Z

    .line 46
    .line 47
    iput-boolean v2, p0, LJ1/c;->j:Z

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/i;->m(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/i;->n(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, LJ1/c;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 56
    .line 57
    iget-object v1, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->r(Lorg/eclipse/jetty/client/j;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    sget-object v0, LJ1/c;->n:LR1/c;

    .line 64
    .line 65
    invoke-interface {v0}, LR1/c;->f()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "onRequestComplete, Response not yet complete onRequestComplete, calling super for "

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/i;->e()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    sget-object v0, LJ1/c;->n:LR1/c;

    .line 100
    .line 101
    invoke-interface {v0}, LR1/c;->f()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "onRequestComplete, delegating to super with Request complete="

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-boolean v3, p0, LJ1/c;->j:Z

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, ", response complete="

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-boolean v3, p0, LJ1/c;->k:Z

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, " "

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/client/i;->e()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public h(LL1/d;LL1/d;)V
    .locals 3

    .line 1
    sget-object v0, LJ1/c;->n:LR1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LR1/c;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "SecurityListener:Header: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " / "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/i;->l()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    sget-object v0, Lorg/eclipse/jetty/http/j;->d:Lorg/eclipse/jetty/http/j;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, LL1/e;->e(LL1/d;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/16 v1, 0x33

    .line 61
    .line 62
    if-eq v0, v1, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, LJ1/c;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, LJ1/c;->o(Ljava/lang/String;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, LJ1/c;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 76
    .line 77
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/g;->j0()LJ1/b;

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/client/i;->h(LL1/d;LL1/d;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public i(LL1/d;ILL1/d;)V
    .locals 4

    .line 1
    sget-object v0, LJ1/c;->n:LR1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LR1/c;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "SecurityListener:Response Status: "

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v3, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/16 v0, 0x191

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne p2, v0, :cond_1

    .line 36
    .line 37
    iget v0, p0, LJ1/c;->m:I

    .line 38
    .line 39
    iget-object v3, p0, LJ1/c;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 40
    .line 41
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/g;->r0()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge v0, v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/client/i;->n(Z)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, LJ1/c;->l:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/i;->n(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/client/i;->m(Z)V

    .line 61
    .line 62
    .line 63
    iput-boolean v2, p0, LJ1/c;->l:Z

    .line 64
    .line 65
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/i;->i(LL1/d;ILL1/d;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public k()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LJ1/c;->k:Z

    .line 3
    .line 4
    iget-boolean v1, p0, LJ1/c;->l:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-boolean v1, p0, LJ1/c;->j:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, LJ1/c;->n:LR1/c;

    .line 14
    .line 15
    invoke-interface {v1}, LR1/c;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "onResponseComplete, Both complete: Resending from onResponseComplete"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-array v4, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {v1, v3, v4}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput-boolean v2, p0, LJ1/c;->k:Z

    .line 46
    .line 47
    iput-boolean v2, p0, LJ1/c;->j:Z

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/i;->n(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/i;->m(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, LJ1/c;->h:Lorg/eclipse/jetty/client/HttpDestination;

    .line 56
    .line 57
    iget-object v1, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->r(Lorg/eclipse/jetty/client/j;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    sget-object v0, LJ1/c;->n:LR1/c;

    .line 64
    .line 65
    invoke-interface {v0}, LR1/c;->f()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "onResponseComplete, Request not yet complete from onResponseComplete,  calling super "

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/client/i;->k()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    sget-object v0, LJ1/c;->n:LR1/c;

    .line 100
    .line 101
    invoke-interface {v0}, LR1/c;->f()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "OnResponseComplete, delegating to super with Request complete="

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-boolean v3, p0, LJ1/c;->j:Z

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, ", response complete="

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-boolean v3, p0, LJ1/c;->k:Z

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, " "

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, LJ1/c;->i:Lorg/eclipse/jetty/client/j;

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-super {p0}, Lorg/eclipse/jetty/client/i;->k()V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public o(Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " "

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/util/StringTokenizer;

    .line 23
    .line 24
    const-string v3, ","

    .line 25
    .line 26
    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v3, "="

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    array-length v4, v3

    .line 46
    const/4 v5, 0x2

    .line 47
    const/4 v6, 0x0

    .line 48
    if-ne v4, v5, :cond_0

    .line 49
    .line 50
    aget-object p1, v3, v6

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aget-object v3, v3, v2

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lorg/eclipse/jetty/util/m;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object v3, LJ1/c;->n:LR1/c;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "SecurityListener: missed scraping authentication details - "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-array v4, v6, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-interface {v3, p1, v4}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
