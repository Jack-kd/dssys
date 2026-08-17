.class public Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
.super Lorg/eclipse/jetty/io/nio/b;
.source "SourceFile"

# interfaces
.implements LL1/c;
.implements LL1/i;


# static fields
.field public static final B:LR1/c;


# instance fields
.field public A:Z

.field public final k:Z

.field public final l:Lorg/eclipse/jetty/io/nio/f$d;

.field public final m:Lorg/eclipse/jetty/io/nio/f;

.field public n:Ljava/nio/channels/SelectionKey;

.field public final o:Ljava/lang/Runnable;

.field public p:I

.field public volatile q:Lorg/eclipse/jetty/io/nio/a;

.field public r:I

.field public s:Z

.field public volatile t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public volatile x:J

.field public volatile y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "org.eclipse.jetty.io.nio"

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->b(Ljava/lang/String;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/f$d;Ljava/nio/channels/SelectionKey;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/eclipse/jetty/io/nio/b;-><init>(Ljava/nio/channels/ByteChannel;I)V

    .line 2
    .line 3
    .line 4
    const-string p1, "os.name"

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-virtual {p1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p4, "win"

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 23
    .line 24
    new-instance p1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$a;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$a;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->o:Ljava/lang/Runnable;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 33
    .line 34
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/f$d;->i()Lorg/eclipse/jetty/io/nio/f;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    iput-object p4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 39
    .line 40
    iput-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    iput p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 44
    .line 45
    iput-boolean p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->s:Z

    .line 46
    .line 47
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->w:Z

    .line 48
    .line 49
    iput-object p3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->G(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public A()Lorg/eclipse/jetty/io/nio/f$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()V
    .locals 9

    .line 1
    const-string v0, "onInputShutdown failed"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const-string v3, "SCEP.run() finally DISPATCHED"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v2, :cond_4

    .line 9
    .line 10
    :goto_1
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 11
    .line 12
    invoke-interface {v5}, LL1/j;->handle()LL1/j;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Lorg/eclipse/jetty/io/nio/a;

    .line 17
    .line 18
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 19
    .line 20
    if-eq v5, v6, :cond_0

    .line 21
    .line 22
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 23
    .line 24
    const-string v7, "{} replaced {}"

    .line 25
    .line 26
    iget-object v8, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 27
    .line 28
    filled-new-array {v5, v8}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-interface {v6, v7, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 36
    .line 37
    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 38
    .line 39
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 40
    .line 41
    invoke-virtual {v5, p0, v6}, Lorg/eclipse/jetty/io/nio/f;->a0(LL1/i;LL1/j;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v5

    .line 46
    goto :goto_5

    .line 47
    :catch_0
    move-exception v5

    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :catch_1
    move-exception v5

    .line 51
    goto/16 :goto_d

    .line 52
    .line 53
    :catch_2
    move-exception v5

    .line 54
    goto/16 :goto_11

    .line 55
    .line 56
    :cond_0
    :try_start_1
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z

    .line 57
    .line 58
    if-nez v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 75
    .line 76
    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    goto/16 :goto_18

    .line 85
    .line 86
    :catchall_2
    move-exception v5

    .line 87
    :try_start_4
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 88
    .line 89
    invoke-interface {v6, v0, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 90
    .line 91
    .line 92
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_3
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :catch_3
    move-exception v5

    .line 99
    :try_start_6
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 100
    .line 101
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->H()Z

    .line 110
    .line 111
    .line 112
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 113
    xor-int/2addr v2, v1

    .line 114
    goto :goto_0

    .line 115
    :goto_5
    :try_start_8
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 116
    .line 117
    const-string v7, "handle failed"

    .line 118
    .line 119
    invoke-interface {v6, v7, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 120
    .line 121
    .line 122
    :try_start_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 123
    .line 124
    .line 125
    goto :goto_6

    .line 126
    :catchall_4
    move-exception v5

    .line 127
    goto/16 :goto_14

    .line 128
    .line 129
    :catch_4
    move-exception v5

    .line 130
    :try_start_a
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 131
    .line 132
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 133
    .line 134
    .line 135
    :goto_6
    :try_start_b
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z

    .line 136
    .line 137
    if-nez v5, :cond_1

    .line 138
    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_1

    .line 144
    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-eqz v5, :cond_1

    .line 150
    .line 151
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 152
    .line 153
    :try_start_c
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 154
    .line 155
    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 156
    .line 157
    .line 158
    :goto_7
    :try_start_d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :catchall_5
    move-exception v5

    .line 163
    :try_start_e
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 164
    .line 165
    invoke-interface {v6, v0, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 166
    .line 167
    .line 168
    :try_start_f
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :catchall_6
    move-exception v0

    .line 173
    goto :goto_8

    .line 174
    :catch_5
    move-exception v5

    .line 175
    :try_start_10
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 176
    .line 177
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :goto_8
    :try_start_11
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 182
    .line 183
    .line 184
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 185
    :goto_9
    :try_start_12
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    new-array v7, v4, [Ljava/lang/Object;

    .line 192
    .line 193
    invoke-interface {v6, v5, v7}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 194
    .line 195
    .line 196
    :try_start_13
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 197
    .line 198
    .line 199
    goto :goto_a

    .line 200
    :catch_6
    move-exception v5

    .line 201
    :try_start_14
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 202
    .line 203
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 204
    .line 205
    .line 206
    :goto_a
    :try_start_15
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z

    .line 207
    .line 208
    if-nez v5, :cond_1

    .line 209
    .line 210
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_1

    .line 215
    .line 216
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_1

    .line 221
    .line 222
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 223
    .line 224
    :try_start_16
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 225
    .line 226
    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 227
    .line 228
    .line 229
    :goto_b
    :try_start_17
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :catchall_7
    move-exception v5

    .line 234
    :try_start_18
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 235
    .line 236
    invoke-interface {v6, v0, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 237
    .line 238
    .line 239
    :try_start_19
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 240
    .line 241
    .line 242
    goto :goto_b

    .line 243
    :catchall_8
    move-exception v0

    .line 244
    goto :goto_c

    .line 245
    :catch_7
    move-exception v5

    .line 246
    :try_start_1a
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 247
    .line 248
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 249
    .line 250
    .line 251
    goto :goto_b

    .line 252
    :goto_c
    :try_start_1b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 253
    .line 254
    .line 255
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 256
    :goto_d
    :try_start_1c
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 257
    .line 258
    const-string v7, "EOF"

    .line 259
    .line 260
    invoke-interface {v6, v7, v5}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 261
    .line 262
    .line 263
    :try_start_1d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 264
    .line 265
    .line 266
    goto :goto_e

    .line 267
    :catch_8
    move-exception v5

    .line 268
    :try_start_1e
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 269
    .line 270
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 271
    .line 272
    .line 273
    :goto_e
    :try_start_1f
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z

    .line 274
    .line 275
    if-nez v5, :cond_1

    .line 276
    .line 277
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_1

    .line 282
    .line 283
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_1

    .line 288
    .line 289
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 290
    .line 291
    :try_start_20
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 292
    .line 293
    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 294
    .line 295
    .line 296
    :goto_f
    :try_start_21
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 297
    .line 298
    .line 299
    goto/16 :goto_4

    .line 300
    .line 301
    :catchall_9
    move-exception v5

    .line 302
    :try_start_22
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 303
    .line 304
    invoke-interface {v6, v0, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 305
    .line 306
    .line 307
    :try_start_23
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    .line 308
    .line 309
    .line 310
    goto :goto_f

    .line 311
    :catchall_a
    move-exception v0

    .line 312
    goto :goto_10

    .line 313
    :catch_9
    move-exception v5

    .line 314
    :try_start_24
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 315
    .line 316
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .line 317
    .line 318
    .line 319
    goto :goto_f

    .line 320
    :goto_10
    :try_start_25
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 321
    .line 322
    .line 323
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 324
    :goto_11
    :try_start_26
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 325
    .line 326
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 327
    .line 328
    .line 329
    :try_start_27
    iget-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z

    .line 330
    .line 331
    if-nez v5, :cond_1

    .line 332
    .line 333
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_1

    .line 338
    .line 339
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_1

    .line 344
    .line 345
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 346
    .line 347
    :try_start_28
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 348
    .line 349
    invoke-interface {v5}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 350
    .line 351
    .line 352
    :goto_12
    :try_start_29
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    .line 353
    .line 354
    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :catchall_b
    move-exception v5

    .line 358
    :try_start_2a
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 359
    .line 360
    invoke-interface {v6, v0, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    .line 361
    .line 362
    .line 363
    :try_start_2b
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_a
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    .line 364
    .line 365
    .line 366
    goto :goto_12

    .line 367
    :catchall_c
    move-exception v0

    .line 368
    goto :goto_13

    .line 369
    :catch_a
    move-exception v5

    .line 370
    :try_start_2c
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 371
    .line 372
    invoke-interface {v6, v5}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 373
    .line 374
    .line 375
    goto :goto_12

    .line 376
    :goto_13
    :try_start_2d
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :goto_14
    iget-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z

    .line 381
    .line 382
    if-nez v6, :cond_2

    .line 383
    .line 384
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    if-eqz v6, :cond_2

    .line 389
    .line 390
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-eqz v6, :cond_2

    .line 395
    .line 396
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    .line 397
    .line 398
    :try_start_2e
    iget-object v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 399
    .line 400
    invoke-interface {v6}, Lorg/eclipse/jetty/io/nio/a;->c()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    .line 401
    .line 402
    .line 403
    :goto_15
    :try_start_2f
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    .line 404
    .line 405
    .line 406
    goto :goto_17

    .line 407
    :catchall_d
    move-exception v6

    .line 408
    :try_start_30
    sget-object v7, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 409
    .line 410
    invoke-interface {v7, v0, v6}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    .line 411
    .line 412
    .line 413
    :try_start_31
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_b
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    .line 414
    .line 415
    .line 416
    goto :goto_15

    .line 417
    :catchall_e
    move-exception v0

    .line 418
    goto :goto_16

    .line 419
    :catch_b
    move-exception v0

    .line 420
    :try_start_32
    sget-object v6, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 421
    .line 422
    invoke-interface {v6, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_e

    .line 423
    .line 424
    .line 425
    goto :goto_15

    .line 426
    :goto_16
    :try_start_33
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :cond_2
    :goto_17
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->H()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    xor-int/lit8 v2, v0, 0x1

    .line 435
    .line 436
    throw v5
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    .line 437
    :goto_18
    if-eqz v2, :cond_3

    .line 438
    .line 439
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->H()Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    :goto_19
    xor-int/2addr v2, v1

    .line 444
    if-eqz v2, :cond_3

    .line 445
    .line 446
    sget-object v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 447
    .line 448
    new-array v5, v4, [Ljava/lang/Object;

    .line 449
    .line 450
    invoke-interface {v2, v3, v5}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->H()Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    goto :goto_19

    .line 458
    :cond_3
    throw v0

    .line 459
    :cond_4
    if-eqz v2, :cond_5

    .line 460
    .line 461
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->H()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    :goto_1a
    xor-int/2addr v0, v1

    .line 466
    if-eqz v0, :cond_5

    .line 467
    .line 468
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 469
    .line 470
    new-array v2, v4, [Ljava/lang/Object;

    .line 471
    .line 472
    invoke-interface {v0, v3, v2}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->H()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    goto :goto_1a

    .line 480
    :cond_5
    return-void
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->x:J

    .line 6
    .line 7
    return-void
.end method

.method public E(J)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_1
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->s:Z

    .line 6
    .line 7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 9
    .line 10
    invoke-interface {v2, p1, p2}, LL1/j;->a(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->s:Z

    .line 15
    .line 16
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->e()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    throw p1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    goto :goto_2

    .line 32
    :catchall_2
    move-exception p1

    .line 33
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 34
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    :goto_2
    monitor-enter p0

    .line 36
    :try_start_6
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->s:Z

    .line 37
    .line 38
    iget p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 39
    .line 40
    if-ne p2, v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->e()V

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :catchall_3
    move-exception p1

    .line 47
    goto :goto_4

    .line 48
    :cond_1
    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 49
    throw p1

    .line 50
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 51
    throw p1
.end method

.method public F()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->u:Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_5

    .line 19
    .line 20
    iget-boolean v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v3, 0x4

    .line 32
    and-int/2addr v0, v3

    .line 33
    if-ne v0, v3, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    and-int/2addr v0, v3

    .line 42
    if-ne v0, v3, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    and-int/lit8 v0, v0, -0x5

    .line 51
    .line 52
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I

    .line 53
    .line 54
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 57
    .line 58
    .line 59
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_4

    .line 64
    :cond_2
    :goto_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 65
    .line 66
    if-lt v0, v2, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->e()V

    .line 75
    .line 76
    .line 77
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 78
    .line 79
    if-lt v0, v2, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 82
    .line 83
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/f$d;->i()Lorg/eclipse/jetty/io/nio/f;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/f;->d0()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->u:Z

    .line 111
    .line 112
    :cond_6
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 125
    .line 126
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 132
    .line 133
    .line 134
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 135
    .line 136
    if-ge v0, v2, :cond_8

    .line 137
    .line 138
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 139
    .line 140
    .line 141
    :cond_8
    monitor-exit p0

    .line 142
    return-void

    .line 143
    :cond_9
    :goto_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->u:Z

    .line 144
    .line 145
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    .line 149
    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 152
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw v0
.end method

.method public G(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->x:J

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->y:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->y:Z

    .line 15
    .line 16
    return-void
.end method

.method public H()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return v2

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return v3

    .line 22
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method public final I()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->v()Ljava/nio/channels/ByteChannel;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->u:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 20
    .line 21
    if-ge v0, v3, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 24
    .line 25
    invoke-interface {v0}, LL1/j;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_0
    move v0, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    move v0, v3

    .line 38
    :goto_1
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 43
    .line 44
    if-ge v4, v3, :cond_2

    .line 45
    .line 46
    iget-boolean v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v4, v2

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    :goto_2
    move v4, v3

    .line 54
    :goto_3
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/net/Socket;->isInputShutdown()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    move v0, v3

    .line 65
    goto :goto_4

    .line 66
    :cond_4
    move v0, v2

    .line 67
    :goto_4
    iget-object v5, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_5

    .line 74
    .line 75
    if-eqz v4, :cond_5

    .line 76
    .line 77
    const/4 v4, 0x4

    .line 78
    goto :goto_5

    .line 79
    :cond_5
    move v4, v2

    .line 80
    :goto_5
    or-int/2addr v0, v4

    .line 81
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 96
    .line 97
    .line 98
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_6

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/4 v4, 0x0

    .line 102
    :try_start_2
    iput-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 103
    .line 104
    sget-object v4, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 105
    .line 106
    invoke-interface {v4, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    :goto_6
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I

    .line 110
    .line 111
    if-eq v0, v1, :cond_7

    .line 112
    .line 113
    move v2, v3

    .line 114
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/f$d;->c(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 123
    .line 124
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/f$d;->p()V

    .line 125
    .line 126
    .line 127
    :cond_8
    return-void

    .line 128
    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    throw v0
.end method

.method public a(LL1/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 2
    .line 3
    check-cast p1, Lorg/eclipse/jetty/io/nio/a;

    .line 4
    .line 5
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 14
    .line 15
    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jetty/io/nio/f;->a0(LL1/i;LL1/j;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 15
    .line 16
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/io/nio/b;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :catchall_1
    move-exception v0

    .line 27
    goto :goto_3

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 30
    .line 31
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :goto_2
    return-void

    .line 36
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public e()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 3
    .line 4
    if-gtz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->s:Z

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 18
    .line 19
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->o:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/nio/f;->dispatch(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 30
    .line 31
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "Dispatched Failed! "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, " to "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    invoke-interface {v0, v1, v2}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw v0
.end method

.method public f(J)Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->o()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/f$d;->j()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    add-long v2, v0, p1

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->C()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->G(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    :try_start_1
    iput-boolean v5, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 26
    .line 27
    :cond_0
    iget-boolean v7, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 28
    .line 29
    if-eqz v7, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->o()Z

    .line 32
    .line 33
    .line 34
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-nez v7, :cond_3

    .line 36
    .line 37
    const-wide/16 v7, 0x0

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 40
    .line 41
    .line 42
    cmp-long v9, p1, v7

    .line 43
    .line 44
    if-lez v9, :cond_1

    .line 45
    .line 46
    sub-long v0, v2, v0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-wide/16 v0, 0x2710

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    .line 53
    .line 54
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/f$d;->j()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_4

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 67
    .line 68
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->z:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_2
    iget-boolean v9, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    .line 80
    if-eqz v9, :cond_0

    .line 81
    .line 82
    cmp-long v7, p1, v7

    .line 83
    .line 84
    if-lez v7, :cond_0

    .line 85
    .line 86
    cmp-long v7, v0, v2

    .line 87
    .line 88
    if-ltz v7, :cond_0

    .line 89
    .line 90
    :try_start_6
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 91
    .line 92
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->G(Z)V

    .line 93
    .line 94
    .line 95
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 96
    return v6

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    goto :goto_5

    .line 99
    :cond_2
    :try_start_7
    new-instance p1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;

    .line 100
    .line 101
    invoke-direct {p1, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$4;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;Ljava/lang/InterruptedException;)V

    .line 102
    .line 103
    .line 104
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 105
    :goto_3
    :try_start_8
    iget-object p2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 106
    .line 107
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/f$d;->j()J

    .line 108
    .line 109
    .line 110
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    :cond_3
    :try_start_9
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 112
    .line 113
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->G(Z)V

    .line 114
    .line 115
    .line 116
    monitor-exit p0

    .line 117
    return v5

    .line 118
    :goto_4
    iput-boolean v6, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->G(Z)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    new-instance p1, Lorg/eclipse/jetty/io/EofException;

    .line 125
    .line 126
    invoke-direct {p1}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :goto_5
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 131
    throw p1
.end method

.method public g(LL1/d;LL1/d;LL1/d;)I
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/b;->g(LL1/d;LL1/d;LL1/d;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, LL1/d;->B0()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, LL1/d;->B0()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    :cond_1
    if-eqz p3, :cond_4

    .line 25
    .line 26
    invoke-interface {p3}, LL1/d;->B0()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    :cond_2
    monitor-enter p0

    .line 33
    const/4 p1, 0x0

    .line 34
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 35
    .line 36
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 37
    .line 38
    if-ge p1, v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    monitor-exit p0

    .line 47
    return v0

    .line 48
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1

    .line 50
    :cond_4
    if-lez v0, :cond_5

    .line 51
    .line 52
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->D()V

    .line 55
    .line 56
    .line 57
    :cond_5
    return v0
.end method

.method public getConnection()LL1/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(LL1/d;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/b;->i(LL1/d;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, LL1/d;->B0()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    const/4 p1, 0x0

    .line 18
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 19
    .line 20
    iget p1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 21
    .line 22
    if-ge p1, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p0

    .line 31
    return v0

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1

    .line 34
    :cond_1
    if-lez v0, :cond_2

    .line 35
    .line 36
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->D()V

    .line 39
    .line 40
    .line 41
    :cond_2
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/eclipse/jetty/io/nio/b;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->e()V

    .line 22
    .line 23
    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v0
.end method

.method public r(LW1/e$a;J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->A()Lorg/eclipse/jetty/io/nio/f$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/f$d;->n(LW1/e$a;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t(LL1/d;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/nio/b;->t(LL1/d;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "r"

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "w"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_1
    :goto_0
    move-object v13, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, "!"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, "-"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_0

    .line 97
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->d:Ljava/net/Socket;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->r:I

    .line 118
    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->isOpen()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->s()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->o()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->u:Z

    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->v:Z

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->t:Z

    .line 160
    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I

    .line 166
    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    iget-object v14, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->q:Lorg/eclipse/jetty/io/nio/a;

    .line 172
    .line 173
    filled-new-array/range {v2 .. v14}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "SCEP@%x{l(%s)<->r(%s),s=%d,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}"

    .line 178
    .line 179
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method

.method public y(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lorg/eclipse/jetty/io/nio/b;->g:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->x:J

    .line 12
    .line 13
    sub-long/2addr p1, v0

    .line 14
    iget v0, p0, Lorg/eclipse/jetty/io/nio/b;->g:I

    .line 15
    .line 16
    int-to-long v0, v0

    .line 17
    cmp-long v0, p1, v0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->G(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->m:Lorg/eclipse/jetty/io/nio/f;

    .line 26
    .line 27
    new-instance v1, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$b;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint$b;-><init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/f;->dispatch(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public z()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->v()Ljava/nio/channels/ByteChannel;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I

    .line 15
    .line 16
    if-lez v0, :cond_5

    .line 17
    .line 18
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 30
    .line 31
    iget v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 34
    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->v()Ljava/nio/channels/ByteChannel;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/b;->v()Ljava/nio/channels/ByteChannel;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 62
    .line 63
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 64
    .line 65
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/f$d;->k()Ljava/nio/channels/Selector;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->p:I

    .line 70
    .line 71
    invoke-virtual {v0, v3, v4, p0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->B:LR1/c;

    .line 80
    .line 81
    invoke-interface {v3, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 97
    .line 98
    .line 99
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->w:Z

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/f$d;->f(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->w:Z

    .line 109
    .line 110
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 145
    .line 146
    .line 147
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->w:Z

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    iput-boolean v2, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->w:Z

    .line 152
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->l:Lorg/eclipse/jetty/io/nio/f$d;

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/io/nio/f$d;->f(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->n:Ljava/nio/channels/SelectionKey;

    .line 159
    .line 160
    :goto_1
    monitor-exit p0

    .line 161
    return-void

    .line 162
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    throw v0
.end method
