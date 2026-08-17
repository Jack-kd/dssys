.class public Lorg/eclipse/jetty/io/nio/g;
.super LL1/b;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/g$c;,
        Lorg/eclipse/jetty/io/nio/g$b;
    }
.end annotation


# static fields
.field public static final u:Lorg/eclipse/jetty/io/nio/e;

.field public static final v:Ljava/lang/ThreadLocal;


# instance fields
.field public final e:LR1/c;

.field public final f:Ljavax/net/ssl/SSLEngine;

.field public final g:Ljavax/net/ssl/SSLSession;

.field public h:Lorg/eclipse/jetty/io/nio/a;

.field public final i:Lorg/eclipse/jetty/io/nio/g$c;

.field public j:I

.field public k:Lorg/eclipse/jetty/io/nio/g$b;

.field public l:Lorg/eclipse/jetty/io/nio/e;

.field public m:Lorg/eclipse/jetty/io/nio/e;

.field public n:Lorg/eclipse/jetty/io/nio/e;

.field public o:LL1/c;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/eclipse/jetty/io/nio/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/eclipse/jetty/io/nio/g;->u:Lorg/eclipse/jetty/io/nio/e;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/eclipse/jetty/io/nio/g;->v:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;LL1/k;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/io/nio/g;-><init>(Ljavax/net/ssl/SSLEngine;LL1/k;J)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;LL1/k;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, LL1/b;-><init>(LL1/k;J)V

    .line 3
    const-string p3, "org.eclipse.jetty.io.nio.ssl"

    invoke-static {p3}, LR1/b;->b(Ljava/lang/String;)LR1/c;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p0, Lorg/eclipse/jetty/io/nio/g;->p:Z

    .line 5
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 8
    check-cast p2, LL1/c;

    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/g;->o:LL1/c;

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g;->D()Lorg/eclipse/jetty/io/nio/g$c;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    return-void
.end method

