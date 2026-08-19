.class final Lcom/kwad/components/ad/reward/presenter/h/a$2;
.super Lcom/kwad/components/core/n/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Bx:Lcom/kwad/components/ad/reward/presenter/h/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/presenter/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/core/n/a/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lcom/kwad/components/core/proxy/f;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->a(Lcom/kwad/components/ad/reward/presenter/h/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance p1, Lcom/kwad/components/core/webview/tachikoma/c/w;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/kwad/components/core/webview/tachikoma/c/w;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/kwad/components/core/r/a;->ws()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/r/a;->bc(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aT(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iput v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/kwad/components/core/r/a;->wo()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iput v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 75
    .line 76
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iput v0, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 87
    .line 88
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/kwad/components/core/r/a;->wq()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aT(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ne v1, v2, :cond_6

    .line 119
    .line 120
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/kwad/components/core/r/a;->wr()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ne v1, v2, :cond_5

    .line 129
    .line 130
    iget-object v1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 141
    .line 142
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/h/a;->e(Lcom/kwad/components/ad/reward/presenter/h/a;)Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v2, v1}, Lcom/kwad/sdk/utils/au;->aw(Landroid/content/Context;Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    const/4 v0, 0x2

    .line 153
    iput v0, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 154
    .line 155
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/r/a;->bV(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_4
    iput v0, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 173
    .line 174
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_5
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/kwad/components/core/r/a;->wr()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    const/4 v3, 0x3

    .line 193
    if-ne v1, v3, :cond_6

    .line 194
    .line 195
    iput v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 196
    .line 197
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/r/a;->bV(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_0
    return-void
.end method

.method public final d(Lcom/kwad/components/core/proxy/f;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/components/core/n/a/b;->d(Lcom/kwad/components/core/proxy/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$2;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->a(Lcom/kwad/components/ad/reward/presenter/h/a;Z)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
