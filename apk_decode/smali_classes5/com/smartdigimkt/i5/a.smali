.class public final Lcom/smartdigimkt/i5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/p1/f;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/j1/f;

.field public final synthetic b:Lcom/smartdigimkt/g5/a;

.field public final synthetic c:Lcom/smartdigimkt/i5/b;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/i5/b;Lcom/smartdigimkt/j1/f;Lcom/smartdigimkt/g5/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/i5/a;->c:Lcom/smartdigimkt/i5/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/smartdigimkt/i5/a;->a:Lcom/smartdigimkt/j1/f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/smartdigimkt/i0/f;)V
    .locals 2

    const-string v0, "10010"

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    invoke-virtual {p1}, Lcom/smartdigimkt/i0/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    const-string v1, "The ad load failed."

    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/smartdigimkt/i5/a;->c:Lcom/smartdigimkt/i5/b;

    iget-object v0, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/c;->d(Lcom/smartdigimkt/g5/a;)V

    return-void
.end method

.method public final b()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/i5/a;->a:Lcom/smartdigimkt/j1/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/smartdigimkt/j1/f;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/smartdigimkt/j1/f;->a(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    new-instance v0, Lcom/smartdigimkt/g5/d;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/smartdigimkt/g5/d;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/smartdigimkt/i5/a;->a:Lcom/smartdigimkt/j1/f;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/smartdigimkt/g5/d;->a:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 23
    .line 24
    iput-object v0, v2, Lcom/smartdigimkt/g5/a;->r:Lcom/smartdigimkt/g5/d;

    .line 25
    .line 26
    iget-object v0, v2, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    iget-object v2, v2, Lcom/smartdigimkt/g5/a;->i:Lcom/smartdigimkt/h5/a;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    iget-wide v8, v2, Lcom/smartdigimkt/h5/a;->a:J

    .line 46
    .line 47
    sub-long/2addr v6, v8

    .line 48
    iput-wide v6, v0, Lcom/smartdigimkt/q3/a;->d0:J

    .line 49
    .line 50
    iput-wide v4, v0, Lcom/smartdigimkt/q3/a;->f0:J

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    iget-wide v8, v2, Lcom/smartdigimkt/h5/a;->a:J

    .line 57
    .line 58
    sub-long/2addr v6, v8

    .line 59
    iput-wide v6, v0, Lcom/smartdigimkt/q3/a;->e0:J

    .line 60
    .line 61
    iput-wide v4, v0, Lcom/smartdigimkt/q3/a;->g0:J

    .line 62
    .line 63
    iget-object v2, v1, Lcom/smartdigimkt/j1/f;->e:Lcom/smartdigimkt/m3/b;

    .line 64
    .line 65
    iget-object v4, v1, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    .line 66
    .line 67
    invoke-static {v2, v4}, Lcom/smartdigimkt/z/z;->a(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput v2, v0, Lcom/smartdigimkt/q3/a;->h0:I

    .line 72
    .line 73
    :try_start_0
    iget-object v2, v1, Lcom/smartdigimkt/j1/f;->e:Lcom/smartdigimkt/m3/b;

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    iget-object v4, v2, Lcom/smartdigimkt/m3/c;->w:Lcom/smartdigimkt/m3/e;

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    iget-object v4, v4, Lcom/smartdigimkt/m3/e;->T1:Lcom/smartdigimkt/m3/d;

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    iget-wide v4, v4, Lcom/smartdigimkt/m3/d;->a:J

    .line 86
    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    cmp-long v8, v4, v6

    .line 90
    .line 91
    if-lez v8, :cond_5

    .line 92
    .line 93
    iget-object v1, v1, Lcom/smartdigimkt/j1/f;->c:Lcom/smartdigimkt/l3/a;

    .line 94
    .line 95
    invoke-static {v4, v5, v2, v1}, Lcom/smartdigimkt/m3/h;->a(JLcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    iput-wide v9, v0, Lcom/smartdigimkt/q3/a;->k0:J

    .line 100
    .line 101
    if-gtz v8, :cond_2

    .line 102
    .line 103
    move-wide v4, v6

    .line 104
    :cond_2
    iput-wide v4, v0, Lcom/smartdigimkt/q3/a;->l0:J

    .line 105
    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    iget v1, v1, Lcom/smartdigimkt/l3/a;->b:I

    .line 109
    .line 110
    if-ne v1, v3, :cond_4

    .line 111
    .line 112
    invoke-static {v9, v10}, Lcom/smartdigimkt/m3/h;->a(J)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    sget-boolean v1, Lcom/smartdigimkt/m3/p;->a:Z

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-static {v9, v10}, Lcom/smartdigimkt/m3/h;->a(J)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    move v1, v3

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 132
    :goto_1
    iput-boolean v1, v0, Lcom/smartdigimkt/q3/a;->m0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    :catchall_0
    :cond_5
    :goto_2
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/smartdigimkt/y3/d;->a(Landroid/content/Context;)Lcom/smartdigimkt/y3/d;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 147
    .line 148
    iget-object v1, v1, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 149
    .line 150
    const/4 v2, 0x2

    .line 151
    const-wide/16 v4, -0x1

    .line 152
    .line 153
    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/smartdigimkt/y3/d;->a(ILcom/smartdigimkt/q3/a;J)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 157
    .line 158
    iget v0, v0, Lcom/smartdigimkt/g5/a;->k:I

    .line 159
    .line 160
    if-ne v0, v3, :cond_6

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/smartdigimkt/y3/d;->a(Landroid/content/Context;)Lcom/smartdigimkt/y3/d;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 178
    .line 179
    const/16 v2, 0xc

    .line 180
    .line 181
    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/smartdigimkt/y3/d;->a(ILcom/smartdigimkt/q3/a;J)V

    .line 182
    .line 183
    .line 184
    :goto_3
    iget-object v0, p0, Lcom/smartdigimkt/i5/a;->c:Lcom/smartdigimkt/i5/b;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/c;->e(Lcom/smartdigimkt/g5/a;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 193
    .line 194
    const-string v1, "20001"

    .line 195
    .line 196
    const-string v2, "load fill but ad not ready."

    .line 197
    .line 198
    invoke-static {v1, v2}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/smartdigimkt/i5/a;->c:Lcom/smartdigimkt/i5/b;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/smartdigimkt/i5/a;->b:Lcom/smartdigimkt/g5/a;

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/smartdigimkt/g5/c;->d(Lcom/smartdigimkt/g5/a;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method
