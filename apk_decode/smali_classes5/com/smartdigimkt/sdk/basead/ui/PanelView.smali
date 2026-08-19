.class public Lcom/smartdigimkt/sdk/basead/ui/PanelView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final TYPE_FULL_SCREEN_BANNER:I = 0x64

.field public static final TYPE_FULL_SCREEN_EMPTY_INFO:I = 0x6c

.field public static final TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_LANDSCAPE:I = 0x6a

.field public static final TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_PORTRAIT:I = 0x65

.field public static final TYPE_FULL_SCREEN_ENDCARD_VERTICAL_LANDSCAPE:I = 0x66

.field public static final TYPE_FULL_SCREEN_ENDCARD_VERTICAL_PORTRAIT:I = 0x69

.field public static final TYPE_HALF_SCREEN_EMPTY_INFO:I = 0x6b

.field public static final TYPE_HALF_SCREEN_HORIZONTAL:I = 0x68

.field public static final TYPE_HALF_SCREEN_VERTICAL:I = 0x67

.field public static final TYPE_LETTER:I = 0x6d

.field public static final TYPE_UNINITIALIZED:I


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

.field public g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

.field public h:Lcom/smartdigimkt/v1/k4;

.field public i:I

.field public j:Lcom/smartdigimkt/m3/e;

.field public k:Lcom/smartdigimkt/l3/a;

.field public l:Lcom/smartdigimkt/m3/c;

.field public m:I

.field public n:Z

.field public o:Ljava/util/ArrayList;

.field public p:Lcom/smartdigimkt/r2/t;

.field public q:Landroid/view/View;

.field public r:Z

