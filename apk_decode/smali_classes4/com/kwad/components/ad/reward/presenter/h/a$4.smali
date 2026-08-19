.class final Lcom/kwad/components/ad/reward/presenter/h/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/presenter/h/a;->ay()V
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
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p1, Lcom/kwad/components/core/webview/tachikoma/c/w;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/kwad/components/core/webview/tachikoma/c/w;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->ws()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/r/a;->bc(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aT(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iput v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->wo()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iput v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iput v1, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 82
    .line 83
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->wq()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aT(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-ne v0, v2, :cond_5

    .line 114
    .line 115
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->wr()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-ne v0, v2, :cond_4

    .line 124
    .line 125
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->d(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->aE(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/kwad/components/ad/reward/presenter/h/a;->n(Lcom/kwad/components/ad/reward/presenter/h/a;)Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2, v0}, Lcom/kwad/sdk/utils/au;->aw(Landroid/content/Context;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    iput v1, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 148
    .line 149
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_4
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->wr()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const/4 v3, 0x3

    .line 168
    if-ne v0, v3, :cond_5

    .line 169
    .line 170
    iput v2, p1, Lcom/kwad/components/core/webview/tachikoma/c/w;->auy:I

    .line 171
    .line 172
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/r/a;->bV(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/h/a$4;->Bx:Lcom/kwad/components/ad/reward/presenter/h/a;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/h/a;->c(Lcom/kwad/components/ad/reward/presenter/h/a;)Lcom/kwad/components/core/webview/tachikoma/f;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_0
    return-void
.end method
