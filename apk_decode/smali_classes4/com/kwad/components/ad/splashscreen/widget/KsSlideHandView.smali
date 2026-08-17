.class public Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;
.super Lcom/kwad/components/ad/splashscreen/widget/c;
.source "SourceFile"


# instance fields
.field private LZ:Landroid/widget/ImageView;

.field private Ma:Landroid/widget/ImageView;

.field private Mb:Landroid/widget/ImageView;

.field private Mc:Landroid/widget/ImageView;

.field private Md:Landroid/widget/ImageView;

.field private Me:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/components/ad/splashscreen/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p2, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 7
    .line 8
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    const/high16 p3, 0x434e0000    # 206.0f

    .line 11
    .line 12
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v1, 0x42f00000    # 120.0f

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {p2, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 26
    .line 27
    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_splash_base_arrows:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x11

    .line 33
    .line 34
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 47
    .line 48
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-direct {p2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 62
    .line 63
    sget v3, Lcom/kwad/sdk/R$drawable;->ksad_splash_up_highlight_arrow:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 72
    .line 73
    .line 74
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    .line 76
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 87
    .line 88
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-direct {p2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 102
    .line 103
    sget v4, Lcom/kwad/sdk/R$drawable;->ksad_splash_right_highlight_arrow:I

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 111
    .line 112
    .line 113
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    .line 115
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    new-instance p2, Landroid/widget/ImageView;

    .line 121
    .line 122
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 126
    .line 127
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    .line 129
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-direct {p2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 141
    .line 142
    sget v4, Lcom/kwad/sdk/R$drawable;->ksad_splash_down_highlight_arrow:I

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 150
    .line 151
    .line 152
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    .line 154
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 155
    .line 156
    invoke-virtual {p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance p2, Landroid/widget/ImageView;

    .line 160
    .line 161
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 165
    .line 166
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-direct {p2, p3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    .line 178
    .line 179
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 180
    .line 181
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_left_highlight_arrow:I

    .line 182
    .line 183
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .line 185
    .line 186
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 187
    .line 188
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 189
    .line 190
    .line 191
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 192
    .line 193
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 194
    .line 195
    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    new-instance p2, Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 204
    .line 205
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    .line 207
    const/high16 p3, 0x42c80000    # 100.0f

    .line 208
    .line 209
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    const/high16 v0, 0x43220000    # 162.0f

    .line 214
    .line 215
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-direct {p2, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    iget-object p3, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 223
    .line 224
    sget v0, Lcom/kwad/sdk/R$drawable;->ksad_splash_slide_animation_hand:I

    .line 225
    .line 226
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    .line 228
    .line 229
    const/high16 p3, 0x43150000    # 149.0f

    .line 230
    .line 231
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 236
    .line 237
    const/high16 p3, -0x3e680000    # -19.0f

    .line 238
    .line 239
    invoke-static {p1, p3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 244
    .line 245
    const/16 p1, 0x53

    .line 246
    .line 247
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    .line 249
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final fZ()Landroid/animation/Animator;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [F

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    const-string v5, "alpha"

    .line 17
    .line 18
    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-wide/16 v6, 0x32

    .line 23
    .line 24
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v4, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 29
    .line 30
    new-array v8, v3, [F

    .line 31
    .line 32
    fill-array-data v8, :array_1

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-wide/16 v8, 0x64

    .line 40
    .line 41
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v10, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 46
    .line 47
    new-array v11, v3, [F

    .line 48
    .line 49
    fill-array-data v11, :array_2

    .line 50
    .line 51
    .line 52
    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const-wide/16 v11, 0x1c2

    .line 57
    .line 58
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    const/high16 v15, -0x3d6e0000    # -73.0f

    .line 69
    .line 70
    invoke-static {v14, v15}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    int-to-float v14, v14

    .line 75
    const/4 v15, 0x1

    .line 76
    new-array v6, v15, [F

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    aput v14, v6, v7

    .line 80
    .line 81
    const-string v14, "translationY"

    .line 82
    .line 83
    invoke-static {v13, v14, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 92
    .line 93
    move/from16 v16, v7

    .line 94
    .line 95
    new-array v7, v3, [F

    .line 96
    .line 97
    fill-array-data v7, :array_3

    .line 98
    .line 99
    .line 100
    invoke-static {v13, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 109
    .line 110
    new-array v8, v3, [F

    .line 111
    .line 112
    fill-array-data v8, :array_4

    .line 113
    .line 114
    .line 115
    invoke-static {v13, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    iget-object v9, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 124
    .line 125
    new-array v13, v3, [F

    .line 126
    .line 127
    fill-array-data v13, :array_5

    .line 128
    .line 129
    .line 130
    invoke-static {v9, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    const/4 v12, 0x0

    .line 145
    invoke-static {v11, v12}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    int-to-float v11, v11

    .line 150
    new-array v12, v15, [F

    .line 151
    .line 152
    aput v11, v12, v16

    .line 153
    .line 154
    invoke-static {v13, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    const-wide/16 v12, 0x32

    .line 159
    .line 160
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 165
    .line 166
    new-array v13, v3, [F

    .line 167
    .line 168
    fill-array-data v13, :array_6

    .line 169
    .line 170
    .line 171
    invoke-static {v12, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    move-object/from16 v19, v4

    .line 176
    .line 177
    const-wide/16 v3, 0x64

    .line 178
    .line 179
    invoke-virtual {v12, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 184
    .line 185
    const/4 v15, 0x2

    .line 186
    new-array v3, v15, [F

    .line 187
    .line 188
    fill-array-data v3, :array_7

    .line 189
    .line 190
    .line 191
    invoke-static {v13, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    move-object v4, v12

    .line 196
    const-wide/16 v12, 0x64

    .line 197
    .line 198
    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 203
    .line 204
    new-array v13, v15, [F

    .line 205
    .line 206
    move-object v15, v13

    .line 207
    fill-array-data v15, :array_8

    .line 208
    .line 209
    .line 210
    invoke-static {v12, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    move-object v15, v14

    .line 215
    const-wide/16 v13, 0x1c2

    .line 216
    .line 217
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    move-object/from16 v21, v4

    .line 228
    .line 229
    const/high16 v4, 0x42aa0000    # 85.0f

    .line 230
    .line 231
    invoke-static {v14, v4}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    int-to-float v4, v4

    .line 236
    move/from16 v22, v4

    .line 237
    .line 238
    const/4 v14, 0x1

    .line 239
    new-array v4, v14, [F

    .line 240
    .line 241
    aput v22, v4, v16

    .line 242
    .line 243
    const-string v14, "translationX"

    .line 244
    .line 245
    invoke-static {v13, v14, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    move-object/from16 v22, v12

    .line 250
    .line 251
    const-wide/16 v12, 0x1c2

    .line 252
    .line 253
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 258
    .line 259
    move-object/from16 v20, v15

    .line 260
    .line 261
    const/4 v13, 0x2

    .line 262
    new-array v15, v13, [F

    .line 263
    .line 264
    fill-array-data v15, :array_9

    .line 265
    .line 266
    .line 267
    invoke-static {v12, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    move-object v15, v14

    .line 272
    const-wide/16 v13, 0x64

    .line 273
    .line 274
    invoke-virtual {v12, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 279
    .line 280
    move-object/from16 v23, v15

    .line 281
    .line 282
    const/4 v14, 0x2

    .line 283
    new-array v15, v14, [F

    .line 284
    .line 285
    fill-array-data v15, :array_a

    .line 286
    .line 287
    .line 288
    invoke-static {v13, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    const-wide/16 v14, 0x1c2

    .line 293
    .line 294
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 299
    .line 300
    move-object/from16 v24, v13

    .line 301
    .line 302
    const/4 v15, 0x2

    .line 303
    new-array v13, v15, [F

    .line 304
    .line 305
    fill-array-data v13, :array_b

    .line 306
    .line 307
    .line 308
    invoke-static {v14, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    const-wide/16 v14, 0x1c2

    .line 313
    .line 314
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    move-object/from16 v26, v13

    .line 325
    .line 326
    const/4 v13, 0x0

    .line 327
    invoke-static {v15, v13}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    int-to-float v13, v15

    .line 332
    move/from16 v27, v13

    .line 333
    .line 334
    const/4 v15, 0x1

    .line 335
    new-array v13, v15, [F

    .line 336
    .line 337
    aput v27, v13, v16

    .line 338
    .line 339
    move-object/from16 v15, v23

    .line 340
    .line 341
    invoke-static {v14, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 342
    .line 343
    .line 344
    move-result-object v13

    .line 345
    move-object v14, v3

    .line 346
    move-object/from16 v23, v4

    .line 347
    .line 348
    const-wide/16 v3, 0x32

    .line 349
    .line 350
    invoke-virtual {v13, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    iget-object v3, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 355
    .line 356
    move-object/from16 v25, v13

    .line 357
    .line 358
    const/4 v4, 0x2

    .line 359
    new-array v13, v4, [F

    .line 360
    .line 361
    fill-array-data v13, :array_c

    .line 362
    .line 363
    .line 364
    invoke-static {v3, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    move-object/from16 v27, v5

    .line 369
    .line 370
    const-wide/16 v4, 0x64

    .line 371
    .line 372
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 377
    .line 378
    const/4 v4, 0x2

    .line 379
    new-array v5, v4, [F

    .line 380
    .line 381
    fill-array-data v5, :array_d

    .line 382
    .line 383
    .line 384
    move-object/from16 v4, v27

    .line 385
    .line 386
    invoke-static {v13, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    move-object/from16 v27, v14

    .line 391
    .line 392
    const-wide/16 v13, 0x64

    .line 393
    .line 394
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 399
    .line 400
    move-object/from16 v28, v5

    .line 401
    .line 402
    const/4 v13, 0x2

    .line 403
    new-array v5, v13, [F

    .line 404
    .line 405
    move-object/from16 v13, v24

    .line 406
    .line 407
    move-object/from16 v31, v25

    .line 408
    .line 409
    move-object/from16 v24, v3

    .line 410
    .line 411
    move-object/from16 v3, v26

    .line 412
    .line 413
    fill-array-data v5, :array_e

    .line 414
    .line 415
    .line 416
    invoke-static {v14, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    move-object/from16 v25, v13

    .line 421
    .line 422
    const-wide/16 v13, 0x1c2

    .line 423
    .line 424
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 431
    .line 432
    .line 433
    move-result-object v14

    .line 434
    move-object/from16 v26, v5

    .line 435
    .line 436
    const/high16 v5, 0x42700000    # 60.0f

    .line 437
    .line 438
    invoke-static {v14, v5}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    int-to-float v5, v5

    .line 443
    move/from16 v29, v5

    .line 444
    .line 445
    const/4 v14, 0x1

    .line 446
    new-array v5, v14, [F

    .line 447
    .line 448
    aput v29, v5, v16

    .line 449
    .line 450
    move-object/from16 v14, v20

    .line 451
    .line 452
    invoke-static {v13, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    move-object/from16 v20, v12

    .line 457
    .line 458
    const-wide/16 v12, 0x1c2

    .line 459
    .line 460
    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    iget-object v12, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 465
    .line 466
    move-object/from16 v29, v5

    .line 467
    .line 468
    const/4 v13, 0x2

    .line 469
    new-array v5, v13, [F

    .line 470
    .line 471
    fill-array-data v5, :array_f

    .line 472
    .line 473
    .line 474
    invoke-static {v12, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    move-object v12, v14

    .line 479
    const-wide/16 v13, 0x64

    .line 480
    .line 481
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 486
    .line 487
    move-object/from16 v30, v12

    .line 488
    .line 489
    const/4 v14, 0x2

    .line 490
    new-array v12, v14, [F

    .line 491
    .line 492
    fill-array-data v12, :array_10

    .line 493
    .line 494
    .line 495
    invoke-static {v13, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    move-object v13, v15

    .line 500
    const-wide/16 v14, 0x1c2

    .line 501
    .line 502
    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 503
    .line 504
    .line 505
    move-result-object v12

    .line 506
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 507
    .line 508
    move-object/from16 v32, v13

    .line 509
    .line 510
    const/4 v15, 0x2

    .line 511
    new-array v13, v15, [F

    .line 512
    .line 513
    fill-array-data v13, :array_11

    .line 514
    .line 515
    .line 516
    invoke-static {v14, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    const-wide/16 v14, 0x1c2

    .line 521
    .line 522
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 523
    .line 524
    .line 525
    move-result-object v13

    .line 526
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 527
    .line 528
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 529
    .line 530
    .line 531
    move-result-object v15

    .line 532
    move-object/from16 v34, v13

    .line 533
    .line 534
    const/4 v13, 0x0

    .line 535
    invoke-static {v15, v13}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 536
    .line 537
    .line 538
    move-result v15

    .line 539
    int-to-float v13, v15

    .line 540
    move/from16 v35, v13

    .line 541
    .line 542
    const/4 v15, 0x1

    .line 543
    new-array v13, v15, [F

    .line 544
    .line 545
    aput v35, v13, v16

    .line 546
    .line 547
    move-object/from16 v15, v30

    .line 548
    .line 549
    invoke-static {v14, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 550
    .line 551
    .line 552
    move-result-object v13

    .line 553
    const-wide/16 v14, 0x32

    .line 554
    .line 555
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 556
    .line 557
    .line 558
    move-result-object v13

    .line 559
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 560
    .line 561
    move-object/from16 v30, v13

    .line 562
    .line 563
    const/4 v15, 0x2

    .line 564
    new-array v13, v15, [F

    .line 565
    .line 566
    fill-array-data v13, :array_12

    .line 567
    .line 568
    .line 569
    invoke-static {v14, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 570
    .line 571
    .line 572
    move-result-object v13

    .line 573
    move-object v14, v2

    .line 574
    move-object/from16 v33, v3

    .line 575
    .line 576
    const-wide/16 v2, 0x64

    .line 577
    .line 578
    invoke-virtual {v13, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    .line 580
    .line 581
    move-result-object v13

    .line 582
    iget-object v2, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 583
    .line 584
    new-array v3, v15, [F

    .line 585
    .line 586
    fill-array-data v3, :array_13

    .line 587
    .line 588
    .line 589
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    move-object/from16 v35, v13

    .line 594
    .line 595
    move-object v3, v14

    .line 596
    const-wide/16 v13, 0x64

    .line 597
    .line 598
    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 603
    .line 604
    new-array v14, v15, [F

    .line 605
    .line 606
    fill-array-data v14, :array_14

    .line 607
    .line 608
    .line 609
    invoke-static {v13, v4, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 610
    .line 611
    .line 612
    move-result-object v13

    .line 613
    const-wide/16 v14, 0x1c2

    .line 614
    .line 615
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 616
    .line 617
    .line 618
    move-result-object v13

    .line 619
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 620
    .line 621
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 622
    .line 623
    .line 624
    move-result-object v15

    .line 625
    move-object/from16 v37, v3

    .line 626
    .line 627
    const/high16 v3, -0x3d100000    # -120.0f

    .line 628
    .line 629
    invoke-static {v15, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    int-to-float v3, v3

    .line 634
    move/from16 v38, v3

    .line 635
    .line 636
    const/4 v15, 0x1

    .line 637
    new-array v3, v15, [F

    .line 638
    .line 639
    aput v38, v3, v16

    .line 640
    .line 641
    move-object/from16 v15, v32

    .line 642
    .line 643
    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    move-object/from16 v32, v13

    .line 648
    .line 649
    const-wide/16 v13, 0x1c2

    .line 650
    .line 651
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    iget-object v13, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 656
    .line 657
    move-object/from16 v36, v3

    .line 658
    .line 659
    const/4 v14, 0x2

    .line 660
    new-array v3, v14, [F

    .line 661
    .line 662
    fill-array-data v3, :array_15

    .line 663
    .line 664
    .line 665
    invoke-static {v13, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    move-object v13, v15

    .line 670
    const-wide/16 v14, 0x64

    .line 671
    .line 672
    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    iget-object v14, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 677
    .line 678
    move-object/from16 v17, v13

    .line 679
    .line 680
    const/4 v15, 0x2

    .line 681
    new-array v13, v15, [F

    .line 682
    .line 683
    fill-array-data v13, :array_16

    .line 684
    .line 685
    .line 686
    invoke-static {v14, v4, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 687
    .line 688
    .line 689
    move-result-object v13

    .line 690
    move-object v14, v2

    .line 691
    move-object/from16 v18, v3

    .line 692
    .line 693
    const-wide/16 v2, 0x1c2

    .line 694
    .line 695
    invoke-virtual {v13, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 696
    .line 697
    .line 698
    move-result-object v13

    .line 699
    iget-object v2, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 700
    .line 701
    new-array v3, v15, [F

    .line 702
    .line 703
    fill-array-data v3, :array_17

    .line 704
    .line 705
    .line 706
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    const-wide/16 v3, 0x1c2

    .line 711
    .line 712
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    .line 714
    .line 715
    move-result-object v2

    .line 716
    iget-object v3, v0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 717
    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    const/4 v15, 0x0

    .line 723
    invoke-static {v4, v15}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 724
    .line 725
    .line 726
    move-result v4

    .line 727
    int-to-float v4, v4

    .line 728
    const/4 v15, 0x1

    .line 729
    new-array v15, v15, [F

    .line 730
    .line 731
    aput v4, v15, v16

    .line 732
    .line 733
    move-object/from16 v4, v17

    .line 734
    .line 735
    invoke-static {v3, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    move-object v4, v14

    .line 740
    const-wide/16 v14, 0x32

    .line 741
    .line 742
    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    move-object/from16 v14, v19

    .line 747
    .line 748
    invoke-virtual {v1, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 749
    .line 750
    .line 751
    move-result-object v14

    .line 752
    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 756
    .line 757
    .line 758
    move-result-object v10

    .line 759
    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 764
    .line 765
    .line 766
    move-result-object v6

    .line 767
    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 775
    .line 776
    .line 777
    move-result-object v6

    .line 778
    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    move-object/from16 v14, v37

    .line 786
    .line 787
    invoke-virtual {v6, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 788
    .line 789
    .line 790
    move-result-object v6

    .line 791
    move-object/from16 v7, v21

    .line 792
    .line 793
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    move-object/from16 v7, v27

    .line 798
    .line 799
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    move-object/from16 v7, v22

    .line 804
    .line 805
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 809
    .line 810
    .line 811
    move-result-object v6

    .line 812
    move-object/from16 v7, v23

    .line 813
    .line 814
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    move-object/from16 v7, v20

    .line 819
    .line 820
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 821
    .line 822
    .line 823
    move-result-object v6

    .line 824
    move-object/from16 v7, v25

    .line 825
    .line 826
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 830
    .line 831
    .line 832
    move-result-object v6

    .line 833
    move-object/from16 v7, v33

    .line 834
    .line 835
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 836
    .line 837
    .line 838
    move-result-object v6

    .line 839
    move-object/from16 v7, v31

    .line 840
    .line 841
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 845
    .line 846
    .line 847
    move-result-object v6

    .line 848
    invoke-virtual {v6, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    move-object/from16 v7, v24

    .line 853
    .line 854
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 855
    .line 856
    .line 857
    move-result-object v6

    .line 858
    move-object/from16 v7, v28

    .line 859
    .line 860
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 861
    .line 862
    .line 863
    move-result-object v6

    .line 864
    move-object/from16 v7, v26

    .line 865
    .line 866
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 870
    .line 871
    .line 872
    move-result-object v6

    .line 873
    move-object/from16 v7, v29

    .line 874
    .line 875
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 876
    .line 877
    .line 878
    move-result-object v6

    .line 879
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 880
    .line 881
    .line 882
    move-result-object v5

    .line 883
    invoke-virtual {v5, v12}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 887
    .line 888
    .line 889
    move-result-object v5

    .line 890
    move-object/from16 v6, v34

    .line 891
    .line 892
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 893
    .line 894
    .line 895
    move-result-object v5

    .line 896
    move-object/from16 v6, v30

    .line 897
    .line 898
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 902
    .line 903
    .line 904
    move-result-object v5

    .line 905
    invoke-virtual {v5, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 906
    .line 907
    .line 908
    move-result-object v5

    .line 909
    move-object/from16 v6, v35

    .line 910
    .line 911
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 912
    .line 913
    .line 914
    move-result-object v5

    .line 915
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    move-object/from16 v5, v32

    .line 920
    .line 921
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 925
    .line 926
    .line 927
    move-result-object v4

    .line 928
    move-object/from16 v5, v36

    .line 929
    .line 930
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 931
    .line 932
    .line 933
    move-result-object v4

    .line 934
    move-object/from16 v5, v18

    .line 935
    .line 936
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 937
    .line 938
    .line 939
    move-result-object v4

    .line 940
    invoke-virtual {v4, v13}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 948
    .line 949
    .line 950
    move-result-object v2

    .line 951
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 959
    .line 960
    .line 961
    return-object v1

    .line 962
    nop

    .line 963
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    :array_e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :array_15
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    :array_17
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAnimationDelayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final oa()V
    .locals 0

    return-void
.end method

.method public final ob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Ma:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Md:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mc:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Me:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->Mb:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/KsSlideHandView;->LZ:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
