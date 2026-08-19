.class Lcom/octopus/ad/e/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/e/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/e/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/e/a;->a(Lcom/octopus/ad/e/a;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ScrollClickUtil"

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/octopus/ad/e/a;->b(Lcom/octopus/ad/e/a;)Landroid/widget/FrameLayout;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/octopus/ad/e/a;->c(Lcom/octopus/ad/e/a;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    filled-new-array {v0, v3}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Lcom/octopus/ad/e/a;->a(Lcom/octopus/ad/e/a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/octopus/ad/e/a;->b:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "handHeight = "

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v1, v3}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/octopus/ad/e/a;->c(Lcom/octopus/ad/e/a;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    .line 96
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-wide/16 v2, 0x3e8

    .line 103
    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/4 v2, -0x1

    .line 114
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/4 v2, 0x1

    .line 124
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/octopus/ad/e/a$2;->a:Lcom/octopus/ad/e/a;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lcom/octopus/ad/e/a$2$1;

    .line 134
    .line 135
    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/e/a$2$1;-><init>(Lcom/octopus/ad/e/a$2;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_3
    :goto_0
    const-string v0, "scrollContainer or scrollBarContainer is null , please check !"

    .line 143
    .line 144
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
