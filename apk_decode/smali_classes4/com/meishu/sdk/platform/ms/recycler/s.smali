.class public Lcom/meishu/sdk/platform/ms/recycler/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/meishu/sdk/core/ad/IAd;FFJFF)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/sql/Timestamp;

    .line 5
    .line 6
    invoke-direct {v0, p3, p4}, Ljava/sql/Timestamp;-><init>(J)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/TouchData;->getTouchPosition()Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    new-instance p3, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    .line 20
    .line 21
    invoke-direct {p3}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p3}, Lcom/meishu/sdk/core/ad/TouchData;->setTouchPosition(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    float-to-int p0, p1

    .line 32
    invoke-virtual {p3, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setDownX(I)V

    .line 33
    .line 34
    .line 35
    float-to-int p0, p2

    .line 36
    invoke-virtual {p3, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setDownY(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, v0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setDownTime(Ljava/sql/Timestamp;)V

    .line 40
    .line 41
    .line 42
    float-to-int p0, p5

    .line 43
    const/high16 p1, -0x80000000

    .line 44
    .line 45
    if-lez p0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move p0, p1

    .line 49
    :goto_0
    invoke-virtual {p3, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setUpX(I)V

    .line 50
    .line 51
    .line 52
    float-to-int p0, p6

    .line 53
    if-lez p0, :cond_3

    .line 54
    .line 55
    move p1, p0

    .line 56
    :cond_3
    invoke-virtual {p3, p1}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setUpY(I)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/sql/Timestamp;

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->setUpTime(Ljava/sql/Timestamp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