.method public static synthetic f(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lorg/eclipse/jetty/io/nio/g;)LL1/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->o:LL1/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lorg/eclipse/jetty/io/nio/g;)LL1/k;
    .locals 0

    .line 1
    iget-object p0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lorg/eclipse/jetty/io/nio/g;)LL1/k;
    .locals 0

    .line 1
    iget-object p0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lorg/eclipse/jetty/io/nio/g;)LL1/k;
    .locals 0

    .line 1
    iget-object p0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lorg/eclipse/jetty/io/nio/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lorg/eclipse/jetty/io/nio/g;Lorg/eclipse/jetty/io/nio/a;)Lorg/eclipse/jetty/io/nio/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic o(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lorg/eclipse/jetty/io/nio/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/eclipse/jetty/io/nio/g;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lorg/eclipse/jetty/io/nio/g;)Ljavax/net/ssl/SSLSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lorg/eclipse/jetty/io/nio/g;)LR1/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lorg/eclipse/jetty/io/nio/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/eclipse/jetty/io/nio/g;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lorg/eclipse/jetty/io/nio/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/g;->s:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic u(Lorg/eclipse/jetty/io/nio/g;)LL1/k;
    .locals 0

    .line 1
    iget-object p0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic v(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic w(Lorg/eclipse/jetty/io/nio/g;)Lorg/eclipse/jetty/io/nio/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lorg/eclipse/jetty/io/nio/g;)LL1/k;
    .locals 0

    .line 1
    iget-object p0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic y(Lorg/eclipse/jetty/io/nio/g;LL1/d;LL1/d;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/io/nio/g;->E(LL1/d;LL1/d;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 9
    .line 10
    invoke-interface {v1, v0}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final B(LL1/d;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lorg/eclipse/jetty/io/nio/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, LL1/d;->buffer()LL1/d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/eclipse/jetty/io/nio/e;

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-interface {p1}, LL1/d;->p0()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public C()LL1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Lorg/eclipse/jetty/io/nio/g$c;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jetty/io/nio/g$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/g$c;-><init>(Lorg/eclipse/jetty/io/nio/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final declared-synchronized E(LL1/d;LL1/d;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    const/4 v7, 0x1

    .line 9
    const/4 v8, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->z()V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 16
    .line 17
    invoke-interface {v0}, LL1/d;->u0()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 21
    .line 22
    :cond_0
    move-object v9, v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto/16 :goto_b

    .line 26
    .line 27
    :cond_1
    invoke-interface {v0}, LL1/d;->w0()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, v1, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 32
    .line 33
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jetty/io/nio/g;->E(LL1/d;LL1/d;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v3}, LL1/d;->B0()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 55
    .line 56
    invoke-interface {v0, v2}, LL1/d;->m0(LL1/d;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-interface {v2, v0}, LL1/d;->skip(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return v7

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto/16 :goto_c

    .line 70
    .line 71
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->F()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return v2

    .line 76
    :cond_3
    :try_start_3
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 77
    .line 78
    if-eqz v3, :cond_0

    .line 79
    .line 80
    invoke-interface {v3}, LL1/d;->B0()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 87
    .line 88
    invoke-interface {v0, v2}, LL1/d;->m0(LL1/d;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-interface {v2, v0}, LL1/d;->skip(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .line 94
    .line 95
    :try_start_4
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->F()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return v7

    .line 100
    :goto_0
    if-nez v2, :cond_4

    .line 101
    .line 102
    :try_start_5
    sget-object v0, Lorg/eclipse/jetty/io/nio/g;->u:Lorg/eclipse/jetty/io/nio/e;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    .line 104
    move-object v10, v0

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move-object v10, v2

    .line 107
    :goto_1
    move v0, v7

    .line 108
    move v11, v8

    .line 109
    :goto_2
    if-eqz v0, :cond_15

    .line 110
    .line 111
    :try_start_6
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 112
    .line 113
    invoke-interface {v0}, LL1/d;->f0()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-lez v0, :cond_6

    .line 118
    .line 119
    iget-object v0, v1, LL1/b;->c:LL1/k;

    .line 120
    .line 121
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 122
    .line 123
    invoke-interface {v0, v2}, LL1/k;->t(LL1/d;)I

    .line 124
    .line 125
    .line 126
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 127
    move v12, v0

    .line 128
    if-lez v0, :cond_5

    .line 129
    .line 130
    move v0, v7

    .line 131
    goto :goto_3

    .line 132
    :cond_5
    move v0, v8

    .line 133
    goto :goto_3

    .line 134
    :catchall_2
    move-exception v0

    .line 135
    move-object v9, v0

    .line 136
    move v12, v8

    .line 137
    goto/16 :goto_a

    .line 138
    .line 139
    :catch_0
    move-exception v0

    .line 140
    move v12, v8

    .line 141
    goto/16 :goto_9

    .line 142
    .line 143
    :cond_6
    move v0, v8

    .line 144
    move v12, v0

    .line 145
    :goto_3
    :try_start_7
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 146
    .line 147
    invoke-interface {v2}, LL1/d;->B0()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    iget-object v2, v1, LL1/b;->c:LL1/k;

    .line 154
    .line 155
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 156
    .line 157
    invoke-interface {v2, v3}, LL1/k;->i(LL1/d;)I

    .line 158
    .line 159
    .line 160
    move-result v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 161
    if-lez v2, :cond_7

    .line 162
    .line 163
    move v13, v7

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    move v13, v0

    .line 166
    goto :goto_4

    .line 167
    :catchall_3
    move-exception v0

    .line 168
    move-object v9, v0

    .line 169
    goto/16 :goto_a

    .line 170
    .line 171
    :catch_1
    move-exception v0

    .line 172
    goto/16 :goto_9

    .line 173
    .line 174
    :cond_8
    move v13, v0

    .line 175
    move v2, v8

    .line 176
    :goto_4
    :try_start_8
    iget-object v14, v1, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 177
    .line 178
    const-string v15, "{} {} {} filled={}/{} flushed={}/{}"

    .line 179
    .line 180
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 181
    .line 182
    iget-object v3, v1, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    move v4, v2

    .line 189
    move-object v2, v3

    .line 190
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-object v5, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 195
    .line 196
    invoke-interface {v5}, LL1/d;->length()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 209
    .line 210
    invoke-interface {v6}, LL1/d;->length()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    move-object/from16 v16, v5

    .line 219
    .line 220
    move-object v5, v4

    .line 221
    move-object/from16 v4, v16

    .line 222
    .line 223
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-interface {v14, v15, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    sget-object v0, Lorg/eclipse/jetty/io/nio/g$a;->a:[I

    .line 231
    .line 232
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 233
    .line 234
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    aget v0, v0, v2

    .line 243
    .line 244
    if-eq v0, v7, :cond_14

    .line 245
    .line 246
    const/4 v2, 0x2

    .line 247
    if-eq v0, v2, :cond_10

    .line 248
    .line 249
    const/4 v2, 0x3

    .line 250
    if-eq v0, v2, :cond_f

    .line 251
    .line 252
    const/4 v2, 0x4

    .line 253
    if-eq v0, v2, :cond_c

    .line 254
    .line 255
    const/4 v2, 0x5

    .line 256
    if-eq v0, v2, :cond_9

    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_9
    iget-boolean v0, v1, Lorg/eclipse/jetty/io/nio/g;->q:Z

    .line 260
    .line 261
    if-eqz v0, :cond_a

    .line 262
    .line 263
    iget-boolean v0, v1, Lorg/eclipse/jetty/io/nio/g;->p:Z

    .line 264
    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    iget-object v0, v1, LL1/b;->c:LL1/k;

    .line 268
    .line 269
    invoke-interface {v0}, LL1/k;->close()V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catchall_4
    move-exception v0

    .line 274
    move v8, v11

    .line 275
    goto/16 :goto_b

    .line 276
    .line 277
    :cond_a
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 278
    .line 279
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_b

    .line 284
    .line 285
    const/4 v0, -0x1

    .line 286
    if-ne v12, v0, :cond_b

    .line 287
    .line 288
    iget-object v0, v1, LL1/b;->c:LL1/k;

    .line 289
    .line 290
    invoke-interface {v0}, LL1/k;->h()V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_b
    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/io/nio/g;->G(LL1/d;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_e

    .line 299
    .line 300
    :goto_5
    move v0, v7

    .line 301
    goto :goto_8

    .line 302
    :cond_c
    iget-boolean v0, v1, Lorg/eclipse/jetty/io/nio/g;->q:Z

    .line 303
    .line 304
    if-eqz v0, :cond_d

    .line 305
    .line 306
    iget-boolean v0, v1, Lorg/eclipse/jetty/io/nio/g;->p:Z

    .line 307
    .line 308
    if-nez v0, :cond_d

    .line 309
    .line 310
    iget-object v0, v1, LL1/b;->c:LL1/k;

    .line 311
    .line 312
    invoke-interface {v0}, LL1/k;->close()V

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_d
    invoke-virtual {v1, v10}, Lorg/eclipse/jetty/io/nio/g;->H(LL1/d;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_e

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_e
    :goto_6
    move v0, v13

    .line 324
    goto :goto_8

    .line 325
    :cond_f
    :goto_7
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 326
    .line 327
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    if-eqz v0, :cond_e

    .line 332
    .line 333
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 334
    .line 335
    .line 336
    move v13, v7

    .line 337
    goto :goto_7

    .line 338
    :cond_10
    invoke-interface {v9}, LL1/d;->f0()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-lez v0, :cond_11

    .line 343
    .line 344
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 345
    .line 346
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_11

    .line 351
    .line 352
    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/io/nio/g;->G(LL1/d;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_11

    .line 357
    .line 358
    move v13, v7

    .line 359
    :cond_11
    invoke-interface {v10}, LL1/d;->B0()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_e

    .line 364
    .line 365
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 366
    .line 367
    invoke-interface {v0}, LL1/d;->f0()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-lez v0, :cond_e

    .line 372
    .line 373
    invoke-virtual {v1, v10}, Lorg/eclipse/jetty/io/nio/g;->H(LL1/d;)Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_e

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :goto_8
    iget-object v2, v1, LL1/b;->c:LL1/k;

    .line 381
    .line 382
    invoke-interface {v2}, LL1/k;->isOpen()Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_12

    .line 387
    .line 388
    iget-object v2, v1, LL1/b;->c:LL1/k;

    .line 389
    .line 390
    invoke-interface {v2}, LL1/k;->s()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_12

    .line 395
    .line 396
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 397
    .line 398
    invoke-interface {v2}, LL1/d;->B0()Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-nez v2, :cond_12

    .line 403
    .line 404
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->A()V

    .line 405
    .line 406
    .line 407
    :cond_12
    iget-object v2, v1, LL1/b;->c:LL1/k;

    .line 408
    .line 409
    invoke-interface {v2}, LL1/k;->isOpen()Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_13

    .line 414
    .line 415
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 416
    .line 417
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_13

    .line 422
    .line 423
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 424
    .line 425
    invoke-interface {v2}, LL1/d;->B0()Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-nez v2, :cond_13

    .line 430
    .line 431
    iget-object v2, v1, LL1/b;->c:LL1/k;

    .line 432
    .line 433
    invoke-interface {v2}, LL1/k;->j()V

    .line 434
    .line 435
    .line 436
    :cond_13
    or-int/2addr v11, v0

    .line 437
    goto/16 :goto_2

    .line 438
    .line 439
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 440
    .line 441
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 442
    .line 443
    .line 444
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 445
    :goto_9
    :try_start_9
    iget-object v2, v1, LL1/b;->c:LL1/k;

    .line 446
    .line 447
    invoke-interface {v2}, LL1/k;->close()V

    .line 448
    .line 449
    .line 450
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 451
    :goto_a
    :try_start_a
    iget-object v10, v1, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 452
    .line 453
    const-string v13, "{} {} {} filled={}/{} flushed={}/{}"

    .line 454
    .line 455
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 456
    .line 457
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 458
    .line 459
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    iget-object v4, v1, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 468
    .line 469
    invoke-interface {v4}, LL1/d;->length()I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    iget-object v6, v1, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 482
    .line 483
    invoke-interface {v6}, LL1/d;->length()I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-interface {v10, v13, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    throw v9

    .line 499
    :cond_15
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 500
    .line 501
    if-ne v9, v0, :cond_16

    .line 502
    .line 503
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_16

    .line 508
    .line 509
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 510
    .line 511
    invoke-interface {v0}, LL1/j;->b()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_16

    .line 516
    .line 517
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->o:LL1/c;

    .line 518
    .line 519
    invoke-interface {v0}, LL1/c;->e()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 520
    .line 521
    .line 522
    :cond_16
    :try_start_b
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->F()V

    .line 523
    .line 524
    .line 525
    if-eqz v11, :cond_17

    .line 526
    .line 527
    iget-object v0, v1, Lorg/eclipse/jetty/io/nio/g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 528
    .line 529
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 530
    .line 531
    .line 532
    :cond_17
    monitor-exit p0

    .line 533
    return v11

    .line 534
    :goto_b
    :try_start_c
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/g;->F()V

    .line 535
    .line 536
    .line 537
    if-eqz v8, :cond_18

    .line 538
    .line 539
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 540
    .line 541
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 542
    .line 543
    .line 544
    :cond_18
    throw v0

    .line 545
    :goto_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 546
    throw v0
.end method

.method public final F()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/g;->j:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/io/nio/g;->j:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 15
    .line 16
    invoke-interface {v0}, LL1/d;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 23
    .line 24
    invoke-interface {v0}, LL1/d;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 31
    .line 32
    invoke-interface {v0}, LL1/d;->length()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 40
    .line 41
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 42
    .line 43
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 44
    .line 45
    sget-object v1, Lorg/eclipse/jetty/io/nio/g;->v:Ljava/lang/ThreadLocal;

    .line 46
    .line 47
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0
.end method

.method public final declared-synchronized G(LL1/d;)Z
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 3
    .line 4
    invoke-interface {v0}, LL1/d;->B0()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/g;->B(LL1/d;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 19
    .line 20
    invoke-interface {v2}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 25
    :try_start_3
    invoke-interface {p1}, LL1/d;->n0()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, LL1/d;->w0()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 44
    .line 45
    invoke-interface {v4}, LL1/d;->getIndex()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 53
    .line 54
    invoke-interface {v4}, LL1/d;->n0()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 66
    .line 67
    invoke-virtual {v5, v2, v0}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 72
    .line 73
    invoke-interface {v6}, LR1/c;->f()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 80
    .line 81
    const-string v7, "{} unwrap {} {} consumed={} produced={}"

    .line 82
    .line 83
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 84
    .line 85
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-interface {v6, v7, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :catch_0
    move-exception p1

    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :catch_1
    move-exception p1

    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :catch_2
    move-exception p1

    .line 127
    goto/16 :goto_4

    .line 128
    .line 129
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    sub-int/2addr v6, v4

    .line 134
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 135
    .line 136
    invoke-interface {v4, v6}, LL1/d;->skip(I)I

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 140
    .line 141
    invoke-interface {v4}, LL1/d;->u0()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    sub-int/2addr v4, v3

    .line 149
    invoke-interface {p1}, LL1/d;->n0()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    add-int/2addr v3, v4

    .line 154
    invoke-interface {p1, v3}, LL1/d;->q0(I)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    .line 156
    .line 157
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 175
    .line 176
    .line 177
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 179
    :try_start_6
    sget-object v0, Lorg/eclipse/jetty/io/nio/g$a;->b:[I

    .line 180
    .line 181
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    aget v0, v0, v2

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    if-eq v0, v2, :cond_5

    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    if-eq v0, v3, :cond_4

    .line 196
    .line 197
    const/4 p1, 0x3

    .line 198
    if-eq v0, p1, :cond_3

    .line 199
    .line 200
    const/4 p1, 0x4

    .line 201
    if-ne v0, p1, :cond_2

    .line 202
    .line 203
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 204
    .line 205
    const-string v0, "unwrap CLOSE {} {}"

    .line 206
    .line 207
    filled-new-array {p0, v5}, [Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-interface {p1, v0, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 219
    .line 220
    if-ne p1, v0, :cond_6

    .line 221
    .line 222
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 223
    .line 224
    invoke-interface {p1}, LL1/k;->close()V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :catchall_1
    move-exception p1

    .line 229
    goto/16 :goto_8

    .line 230
    .line 231
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 232
    .line 233
    const-string v0, "{} wrap default {}"

    .line 234
    .line 235
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 236
    .line 237
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-interface {p1, v0, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    new-instance p1, Ljava/io/IOException;

    .line 245
    .line 246
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_3
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 259
    .line 260
    if-ne p1, v0, :cond_6

    .line 261
    .line 262
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/g;->q:Z

    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 266
    .line 267
    invoke-interface {v0}, LR1/c;->f()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 274
    .line 275
    const-string v3, "{} unwrap {} {}->{}"

    .line 276
    .line 277
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 278
    .line 279
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 284
    .line 285
    invoke-interface {v8}, LL1/d;->i0()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-interface {p1}, LL1/d;->i0()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    filled-new-array {v7, v5, v8, p1}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-interface {v0, v3, p1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_5
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 302
    .line 303
    invoke-interface {p1}, LL1/k;->s()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_6

    .line 308
    .line 309
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 310
    .line 311
    invoke-interface {p1}, LL1/d;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 312
    .line 313
    .line 314
    :cond_6
    :goto_1
    if-gtz v6, :cond_7

    .line 315
    .line 316
    if-lez v4, :cond_8

    .line 317
    .line 318
    :cond_7
    move v1, v2

    .line 319
    :cond_8
    monitor-exit p0

    .line 320
    return v1

    .line 321
    :catchall_2
    move-exception p1

    .line 322
    goto :goto_7

    .line 323
    :catchall_3
    move-exception p1

    .line 324
    goto :goto_6

    .line 325
    :goto_2
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    .line 326
    .line 327
    invoke-direct {v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 328
    .line 329
    .line 330
    throw v3

    .line 331
    :goto_3
    throw p1

    .line 332
    :goto_4
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 333
    .line 334
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 335
    .line 336
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-interface {v3, v4, p1}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    .line 342
    .line 343
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 344
    .line 345
    invoke-interface {v3}, LL1/k;->close()V

    .line 346
    .line 347
    .line 348
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 349
    :goto_5
    :try_start_8
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 367
    .line 368
    .line 369
    throw p1

    .line 370
    :goto_6
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 371
    :try_start_9
    throw p1

    .line 372
    :goto_7
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 373
    :try_start_a
    throw p1

    .line 374
    :goto_8
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 375
    throw p1
.end method

.method public final declared-synchronized H(LL1/d;)Z
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/g;->B(LL1/d;)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 8
    .line 9
    invoke-interface {v1}, LL1/d;->u0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 13
    .line 14
    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/e;->t0()Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_2
    invoke-interface {p1}, LL1/d;->getIndex()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, LL1/d;->n0()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 39
    .line 40
    invoke-interface {v4}, LL1/d;->n0()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 59
    .line 60
    invoke-virtual {v5, v0, v1}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 65
    .line 66
    invoke-interface {v6}, LR1/c;->f()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_0

    .line 71
    .line 72
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 73
    .line 74
    const-string v7, "{} wrap {} {} consumed={} produced={}"

    .line 75
    .line 76
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-interface {v6, v7, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :catch_0
    move-exception p1

    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :catch_1
    move-exception p1

    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :catch_2
    move-exception p1

    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    sub-int/2addr v6, v3

    .line 127
    invoke-interface {p1, v6}, LL1/d;->skip(I)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    sub-int/2addr p1, v4

    .line 135
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 136
    .line 137
    invoke-interface {v3}, LL1/d;->n0()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    add-int/2addr v4, p1

    .line 142
    invoke-interface {v3, v4}, LL1/d;->q0(I)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    .line 164
    .line 165
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 166
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 167
    :try_start_5
    sget-object v0, Lorg/eclipse/jetty/io/nio/g$a;->b:[I

    .line 168
    .line 169
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    aget v0, v0, v1

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    if-eq v0, v1, :cond_6

    .line 181
    .line 182
    const/4 v3, 0x2

    .line 183
    if-eq v0, v3, :cond_3

    .line 184
    .line 185
    const/4 v3, 0x3

    .line 186
    if-eq v0, v3, :cond_2

    .line 187
    .line 188
    const/4 v3, 0x4

    .line 189
    if-ne v0, v3, :cond_1

    .line 190
    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 192
    .line 193
    const-string v3, "wrap CLOSE {} {}"

    .line 194
    .line 195
    filled-new-array {p0, v5}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-interface {v0, v3, v4}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 207
    .line 208
    if-ne v0, v3, :cond_3

    .line 209
    .line 210
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 211
    .line 212
    invoke-interface {v0}, LL1/k;->close()V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catchall_1
    move-exception p1

    .line 217
    goto :goto_8

    .line 218
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 219
    .line 220
    const-string v0, "{} wrap default {}"

    .line 221
    .line 222
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 223
    .line 224
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-interface {p1, v0, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    new-instance p1, Ljava/io/IOException;

    .line 232
    .line 233
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1

    .line 241
    :cond_2
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 246
    .line 247
    if-ne v0, v3, :cond_3

    .line 248
    .line 249
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/g;->q:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 250
    .line 251
    :cond_3
    :goto_1
    if-gtz v6, :cond_4

    .line 252
    .line 253
    if-lez p1, :cond_5

    .line 254
    .line 255
    :cond_4
    move v2, v1

    .line 256
    :cond_5
    monitor-exit p0

    .line 257
    return v2

    .line 258
    :cond_6
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 259
    .line 260
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 261
    .line 262
    .line 263
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 264
    :catchall_2
    move-exception p1

    .line 265
    goto :goto_7

    .line 266
    :catchall_3
    move-exception p1

    .line 267
    goto :goto_6

    .line 268
    :goto_2
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    .line 269
    .line 270
    invoke-direct {v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    throw v3

    .line 274
    :goto_3
    throw p1

    .line 275
    :goto_4
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 276
    .line 277
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 278
    .line 279
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-interface {v3, v4, p1}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 287
    .line 288
    invoke-interface {v3}, LL1/k;->close()V

    .line 289
    .line 290
    .line 291
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 292
    :goto_5
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 310
    .line 311
    .line 312
    throw p1

    .line 313
    :goto_6
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 314
    :try_start_9
    throw p1

    .line 315
    :goto_7
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 316
    :try_start_a
    throw p1

    .line 317
    :goto_8
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 318
    throw p1
.end method

.method public a(J)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 2
    .line 3
    const-string v1, "onIdleExpired {}ms on {}"

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 17
    .line 18
    invoke-interface {v0}, LL1/k;->o()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/g$c;->close()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/g$c;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 39
    .line 40
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-super {p0, p1, p2}, LL1/b;->a(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public handle()LL1/j;
    .locals 7

    .line 1
    const-string v0, "onInputShutdown failed"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g;->z()V

    .line 5
    .line 6
    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-eqz v2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->f:Ljavax/net/ssl/SSLEngine;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 17
    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v2, v2}, Lorg/eclipse/jetty/io/nio/g;->E(LL1/d;LL1/d;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 30
    .line 31
    invoke-interface {v3}, LL1/j;->handle()LL1/j;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lorg/eclipse/jetty/io/nio/a;

    .line 36
    .line 37
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 38
    .line 39
    if-eq v3, v4, :cond_1

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iput-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 44
    .line 45
    move v2, v1

    .line 46
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 47
    .line 48
    const-string v4, "{} handle {} progress={}"

    .line 49
    .line 50
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    filled-new-array {v5, p0, v6}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v3, v4, v5}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g;->F()V

    .line 65
    .line 66
    .line 67
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/g;->r:Z

    .line 68
    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 72
    .line 73
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/g$c;->s()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/g$c;->isOpen()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/g;->r:Z

    .line 88
    .line 89
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 90
    .line 91
    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :catchall_1
    move-exception v1

    .line 96
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 97
    .line 98
    invoke-interface {v2, v0, v1}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 102
    .line 103
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/g$c;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 109
    .line 110
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_2
    return-object p0

    .line 114
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/g;->F()V

    .line 115
    .line 116
    .line 117
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/g;->r:Z

    .line 118
    .line 119
    if-nez v3, :cond_4

    .line 120
    .line 121
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 122
    .line 123
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/g$c;->s()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_4

    .line 128
    .line 129
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 130
    .line 131
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/g$c;->isOpen()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/g;->r:Z

    .line 138
    .line 139
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->h:Lorg/eclipse/jetty/io/nio/a;

    .line 140
    .line 141
    invoke-interface {v1}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catchall_2
    move-exception v1

    .line 146
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 147
    .line 148
    invoke-interface {v3, v0, v1}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 152
    .line 153
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/g$c;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :catch_1
    move-exception v0

    .line 158
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->e:LR1/c;

    .line 159
    .line 160
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_4
    :goto_4
    throw v2
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/g$c;->getConnection()LL1/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eq v0, p0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, LL1/j;->onClose()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, LL1/b;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->i:Lorg/eclipse/jetty/io/nio/g$c;

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "%s %s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final z()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/g;->j:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lorg/eclipse/jetty/io/nio/g;->j:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lorg/eclipse/jetty/io/nio/g;->v:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/eclipse/jetty/io/nio/g$b;

    .line 21
    .line 22
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lorg/eclipse/jetty/io/nio/g$b;

    .line 27
    .line 28
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 29
    .line 30
    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    mul-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/g;->g:Ljavax/net/ssl/SSLSession;

    .line 37
    .line 38
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    mul-int/lit8 v3, v3, 0x2

    .line 43
    .line 44
    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/io/nio/g$b;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->k:Lorg/eclipse/jetty/io/nio/g$b;

    .line 53
    .line 54
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g$b;->a:Lorg/eclipse/jetty/io/nio/e;

    .line 55
    .line 56
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->l:Lorg/eclipse/jetty/io/nio/e;

    .line 57
    .line 58
    iget-object v2, v1, Lorg/eclipse/jetty/io/nio/g$b;->b:Lorg/eclipse/jetty/io/nio/e;

    .line 59
    .line 60
    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/g;->n:Lorg/eclipse/jetty/io/nio/e;

    .line 61
    .line 62
    iget-object v1, v1, Lorg/eclipse/jetty/io/nio/g$b;->c:Lorg/eclipse/jetty/io/nio/e;

    .line 63
    .line 64
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/g;->m:Lorg/eclipse/jetty/io/nio/e;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw v0
.end method
