.class public Lcom/octopus/ad/internal/utilities/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdImageView(Landroid/content/Context;Lcom/octopus/ad/model/AdLogoInfo;IIF)Landroid/widget/FrameLayout;
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    const/16 v2, 0x11

    .line 13
    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, 0x41200000    # 10.0f

    .line 22
    .line 23
    mul-float/2addr v1, p4

    .line 24
    float-to-int v2, v1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getType()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    sget v6, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_PIC:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    if-ne v5, v6, :cond_1

    .line 39
    .line 40
    new-instance p2, Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    .line 49
    .line 50
    const/high16 v1, 0x41600000    # 14.0f

    .line 51
    .line 52
    mul-float/2addr p4, v1

    .line 53
    invoke-virtual {v4}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-static {v2, p4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    float-to-int p4, p4

    .line 63
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .line 65
    mul-int/lit8 v2, p4, 0x2

    .line 66
    .line 67
    or-int/lit8 p3, p3, 0x50

    .line 68
    .line 69
    invoke-direct {v1, v2, p4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-nez p3, :cond_0

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    const-string p4, "remdad.png"

    .line 96
    .line 97
    invoke-virtual {p3, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-eqz p3, :cond_0

    .line 102
    .line 103
    sget p0, Lcom/octopus/ad/R$drawable;->oct_logo_text:I

    .line 104
    .line 105
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, p2}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getType()I

    .line 129
    .line 130
    .line 131
    move-result p4

    .line 132
    sget v4, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_TEXT:I

    .line 133
    .line 134
    if-ne p4, v4, :cond_2

    .line 135
    .line 136
    new-instance p4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-direct {p4, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x2

    .line 142
    invoke-virtual {p4, p0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 143
    .line 144
    .line 145
    const/4 p0, -0x1

    .line 146
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    const-string p0, "#80000000"

    .line 150
    .line 151
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    const/high16 v1, 0x40a00000    # 5.0f

    .line 156
    .line 157
    const/high16 v4, 0x3f800000    # 1.0f

    .line 158
    .line 159
    invoke-virtual {p4, v1, v4, v4, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    .line 171
    or-int/lit8 p1, p3, 0x50

    .line 172
    .line 173
    invoke-direct {p0, v3, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 174
    .line 175
    .line 176
    mul-int/2addr p2, v2

    .line 177
    invoke-virtual {p0, v7, v7, p2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    :cond_2
    return-object v0
.end method

.method public static createComplianceView(Landroid/content/Context;Lcom/octopus/ad/model/ComplianceInfo;FZ)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpl-float v1, p2, p0

    .line 12
    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    move p2, p0

    .line 16
    :cond_1
    const/high16 v1, 0x41000000    # 8.0f

    .line 17
    .line 18
    mul-float/2addr v1, p2

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x41200000    # 10.0f

    .line 23
    .line 24
    mul-float/2addr p2, v1

    .line 25
    float-to-int p2, p2

    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    mul-int/lit8 p3, p2, 0x3

    .line 33
    .line 34
    mul-int/lit8 v1, p2, 0x10

    .line 35
    .line 36
    mul-int/lit8 v2, p2, 0x4

    .line 37
    .line 38
    invoke-virtual {v0, p3, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/octopus/ad/model/ComplianceInfo;->getAppName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1}, Lcom/octopus/ad/model/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p1}, Lcom/octopus/ad/model/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    filled-new-array {p2, p3, v1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string p3, "\u5e94\u7528\u540d\u79f0\uff1a%1$s | \u5f00\u53d1\u8005\uff1a%2$s | \u5e94\u7528\u7248\u672c\uff1a%3$s | \u6743\u9650\u8be6\u60c5 | \u9690\u79c1\u534f\u8bae | \u529f\u80fd\u4ecb\u7ecd"

    .line 58
    .line 59
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance p3, Landroid/text/SpannableString;

    .line 64
    .line 65
    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/octopus/ad/internal/utilities/ViewUtil$3;

    .line 69
    .line 70
    invoke-direct {v1, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil$3;-><init>(Lcom/octopus/ad/model/ComplianceInfo;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "\u6743\u9650\u8be6\u60c5"

    .line 74
    .line 75
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/lit8 v3, v2, 0x4

    .line 80
    .line 81
    const/16 v4, 0x11

    .line 82
    .line 83
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/octopus/ad/internal/utilities/ViewUtil$4;

    .line 87
    .line 88
    invoke-direct {v1, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil$4;-><init>(Lcom/octopus/ad/model/ComplianceInfo;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "\u9690\u79c1\u534f\u8bae"

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    add-int/lit8 v3, v2, 0x4

    .line 98
    .line 99
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Lcom/octopus/ad/internal/utilities/ViewUtil$5;

    .line 103
    .line 104
    invoke-direct {v1, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil$5;-><init>(Lcom/octopus/ad/model/ComplianceInfo;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "\u529f\u80fd\u4ecb\u7ecd"

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    add-int/lit8 p2, p1, 0x4

    .line 114
    .line 115
    invoke-virtual {p3, v1, p1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    .line 119
    .line 120
    const/4 p2, -0x1

    .line 121
    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    const/16 v1, 0x21

    .line 129
    .line 130
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p3, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "#80000000"

    .line 142
    .line 143
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    const/high16 p2, 0x40a00000    # 5.0f

    .line 148
    .line 149
    invoke-virtual {v0, p2, p0, p0, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method

.method public static createCountDown(Landroid/content/Context;IIIF)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v2, "\u8df3\u8fc7 %d"

    .line 17
    .line 18
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    const/high16 p1, 0x41400000    # 12.0f

    .line 30
    .line 31
    mul-float/2addr p1, p4

    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x11

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-static {v3, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    float-to-int p1, p1

    .line 55
    const/high16 v2, 0x40800000    # 4.0f

    .line 56
    .line 57
    mul-float/2addr v2, p4

    .line 58
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    float-to-int v2, v2

    .line 67
    invoke-virtual {v0, p1, v2, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    const/4 v2, -0x2

    .line 73
    const v4, 0x800035

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 p2, p2, 0xf

    .line 80
    .line 81
    int-to-float p2, p2

    .line 82
    mul-float/2addr p2, p4

    .line 83
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v3, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    float-to-int p2, p2

    .line 92
    add-int/lit8 p3, p3, 0xf

    .line 93
    .line 94
    int-to-float p3, p3

    .line 95
    mul-float/2addr p3, p4

    .line 96
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-static {v3, p3, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    float-to-int p3, p3

    .line 105
    const/4 p4, 0x0

    .line 106
    invoke-virtual {p1, p4, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/octopus/ad/internal/utilities/ViewUtil$1;

    .line 113
    .line 114
    invoke-direct {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil$1;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    :try_start_0
    sget p1, Lcom/octopus/ad/R$drawable;->oct_count_down_background:I

    .line 121
    .line 122
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :catch_0
    move-exception p0

    .line 131
    const-string p1, "OctopusAd"

    .line 132
    .line 133
    const-string p2, "An Exception Caught"

    .line 134
    .line 135
    invoke-static {p1, p2, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    return-object v0
.end method

.method public static createFeedBackButton(Landroid/content/Context;Ljava/lang/String;IIF)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x41400000    # 12.0f

    .line 11
    .line 12
    mul-float/2addr v1, p4

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x11

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    float-to-int v1, v1

    .line 39
    const/high16 v2, 0x40800000    # 4.0f

    .line 40
    .line 41
    mul-float/2addr v2, p4

    .line 42
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    float-to-int v2, v2

    .line 51
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p2, p2, 0xf

    .line 55
    .line 56
    int-to-float p2, p2

    .line 57
    mul-float/2addr p2, p4

    .line 58
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v3, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    float-to-int p2, p2

    .line 67
    add-int/lit8 p3, p3, 0xf

    .line 68
    .line 69
    int-to-float p3, p3

    .line 70
    mul-float/2addr p3, p4

    .line 71
    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v3, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    float-to-int p1, p1

    .line 80
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    const/4 p4, -0x2

    .line 83
    const v1, 0x800033

    .line 84
    .line 85
    .line 86
    invoke-direct {p3, p4, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 87
    .line 88
    .line 89
    const/4 p4, 0x0

    .line 90
    invoke-virtual {p3, p2, p1, p4, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    :try_start_0
    sget p1, Lcom/octopus/ad/R$drawable;->oct_count_down_background:I

    .line 97
    .line 98
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-object v0

    .line 106
    :catch_0
    move-exception p0

    .line 107
    const-string p1, "OctopusAd"

    .line 108
    .line 109
    const-string p2, "An Exception Caught"

    .line 110
    .line 111
    invoke-static {p1, p2, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    return-object v0
.end method

.method public static createImageCloseButton(Landroid/content/Context;IF)Landroid/widget/ImageView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget p0, Lcom/octopus/ad/R$drawable;->oct_close:I

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    sget p0, Lcom/octopus/ad/R$drawable;->oct_close_background:I

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/high16 v1, 0x40a00000    # 5.0f

    .line 21
    .line 22
    mul-float/2addr v1, p2

    .line 23
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    float-to-int v1, v1

    .line 33
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    const/high16 v1, 0x41c00000    # 24.0f

    .line 37
    .line 38
    mul-float/2addr v1, p2

    .line 39
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    float-to-int v1, v1

    .line 48
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    const v4, 0x800035

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 p1, p1, 0xf

    .line 57
    .line 58
    int-to-float p1, p1

    .line 59
    mul-float/2addr p1, p2

    .line 60
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v3, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    float-to-int p1, p1

    .line 69
    const/high16 v1, 0x41700000    # 15.0f

    .line 70
    .line 71
    mul-float/2addr p2, v1

    .line 72
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v3, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    float-to-int p0, p0

    .line 81
    const/4 p2, 0x0

    .line 82
    invoke-virtual {v2, p2, p1, p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method public static createInterstitialCountDown(Landroid/content/Context;IF)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 6

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 9
    .line 10
    .line 11
    sget v1, Lcom/octopus/ad/R$color;->oct_text_selector:I

    .line 12
    .line 13
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 18
    .line 19
    .line 20
    const/high16 v1, 0x41500000    # 13.0f

    .line 21
    .line 22
    mul-float/2addr v1, p2

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/high16 v2, 0x41c00000    # 24.0f

    .line 32
    .line 33
    mul-float/2addr v2, p2

    .line 34
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    float-to-int v2, v2

    .line 44
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    .line 46
    const v5, 0x800035

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 p1, p1, 0xf

    .line 53
    .line 54
    int-to-float p1, p1

    .line 55
    mul-float/2addr p1, p2

    .line 56
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v4, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    float-to-int p1, p1

    .line 65
    const/high16 v2, 0x41700000    # 15.0f

    .line 66
    .line 67
    mul-float/2addr p2, v2

    .line 68
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    float-to-int p2, p2

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v3, v1, p1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lcom/octopus/ad/internal/utilities/ViewUtil$2;

    .line 85
    .line 86
    invoke-direct {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil$2;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    :try_start_0
    sget p1, Lcom/octopus/ad/R$drawable;->oct_count_down_interstitial_background:I

    .line 93
    .line 94
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :catch_0
    move-exception p0

    .line 103
    const-string p1, "OctopusAd"

    .line 104
    .line 105
    const-string p2, "An Exception Caught"

    .line 106
    .line 107
    invoke-static {p1, p2, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method

.method public static createLoadingView(Landroid/content/Context;F)Landroid/widget/ProgressBar;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ProgressBar;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const v1, -0x333334

    .line 17
    .line 18
    .line 19
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/high16 v1, 0x42200000    # 40.0f

    .line 29
    .line 30
    mul-float/2addr p1, v1

    .line 31
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v1, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    float-to-int p0, p0

    .line 41
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/16 v1, 0x11

    .line 44
    .line 45
    invoke-direct {p1, p0, p0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static createLogoImageView(Landroid/content/Context;Lcom/octopus/ad/model/AdLogoInfo;IF)Landroid/widget/FrameLayout;
    .locals 9

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    const/16 v2, 0x11

    .line 13
    .line 14
    const/4 v3, -0x2

    .line 15
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, 0x41200000    # 10.0f

    .line 22
    .line 23
    mul-float/2addr v1, p3

    .line 24
    float-to-int v2, v1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getType()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    sget v6, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_PIC:I

    .line 36
    .line 37
    const v7, 0x800055

    .line 38
    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    if-ne v5, v6, :cond_1

    .line 42
    .line 43
    new-instance v1, Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    .line 52
    .line 53
    const/high16 v3, 0x41600000    # 14.0f

    .line 54
    .line 55
    mul-float/2addr p3, v3

    .line 56
    invoke-virtual {v4}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-static {v4, p3, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    float-to-int p3, p3

    .line 66
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v3, p3, p3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 69
    .line 70
    .line 71
    mul-int/2addr p2, v2

    .line 72
    invoke-virtual {v3, v8, v8, p2, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_0

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string p3, "octlogo.png"

    .line 96
    .line 97
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_0

    .line 102
    .line 103
    sget p0, Lcom/octopus/ad/R$drawable;->oct_logo:I

    .line 104
    .line 105
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v1}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getType()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    sget p3, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_TEXT:I

    .line 133
    .line 134
    if-ne p2, p3, :cond_2

    .line 135
    .line 136
    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-direct {p2, p0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x2

    .line 142
    invoke-virtual {p2, p0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 143
    .line 144
    .line 145
    const/4 p0, -0x1

    .line 146
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    const-string p0, "#80000000"

    .line 150
    .line 151
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    const/high16 p3, 0x40a00000    # 5.0f

    .line 156
    .line 157
    const/high16 v1, 0x3f800000    # 1.0f

    .line 158
    .line 159
    invoke-virtual {p2, p3, v1, v1, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    .line 171
    invoke-direct {p0, v3, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    :cond_2
    return-object v0
.end method

.method public static createMuteButton(Landroid/content/Context;ZIF)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 4

    .line 1
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget p0, Lcom/octopus/ad/R$drawable;->oct_voice_off:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p0, Lcom/octopus/ad/R$drawable;->oct_voice_on:I

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/high16 p1, 0x41c00000    # 24.0f

    .line 21
    .line 22
    mul-float/2addr p1, p3

    .line 23
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    float-to-int p1, p1

    .line 33
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    const v3, 0x800033

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p1, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 39
    .line 40
    .line 41
    const/high16 p1, 0x41700000    # 15.0f

    .line 42
    .line 43
    mul-float/2addr p1, p3

    .line 44
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v2, p1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    float-to-int p1, p1

    .line 53
    add-int/lit8 p2, p2, 0xf

    .line 54
    .line 55
    int-to-float p2, p2

    .line 56
    mul-float/2addr p2, p3

    .line 57
    invoke-virtual {p0}, Lcom/octopus/ad/internal/q;->s()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v2, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    float-to-int p0, p0

    .line 66
    const/4 p2, 0x0

    .line 67
    invoke-virtual {v1, p1, p0, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float/2addr p1, p0

    .line 12
    const/high16 p0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p1, p0

    .line 15
    float-to-int p0, p1

    .line 16
    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    return p0
.end method

.method public static getScreenHeightDp(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->px2dip(Landroid/content/Context;F)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-float p0, p0

    .line 17
    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    return p0
.end method

.method public static getScreenWidthDp(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    int-to-float p0, p0

    .line 22
    const/4 v1, 0x0

    .line 23
    cmpg-float v1, v0, v1

    .line 24
    .line 25
    if-gtz v1, :cond_0

    .line 26
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    .line 29
    :cond_0
    div-float/2addr p0, v0

    .line 30
    const/high16 v0, 0x3f000000    # 0.5f

    .line 31
    .line 32
    add-float/2addr p0, v0

    .line 33
    return p0
.end method

.method private static getSystemUiVisibility()I
    .locals 1

    const/16 v0, 0x1706

    return v0
.end method

.method public static hideSystemTitleBarUI(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getSystemUiVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 14
    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v1, 0x1c

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v1}, Landroidx/activity/n;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string v0, "OctopusAd"

    .line 36
    .line 37
    const-string v1, "An Exception Caught"

    .line 38
    .line 39
    invoke-static {v0, v1, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static openLocalBrowser(Landroid/webkit/WebView;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/octopus/ad/internal/activity/BrowserAdActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    const-string v2, "REPEAT_NUM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    sget-object p1, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception initializing the redirect webview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :catch_1
    sget-object p0, Lcom/octopus/ad/internal/activity/BrowserAdActivity;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static openLocalBrowser(Ljava/lang/String;I)V
    .locals 1

    .line 9
    new-instance v0, Lcom/octopus/ad/internal/utilities/ViewUtil$6;

    invoke-direct {v0, p0, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil$6;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/high16 p1, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "OctopusAd"

    .line 23
    .line 24
    const-string v0, "An Exception Caught"

    .line 25
    .line 26
    invoke-static {p1, v0, p0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    div-float/2addr p1, p0

    .line 12
    const/high16 p0, 0x3f000000    # 0.5f

    .line 13
    .line 14
    add-float/2addr p1, p0

    .line 15
    float-to-int p0, p1

    .line 16
    return p0
.end method

.method public static removeChildFromParent(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/octopus/ad/internal/utilities/ViewUtil$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/utilities/ViewUtil$7;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
