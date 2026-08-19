.class Lcom/beizi/fusion/m3$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/ni;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/m3;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/m3;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/m3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/pi;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->s()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/beizi/fusion/m3;->w0:Ljava/lang/Boolean;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->u()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v0, v1}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;Z)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->i()Lcom/beizi/fusion/g5;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;Lcom/beizi/fusion/g5;)Lcom/beizi/fusion/g5;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/beizi/fusion/m3;->r(Lcom/beizi/fusion/m3;)Lcom/beizi/fusion/g5;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/beizi/fusion/m3;->L(Lcom/beizi/fusion/m3;)Lcom/beizi/fusion/g5;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/beizi/fusion/g5;->c()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v0, v1}, Lcom/beizi/fusion/m3;->b(Lcom/beizi/fusion/m3;I)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/beizi/fusion/m3;->T(Lcom/beizi/fusion/m3;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/beizi/fusion/m3;->U(Lcom/beizi/fusion/m3;)Lcom/beizi/fusion/g5;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/beizi/fusion/g5;->f()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/beizi/fusion/m3;->e(Lcom/beizi/fusion/m3;I)I

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->m()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->f()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;J)J

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/beizi/fusion/m3;->c(Lcom/beizi/fusion/m3;)Lcom/beizi/fusion/events/EventBean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "1"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/beizi/fusion/m3;->b(Lcom/beizi/fusion/m3;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    const-wide/16 v2, 0x0

    .line 138
    .line 139
    cmp-long v0, v0, v2

    .line 140
    .line 141
    if-lez v0, :cond_2

    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 148
    .line 149
    invoke-static {v2}, Lcom/beizi/fusion/m3;->b(Lcom/beizi/fusion/m3;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    sub-long/2addr v0, v2

    .line 154
    iget-object v2, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/beizi/fusion/m3;->d(Lcom/beizi/fusion/m3;)Lcom/beizi/fusion/events/EventBean;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/beizi/fusion/m3;->e(Lcom/beizi/fusion/m3;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_4

    .line 181
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 183
    .line 184
    iget-object v1, v0, Lcom/beizi/fusion/m3;->s0:Lcom/beizi/fusion/mp;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/beizi/fusion/m3;->f(Lcom/beizi/fusion/m3;)V

    .line 205
    .line 206
    .line 207
    if-nez p1, :cond_5

    .line 208
    .line 209
    iget-object p1, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 210
    .line 211
    const/16 v0, -0x3df

    .line 212
    .line 213
    invoke-static {p1, v0}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;I)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 218
    .line 219
    iput-object p1, v0, Lcom/beizi/fusion/m3;->r0:Lcom/beizi/fusion/pi;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/beizi/fusion/m3;->c1()V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public onAdFailed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/m3$i;->a:Lcom/beizi/fusion/m3;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/m3;->a(Lcom/beizi/fusion/m3;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
