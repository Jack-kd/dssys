.class final Lcom/kwad/components/core/innerEc/live/b/c/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/g;->sl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p3, "\n"

    .line 12
    .line 13
    const-string p4, ""

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p3, "\r"

    .line 20
    .line 21
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->f(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/16 p3, 0x8

    .line 45
    .line 46
    const/4 p4, 0x0

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    move p2, p3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move p2, p4

    .line 52
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iget-object p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Landroid/widget/TextView;->getLineHeight()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    mul-int/2addr p2, p1

    .line 76
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->g(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const/high16 v1, 0x41800000    # 16.0f

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    add-int/2addr p2, v0

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const/16 p2, 0x22

    .line 109
    .line 110
    if-le p1, p2, :cond_1

    .line 111
    .line 112
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, p4, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->b(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/EditText;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v0, "\u5b57\u6570\u8d85\u51fa\u6700\u5927\u9650\u5236"

    .line 155
    .line 156
    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/ae;->W(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    const/16 v1, 0x16

    .line 176
    .line 177
    if-le v0, v1, :cond_2

    .line 178
    .line 179
    move p3, p4

    .line 180
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget-object p3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 190
    .line 191
    invoke-static {p3}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    rsub-int/lit8 p3, p3, 0x22

    .line 200
    .line 201
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 209
    .line 210
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->h(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/widget/TextView;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iget-object p3, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$3;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 215
    .line 216
    invoke-static {p3}, Lcom/kwad/components/core/innerEc/live/b/c/g;->e(Lcom/kwad/components/core/innerEc/live/b/c/g;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result p3

    .line 224
    if-ne p3, p2, :cond_3

    .line 225
    .line 226
    const-string p2, "#FE3666"

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_3
    const-string p2, "#C6C6C6"

    .line 230
    .line 231
    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    return-void
.end method
