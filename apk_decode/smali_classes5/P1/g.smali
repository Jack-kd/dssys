.class public LP1/g;
.super Lorg/eclipse/jetty/server/handler/i;
.source "SourceFile"


# static fields
.field public static final l:LR1/c;

.field public static final m:Ljava/util/EnumSet;


# instance fields
.field public k:LN1/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "org.eclipse.jetty.server.session"

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->b(Ljava/lang/String;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LP1/g;->l:LR1/c;

    .line 8
    .line 9
    sget-object v0, Ljavax/servlet/SessionTrackingMode;->COOKIE:Ljavax/servlet/SessionTrackingMode;

    .line 10
    .line 11
    sget-object v1, Ljavax/servlet/SessionTrackingMode;->URL:Ljavax/servlet/SessionTrackingMode;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, LP1/g;->m:Ljava/util/EnumSet;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LP1/e;

    invoke-direct {v0}, LP1/e;-><init>()V

    invoke-direct {p0, v0}, LP1/g;-><init>(LN1/o;)V

    return-void
.end method

.method public constructor <init>(LN1/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/i;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, LP1/g;->m0(LN1/o;)V

    return-void
.end method


# virtual methods
.method public a(LN1/m;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v3, p0, LP1/g;->k:LN1/o;

    .line 14
    .line 15
    const-string v5, "sessionManager"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v2, p0

    .line 20
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, p0

    .line 25
    :goto_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/h;->a(LN1/m;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    iget-object v10, v2, LP1/g;->k:LN1/o;

    .line 37
    .line 38
    const-string v11, "sessionManager"

    .line 39
    .line 40
    const/4 v12, 0x1

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v8, v2

    .line 43
    invoke-virtual/range {v7 .. v12}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public doStart()V
    .locals 1

    .line 1
    iget-object v0, p0, LP1/g;->k:LN1/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/f;->start()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/i;->doStart()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public doStop()V
    .locals 1

    .line 1
    iget-object v0, p0, LP1/g;->k:LN1/o;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/f;->stop()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/h;->doStop()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/i;->h0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->i0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, LN1/h;->l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, LN1/k;->t()LN1/o;

    .line 4
    .line 5
    .line 6
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    :try_start_1
    invoke-virtual {p2, v0}, LN1/k;->s(Z)Ljavax/servlet/http/HttpSession;

    .line 8
    .line 9
    .line 10
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    :try_start_2
    iget-object v4, p0, LP1/g;->k:LN1/o;

    .line 12
    .line 13
    if-eq v2, v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, v4}, LN1/k;->b0(LN1/o;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, LN1/k;->a0(Ljavax/servlet/http/HttpSession;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2, p3}, LP1/g;->k0(LN1/k;Ljavax/servlet/http/HttpServletRequest;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v4, p0, LP1/g;->k:LN1/o;

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    invoke-virtual {p2, v0}, LN1/k;->s(Z)Ljavax/servlet/http/HttpSession;

    .line 33
    .line 34
    .line 35
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    if-eq v4, v3, :cond_2

    .line 39
    .line 40
    :try_start_3
    iget-object v1, p0, LP1/g;->k:LN1/o;

    .line 41
    .line 42
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-interface {v1, v4, v5}, LN1/o;->w(Ljavax/servlet/http/HttpSession;Z)Lorg/eclipse/jetty/http/f;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, LN1/k;->n()LN1/l;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5, v1}, LN1/l;->a(Lorg/eclipse/jetty/http/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    move-object v1, v4

    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_1
    :goto_1
    move-object v1, v4

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :goto_2
    move-object v8, v4

    .line 67
    move-object v4, v1

    .line 68
    move-object v1, v8

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :try_start_4
    iget-object v4, p0, LP1/g;->k:LN1/o;

    .line 71
    .line 72
    invoke-virtual {p2, v4}, LN1/k;->B(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {p2, v4}, LN1/k;->a0(Ljavax/servlet/http/HttpSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move-object v4, v1

    .line 83
    :goto_3
    :try_start_5
    sget-object v5, LP1/g;->l:LR1/c;

    .line 84
    .line 85
    invoke-interface {v5}, LR1/c;->f()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v7, "sessionManager="

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v7, p0, LP1/g;->k:LN1/o;

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    new-array v7, v0, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-interface {v5, v6, v7}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v7, "session="

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-array v6, v0, [Ljava/lang/Object;

    .line 133
    .line 134
    invoke-interface {v5, v1, v6}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 138
    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, LP1/g;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    .line 155
    .line 156
    :goto_4
    if-eqz v4, :cond_8

    .line 157
    .line 158
    iget-object p1, p0, LP1/g;->k:LN1/o;

    .line 159
    .line 160
    invoke-interface {p1, v4}, LN1/o;->e(Ljavax/servlet/http/HttpSession;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    invoke-virtual {p2, v0}, LN1/k;->s(Z)Ljavax/servlet/http/HttpSession;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    if-nez v3, :cond_9

    .line 170
    .line 171
    if-eq p1, v4, :cond_9

    .line 172
    .line 173
    iget-object p3, p0, LP1/g;->k:LN1/o;

    .line 174
    .line 175
    invoke-interface {p3, p1}, LN1/o;->e(Ljavax/servlet/http/HttpSession;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    if-eqz v2, :cond_a

    .line 179
    .line 180
    iget-object p1, p0, LP1/g;->k:LN1/o;

    .line 181
    .line 182
    if-eq v2, p1, :cond_a

    .line 183
    .line 184
    invoke-virtual {p2, v2}, LN1/k;->b0(LN1/o;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v3}, LN1/k;->a0(Ljavax/servlet/http/HttpSession;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    return-void

    .line 191
    :catchall_2
    move-exception p1

    .line 192
    move-object v3, v1

    .line 193
    goto :goto_5

    .line 194
    :catchall_3
    move-exception p1

    .line 195
    move-object v2, v1

    .line 196
    move-object v3, v2

    .line 197
    :goto_5
    if-eqz v1, :cond_b

    .line 198
    .line 199
    iget-object p3, p0, LP1/g;->k:LN1/o;

    .line 200
    .line 201
    invoke-interface {p3, v1}, LN1/o;->e(Ljavax/servlet/http/HttpSession;)V

    .line 202
    .line 203
    .line 204
    :cond_b
    invoke-virtual {p2, v0}, LN1/k;->s(Z)Ljavax/servlet/http/HttpSession;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    if-eqz p3, :cond_c

    .line 209
    .line 210
    if-nez v3, :cond_c

    .line 211
    .line 212
    if-eq p3, v1, :cond_c

    .line 213
    .line 214
    iget-object p4, p0, LP1/g;->k:LN1/o;

    .line 215
    .line 216
    invoke-interface {p4, p3}, LN1/o;->e(Ljavax/servlet/http/HttpSession;)V

    .line 217
    .line 218
    .line 219
    :cond_c
    if-eqz v2, :cond_d

    .line 220
    .line 221
    iget-object p3, p0, LP1/g;->k:LN1/o;

    .line 222
    .line 223
    if-eq v2, p3, :cond_d

    .line 224
    .line 225
    invoke-virtual {p2, v2}, LN1/k;->b0(LN1/o;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, v3}, LN1/k;->a0(Ljavax/servlet/http/HttpSession;)V

    .line 229
    .line 230
    .line 231
    :cond_d
    throw p1
.end method

.method public k0(LN1/k;Ljavax/servlet/http/HttpServletRequest;)V
    .locals 11

    .line 1
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, LP1/g;->l0()LN1/o;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, v0}, LN1/o;->d(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_d

    .line 18
    .line 19
    invoke-interface {v1, p2}, LN1/o;->q(Ljavax/servlet/http/HttpSession;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_d

    .line 24
    .line 25
    invoke-virtual {p1, p2}, LN1/k;->a0(Ljavax/servlet/http/HttpSession;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    sget-object v2, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    .line 30
    .line 31
    invoke-virtual {p1}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_1
    iget-object v2, p0, LP1/g;->k:LN1/o;

    .line 44
    .line 45
    invoke-interface {v2}, LN1/o;->C()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x1

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_5

    .line 59
    .line 60
    array-length v6, v2

    .line 61
    if-lez v6, :cond_5

    .line 62
    .line 63
    invoke-interface {v1}, LN1/o;->n()Ljavax/servlet/SessionCookieConfig;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v6}, Ljavax/servlet/SessionCookieConfig;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    move v7, v4

    .line 72
    move v8, v7

    .line 73
    :goto_0
    array-length v9, v2

    .line 74
    if-ge v7, v9, :cond_6

    .line 75
    .line 76
    aget-object v9, v2, v7

    .line 77
    .line 78
    invoke-virtual {v9}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_4

    .line 87
    .line 88
    aget-object v0, v2, v7

    .line 89
    .line 90
    invoke-virtual {v0}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v8, LP1/g;->l:LR1/c;

    .line 95
    .line 96
    const-string v9, "Got Session ID {} from cookie"

    .line 97
    .line 98
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-interface {v8, v9, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-interface {v1, v0}, LN1/o;->d(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    .line 113
    invoke-interface {v1, v5}, LN1/o;->q(Ljavax/servlet/http/HttpSession;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_2

    .line 118
    .line 119
    move v8, v3

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    :goto_1
    move v8, v3

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    const-string v9, "null session id from cookie"

    .line 124
    .line 125
    new-array v10, v4, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-interface {v8, v9, v10}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    move v8, v4

    .line 135
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 136
    .line 137
    if-nez v5, :cond_b

    .line 138
    .line 139
    :cond_7
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-interface {v1}, LN1/o;->I()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-eqz v2, :cond_b

    .line 148
    .line 149
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-ltz v6, :cond_b

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v6, v0

    .line 160
    move v0, v6

    .line 161
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-ge v0, v2, :cond_9

    .line 166
    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    const/16 v5, 0x3b

    .line 172
    .line 173
    if-eq v2, v5, :cond_9

    .line 174
    .line 175
    const/16 v5, 0x23

    .line 176
    .line 177
    if-eq v2, v5, :cond_9

    .line 178
    .line 179
    const/16 v5, 0x3f

    .line 180
    .line 181
    if-eq v2, v5, :cond_9

    .line 182
    .line 183
    const/16 v5, 0x2f

    .line 184
    .line 185
    if-ne v2, v5, :cond_8

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_9
    :goto_5
    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v1, v0}, LN1/o;->d(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    sget-object p2, LP1/g;->l:LR1/c;

    .line 200
    .line 201
    invoke-interface {p2}, LR1/c;->f()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_a

    .line 206
    .line 207
    const-string v2, "Got Session ID {} from URL"

    .line 208
    .line 209
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-interface {p2, v2, v6}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    :cond_a
    move v8, v4

    .line 217
    :cond_b
    invoke-virtual {p1, v0}, LN1/k;->U(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    if-eqz v0, :cond_c

    .line 221
    .line 222
    if-eqz v8, :cond_c

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_c
    move v3, v4

    .line 226
    :goto_6
    invoke-virtual {p1, v3}, LN1/k;->V(Z)V

    .line 227
    .line 228
    .line 229
    if-eqz v5, :cond_d

    .line 230
    .line 231
    invoke-interface {v1, v5}, LN1/o;->q(Ljavax/servlet/http/HttpSession;)Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-eqz p2, :cond_d

    .line 236
    .line 237
    invoke-virtual {p1, v5}, LN1/k;->a0(Ljavax/servlet/http/HttpSession;)V

    .line 238
    .line 239
    .line 240
    :cond_d
    :goto_7
    return-void
.end method

.method public l0()LN1/o;
    .locals 1

    .line 1
    iget-object v0, p0, LP1/g;->k:LN1/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public m0(LN1/o;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v3, p0, LP1/g;->k:LN1/o;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v5, "sessionManager"

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    move-object v2, p0

    .line 27
    move-object v4, p1

    .line 28
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, p0

    .line 33
    move-object v4, p1

    .line 34
    :goto_0
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v4, p0}, LN1/o;->g(LP1/g;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-object v4, v2, LP1/g;->k:LN1/o;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-interface {v3, p1}, LN1/o;->g(LP1/g;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void

    .line 48
    :cond_3
    move-object v2, p0

    .line 49
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
