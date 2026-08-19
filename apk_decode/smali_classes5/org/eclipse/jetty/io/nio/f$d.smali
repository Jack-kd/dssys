.class public Lorg/eclipse/jetty/io/nio/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/nio/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final b:I

.field public final c:LW1/e;

.field public final d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public volatile e:Ljava/nio/channels/Selector;

.field public volatile f:Ljava/lang/Thread;

.field public g:I

.field public h:J

.field public i:Z

.field public j:Z

.field public volatile k:J

.field public l:Ljava/util/concurrent/ConcurrentMap;

.field public final synthetic m:Lorg/eclipse/jetty/io/nio/f;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/nio/f;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 19
    .line 20
    iput p2, p0, Lorg/eclipse/jetty/io/nio/f$d;->b:I

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iput-wide p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->k:J

    .line 27
    .line 28
    new-instance p1, LW1/e;

    .line 29
    .line 30
    invoke-direct {p1, p0}, LW1/e;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, LW1/e;->i(J)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->Q()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-long v0, v0

    .line 55
    add-long/2addr p1, v0

    .line 56
    iput-wide p1, p0, Lorg/eclipse/jetty/io/nio/f$d;->h:J

    .line 57
    .line 58
    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jetty/io/nio/f$d;)Ljava/util/concurrent/ConcurrentMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/io/nio/f$d;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lorg/eclipse/jetty/io/nio/f$d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/f$d;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    instance-of v0, p2, LL1/k;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/f$c;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/f$c;-><init>(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final e(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0, p2}, Lorg/eclipse/jetty/io/nio/f;->f0(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/f$d;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 8
    .line 9
    const-string v0, "created {}"

    .line 10
    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p2, v0, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lorg/eclipse/jetty/io/nio/f;->Z(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/f$d;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 24
    .line 25
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public f(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 2
    .line 3
    const-string v1, "destroyEndPoint {}"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/nio/f;->Y(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public g()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-lez v2, :cond_9

    .line 25
    .line 26
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_1
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 32
    if-eqz v2, :cond_9

    .line 33
    .line 34
    :try_start_2
    instance-of v5, v2, LL1/k;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    check-cast v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 39
    .line 40
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/b;->v()Ljava/nio/channels/ByteChannel;

    .line 41
    .line 42
    .line 43
    move-result-object v4
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :try_start_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->z()V
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :catchall_0
    move-exception v2

    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :catch_0
    move-exception v2

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :catchall_1
    move-exception v2

    .line 56
    move-object v4, v0

    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_1
    :try_start_4
    instance-of v5, v2, Lorg/eclipse/jetty/io/nio/f$c;

    .line 60
    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    check-cast v2, Lorg/eclipse/jetty/io/nio/f$c;

    .line 64
    .line 65
    iget-object v5, v2, Lorg/eclipse/jetty/io/nio/f$c;->a:Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    .line 67
    :try_start_5
    iget-object v2, v2, Lorg/eclipse/jetty/io/nio/f$c;->b:Ljava/lang/Object;

    .line 68
    .line 69
    instance-of v6, v5, Ljava/nio/channels/SocketChannel;

    .line 70
    .line 71
    if-eqz v6, :cond_2

    .line 72
    .line 73
    move-object v6, v5

    .line 74
    check-cast v6, Ljava/nio/channels/SocketChannel;

    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    invoke-virtual {v5, v1, v4, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    move-object v4, v5

    .line 87
    check-cast v4, Ljava/nio/channels/SocketChannel;

    .line 88
    .line 89
    invoke-virtual {p0, v4, v2}, Lorg/eclipse/jetty/io/nio/f$d;->e(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->F()V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :catchall_2
    move-exception v2

    .line 102
    move-object v4, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_8

    .line 109
    .line 110
    const/16 v4, 0x8

    .line 111
    .line 112
    invoke-virtual {v5, v1, v4, v2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 113
    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_3
    :try_start_6
    instance-of v5, v2, Ljava/nio/channels/SocketChannel;

    .line 118
    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    check-cast v2, Ljava/nio/channels/SocketChannel;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 122
    .line 123
    :try_start_7
    invoke-virtual {v2, v1, v4, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {p0, v2, v4}, Lorg/eclipse/jetty/io/nio/f$d;->e(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v4, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->F()V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :catchall_3
    move-exception v4

    .line 139
    move-object v12, v4

    .line 140
    move-object v4, v2

    .line 141
    move-object v2, v12

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    :try_start_8
    instance-of v4, v2, Lorg/eclipse/jetty/io/nio/f$b;

    .line 144
    .line 145
    if-eqz v4, :cond_5

    .line 146
    .line 147
    check-cast v2, Ljava/lang/Runnable;

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    instance-of v4, v2, Ljava/lang/Runnable;

    .line 154
    .line 155
    if-eqz v4, :cond_6

    .line 156
    .line 157
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 158
    .line 159
    check-cast v2, Ljava/lang/Runnable;

    .line 160
    .line 161
    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/io/nio/f;->dispatch(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v4
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 175
    :goto_1
    :try_start_9
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 176
    .line 177
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_7

    .line 182
    .line 183
    sget-object v5, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 184
    .line 185
    invoke-interface {v5, v2}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catchall_4
    move-exception v1

    .line 190
    goto/16 :goto_16

    .line 191
    .line 192
    :catch_1
    move-exception v1

    .line 193
    goto/16 :goto_13

    .line 194
    .line 195
    :catch_2
    move-exception v1

    .line 196
    goto/16 :goto_14

    .line 197
    .line 198
    :cond_7
    sget-object v5, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 199
    .line 200
    invoke-interface {v5, v2}, LR1/c;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 201
    .line 202
    .line 203
    :goto_2
    if-eqz v4, :cond_8

    .line 204
    .line 205
    :try_start_a
    invoke-interface {v4}, Ljava/nio/channels/Channel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :catch_3
    move-exception v2

    .line 210
    :try_start_b
    sget-object v4, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 211
    .line 212
    invoke-interface {v4, v2}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :goto_3
    sget-object v4, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 217
    .line 218
    invoke-interface {v4, v2}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    :goto_4
    move v2, v3

    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_9
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectNow()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v5

    .line 232
    const-wide/16 v7, 0x0

    .line 233
    .line 234
    if-nez v2, :cond_d

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_d

    .line 245
    .line 246
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->i:Z
    :try_end_b
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 247
    .line 248
    if-eqz v2, :cond_a

    .line 249
    .line 250
    :try_start_c
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->R()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    int-to-long v2, v2

    .line 255
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :catch_4
    move-exception v2

    .line 260
    :try_start_d
    sget-object v3, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 261
    .line 262
    invoke-interface {v3, v2}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    .line 267
    .line 268
    move-result-wide v5

    .line 269
    :cond_a
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 270
    .line 271
    invoke-virtual {v2, v5, v6}, LW1/e;->k(J)V

    .line 272
    .line 273
    .line 274
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 275
    .line 276
    invoke-virtual {v2}, LW1/e;->f()J

    .line 277
    .line 278
    .line 279
    move-result-wide v2

    .line 280
    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/f$d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 281
    .line 282
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    if-nez v9, :cond_b

    .line 287
    .line 288
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->S()I

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    int-to-long v9, v9

    .line 293
    goto :goto_6

    .line 294
    :cond_b
    move-wide v9, v7

    .line 295
    :goto_6
    cmp-long v11, v9, v7

    .line 296
    .line 297
    if-lez v11, :cond_c

    .line 298
    .line 299
    cmp-long v11, v2, v7

    .line 300
    .line 301
    if-ltz v11, :cond_c

    .line 302
    .line 303
    cmp-long v11, v9, v2

    .line 304
    .line 305
    if-lez v11, :cond_c

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_c
    move-wide v2, v9

    .line 309
    :goto_7
    cmp-long v9, v2, v7

    .line 310
    .line 311
    if-lez v9, :cond_d

    .line 312
    .line 313
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    .line 314
    .line 315
    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 317
    .line 318
    .line 319
    move-result-wide v2

    .line 320
    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 321
    .line 322
    invoke-virtual {v9, v2, v3}, LW1/e;->k(J)V

    .line 323
    .line 324
    .line 325
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->Q()I

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-lez v9, :cond_d

    .line 330
    .line 331
    sub-long/2addr v2, v5

    .line 332
    const-wide/16 v5, 0x1

    .line 333
    .line 334
    cmp-long v2, v2, v5

    .line 335
    .line 336
    if-gtz v2, :cond_d

    .line 337
    .line 338
    iget v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->g:I

    .line 339
    .line 340
    add-int/2addr v2, v4

    .line 341
    iput v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->g:I

    .line 342
    .line 343
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->T()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-le v2, v3, :cond_d

    .line 348
    .line 349
    iput-boolean v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->i:Z

    .line 350
    .line 351
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->j:Z

    .line 352
    .line 353
    if-nez v2, :cond_d

    .line 354
    .line 355
    iput-boolean v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->j:Z

    .line 356
    .line 357
    sget-object v2, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 358
    .line 359
    const-string v3, "Selector {} is too busy, pausing!"

    .line 360
    .line 361
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-interface {v2, v3, v5}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 369
    .line 370
    if-eqz v2, :cond_1d

    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->isOpen()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-nez v2, :cond_e

    .line 377
    .line 378
    goto/16 :goto_12

    .line 379
    .line 380
    :cond_e
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    :cond_f
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_17

    .line 393
    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    check-cast v3, Ljava/nio/channels/SelectionKey;
    :try_end_d
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 399
    .line 400
    :try_start_e
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-nez v5, :cond_10

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 414
    .line 415
    if-eqz v5, :cond_f

    .line 416
    .line 417
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->z()V

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :catch_5
    move-exception v5

    .line 422
    move-object v6, v0

    .line 423
    goto/16 :goto_b

    .line 424
    .line 425
    :catch_6
    move-exception v3

    .line 426
    goto/16 :goto_e

    .line 427
    .line 428
    :cond_10
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    instance-of v6, v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 433
    .line 434
    if-eqz v6, :cond_12

    .line 435
    .line 436
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 437
    .line 438
    .line 439
    move-result v6

    .line 440
    if-nez v6, :cond_11

    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-eqz v6, :cond_f

    .line 447
    .line 448
    :cond_11
    check-cast v5, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 449
    .line 450
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->F()V

    .line 451
    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_12
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    if-eqz v6, :cond_14

    .line 459
    .line 460
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    check-cast v6, Ljava/nio/channels/SocketChannel;
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 465
    .line 466
    :try_start_f
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 467
    .line 468
    .line 469
    move-result v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 470
    if-eqz v5, :cond_13

    .line 471
    .line 472
    :try_start_10
    invoke-virtual {v3, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0, v6, v3}, Lorg/eclipse/jetty/io/nio/f$d;->e(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    invoke-virtual {v3, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->F()V

    .line 483
    .line 484
    .line 485
    goto :goto_8

    .line 486
    :catch_7
    move-exception v5

    .line 487
    goto :goto_b

    .line 488
    :cond_13
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 489
    .line 490
    .line 491
    :goto_9
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 492
    .line 493
    .line 494
    goto :goto_8

    .line 495
    :catchall_5
    move-exception v5

    .line 496
    goto :goto_a

    .line 497
    :catch_8
    move-exception v9

    .line 498
    :try_start_11
    iget-object v10, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 499
    .line 500
    invoke-virtual {v10, v6, v9, v5}, Lorg/eclipse/jetty/io/nio/f;->X(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 501
    .line 502
    .line 503
    :try_start_12
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 504
    .line 505
    .line 506
    goto :goto_9

    .line 507
    :goto_a
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 511
    .line 512
    .line 513
    throw v5
    :try_end_12
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 514
    :cond_14
    :try_start_13
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    move-object v6, v5

    .line 519
    check-cast v6, Ljava/nio/channels/SocketChannel;
    :try_end_13
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 520
    .line 521
    :try_start_14
    invoke-virtual {p0, v6, v3}, Lorg/eclipse/jetty/io/nio/f$d;->e(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    .line 522
    .line 523
    .line 524
    move-result-object v5

    .line 525
    invoke-virtual {v3, v5}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-eqz v9, :cond_f

    .line 533
    .line 534
    invoke-virtual {v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->F()V
    :try_end_14
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 535
    .line 536
    .line 537
    goto/16 :goto_8

    .line 538
    .line 539
    :goto_b
    :try_start_15
    iget-object v9, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 540
    .line 541
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    if-eqz v9, :cond_15

    .line 546
    .line 547
    sget-object v9, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 548
    .line 549
    invoke-interface {v9, v5}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 550
    .line 551
    .line 552
    goto :goto_c

    .line 553
    :cond_15
    sget-object v9, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 554
    .line 555
    invoke-interface {v9, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 556
    .line 557
    .line 558
    :goto_c
    if-eqz v6, :cond_16

    .line 559
    .line 560
    :try_start_16
    invoke-virtual {v6}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 561
    .line 562
    .line 563
    goto :goto_d

    .line 564
    :catch_9
    move-exception v5

    .line 565
    :try_start_17
    sget-object v6, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 566
    .line 567
    invoke-interface {v6, v5}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 568
    .line 569
    .line 570
    :cond_16
    :goto_d
    if-eqz v3, :cond_f

    .line 571
    .line 572
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    instance-of v5, v5, Ljava/nio/channels/ServerSocketChannel;

    .line 577
    .line 578
    if-nez v5, :cond_f

    .line 579
    .line 580
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    if-eqz v5, :cond_f

    .line 585
    .line 586
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_8

    .line 590
    .line 591
    :goto_e
    sget-object v5, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 592
    .line 593
    invoke-interface {v5, v3}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_8

    .line 597
    .line 598
    :cond_17
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 603
    .line 604
    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 606
    .line 607
    .line 608
    move-result-wide v2

    .line 609
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 610
    .line 611
    invoke-virtual {v4, v2, v3}, LW1/e;->k(J)V

    .line 612
    .line 613
    .line 614
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 615
    .line 616
    invoke-virtual {v4}, LW1/e;->c()LW1/e$a;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    :goto_f
    if-eqz v4, :cond_19

    .line 621
    .line 622
    instance-of v5, v4, Ljava/lang/Runnable;

    .line 623
    .line 624
    if-eqz v5, :cond_18

    .line 625
    .line 626
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 627
    .line 628
    check-cast v4, Ljava/lang/Runnable;

    .line 629
    .line 630
    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/io/nio/f;->dispatch(Ljava/lang/Runnable;)Z

    .line 631
    .line 632
    .line 633
    :cond_18
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 634
    .line 635
    invoke-virtual {v4}, LW1/e;->c()LW1/e$a;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    goto :goto_f

    .line 640
    :cond_19
    iget-wide v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->k:J

    .line 641
    .line 642
    sub-long v4, v2, v4

    .line 643
    .line 644
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->S()I

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    int-to-long v9, v6

    .line 649
    cmp-long v4, v4, v9

    .line 650
    .line 651
    if-lez v4, :cond_1b

    .line 652
    .line 653
    iput-wide v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->k:J

    .line 654
    .line 655
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 656
    .line 657
    invoke-static {v4}, Lorg/eclipse/jetty/io/nio/f;->U(Lorg/eclipse/jetty/io/nio/f;)J

    .line 658
    .line 659
    .line 660
    move-result-wide v4

    .line 661
    cmp-long v4, v4, v7

    .line 662
    .line 663
    if-lez v4, :cond_1a

    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    int-to-long v4, v1

    .line 674
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 675
    .line 676
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/f;->U(Lorg/eclipse/jetty/io/nio/f;)J

    .line 677
    .line 678
    .line 679
    move-result-wide v6

    .line 680
    cmp-long v1, v4, v6

    .line 681
    .line 682
    if-lez v1, :cond_1a

    .line 683
    .line 684
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 685
    .line 686
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/f;->V(Lorg/eclipse/jetty/io/nio/f;)I

    .line 687
    .line 688
    .line 689
    move-result v1

    .line 690
    int-to-long v4, v1

    .line 691
    add-long/2addr v4, v2

    .line 692
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 693
    .line 694
    invoke-static {v1}, Lorg/eclipse/jetty/io/nio/f;->W(Lorg/eclipse/jetty/io/nio/f;)I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    int-to-long v6, v1

    .line 699
    sub-long/2addr v4, v6

    .line 700
    goto :goto_10

    .line 701
    :cond_1a
    move-wide v4, v2

    .line 702
    :goto_10
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 703
    .line 704
    new-instance v6, Lorg/eclipse/jetty/io/nio/f$d$a;

    .line 705
    .line 706
    invoke-direct {v6, p0, v4, v5}, Lorg/eclipse/jetty/io/nio/f$d$a;-><init>(Lorg/eclipse/jetty/io/nio/f$d;J)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/io/nio/f;->dispatch(Ljava/lang/Runnable;)Z

    .line 710
    .line 711
    .line 712
    :cond_1b
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->Q()I

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    if-lez v1, :cond_1c

    .line 717
    .line 718
    iget-wide v4, p0, Lorg/eclipse/jetty/io/nio/f$d;->h:J

    .line 719
    .line 720
    cmp-long v1, v2, v4

    .line 721
    .line 722
    if-lez v1, :cond_1c

    .line 723
    .line 724
    const/4 v1, 0x0

    .line 725
    iput v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->g:I

    .line 726
    .line 727
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->i:Z

    .line 728
    .line 729
    invoke-static {}, Lorg/eclipse/jetty/io/nio/f;->Q()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    int-to-long v4, v1

    .line 734
    add-long/2addr v2, v4

    .line 735
    iput-wide v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->h:J
    :try_end_17
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 736
    .line 737
    :cond_1c
    :goto_11
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 738
    .line 739
    goto :goto_15

    .line 740
    :cond_1d
    :goto_12
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 741
    .line 742
    return-void

    .line 743
    :goto_13
    :try_start_18
    sget-object v2, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 744
    .line 745
    invoke-interface {v2, v1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 746
    .line 747
    .line 748
    goto :goto_11

    .line 749
    :goto_14
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 750
    .line 751
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    if-eqz v2, :cond_1e

    .line 756
    .line 757
    sget-object v2, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 758
    .line 759
    invoke-interface {v2, v1}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 760
    .line 761
    .line 762
    goto :goto_11

    .line 763
    :cond_1e
    sget-object v2, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 764
    .line 765
    invoke-interface {v2, v1}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 766
    .line 767
    .line 768
    goto :goto_11

    .line 769
    :goto_15
    return-void

    .line 770
    :goto_16
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 771
    .line 772
    throw v1
.end method

.method public h(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " keys="

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v3, " iOps="

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, " rOps="

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, " iOps=-1 rOps=-1"

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    return-void
.end method

.method public i()Lorg/eclipse/jetty/io/nio/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 2
    .line 3
    invoke-virtual {v0}, LW1/e;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public k()Ljava/nio/channels/Selector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()V
    .locals 4

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jetty/io/nio/f$d;->d(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    .line 78
    .line 79
    const-string v2, "recreating selector"

    .line 80
    .line 81
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v1
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, " id="

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->b:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "\n"

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    array-length v2, v0

    .line 44
    move v3, v1

    .line 45
    :goto_1
    if-ge v3, v2, :cond_2

    .line 46
    .line 47
    aget-object v4, v0, v3

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-string v6, "org.eclipse.jetty."

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string v4, "not selecting"

    .line 66
    .line 67
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    mul-int/lit8 v0, v0, 0x2

    .line 82
    .line 83
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lorg/eclipse/jetty/io/nio/f$d$c;

    .line 96
    .line 97
    invoke-direct {v4, p0, v2, v0}, Lorg/eclipse/jetty/io/nio/f$d$c;-><init>(Lorg/eclipse/jetty/io/nio/f$d;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 104
    .line 105
    const-wide/16 v5, 0x5

    .line 106
    .line 107
    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception v0

    .line 112
    sget-object v4, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 113
    .line 114
    invoke-interface {v4, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    new-array v0, v3, [Ljava/util/Collection;

    .line 118
    .line 119
    aput-object v2, v0, v1

    .line 120
    .line 121
    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    return-void
.end method

.method public n(LW1/e$a;J)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, LW1/e;->h(LW1/e$a;J)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "!Runnable"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public o()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x64

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/f$d;->f:Ljava/lang/Thread;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/f$d;->p()V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0xa

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 23
    .line 24
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    instance-of v2, v1, LL1/k;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    check-cast v1, LL1/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    :try_start_2
    invoke-interface {v1}, LL1/k;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_3

    .line 69
    :catch_1
    move-exception v1

    .line 70
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 71
    .line 72
    invoke-interface {v2, v1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->c:LW1/e;

    .line 77
    .line 78
    invoke-virtual {v0}, LW1/e;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_2
    move-exception v0

    .line 90
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/io/nio/f;->j:LR1/c;

    .line 91
    .line 92
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    throw v0
.end method

.method public p()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void

    .line 9
    :catch_0
    new-instance v0, Lorg/eclipse/jetty/io/nio/f$d$b;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/nio/f$d$b;-><init>(Lorg/eclipse/jetty/io/nio/f$d;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/f$d;->l()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/f$d;->e:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v2

    .line 26
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->isOpen()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "%s keys=%d selected=%d"

    .line 55
    .line 56
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
