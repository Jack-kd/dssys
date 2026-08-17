.class Lcom/octopus/ad/internal/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/f;

.field final synthetic b:Lcom/octopus/ad/internal/b/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/a;Lcom/octopus/ad/internal/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/a$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x138e4

    .line 5
    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->v()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v3, ""

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v0, v0, Lcom/octopus/ad/internal/q;->b:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/octopus/ad/internal/b/a;->e(Lcom/octopus/ad/internal/b/a;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iget-object v5, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 51
    .line 52
    invoke-static {v5}, Lcom/octopus/ad/internal/b/a;->f(Lcom/octopus/ad/internal/b/a;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    sub-long/2addr v1, v5

    .line 57
    int-to-long v5, v0

    .line 58
    cmp-long v0, v1, v5

    .line 59
    .line 60
    if-lez v0, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {}, Lcom/octopus/ad/internal/c/p;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/d;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 77
    .line 78
    invoke-static {v0, v4}, Lcom/octopus/ad/internal/b/a;->d(Lcom/octopus/ad/internal/b/a;I)I

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->g(Lcom/octopus/ad/internal/b/a;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/octopus/ad/internal/b/a;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 96
    .line 97
    const v1, 0x13883

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->i()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v5, "204"

    .line 111
    .line 112
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/f;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 124
    .line 125
    invoke-static {v0, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 129
    .line 130
    const-string v2, "80100 response code is 204"

    .line 131
    .line 132
    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->h(Lcom/octopus/ad/internal/b/a;)Ljava/lang/ref/SoftReference;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/octopus/ad/internal/e;

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 151
    .line 152
    invoke-static {v1, v4, v3}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$3;->a:Lcom/octopus/ad/internal/b/f;

    .line 156
    .line 157
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/e;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 162
    .line 163
    invoke-static {v0, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 167
    .line 168
    const-string v2, "80100 adRequestDelegate is null"

    .line 169
    .line 170
    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_7
    :goto_1
    sget-object v0, Lcom/octopus/ad/internal/c/f;->e:Ljava/lang/String;

    .line 175
    .line 176
    sget v3, Lcom/octopus/ad/R$string;->no_response:I

    .line 177
    .line 178
    invoke-static {v3}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v0, v3}, Lcom/octopus/ad/internal/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 186
    .line 187
    invoke-static {v0, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/octopus/ad/internal/b/a$3;->b:Lcom/octopus/ad/internal/b/a;

    .line 191
    .line 192
    const-string v2, "80100 response is null"

    .line 193
    .line 194
    invoke-static {v0, v1, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method
