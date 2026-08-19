.class Lcom/octopus/ad/c/j/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/c/j/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/c/j/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/c/j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/c/j/b$1;->a:Lcom/octopus/ad/c/j/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/octopus/ad/c/j/b;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/octopus/ad/c/j/b;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-static {}, Lcom/octopus/ad/c/j/b;->e()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-static {}, Lcom/octopus/ad/c/j/b;->f()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    invoke-static {}, Lcom/octopus/ad/c/j/b;->g()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    invoke-static {}, Lcom/octopus/ad/c/j/b;->h()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    invoke-static {}, Lcom/octopus/ad/c/j/b;->i()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    invoke-static {}, Lcom/octopus/ad/c/j/b;->f()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    invoke-static {}, Lcom/octopus/ad/c/j/b;->j()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    invoke-static {}, Lcom/octopus/ad/c/j/b;->k()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v0, v1

    .line 50
    invoke-static {}, Lcom/octopus/ad/c/j/b;->l()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    invoke-static {}, Lcom/octopus/ad/c/j/b;->m()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    if-lez v0, :cond_0

    .line 61
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/octopus/ad/c/j/b$1;->a:Lcom/octopus/ad/c/j/b;

    .line 68
    .line 69
    invoke-static {}, Lcom/octopus/ad/c/j/b;->c()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {}, Lcom/octopus/ad/c/j/b;->d()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {}, Lcom/octopus/ad/c/j/b;->e()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {}, Lcom/octopus/ad/c/j/b;->n()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/octopus/ad/c/j/b;->a(IIII)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "oaid"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/octopus/ad/c/j/b$1;->a:Lcom/octopus/ad/c/j/b;

    .line 95
    .line 96
    invoke-static {}, Lcom/octopus/ad/c/j/b;->g()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-static {}, Lcom/octopus/ad/c/j/b;->h()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-static {}, Lcom/octopus/ad/c/j/b;->i()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-static {}, Lcom/octopus/ad/c/j/b;->f()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/octopus/ad/c/j/b;->a(IIII)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "vaid"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/octopus/ad/c/j/b$1;->a:Lcom/octopus/ad/c/j/b;

    .line 122
    .line 123
    invoke-static {}, Lcom/octopus/ad/c/j/b;->j()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {}, Lcom/octopus/ad/c/j/b;->k()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {}, Lcom/octopus/ad/c/j/b;->l()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-static {}, Lcom/octopus/ad/c/j/b;->m()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/octopus/ad/c/j/b;->a(IIII)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const-string v2, "aaid"

    .line 144
    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/octopus/ad/c/j/b;->o()Lcom/octopus/ad/c/j/a;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "vivo"

    .line 153
    .line 154
    filled-new-array {v0}, [Landroid/content/ContentValues;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v3, 0x7

    .line 159
    invoke-virtual {v1, v3, v2, v0}, Lcom/octopus/ad/c/j/a;->a(ILjava/lang/String;[Landroid/content/ContentValues;)Z

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->f(I)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-static {v1}, Lcom/octopus/ad/c/j/b;->e(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-static {v1}, Lcom/octopus/ad/c/j/b;->d(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v1}, Lcom/octopus/ad/c/j/b;->c(I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-static {v1}, Lcom/octopus/ad/c/j/b;->b(I)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-static {v1}, Lcom/octopus/ad/c/j/b;->a(I)I

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->l(I)I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->k(I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->j(I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->i(I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->h(I)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->g(I)I

    .line 207
    .line 208
    .line 209
    :cond_0
    return-void
.end method
