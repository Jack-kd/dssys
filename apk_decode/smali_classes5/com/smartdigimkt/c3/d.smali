.class public final Lcom/smartdigimkt/c3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/sdk/core/SDKContext;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/sdk/core/SDKContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/smartdigimkt/c5/h;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/smartdigimkt/c5/j;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/smartdigimkt/c5/h;->e0:Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;->getMediationVersion()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/smartdigimkt/c5/j;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    sget-object v0, Lcom/smartdigimkt/c5/h;->e0:Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;->getMediationVersion()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {}, Lcom/smartdigimkt/c5/j;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/smartdigimkt/c5/h;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/smartdigimkt/c5/h;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Lcom/smartdigimkt/c5/j;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/smartdigimkt/q3/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/smartdigimkt/q3/a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/smartdigimkt/c5/h;->C()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput-boolean v1, v0, Lcom/smartdigimkt/q3/a;->v:Z

    .line 23
    .line 24
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/smartdigimkt/y3/d;->a(Landroid/content/Context;)Lcom/smartdigimkt/y3/d;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/16 v2, 0x15

    .line 37
    .line 38
    const-wide/16 v3, -0x1

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/smartdigimkt/y3/d;->a(ILcom/smartdigimkt/q3/a;J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lcom/smartdigimkt/g4/f;->a()Lcom/smartdigimkt/g4/f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g4/f;->a(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->a(Lcom/smartdigimkt/sdk/core/SDKContext;Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->c(Lcom/smartdigimkt/sdk/core/SDKContext;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 69
    .line 70
    sget-object v1, Lcom/smartdigimkt/c5/l;->c:Lcom/smartdigimkt/c5/l;

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    const-class v1, Lcom/smartdigimkt/c5/l;

    .line 75
    .line 76
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    sget-object v2, Lcom/smartdigimkt/c5/l;->c:Lcom/smartdigimkt/c5/l;

    .line 78
    .line 79
    if-nez v2, :cond_1

    .line 80
    .line 81
    new-instance v2, Lcom/smartdigimkt/c5/l;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Lcom/smartdigimkt/c5/l;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    sput-object v2, Lcom/smartdigimkt/c5/l;->c:Lcom/smartdigimkt/c5/l;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    monitor-exit v1

    .line 92
    goto :goto_2

    .line 93
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    throw v0

    .line 95
    :cond_2
    :goto_2
    sget-object v0, Lcom/smartdigimkt/c5/l;->c:Lcom/smartdigimkt/c5/l;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/smartdigimkt/z4/d;->a()Lcom/smartdigimkt/a5/a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    iget v1, v1, Lcom/smartdigimkt/a5/a;->z:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/smartdigimkt/c5/l;->b()V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    instance-of v1, v1, Lcom/smartdigimkt/c5/l;

    .line 123
    .line 124
    if-nez v1, :cond_4

    .line 125
    .line 126
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iput-object v1, v0, Lcom/smartdigimkt/c5/l;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 131
    .line 132
    :cond_4
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .line 134
    .line 135
    :catch_0
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 136
    .line 137
    iget-object v1, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/smartdigimkt/sdk/core/SDKContext;->a:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/smartdigimkt/sdk/core/SDKContext;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lcom/smartdigimkt/b4/e;->b()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v2, 0x0

    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v3, Lcom/smartdigimkt/x/d;

    .line 172
    .line 173
    invoke-direct {v3, v0, v2}, Lcom/smartdigimkt/x/d;-><init>(Lcom/smartdigimkt/x/l;Lcom/smartdigimkt/d4/h;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_5
    invoke-virtual {v0, v2}, Lcom/smartdigimkt/x/l;->a(Lcom/smartdigimkt/x/k;)V

    .line 181
    .line 182
    .line 183
    :goto_4
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->e()Lcom/smartdigimkt/i3/b;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/smartdigimkt/i3/b;->cleanExpiredInfo()V

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-static {}, Lcom/smartdigimkt/y3/s;->a()Lcom/smartdigimkt/y3/s;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/smartdigimkt/y3/s;->b()V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/smartdigimkt/z4/d;->e()V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 209
    .line 210
    iget-object v1, v0, Lcom/smartdigimkt/sdk/core/SDKContext;->c:Landroid/content/Context;

    .line 211
    .line 212
    iget-object v2, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 213
    .line 214
    iget-object v2, v2, Lcom/smartdigimkt/sdk/core/SDKContext;->A:Lcom/smartdigimkt/sdk/api/SDMDebuggerConfig;

    .line 215
    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/smartdigimkt/sdk/core/SDKContext;->a(Landroid/content/Context;Lcom/smartdigimkt/sdk/api/SDMDebuggerConfig;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/smartdigimkt/c3/d;->b()V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/smartdigimkt/c3/d;->a:Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->b(Lcom/smartdigimkt/sdk/core/SDKContext;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 225
    .line 226
    .line 227
    :catchall_1
    return-void
.end method
