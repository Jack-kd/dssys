.class public Lcom/beizi/fusion/gj;
.super Lcom/beizi/fusion/l3;
.source "SourceFile"


# instance fields
.field private P:Landroid/view/ViewGroup;

.field private Q:Landroid/view/View;

.field private R:Lcom/beizi/fusion/p1;

.field private S:Landroid/os/CountDownTimer;

.field private T:Ljava/lang/String;

.field private U:Lcom/beizi/fusion/p7;

.field private V:I

.field private W:I

.field private X:Landroid/webkit/WebView;

.field private Y:Lcom/beizi/fusion/cm;

.field private Z:Ljava/lang/String;

.field private a0:Lcom/beizi/fusion/widget/BZVideoView;

.field private b0:Z

.field private c0:Z

.field private d0:Z

.field private e0:Z

.field private f0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p3, Lcom/beizi/fusion/wh;->b:Lcom/beizi/fusion/wh;

    .line 2
    .line 3
    invoke-direct {p0, p1, p4, p3}, Lcom/beizi/fusion/l3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/wh;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lcom/beizi/fusion/gj;)Landroid/os/CountDownTimer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/gj;->S:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic B(Lcom/beizi/fusion/gj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic D(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic E(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/a5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->r:Lcom/beizi/fusion/a5;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic G(Lcom/beizi/fusion/gj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/gj;->V:I

    .line 2
    .line 3
    return p0
.end method

.method private M()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    const/16 v3, 0x11

    .line 29
    .line 30
    const/4 v4, -0x2

    .line 31
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->I()Lcom/beizi/fusion/rn$e;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/beizi/fusion/rn$e;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v6, 0x0

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    new-instance v5, Landroid/content/MutableContextWrapper;

    .line 55
    .line 56
    invoke-direct {v5, v0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v2}, Lcom/beizi/fusion/eq;->b(Landroid/content/Context;Lcom/beizi/fusion/rn$e;)Landroid/widget/FrameLayout;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    invoke-direct {v5, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Lcom/beizi/fusion/gj$h;

    .line 77
    .line 78
    invoke-direct {v5, p0}, Lcom/beizi/fusion/gj$h;-><init>(Lcom/beizi/fusion/gj;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->h()Lcom/beizi/fusion/rn$e;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/beizi/fusion/rn$e;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    new-instance v5, Landroid/content/MutableContextWrapper;

    .line 101
    .line 102
    iget-object v7, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 103
    .line 104
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-direct {v5, v7}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v2}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;Lcom/beizi/fusion/rn$e;)Landroid/widget/FrameLayout;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    invoke-direct {v5, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .line 134
    const/4 v7, 0x5

    .line 135
    invoke-virtual {v5, v7, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 136
    .line 137
    .line 138
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    iget-object v2, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 144
    .line 145
    check-cast v2, Landroid/widget/FrameLayout;

    .line 146
    .line 147
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .line 149
    const/16 v5, 0x55

    .line 150
    .line 151
    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    .line 163
    const/high16 v3, 0x41400000    # 12.0f

    .line 164
    .line 165
    invoke-static {v0, v3}, Lcom/beizi/fusion/eq;->a(Landroid/content/Context;F)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {v2, v6, v6, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private N()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :catch_0
    :cond_0
    move-object v3, p0

    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->F()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->j()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->k()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/beizi/fusion/rn;->q()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->o()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/beizi/fusion/rn;->n()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    move-object v7, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move-object v7, v4

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->p()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/beizi/fusion/rn;->r()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "\u5e94\u7528\u540d\u79f0\uff1a"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, " | \u5f00\u53d1\u8005\uff1a"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, " | \u5e94\u7528\u7248\u672c\uff1a"

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " | <u>\u6743\u9650\u8be6\u60c5</u> | <u>\u9690\u79c1\u534f\u8bae</u> | <u>\u529f\u80fd\u4ecb\u7ecd</u>"

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    new-instance v9, Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-direct {v9, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    const/high16 v0, 0x40c00000    # 6.0f

    .line 130
    .line 131
    invoke-virtual {v9, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 132
    .line 133
    .line 134
    const-string v0, "#999999"

    .line 135
    .line 136
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    const-string v0, "#333333"

    .line 144
    .line 145
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/high16 v2, 0x3f800000    # 1.0f

    .line 150
    .line 151
    invoke-virtual {v9, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 152
    .line 153
    .line 154
    const/16 v0, 0xa

    .line 155
    .line 156
    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    .line 158
    .line 159
    new-instance v2, Lcom/beizi/fusion/gj$i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    move-object v3, p0

    .line 162
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/beizi/fusion/gj$i;-><init>(Lcom/beizi/fusion/gj;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v4}, Lcom/beizi/fusion/wo;->i(Landroid/content/Context;)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    mul-int/2addr v0, v1

    .line 173
    div-int/lit8 v0, v0, 0x3

    .line 174
    .line 175
    iget-object v1, v3, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 176
    .line 177
    instance-of v2, v1, Landroid/widget/FrameLayout;

    .line 178
    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    check-cast v1, Landroid/widget/FrameLayout;

    .line 182
    .line 183
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .line 185
    const/4 v4, -0x2

    .line 186
    const/16 v5, 0x53

    .line 187
    .line 188
    invoke-direct {v2, v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .line 193
    .line 194
    :catch_1
    :cond_4
    :goto_1
    return-void
.end method

.method private O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->U:Lcom/beizi/fusion/p7;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/p7;->d:Lcom/beizi/fusion/p7;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/rf;->a(Landroid/content/Context;)Lcom/beizi/fusion/rf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Lcom/beizi/fusion/gj$b;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/beizi/fusion/gj$b;-><init>(Lcom/beizi/fusion/gj;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v3, v2}, Lcom/beizi/fusion/rf;->a(Ljava/lang/String;ZLcom/beizi/fusion/rf$f;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private P()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "BeiZisAd"

    .line 14
    .line 15
    const-string v1, "enter BeiZi ad load"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/beizi/fusion/p1;->c()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method private S()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/gj;->U:Lcom/beizi/fusion/p7;

    .line 3
    .line 4
    sget-object v2, Lcom/beizi/fusion/p7;->d:Lcom/beizi/fusion/p7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    const/4 v3, 0x7

    .line 7
    const-string v4, "http"

    .line 8
    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Lcom/beizi/fusion/gj;->a(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->T()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    sget-object v2, Lcom/beizi/fusion/p7;->e:Lcom/beizi/fusion/p7;

    .line 40
    .line 41
    if-ne v1, v2, :cond_5

    .line 42
    .line 43
    iget-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    const-string v1, "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n  <meta charset=\"UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <title>Document</title>\n  <style>\n    html, body { width: 100%; height: 100%; margin: 0; padding: 0 }\n    .material-wrap { overflow: hidden; position: relative; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: cover }\n    .filter-shadow { content: \"\"; position: absolute; z-index: 2; top: -3%; left: -3%; right: -3%; bottom: -3%; background: inherit; filter: blur(10px) }\n    .material-wrap .black-shadow { position: absolute; z-index: 3; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0, 0, 0, .05) }\n    .material-wrap .material { position: absolute; z-index: 3; top: 0; left: 0; width: 100%; height: 100%; background-repeat: no-repeat; background-position: center center; background-size: contain }\n  </style>\n</head>\n<body>\n  <div class=\"material-wrap\" style=\"background-image: url(\'__IMAGE_SRC_PATH__\')\">\n    <div class=\"filter-shadow\"></div>\n    <div class=\"black-shadow\"></div>\n    <div class=\"material\" style=\"background-image: url(\'__IMAGE_SRC_PATH__\')\"></div>\n  </div>\n</body>\n</html>\n"

    .line 64
    .line 65
    const-string v2, "__IMAGE_SRC_PATH__"

    .line 66
    .line 67
    iget-object v3, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 74
    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->V()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    sget-object v2, Lcom/beizi/fusion/p7;->c:Lcom/beizi/fusion/p7;

    .line 80
    .line 81
    if-ne v1, v2, :cond_8

    .line 82
    .line 83
    iget-object v1, p0, Lcom/beizi/fusion/gj;->Z:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    iget-object v1, p0, Lcom/beizi/fusion/gj;->Z:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0, v3}, Lcom/beizi/fusion/gj;->a(I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->U()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_8
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private T()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v2, Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->H:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->F:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->M()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->N()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    :cond_1
    move-object v2, v1

    .line 42
    :catch_1
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/beizi/fusion/rf;->a(Landroid/content/Context;)Lcom/beizi/fusion/rf;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v3, Lcom/beizi/fusion/gj$d;

    .line 49
    .line 50
    invoke-direct {v3, p0, v2}, Lcom/beizi/fusion/gj$d;-><init>(Lcom/beizi/fusion/gj;Landroid/widget/ImageView;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v3}, Lcom/beizi/fusion/rf;->a(Ljava/lang/String;Lcom/beizi/fusion/rf$f;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private U()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p0, Lcom/beizi/fusion/gj;->V:I

    .line 12
    .line 13
    iget v1, p0, Lcom/beizi/fusion/gj;->W:I

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, -0x1

    .line 19
    :goto_0
    new-instance v2, Lcom/beizi/fusion/widget/BZVideoView;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/beizi/fusion/l3;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/beizi/fusion/widget/BZVideoView;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 27
    .line 28
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 39
    .line 40
    const-string v1, "#000000"

    .line 41
    .line 42
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/beizi/fusion/rn;->m0()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 67
    .line 68
    new-instance v2, Lcom/beizi/fusion/gj$f;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lcom/beizi/fusion/gj$f;-><init>(Lcom/beizi/fusion/gj;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/widget/BZVideoView;->setPlayProgressCallback(Lcom/beizi/fusion/widget/BZVideoView$i;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/beizi/fusion/gj;->Z:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3, v0}, Lcom/beizi/fusion/widget/BZVideoView;->initVideoResource(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->M()V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->N()V

    .line 88
    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/beizi/fusion/gj;->Y:Lcom/beizi/fusion/cm;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/beizi/fusion/cm;->e()V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->P()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    const/16 v0, 0x8

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private V()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/gj;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/webkit/WebView;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/beizi/fusion/nq;->c(Landroid/webkit/WebView;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->F:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->M()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->N()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    .line 47
    .line 48
    new-instance v1, Lcom/beizi/fusion/gj$e;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/beizi/fusion/gj$e;-><init>(Lcom/beizi/fusion/gj;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 59
    .line 60
    const-string v6, "UTF-8"

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const-string v5, "text/html"

    .line 65
    .line 66
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->Q:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private a(II)V
    .locals 6

    int-to-double v0, p2

    int-to-double p1, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, p1

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 11
    :try_start_0
    iget-boolean v2, p0, Lcom/beizi/fusion/gj;->c0:Z

    if-nez v2, :cond_0

    .line 12
    iput-boolean v3, p0, Lcom/beizi/fusion/gj;->c0:Z

    .line 13
    iget-object v2, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    const/16 v4, 0x19

    invoke-virtual {p0, v2, v4}, Lcom/beizi/fusion/l3;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, p1

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    .line 14
    iget-boolean v2, p0, Lcom/beizi/fusion/gj;->d0:Z

    if-nez v2, :cond_1

    .line 15
    iput-boolean v3, p0, Lcom/beizi/fusion/gj;->d0:Z

    .line 16
    iget-object v2, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    const/16 v4, 0x32

    invoke-virtual {p0, v2, v4}, Lcom/beizi/fusion/l3;->a(Landroid/view/ViewGroup;I)V

    :cond_1
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p1, v4

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_2

    .line 17
    iget-boolean p1, p0, Lcom/beizi/fusion/gj;->e0:Z

    if-nez p1, :cond_2

    .line 18
    iput-boolean v3, p0, Lcom/beizi/fusion/gj;->e0:Z

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    const/16 p2, 0x4b

    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/l3;->a(Landroid/view/ViewGroup;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 20
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/gj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->W()V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/gj;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/gj;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/gj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/gj;->b0:Z

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    return-object p0
.end method

.method public static synthetic b(Lcom/beizi/fusion/gj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/gj;->f0:Z

    return p1
.end method

.method public static synthetic c(Lcom/beizi/fusion/gj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/gj;->W:I

    return p0
.end method

.method public static synthetic c(Lcom/beizi/fusion/gj;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/l3;->u:Z

    return p1
.end method

.method public static synthetic d(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/beizi/fusion/gj;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/beizi/fusion/gj;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->H:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->F:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/beizi/fusion/gj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/beizi/fusion/gj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/cm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/gj;->Y:Lcom/beizi/fusion/cm;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/beizi/fusion/gj;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/beizi/fusion/gj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->H:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->F:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic r(Lcom/beizi/fusion/gj;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->E:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/l3;->F:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic u(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/gj;->b0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic v(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/widget/BZVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic w(Lcom/beizi/fusion/gj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/beizi/fusion/gj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/gj;->f0:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic y(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Q()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/rn;->c(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/beizi/fusion/l3;->B()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/rn;->b(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 19
    .line 20
    const-string v5, "100"

    .line 21
    .line 22
    const-string v6, "200"

    .line 23
    .line 24
    const-string v7, "105"

    .line 25
    .line 26
    const-string v8, "206"

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v10

    .line 40
    const-wide/16 v12, 0xa

    .line 41
    .line 42
    add-long/2addr v10, v12

    .line 43
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    iget-boolean v11, p0, Lcom/beizi/fusion/l3;->i:Z

    .line 48
    .line 49
    iget-object v12, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual/range {v3 .. v12}, Lcom/beizi/fusion/rn;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->i:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/p1;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    :goto_0
    return-void
.end method

.method public R()Lcom/beizi/fusion/widget/BZVideoView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->a0:Lcom/beizi/fusion/widget/BZVideoView;

    .line 2
    .line 3
    return-object v0
.end method

.method public X()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->S:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/beizi/fusion/l3;->n:I

    .line 9
    .line 10
    if-gtz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/beizi/fusion/l3;->n:I

    .line 14
    .line 15
    :cond_1
    new-instance v1, Lcom/beizi/fusion/gj$g;

    .line 16
    .line 17
    iget v0, p0, Lcom/beizi/fusion/l3;->n:I

    .line 18
    .line 19
    mul-int/lit16 v0, v0, 0x3e8

    .line 20
    .line 21
    int-to-long v3, v0

    .line 22
    const-wide/16 v5, 0xc8

    .line 23
    .line 24
    move-object v2, p0

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/beizi/fusion/gj$g;-><init>(Lcom/beizi/fusion/gj;JJ)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v2, Lcom/beizi/fusion/gj;->S:Landroid/os/CountDownTimer;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/l3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/beizi/fusion/l3;->j:Z

    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 38
    new-instance v1, Lcom/beizi/fusion/gj$j;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/gj$j;-><init>(Lcom/beizi/fusion/gj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/16 p1, 0xb

    .line 6
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/gj;->a(I)V

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/gj;->Q:Landroid/view/View;

    .line 8
    new-instance p1, Lcom/beizi/fusion/gj$c;

    invoke-direct {p1, p0}, Lcom/beizi/fusion/gj$c;-><init>(Lcom/beizi/fusion/gj;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/beizi/fusion/cm;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/gj;->Y:Lcom/beizi/fusion/cm;

    .line 10
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->S()V

    return-void
.end method

.method public a(Lcom/beizi/fusion/h5;I)V
    .locals 11

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/rn;->c(Z)V

    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    invoke-virtual {p0}, Lcom/beizi/fusion/l3;->B()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/rn;->b(Z)V

    .line 28
    iget-object v3, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    iget-object v4, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0xa

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/beizi/fusion/l3;->i:Z

    iget-object v9, p0, Lcom/beizi/fusion/l3;->l:Ljava/lang/String;

    move-object v5, p1

    move v10, p2

    .line 31
    invoke-virtual/range {v3 .. v10}, Lcom/beizi/fusion/rn;->a(Landroid/view/View;Lcom/beizi/fusion/h5;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 32
    iput-boolean v1, p0, Lcom/beizi/fusion/l3;->i:Z

    .line 33
    iget-object p1, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    if-nez p1, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/fusion/p1;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/p1;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    return-void
.end method

.method public a(Lcom/beizi/fusion/rn;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->L()I

    move-result v0

    iput v0, p0, Lcom/beizi/fusion/l3;->n:I

    .line 40
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/gj;->T:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->f0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/gj;->Z:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->K()Lcom/beizi/fusion/p7;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/gj;->U:Lcom/beizi/fusion/p7;

    .line 43
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->e(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/l3;->a(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/beizi/fusion/rn;->j0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/l3;->b(Z)V

    .line 46
    iget-boolean p1, p0, Lcom/beizi/fusion/l3;->E:Z

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    new-instance v0, Lcom/beizi/fusion/gj$k;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/gj$k;-><init>(Lcom/beizi/fusion/gj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    invoke-direct {p0}, Lcom/beizi/fusion/gj;->O()V

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/l3;->J:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 50
    new-instance v0, Lcom/beizi/fusion/gj$a;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/gj$a;-><init>(Lcom/beizi/fusion/gj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/beizi/fusion/gj;->V:I

    .line 4
    iput p2, p0, Lcom/beizi/fusion/gj;->W:I

    return-void
.end method

.method public b(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/gj;->X:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->P:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/l3;->c:Lcom/beizi/fusion/rn;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/rn;->a(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj;->R:Lcom/beizi/fusion/p1;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/beizi/fusion/p1;->b()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/gj;->S:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
