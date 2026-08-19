.class Lcom/beizi/fusion/fo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/fo;->f()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/fo;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/fo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/fo;->a(Lcom/beizi/fusion/fo;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/beizi/fusion/yk;->d:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/fo;->b(Lcom/beizi/fusion/fo;)Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/fo;->c(Lcom/beizi/fusion/fo;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/beizi/fusion/fo;->b(Lcom/beizi/fusion/fo;)Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/beizi/fusion/fo;->a(Lcom/beizi/fusion/fo;I)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/beizi/fusion/fo;->b(Lcom/beizi/fusion/fo;)Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget-object v2, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/beizi/fusion/fo;->c(Lcom/beizi/fusion/fo;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-int/2addr v1, v2

    .line 54
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v0, v1}, Lcom/beizi/fusion/fo;->b(Lcom/beizi/fusion/fo;I)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/beizi/fusion/fo;->d(Lcom/beizi/fusion/fo;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/beizi/fusion/fo;->e(Lcom/beizi/fusion/fo;)Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/nativ/income/optimize/par/SlideParams;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/nativ/income/optimize/par/SlideParams;->getDistance()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-le v0, v1, :cond_1

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iget-object v2, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/beizi/fusion/fo;->f(Lcom/beizi/fusion/fo;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    sub-long/2addr v0, v2

    .line 90
    iget-object v2, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/beizi/fusion/fo;->e(Lcom/beizi/fusion/fo;)Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/nativ/income/optimize/par/SlideParams;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/ad3/ad/nativ/income/optimize/par/SlideParams;->getNeedTime()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    int-to-long v2, v2

    .line 101
    cmp-long v0, v0, v2

    .line 102
    .line 103
    if-lez v0, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/beizi/fusion/yk;->c()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/beizi/fusion/yk;->d:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/beizi/fusion/fo$a;->a:Lcom/beizi/fusion/fo;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/beizi/fusion/fo;->g(Lcom/beizi/fusion/fo;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 125
    .line 126
    .line 127
    :cond_1
    return-void
.end method
