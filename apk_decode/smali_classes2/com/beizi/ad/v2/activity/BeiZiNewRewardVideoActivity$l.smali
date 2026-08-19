.class Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->g:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->e:F

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->f:F

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->e:F

    .line 29
    .line 30
    iget p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->a:F

    .line 31
    .line 32
    sub-float/2addr p1, p2

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 p2, 0x41700000    # 15.0f

    .line 38
    .line 39
    cmpg-float p1, p1, p2

    .line 40
    .line 41
    if-gtz p1, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->f:F

    .line 44
    .line 45
    iget v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->b:F

    .line 46
    .line 47
    sub-float/2addr p1, v1

    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    cmpg-float p1, p1, p2

    .line 53
    .line 54
    if-gtz p1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->g:Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;

    .line 57
    .line 58
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->a:F

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->b:F

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->c:F

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->d:F

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->a:F

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->b:F

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->c:F

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    iget p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->d:F

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v11, 0x0

    .line 108
    invoke-static/range {v1 .. v11}, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->a:F

    .line 117
    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->b:F

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->c:F

    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->d:F

    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->e:F

    .line 141
    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewRewardVideoActivity$l;->f:F

    .line 147
    .line 148
    :cond_3
    :goto_0
    return v0
.end method
