.class Lcom/octopus/ad/internal/e/a$b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/a$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/a$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->K(Lcom/octopus/ad/internal/e/a;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a;->a:Lcom/octopus/ad/internal/e/a$a;

    .line 13
    .line 14
    sget-object v1, Lcom/octopus/ad/internal/e/a$a$a;->b:Lcom/octopus/ad/internal/e/a$a$a;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a$a;->a(Lcom/octopus/ad/internal/e/a$a$a;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->P(Lcom/octopus/ad/internal/e/a;)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->P(Lcom/octopus/ad/internal/e/a;)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->c(Lcom/octopus/ad/internal/e/a;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->Q(Lcom/octopus/ad/internal/e/a;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->R(Lcom/octopus/ad/internal/e/a;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v0, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    move v0, v2

    .line 79
    :goto_1
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 90
    .line 91
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->S(Lcom/octopus/ad/internal/e/a;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v4, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 110
    .line 111
    iget-object v4, v4, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 112
    .line 113
    invoke-static {v4}, Lcom/octopus/ad/internal/e/a;->T(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/listener/OnCpaListener;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1, v4}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/listener/OnCpaListener;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->i(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/internal/b/f;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v4, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 129
    .line 130
    iget-object v4, v4, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 131
    .line 132
    invoke-static {v4}, Lcom/octopus/ad/internal/e/a;->S(Lcom/octopus/ad/internal/e/a;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move v2, v3

    .line 142
    :goto_2
    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/f;->b(Z)V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v1, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/octopus/ad/internal/e/a;->S(Lcom/octopus/ad/internal/e/a;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->L(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/SplashAdListener;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->L(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/SplashAdListener;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v0}, Lcom/octopus/ad/SplashAdListener;->onAdClicked()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 182
    .line 183
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->M(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/InterstitialAdListener;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->M(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/InterstitialAdListener;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {v0}, Lcom/octopus/ad/InterstitialAdListener;->onAdClicked()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_6
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 202
    .line 203
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->N(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/FullScreenVideoAdListener;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 214
    .line 215
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->N(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/FullScreenVideoAdListener;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0}, Lcom/octopus/ad/FullScreenVideoAdListener;->onAdClicked()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->O(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/RewardVideoAdListener;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    .line 233
    iget-object v0, p0, Lcom/octopus/ad/internal/e/a$b$4;->a:Lcom/octopus/ad/internal/e/a$b;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/octopus/ad/internal/e/a$b;->a:Lcom/octopus/ad/internal/e/a;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/octopus/ad/internal/e/a;->O(Lcom/octopus/ad/internal/e/a;)Lcom/octopus/ad/RewardVideoAdListener;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-interface {v0}, Lcom/octopus/ad/RewardVideoAdListener;->onRewardVideoAdClicked()V

    .line 242
    .line 243
    .line 244
    :cond_8
    return-void
.end method