.field public final s:Lcom/smartdigimkt/v1/e4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->n:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->r:Z

    .line 10
    .line 11
    new-instance p1, Lcom/smartdigimkt/v1/e4;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/smartdigimkt/v1/e4;-><init>(Lcom/smartdigimkt/sdk/basead/ui/PanelView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    .line 17
    .line 18
    return-void
.end method

.method private setDataFrom(Lcom/smartdigimkt/m3/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->q:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    check-cast v3, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ltz v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v0}, Lcom/smartdigimkt/z3/d;->a(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lcom/smartdigimkt/z3/d;->a(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    new-instance v6, Lcom/smartdigimkt/sdk/basead/ui/component/RoundFrameLayout;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-direct {v6, v7}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundFrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iget v7, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    .line 54
    .line 55
    const/16 v8, 0x66

    .line 56
    .line 57
    if-eq v7, v8, :cond_0

    .line 58
    .line 59
    const/16 v8, 0x6a

    .line 60
    .line 61
    if-eq v7, v8, :cond_0

    .line 62
    .line 63
    const/16 v7, 0xc

    .line 64
    .line 65
    invoke-virtual {v6, v7}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundFrameLayout;->setRadius(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v6, v1}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundFrameLayout;->setRadius(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v6, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    .line 83
    .line 84
    .line 85
    instance-of v0, v2, Landroid/widget/ImageView;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    check-cast v2, Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p1, Lcom/smartdigimkt/m3/c;->e:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    iget-object v2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 109
    .line 110
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4}, Lcom/smartdigimkt/t3/m;->a(Landroid/content/Context;)Lcom/smartdigimkt/t3/m;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    new-instance v5, Lcom/smartdigimkt/t3/o;

    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    invoke-direct {v5, v6, v0}, Lcom/smartdigimkt/t3/o;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v6, Lcom/smartdigimkt/v1/h4;

    .line 127
    .line 128
    invoke-direct {v6, p0, v0}, Lcom/smartdigimkt/v1/h4;-><init>(Lcom/smartdigimkt/sdk/basead/ui/PanelView;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v5, v3, v2, v6}, Lcom/smartdigimkt/t3/m;->a(Lcom/smartdigimkt/t3/o;IILcom/smartdigimkt/t3/l;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_3

    .line 139
    .line 140
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    :cond_3
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    iget-object v0, p1, Lcom/smartdigimkt/m3/c;->d:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    .line 158
    .line 159
    iget-object v2, p1, Lcom/smartdigimkt/m3/c;->d:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    .line 171
    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    iget-object v0, p1, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    .line 183
    .line 184
    iget-object v1, p1, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    .line 196
    .line 197
    if-eqz v0, :cond_9

    .line 198
    .line 199
    iget-object v1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->k:Lcom/smartdigimkt/l3/a;

    .line 200
    .line 201
    iget-boolean v2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->r:Z

    .line 202
    .line 203
    new-instance v3, Lcom/smartdigimkt/v1/i4;

    .line 204
    .line 205
    invoke-direct {v3, p0}, Lcom/smartdigimkt/v1/i4;-><init>(Lcom/smartdigimkt/sdk/basead/ui/PanelView;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;->initSetting(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;ZLcom/smartdigimkt/r2/m;)V

    .line 209
    .line 210
    .line 211
    iget v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    .line 212
    .line 213
    const/16 v1, 0x6c

    .line 214
    .line 215
    if-eq v0, v1, :cond_8

    .line 216
    .line 217
    const/16 v1, 0x6b

    .line 218
    .line 219
    if-ne v0, v1, :cond_9

    .line 220
    .line 221
    :cond_8
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;->changeMinorButtonStyle()V

    .line 224
    .line 225
    .line 226
    :cond_9
    new-instance v0, Lcom/smartdigimkt/r2/l;

    .line 227
    .line 228
    iget-object v1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->k:Lcom/smartdigimkt/l3/a;

    .line 229
    .line 230
    invoke-direct {v0, p1, v1}, Lcom/smartdigimkt/r2/l;-><init>(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Lcom/smartdigimkt/r2/l;->a(Landroid/view/View;)V

    .line 234
    .line 235
    .line 236
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/smartdigimkt/m3/c;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->q:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public getCTAButton()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->q:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    return-object v0
.end method

.method public getShakeView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public init(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;IZLcom/smartdigimkt/v1/k4;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->h:Lcom/smartdigimkt/v1/k4;

    .line 2
    .line 3
    iput p3, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->i:I

    .line 4
    .line 5
    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->k:Lcom/smartdigimkt/l3/a;

    .line 8
    .line 9
    iget-object p3, p2, Lcom/smartdigimkt/l3/a;->r:Lcom/smartdigimkt/m3/e;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->j:Lcom/smartdigimkt/m3/e;

    .line 12
    .line 13
    iput-boolean p4, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->n:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/smartdigimkt/m3/c;->f()Z

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->j:Lcom/smartdigimkt/m3/e;

    .line 19
    .line 20
    iget p3, p3, Lcom/smartdigimkt/m3/e;->h:I

    .line 21
    .line 22
    new-instance p3, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/smartdigimkt/l3/a;->r:Lcom/smartdigimkt/m3/e;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-static {p2}, Lcom/smartdigimkt/z/z;->a(Lcom/smartdigimkt/m3/e;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    new-instance p2, Lcom/smartdigimkt/r2/t;

    .line 40
    .line 41
    iget-object p3, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->j:Lcom/smartdigimkt/m3/e;

    .line 42
    .line 43
    invoke-direct {p2, p1, p3}, Lcom/smartdigimkt/r2/t;-><init>(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/m3/e;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->p:Lcom/smartdigimkt/r2/t;

    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public notifyHalfScreenEndCardShow()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->r:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->k:Lcom/smartdigimkt/l3/a;

    .line 11
    .line 12
    new-instance v4, Lcom/smartdigimkt/v1/j4;

    .line 13
    .line 14
    invoke-direct {v4, p0}, Lcom/smartdigimkt/v1/j4;-><init>(Lcom/smartdigimkt/sdk/basead/ui/PanelView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;->initSetting(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;ZLcom/smartdigimkt/r2/m;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBaseAdIconView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->q:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setLayoutType(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    if-ne v0, p1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iput p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    const-string v0, "myoffer_panel_view_horizontal"

    const-string v1, "myoffer_panel_view_horizontal_without_icon"

    const-string v2, "myoffer_panel_view_endcard_portrait_without_icon"

    const-string v3, "layout"

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_bottom_banner_without_icon"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_bottom_banner"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_letter"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_full_screen_empty_info"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_empty_info"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 12
    :pswitch_3
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_endcard_vertical_portrait"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 17
    :pswitch_4
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 21
    :pswitch_5
    iget v2, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->i:I

    if-ne v2, v4, :cond_5

    .line 22
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 25
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 27
    :cond_5
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_vertical_without_icon"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto/16 :goto_0

    .line 30
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_vertical"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 32
    :pswitch_6
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_endcard_landscape_without_icon"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 35
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_endcard_landscape"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 37
    :pswitch_7
    invoke-virtual {p0}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    goto :goto_0

    .line 40
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_panel_view_endcard_horizontal_portrait"

    invoke-static {v1, v2, v3}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    :goto_0
    const/16 v0, 0x65

    const/4 v1, 0x0

    const/16 v2, 0x6a

    const/16 v3, 0x66

    if-eq p1, v0, :cond_9

    if-eq p1, v3, :cond_9

    const/16 v0, 0x69

    if-eq p1, v0, :cond_9

    if-eq p1, v2, :cond_9

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_9

    goto :goto_1

    .line 42
    :cond_9
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->k:Lcom/smartdigimkt/l3/a;

    invoke-static {p1, v0}, Lcom/smartdigimkt/z/z;->d(Lcom/smartdigimkt/m3/c;Lcom/smartdigimkt/l3/a;)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_a
    move p1, v4

    .line 43
    :goto_2
    iput-boolean p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->r:Z

    .line 44
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_iv_banner_icon"

    const-string v6, "id"

    invoke-static {v0, v5, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    .line 46
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_tv_banner_title"

    invoke-static {v0, v5, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    .line 47
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_tv_banner_desc"

    invoke-static {v0, v5, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_panel_cta_layout"

    invoke-static {v0, v5, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    .line 49
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_ad_logo"

    invoke-static {v0, v5, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "myoffer_shake_hint_text"

    invoke-static {v0, v5, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    iput-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    .line 51
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->k:Lcom/smartdigimkt/l3/a;

    iget-object v0, v0, Lcom/smartdigimkt/l3/a;->r:Lcom/smartdigimkt/m3/e;

    iget-object v5, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    .line 52
    iget v5, v5, Lcom/smartdigimkt/m3/c;->o:I

    .line 53
    invoke-virtual {p1, v0, v5}, Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;->setShakeSetting(Lcom/smartdigimkt/m3/e;I)V

    .line 54
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;->startShakeIconAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    iget-boolean p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->n:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    const/16 v5, 0x6c

    if-eq v0, v5, :cond_b

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_b
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-direct {p0, p1}, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->setDataFrom(Lcom/smartdigimkt/m3/c;)V

    .line 58
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    .line 59
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_c
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 63
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_d
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 67
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_e
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    if-eqz p1, :cond_f

    .line 71
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->f:Lcom/smartdigimkt/sdk/basead/ui/component/CTAButtonLayout;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_f
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    .line 75
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_10
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->n:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->g:Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;

    new-instance v0, Lcom/smartdigimkt/v1/g4;

    invoke-direct {v0, p0}, Lcom/smartdigimkt/v1/g4;-><init>(Lcom/smartdigimkt/sdk/basead/ui/PanelView;)V

    iget-object v1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->j:Lcom/smartdigimkt/m3/e;

    invoke-virtual {p1, v0, v1}, Lcom/smartdigimkt/sdk/basead/ui/BaseShakeView;->setOnShakeListener(Lcom/smartdigimkt/v1/v1;Lcom/smartdigimkt/m3/e;)V

    .line 81
    :cond_11
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_panel_view_blank"

    invoke-static {v0, v1, v6}, Lcom/smartdigimkt/c5/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 82
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 85
    :cond_12
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->l:Lcom/smartdigimkt/m3/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->s:Lcom/smartdigimkt/v1/e4;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_3
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    instance-of v0, p1, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;

    if-eqz v0, :cond_14

    .line 89
    check-cast p1, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;

    invoke-virtual {p1, v4}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;->setNeedRadiu(Z)V

    .line 90
    iget p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    if-eq p1, v3, :cond_13

    if-eq p1, v2, :cond_13

    .line 91
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast p1, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    goto :goto_4

    .line 92
    :cond_13
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    check-cast p1, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/smartdigimkt/sdk/basead/ui/component/RoundImageView;->setRadiusInDip(I)V

    .line 93
    :goto_4
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 94
    :cond_14
    iget-object p1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->p:Lcom/smartdigimkt/r2/t;

    if-eqz p1, :cond_15

    .line 95
    iget v0, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->m:I

    .line 96
    iput v0, p1, Lcom/smartdigimkt/r2/t;->c:I

    .line 97
    new-instance v0, Lcom/smartdigimkt/v1/f4;

    invoke-direct {v0, p0}, Lcom/smartdigimkt/v1/f4;-><init>(Lcom/smartdigimkt/sdk/basead/ui/PanelView;)V

    .line 98
    iput-object v0, p1, Lcom/smartdigimkt/r2/t;->l:Lcom/smartdigimkt/n2/a;

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartdigimkt/sdk/basead/ui/PanelView;->a:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/smartdigimkt/r2/t;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_15
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
