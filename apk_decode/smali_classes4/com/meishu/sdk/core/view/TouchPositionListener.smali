.class public Lcom/meishu/sdk/core/view/TouchPositionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;
    }
.end annotation


# static fields
.field private static final CLICK_THRESHOLD:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TouchPositionListener"


# instance fields
.field private ad:Lcom/meishu/sdk/core/ad/IAd;

.field private downX:F

.field private downY:F


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/IAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->ad:Lcom/meishu/sdk/core/ad/IAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isClickEvent(FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->downX:F

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/high16 v0, 0x40a00000    # 5.0f

    .line 9
    .line 10
    cmpg-float p1, p1, v0

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->downY:F

    .line 15
    .line 16
    sub-float/2addr p2, p1

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    cmpg-float p1, p1, v0

    .line 22
    .line 23
    if-gez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->ad:Lcom/meishu/sdk/core/ad/IAd;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/TouchData;->getTouchPosition()Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->ad:Lcom/meishu/sdk/core/ad/IAd;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/IAd;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/TouchData;->setTouchPosition(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    float-to-int v0, v0

    .line 41
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$002(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    float-to-int v0, v0

    .line 49
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$102(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/sql/Timestamp;

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$202(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$302(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->downX:F

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener;->downY:F

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x1

    .line 85
    if-ne v0, v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    float-to-int v0, v0

    .line 92
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$402(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    float-to-int p2, p2

    .line 100
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$502(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I

    .line 101
    .line 102
    .line 103
    new-instance p2, Ljava/sql/Timestamp;

    .line 104
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->access$602(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 120
    return p1
.end method
