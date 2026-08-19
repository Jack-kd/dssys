.class Lcom/beizi/fusion/kn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/kn;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic d:Lcom/beizi/fusion/kn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/kn;IILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/kn$b;->d:Lcom/beizi/fusion/kn;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/kn$b;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/beizi/fusion/kn$b;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/beizi/fusion/kn$b;->c:Landroid/widget/FrameLayout$LayoutParams;

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
    iget-object v0, p0, Lcom/beizi/fusion/kn$b;->d:Lcom/beizi/fusion/kn;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/kn$b;->d:Lcom/beizi/fusion/kn;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/beizi/fusion/kn$b;->d:Lcom/beizi/fusion/kn;

    .line 24
    .line 25
    iget v2, v1, Lcom/beizi/fusion/kn;->j:I

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-static {v1}, Lcom/beizi/fusion/kn;->a(Lcom/beizi/fusion/kn;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, p0, Lcom/beizi/fusion/kn$b;->a:I

    .line 34
    .line 35
    int-to-float v3, v3

    .line 36
    invoke-static {v2, v3}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    iput v2, v1, Lcom/beizi/fusion/kn;->j:I

    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/kn$b;->d:Lcom/beizi/fusion/kn;

    .line 45
    .line 46
    iget v2, v1, Lcom/beizi/fusion/kn;->i:I

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    invoke-static {v1}, Lcom/beizi/fusion/kn;->a(Lcom/beizi/fusion/kn;)Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v3, p0, Lcom/beizi/fusion/kn$b;->b:I

    .line 55
    .line 56
    int-to-float v3, v3

    .line 57
    invoke-static {v2, v3}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    div-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    iput v2, v1, Lcom/beizi/fusion/kn;->i:I

    .line 64
    .line 65
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/kn$b;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/beizi/fusion/kn$b;->d:Lcom/beizi/fusion/kn;

    .line 68
    .line 69
    iget v3, v2, Lcom/beizi/fusion/kn;->j:I

    .line 70
    .line 71
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 72
    .line 73
    iget v3, v2, Lcom/beizi/fusion/kn;->i:I

    .line 74
    .line 75
    div-int/lit8 v4, v0, 0x2

    .line 76
    .line 77
    sub-int/2addr v3, v4

    .line 78
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 79
    .line 80
    iget-object v2, v2, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "topMargin = "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/beizi/fusion/kn$b;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ",leftMargin = "

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/beizi/fusion/kn$b;->c:Landroid/widget/FrameLayout$LayoutParams;

    .line 108
    .line 109
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ",scrollViewWidthInt = "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "ScrollClickUtil"

    .line 127
    .line 128
    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
