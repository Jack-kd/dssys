.class Lcom/octopus/ad/d/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/k;->a(IILjava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic d:Lcom/octopus/ad/d/k;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/k;IILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 2
    .line 3
    iput p2, p0, Lcom/octopus/ad/d/k$1;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/octopus/ad/d/k$1;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/octopus/ad/d/k$1;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 44
    .line 45
    iget v3, v2, Lcom/octopus/ad/d/k;->b:I

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-static {v2}, Lcom/octopus/ad/d/k;->b(Lcom/octopus/ad/d/k;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget v4, p0, Lcom/octopus/ad/d/k$1;->a:I

    .line 54
    .line 55
    int-to-float v4, v4

    .line 56
    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    div-int/lit8 v3, v3, 0x2

    .line 61
    .line 62
    iput v3, v2, Lcom/octopus/ad/d/k;->b:I

    .line 63
    .line 64
    :cond_1
    iget-object v2, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 65
    .line 66
    iget v3, v2, Lcom/octopus/ad/d/k;->a:I

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-static {v2}, Lcom/octopus/ad/d/k;->b(Lcom/octopus/ad/d/k;)Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget v4, p0, Lcom/octopus/ad/d/k$1;->b:I

    .line 75
    .line 76
    int-to-float v4, v4

    .line 77
    invoke-static {v3, v4}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    div-int/lit8 v3, v3, 0x2

    .line 82
    .line 83
    iput v3, v2, Lcom/octopus/ad/d/k;->a:I

    .line 84
    .line 85
    :cond_2
    iget-object v2, p0, Lcom/octopus/ad/d/k$1;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/octopus/ad/d/k$1;->d:Lcom/octopus/ad/d/k;

    .line 88
    .line 89
    iget v4, v3, Lcom/octopus/ad/d/k;->b:I

    .line 90
    .line 91
    div-int/lit8 v1, v1, 0x2

    .line 92
    .line 93
    sub-int/2addr v4, v1

    .line 94
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 95
    .line 96
    iget v1, v3, Lcom/octopus/ad/d/k;->a:I

    .line 97
    .line 98
    div-int/lit8 v4, v0, 0x2

    .line 99
    .line 100
    sub-int/2addr v1, v4

    .line 101
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 102
    .line 103
    invoke-static {v3}, Lcom/octopus/ad/d/k;->a(Lcom/octopus/ad/d/k;)Lcom/octopus/ad/e/a;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v2, p0, Lcom/octopus/ad/d/k$1;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v2, "topMargin = "

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/octopus/ad/d/k$1;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    .line 124
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, ",leftMargin = "

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lcom/octopus/ad/d/k$1;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    .line 136
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ",scrollViewWidthInt = "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "ScrollClickUtil"

    .line 154
    .line 155
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method
