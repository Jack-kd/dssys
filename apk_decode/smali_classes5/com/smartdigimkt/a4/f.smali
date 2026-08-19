.class public final Lcom/smartdigimkt/a4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/smartdigimkt/a4/f;->a:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput p1, p0, Lcom/smartdigimkt/a4/f;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_6

    .line 3
    .line 4
    if-eqz p1, :cond_6

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_6

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getWindowVisibility()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    iget p1, p0, Lcom/smartdigimkt/a4/f;->b:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->hasWindowFocus()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return v0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/smartdigimkt/a4/f;->a:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/smartdigimkt/a4/f;->a:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    int-to-long v1, p1

    .line 50
    iget-object p1, p0, Lcom/smartdigimkt/a4/f;->a:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-long v3, p1

    .line 57
    mul-long/2addr v1, v3

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    int-to-long v3, p1

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    int-to-long v5, p1

    .line 68
    mul-long/2addr v3, v5

    .line 69
    const-wide/16 v5, 0x0

    .line 70
    .line 71
    cmp-long p1, v3, v5

    .line 72
    .line 73
    if-gtz p1, :cond_3

    .line 74
    .line 75
    return v0

    .line 76
    :cond_3
    if-eqz p4, :cond_4

    .line 77
    .line 78
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-lez p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    int-to-long v5, p1

    .line 89
    cmp-long p1, v1, v5

    .line 90
    .line 91
    if-gez p1, :cond_4

    .line 92
    .line 93
    return v0

    .line 94
    :cond_4
    const-wide/16 v5, 0x64

    .line 95
    .line 96
    mul-long/2addr v1, v5

    .line 97
    int-to-long p3, p3

    .line 98
    mul-long/2addr p3, v3

    .line 99
    cmp-long p1, v1, p3

    .line 100
    .line 101
    if-gez p1, :cond_5

    .line 102
    .line 103
    return v0

    .line 104
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 105
    .line 106
    .line 107
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return p1

    .line 109
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p3, "checkVisibilityPercent error: "

    .line 112
    .line 113
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string p3, "f"

    .line 128
    .line 129
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_1
    return v0
.end method
