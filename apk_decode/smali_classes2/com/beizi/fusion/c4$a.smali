.class Lcom/beizi/fusion/c4$a;
.super Lcom/beizi/fusion/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/c4;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/c4;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/p1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/p1;->a()V

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->A(Lcom/beizi/fusion/c4;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->L(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->P(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v1}, Lcom/beizi/fusion/c4;->O(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->Q(Lcom/beizi/fusion/c4;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->R(Lcom/beizi/fusion/c4;)V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-virtual {v0}, Lcom/beizi/fusion/e2;->O()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->g()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_0
    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->d(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->e(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->f(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-virtual {v1}, Lcom/beizi/fusion/c4;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->g(Lcom/beizi/fusion/c4;)V

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->h(Lcom/beizi/fusion/c4;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 13
    invoke-super {p0, p1}, Lcom/beizi/fusion/p1;->a(I)V

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 15
    invoke-super {p0, p1}, Lcom/beizi/fusion/p1;->a(Ljava/lang/String;)V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->J(Lcom/beizi/fusion/c4;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    iget-object v1, v1, Lcom/beizi/fusion/c4;->Z:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/go;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {v0}, Lcom/beizi/fusion/c4;->K(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setComplain(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {p1}, Lcom/beizi/fusion/c4;->M(Lcom/beizi/fusion/c4;)V

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    invoke-static {p1}, Lcom/beizi/fusion/c4;->N(Lcom/beizi/fusion/c4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/c4;->b(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/c4;->k(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/c4;->x()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/beizi/fusion/c4;->v(Lcom/beizi/fusion/c4;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/p1;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 5
    .line 6
    sget-object v1, Lcom/beizi/fusion/c2;->b:Lcom/beizi/fusion/c2;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->b(Lcom/beizi/fusion/c4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->q()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->u()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;Z)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->i()Lcom/beizi/fusion/g5;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;Lcom/beizi/fusion/g5;)Lcom/beizi/fusion/g5;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/beizi/fusion/c4;->w(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/g5;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/beizi/fusion/c4;->x(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/g5;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/beizi/fusion/g5;->c()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;I)I

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/beizi/fusion/c4;->y(Lcom/beizi/fusion/c4;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/beizi/fusion/c4;->z(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/g5;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/beizi/fusion/g5;->f()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->b(Lcom/beizi/fusion/c4;I)I

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->m()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/beizi/fusion/c4;->i(Lcom/beizi/fusion/c4;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/beizi/fusion/c4;->c(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/bg;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/beizi/fusion/k3;->f()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;J)J

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/beizi/fusion/c4;->B(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/events/EventBean;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "1"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/beizi/fusion/c4;->l(Lcom/beizi/fusion/c4;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    const-wide/16 v2, 0x0

    .line 175
    .line 176
    cmp-long v0, v0, v2

    .line 177
    .line 178
    if-lez v0, :cond_3

    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    iget-object v2, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 185
    .line 186
    invoke-static {v2}, Lcom/beizi/fusion/c4;->l(Lcom/beizi/fusion/c4;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v2

    .line 190
    sub-long/2addr v0, v2

    .line 191
    iget-object v2, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 192
    .line 193
    invoke-static {v2}, Lcom/beizi/fusion/c4;->C(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/events/EventBean;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/beizi/fusion/c4;->D(Lcom/beizi/fusion/c4;)V

    .line 207
    .line 208
    .line 209
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 210
    .line 211
    invoke-static {v0}, Lcom/beizi/fusion/c4;->E(Lcom/beizi/fusion/c4;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 215
    .line 216
    invoke-static {v0}, Lcom/beizi/fusion/c4;->F(Lcom/beizi/fusion/c4;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_5

    .line 221
    .line 222
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/beizi/fusion/c4;->G(Lcom/beizi/fusion/c4;)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/beizi/fusion/c4;->H(Lcom/beizi/fusion/c4;)V

    .line 231
    .line 232
    .line 233
    :goto_1
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/beizi/fusion/c4;->I(Lcom/beizi/fusion/c4;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/beizi/fusion/p1;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 5
    .line 6
    sget-object v1, Lcom/beizi/fusion/c2;->c:Lcom/beizi/fusion/c2;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/beizi/fusion/c4;->a(Lcom/beizi/fusion/c4;Lcom/beizi/fusion/c2;)Lcom/beizi/fusion/c2;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/c4;->i(Lcom/beizi/fusion/c4;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/c4;->j(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/events/EventBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "1"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/beizi/fusion/c4;->l(Lcom/beizi/fusion/c4;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-lez v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-object v2, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/beizi/fusion/c4;->l(Lcom/beizi/fusion/c4;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    sub-long/2addr v0, v2

    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/beizi/fusion/c4;->m(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/events/EventBean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/c4;->n(Lcom/beizi/fusion/c4;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/c4;->o(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/beizi/fusion/c4;->p(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/beizi/fusion/n3;->z()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x2

    .line 90
    if-eq v0, v1, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/beizi/fusion/c4;->q(Lcom/beizi/fusion/c4;)Lcom/beizi/fusion/n3;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/beizi/fusion/c4;->x()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/n3;->d(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/beizi/fusion/c4;->r(Lcom/beizi/fusion/c4;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/beizi/fusion/c4;->s(Lcom/beizi/fusion/c4;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/beizi/fusion/c4;->t(Lcom/beizi/fusion/c4;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/beizi/fusion/c4$a;->a:Lcom/beizi/fusion/c4;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/beizi/fusion/c4;->u(Lcom/beizi/fusion/c4;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
