.class final Lcom/kwad/components/ad/reward/presenter/d/a/b$2;
.super Lcom/kwad/components/ad/reward/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/d/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/e/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dd()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->d(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->fb(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->e(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->f(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/g;->hc()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->g(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->tb:Z

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->h(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-boolean v0, v0, Lcom/kwad/components/ad/reward/g;->th:Z

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-static {v0, v1}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->a(Lcom/kwad/components/ad/reward/presenter/d/a/b;Z)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->i(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/l/b;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->i(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/l/b;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/kwad/components/ad/l/b;->bc()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-static {v0, v2}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->a(Lcom/kwad/components/ad/reward/presenter/d/a/b;Z)Z

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->j(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->k(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    xor-int/2addr v1, v2

    .line 101
    iput-boolean v1, v0, Lcom/kwad/components/ad/reward/g;->ts:Z

    .line 102
    .line 103
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->k(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->l(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sC:Lcom/kwad/components/ad/reward/j;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->m(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->n(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-boolean v2, v0, Lcom/kwad/components/ad/reward/g;->sO:Z

    .line 136
    .line 137
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->o(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/b;->dj(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->p(Lcom/kwad/components/ad/reward/presenter/d/a/b;)Lcom/kwad/components/ad/reward/g;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sC:Lcom/kwad/components/ad/reward/j;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/kwad/components/ad/l/b;->getLoadTime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    sub-long/2addr v5, v7

    .line 164
    const/4 v7, 0x1

    .line 165
    const-string v3, "end_card"

    .line 166
    .line 167
    invoke-static/range {v1 .. v7}, Lcom/kwad/components/ad/reward/monitor/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/lang/String;Ljava/lang/String;JI)V

    .line 168
    .line 169
    .line 170
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/d/a/b$2;->Af:Lcom/kwad/components/ad/reward/presenter/d/a/b;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/d/a/b;->q(Lcom/kwad/components/ad/reward/presenter/d/a/b;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    :goto_0
    return-void
.end method

.method public final getPriority()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
