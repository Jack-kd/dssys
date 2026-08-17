.class public Lcom/kwad/components/core/widget/KTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/widget/KTextView$Font;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/kwad/components/core/widget/KTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2}, Lcom/kwad/components/core/widget/KTextView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    sget v0, Lcom/kwad/sdk/R$attr;->ksad_use_fake_bold:I

    .line 2
    .line 3
    sget v1, Lcom/kwad/sdk/R$attr;->ksad_font_weight:I

    .line 4
    .line 5
    sget v2, Lcom/kwad/sdk/R$attr;->ksad_font_name:I

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/16 v5, 0x190

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v3, v2}, Ljava/util/Arrays;->binarySearch([II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v0, v4

    .line 56
    move v1, v0

    .line 57
    :goto_0
    const/4 p1, 0x1

    .line 58
    if-lez v1, :cond_7

    .line 59
    .line 60
    if-ne v1, p1, :cond_1

    .line 61
    .line 62
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->HYQiHei75S:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 p1, 0x2

    .line 69
    if-ne v1, p1, :cond_2

    .line 70
    .line 71
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->HYQiHei80S:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 p1, 0x3

    .line 78
    if-ne v1, p1, :cond_3

    .line 79
    .line 80
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->HYQiHei90S:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/4 p1, 0x4

    .line 87
    if-ne v1, p1, :cond_4

    .line 88
    .line 89
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->SIYuan:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 p1, 0x5

    .line 96
    if-ne v1, p1, :cond_5

    .line 97
    .line 98
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->AvenirNextBold:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/4 p1, 0x6

    .line 105
    if-ne v1, p1, :cond_6

    .line 106
    .line 107
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->AvenirNextBoldItalic:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    const/4 p1, 0x7

    .line 114
    if-ne v1, p1, :cond_9

    .line 115
    .line 116
    sget-object p1, Lcom/kwad/components/core/widget/KTextView$Font;->DIN:Lcom/kwad/components/core/widget/KTextView$Font;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    if-nez v0, :cond_8

    .line 123
    .line 124
    const/16 v0, 0x1f4

    .line 125
    .line 126
    if-lt v5, v0, :cond_9

    .line 127
    .line 128
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 133
    .line 134
    .line 135
    :cond_9
    :goto_1
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/kwad/components/core/widget/KTextView$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/kwad/components/core/widget/KTextView$1;-><init>(Lcom/kwad/components/core/widget/KTextView;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/16 v2, 0x21

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public setFontName(Lcom/kwad/components/core/widget/KTextView$Font;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "fonts/"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/kwad/components/core/widget/KTextView$Font;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ".ttf"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setFontWeight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1f4

    .line 6
    .line 7
    if-lt p1, v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/core/widget/KTextView;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setUseFakeBold(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
