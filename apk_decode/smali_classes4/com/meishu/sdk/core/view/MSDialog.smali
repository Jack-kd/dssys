.class public Lcom/meishu/sdk/core/view/MSDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/MSDialog$Builder;
    }
.end annotation


# instance fields
.field private canceledOnTouchOutside:Z

.field private iconUrl:Ljava/lang/String;

.field private negativeListener:Landroid/view/View$OnClickListener;

.field private negativeText:Ljava/lang/String;

.field private positiveListener:Landroid/view/View$OnClickListener;

.field private positiveText:Ljava/lang/String;

.field private showCloseBtn:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/view/MSDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/view/MSDialog;->negativeListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/core/view/MSDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->negativeListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/core/view/MSDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/view/MSDialog;->positiveListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/view/MSDialog;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->positiveListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/core/view/MSDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->showCloseBtn:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$502(Lcom/meishu/sdk/core/view/MSDialog;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->canceledOnTouchOutside:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$602(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->positiveText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$702(Lcom/meishu/sdk/core/view/MSDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->negativeText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, -0x1

    .line 31
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    .line 33
    const/4 v2, -0x2

    .line 34
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    sget p1, Lcom/meishu/sdk/R$layout;->ms_dialog:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/meishu/sdk/core/bquery/i;

    .line 45
    .line 46
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_root:I

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {p1, v1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog;->iconUrl:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_icon:I

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/meishu/sdk/core/view/MSDialog;->iconUrl:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 74
    .line 75
    .line 76
    :cond_1
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_title:I

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/meishu/sdk/core/view/MSDialog;->title:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 87
    .line 88
    .line 89
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_close:I

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/meishu/sdk/core/view/MSDialog;->showCloseBtn:Z

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/16 v0, 0x8

    .line 103
    .line 104
    :goto_0
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/meishu/sdk/core/view/MSDialog;->negativeText:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    sget v0, Lcom/meishu/sdk/R$id;->ms_dialog_negative:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog;->negativeText:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 126
    .line 127
    .line 128
    :cond_3
    sget v0, Lcom/meishu/sdk/R$id;->ms_dialog_negative:I

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 135
    .line 136
    new-instance v1, Lcom/meishu/sdk/core/view/MSDialog$1;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/meishu/sdk/core/view/MSDialog$1;-><init>(Lcom/meishu/sdk/core/view/MSDialog;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 142
    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/MSDialog;->positiveText:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_5

    .line 155
    .line 156
    sget v0, Lcom/meishu/sdk/R$id;->ms_dialog_positive:I

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/meishu/sdk/core/view/MSDialog;->positiveText:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/CharSequence;)Lcom/meishu/sdk/core/bquery/e;

    .line 167
    .line 168
    .line 169
    :cond_5
    new-instance v0, Lcom/meishu/sdk/core/view/MSDialog$2;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/view/MSDialog$2;-><init>(Lcom/meishu/sdk/core/view/MSDialog;)V

    .line 172
    .line 173
    .line 174
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_positive:I

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lcom/meishu/sdk/core/bquery/i;

    .line 181
    .line 182
    iget-object v1, v1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 183
    .line 184
    if-eqz v1, :cond_6

    .line 185
    .line 186
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    :cond_6
    sget v1, Lcom/meishu/sdk/R$id;->ms_dialog_close:I

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 198
    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    :cond_7
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->canceledOnTouchOutside:Z

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 207
    .line 208
    .line 209
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/MSDialog;->canceledOnTouchOutside:Z

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 212
    .line 213
    .line 214
    return-void
.end method
