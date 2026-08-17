.class final Lcom/kwad/components/core/widget/KTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/widget/KTextView;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic awk:Lcom/kwad/components/core/widget/KTextView;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/widget/KTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/widget/KTextView$1;->awk:Lcom/kwad/components/core/widget/KTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/kwad/components/core/widget/KTextView$1;->awk:Lcom/kwad/components/core/widget/KTextView;

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const/4 p5, 0x0

    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 25
    .line 26
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 27
    .line 28
    sub-int/2addr p1, p3

    .line 29
    iget-object p3, p0, Lcom/kwad/components/core/widget/KTextView$1;->awk:Lcom/kwad/components/core/widget/KTextView;

    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    float-to-int p3, p3

    .line 36
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    iget p5, p2, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    sub-int/2addr p4, p5

    .line 41
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 46
    .line 47
    iget p5, p2, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    sub-int/2addr p4, p5

    .line 50
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    iget p5, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 55
    .line 56
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    sub-int/2addr p5, v0

    .line 59
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sub-int/2addr p1, p3

    .line 64
    div-int/lit8 p1, p1, 0x2

    .line 65
    .line 66
    if-ge p1, v0, :cond_0

    .line 67
    .line 68
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 69
    .line 70
    add-int/2addr p2, p1

    .line 71
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 72
    .line 73
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 74
    .line 75
    sub-int/2addr p2, p1

    .line 76
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    if-ge p4, p5, :cond_1

    .line 80
    .line 81
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 84
    .line 85
    add-int/2addr p3, p1

    .line 86
    iput p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 90
    .line 91
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 92
    .line 93
    sub-int/2addr p1, p3

    .line 94
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 95
    .line 96
    return-void
.end method
