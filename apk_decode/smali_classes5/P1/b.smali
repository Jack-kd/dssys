.class public abstract LP1/b;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements LN1/n;


# static fields
.field public static final f:LR1/c;


# instance fields
.field public b:Ljava/util/Random;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LP1/b;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LP1/b;->f:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x186a0

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, LP1/b;->e:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public P()V
    .locals 5

    .line 1
    iget-object v0, p0, LP1/b;->b:Ljava/util/Random;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LP1/b;->b:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, LP1/b;->f:LR1/c;

    .line 15
    .line 16
    const-string v2, "Could not generate SecureRandom for session-id randomness"

    .line 17
    .line 18
    invoke-interface {v1, v2, v0}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/Random;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, LP1/b;->b:Ljava/util/Random;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, LP1/b;->c:Z

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    xor-long/2addr v1, v3

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-long v3, v3

    .line 46
    xor-long/2addr v1, v3

    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    xor-long/2addr v1, v3

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public doStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LP1/b;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public doStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public y(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p2}, LN1/n;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p0, p2}, LN1/n;->u(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object p2

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    const-string p2, "org.eclipse.jetty.server.newSessionId"

    .line 26
    .line 27
    invoke-interface {p1, p2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-interface {p0, p2}, LN1/n;->u(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-object p2

    .line 43
    :cond_1
    const/4 p2, 0x0

    .line 44
    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_4

    .line 51
    .line 52
    invoke-interface {p0, p2}, LN1/n;->u(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const-string p3, "org.eclipse.jetty.server.newSessionId"

    .line 60
    .line 61
    invoke-interface {p1, p3, p2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-object p2

    .line 66
    :cond_4
    :goto_1
    iget-boolean p2, p0, LP1/b;->c:Z

    .line 67
    .line 68
    const/16 p3, 0x20

    .line 69
    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    int-to-long v0, p2

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    xor-long/2addr v0, v2

    .line 86
    iget-object p2, p0, LP1/b;->b:Ljava/util/Random;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    int-to-long v2, p2

    .line 93
    xor-long/2addr v0, v2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    int-to-long v2, p2

    .line 99
    shl-long/2addr v2, p3

    .line 100
    xor-long/2addr v0, v2

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget-object p2, p0, LP1/b;->b:Ljava/util/Random;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    :goto_2
    const-wide/16 v2, 0x0

    .line 109
    .line 110
    cmp-long p2, v0, v2

    .line 111
    .line 112
    if-gez p2, :cond_6

    .line 113
    .line 114
    neg-long v0, v0

    .line 115
    :cond_6
    iget-wide v4, p0, LP1/b;->e:J

    .line 116
    .line 117
    cmp-long p2, v4, v2

    .line 118
    .line 119
    if-lez p2, :cond_8

    .line 120
    .line 121
    rem-long v4, v0, v4

    .line 122
    .line 123
    const-wide/16 v6, 0x1

    .line 124
    .line 125
    cmp-long p2, v4, v6

    .line 126
    .line 127
    if-nez p2, :cond_8

    .line 128
    .line 129
    sget-object p2, LP1/b;->f:LR1/c;

    .line 130
    .line 131
    const-string v4, "Reseeding {}"

    .line 132
    .line 133
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-interface {p2, v4, v5}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, LP1/b;->b:Ljava/util/Random;

    .line 141
    .line 142
    instance-of v4, p2, Ljava/security/SecureRandom;

    .line 143
    .line 144
    if-eqz v4, :cond_7

    .line 145
    .line 146
    check-cast p2, Ljava/security/SecureRandom;

    .line 147
    .line 148
    const/16 v4, 0x8

    .line 149
    .line 150
    invoke-virtual {p2, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {p2, v4}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_7
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v6

    .line 166
    xor-long/2addr v4, v6

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    int-to-long v6, v6

    .line 172
    xor-long/2addr v4, v6

    .line 173
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    .line 178
    .line 179
    .line 180
    move-result-wide v6

    .line 181
    xor-long/2addr v4, v6

    .line 182
    invoke-virtual {p2, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 183
    .line 184
    .line 185
    :cond_8
    :goto_3
    iget-boolean p2, p0, LP1/b;->c:Z

    .line 186
    .line 187
    if-eqz p2, :cond_9

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    int-to-long v4, p2

    .line 194
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-virtual {p2}, Ljava/lang/Runtime;->freeMemory()J

    .line 199
    .line 200
    .line 201
    move-result-wide v6

    .line 202
    xor-long/2addr v4, v6

    .line 203
    iget-object p2, p0, LP1/b;->b:Ljava/util/Random;

    .line 204
    .line 205
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    int-to-long v6, p2

    .line 210
    xor-long/2addr v4, v6

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    int-to-long v6, p2

    .line 216
    shl-long p2, v6, p3

    .line 217
    .line 218
    xor-long/2addr p2, v4

    .line 219
    goto :goto_4

    .line 220
    :cond_9
    iget-object p2, p0, LP1/b;->b:Ljava/util/Random;

    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    .line 223
    .line 224
    .line 225
    move-result-wide p2

    .line 226
    :goto_4
    cmp-long v2, p2, v2

    .line 227
    .line 228
    if-gez v2, :cond_a

    .line 229
    .line 230
    neg-long p2, p2

    .line 231
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const/16 v3, 0x24

    .line 237
    .line 238
    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-static {p2, p3, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    iget-object p3, p0, LP1/b;->d:Ljava/lang/String;

    .line 257
    .line 258
    if-eqz p3, :cond_2

    .line 259
    .line 260
    new-instance p3, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, LP1/b;->d:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    throw p1
.end method
