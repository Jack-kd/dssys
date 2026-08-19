.class public Lcom/meishu/sdk/core/utils/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIII)I
    .locals 1

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    :cond_0
    const/16 v0, 0x64

    .line 5
    .line 6
    if-le p2, v0, :cond_1

    .line 7
    .line 8
    move p2, v0

    .line 9
    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-lt p1, p0, :cond_2

    .line 14
    .line 15
    return p0

    .line 16
    :cond_2
    sub-int/2addr p0, p1

    .line 17
    mul-int/2addr p0, p2

    .line 18
    int-to-float p0, p0

    .line 19
    const/high16 p2, 0x42c80000    # 100.0f

    .line 20
    .line 21
    div-float/2addr p0, p2

    .line 22
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    add-int/2addr p0, p1

    .line 27
    return p0
.end method
