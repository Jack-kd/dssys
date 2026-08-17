.class Lcom/octopus/ad/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/e/a;->d()V
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
    iput-object p1, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

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
    iget-object v0, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

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
    iget-object v0, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

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
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/octopus/ad/e/a;->a:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/octopus/ad/e/a;->c(Lcom/octopus/ad/e/a;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    filled-new-array {v0, v3}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Lcom/octopus/ad/e/a;->a(Lcom/octopus/ad/e/a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "handHeight = "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ",scrollbarHeight = "

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 78
    .line 79
    invoke-static {v4}, Lcom/octopus/ad/e/a;->c(Lcom/octopus/ad/e/a;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/octopus/ad/e/a;->b:Landroid/widget/ImageView;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v1, v3}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    iget-object v1, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/octopus/ad/e/a;->c(Lcom/octopus/ad/e/a;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    .line 129
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-wide/16 v2, 0x3e8

    .line 136
    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 141
    .line 142
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const/4 v2, -0x1

    .line 147
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/octopus/ad/e/a$1;->a:Lcom/octopus/ad/e/a;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/octopus/ad/e/a;->d(Lcom/octopus/ad/e/a;)Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v2, Lcom/octopus/ad/e/a$1$1;

    .line 167
    .line 168
    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/e/a$1$1;-><init>(Lcom/octopus/ad/e/a$1;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_3
    :goto_0
    const-string v0, "scrollContainer or scrollBarContainer is null , please check !"

    .line 176
    .line 177
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
