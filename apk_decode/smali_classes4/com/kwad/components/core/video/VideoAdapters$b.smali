.class public final Lcom/kwad/components/core/video/VideoAdapters$b;
.super Lcom/kwad/components/core/video/VideoAdapters$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/video/VideoAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private anM:F

.field private anN:F

.field private anO:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/video/VideoAdapters$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f4ccccd    # 0.8f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/kwad/components/core/video/VideoAdapters$b;->anM:F

    .line 8
    .line 9
    const/high16 v0, 0x3f700000    # 0.9375f

    .line 10
    .line 11
    iput v0, p0, Lcom/kwad/components/core/video/VideoAdapters$b;->anN:F

    .line 12
    .line 13
    const v0, 0x3f8d6388    # 1.1046f

    .line 14
    .line 15
    .line 16
    iput v0, p0, Lcom/kwad/components/core/video/VideoAdapters$b;->anO:F

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/video/VideoAdapters$AdaptType;Landroid/view/ViewGroup$LayoutParams;Lcom/kwad/components/core/video/VideoAdapters$d;Lcom/kwad/components/core/video/VideoAdapters$d;)V
    .locals 8
    .param p1    # Lcom/kwad/components/core/video/VideoAdapters$AdaptType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/components/core/video/VideoAdapters$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kwad/components/core/video/VideoAdapters$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xP()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p4}, Lcom/kwad/components/core/video/VideoAdapters$d;->xP()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xO()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xN()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v5, "onAdaptVideo containerSize: "

    .line 20
    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, ", "

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v6, "FullHeightAdapter"

    .line 40
    .line 41
    invoke-static {v6, v4}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v4, Lcom/kwad/components/core/video/VideoAdapters$1;->anJ:[I

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    aget p1, v4, p1

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    const/high16 v7, -0x31000000

    .line 54
    .line 55
    if-eq p1, v4, :cond_1

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    if-eq p1, v4, :cond_1

    .line 59
    .line 60
    const/4 p3, 0x3

    .line 61
    if-eq p1, p3, :cond_0

    .line 62
    .line 63
    const/4 p3, 0x4

    .line 64
    if-eq p1, p3, :cond_0

    .line 65
    .line 66
    move p1, v7

    .line 67
    move v2, p1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget p1, p0, Lcom/kwad/components/core/video/VideoAdapters$b;->anO:F

    .line 70
    .line 71
    mul-float/2addr v2, p1

    .line 72
    :goto_0
    div-float p1, v2, v1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    cmpl-float p1, v0, v1

    .line 76
    .line 77
    if-lez p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xN()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    div-float p3, p1, v1

    .line 84
    .line 85
    div-float v0, v2, p3

    .line 86
    .line 87
    iget v3, p0, Lcom/kwad/components/core/video/VideoAdapters$b;->anM:F

    .line 88
    .line 89
    cmpl-float v0, v0, v3

    .line 90
    .line 91
    if-ltz v0, :cond_2

    .line 92
    .line 93
    move v2, p1

    .line 94
    move p1, p3

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    div-float p1, v2, v3

    .line 97
    .line 98
    mul-float v2, p1, v1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p3}, Lcom/kwad/components/core/video/VideoAdapters$d;->xO()F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    mul-float v2, v1, p1

    .line 106
    .line 107
    div-float p3, v3, v2

    .line 108
    .line 109
    iget v0, p0, Lcom/kwad/components/core/video/VideoAdapters$b;->anN:F

    .line 110
    .line 111
    cmpl-float p3, p3, v0

    .line 112
    .line 113
    if-ltz p3, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    div-float v2, v3, v0

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v0, "onAdaptVideo result: "

    .line 122
    .line 123
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-static {v6, p3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    cmpl-float p3, v2, v7

    .line 143
    .line 144
    if-eqz p3, :cond_6

    .line 145
    .line 146
    cmpl-float p3, p1, v7

    .line 147
    .line 148
    if-eqz p3, :cond_6

    .line 149
    .line 150
    invoke-virtual {p4}, Lcom/kwad/components/core/video/VideoAdapters$d;->getHeight()F

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    invoke-virtual {p4}, Lcom/kwad/components/core/video/VideoAdapters$d;->getWidth()F

    .line 155
    .line 156
    .line 157
    move-result p4

    .line 158
    cmpl-float p3, p3, p4

    .line 159
    .line 160
    if-ltz p3, :cond_5

    .line 161
    .line 162
    float-to-int p1, p1

    .line 163
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    .line 165
    float-to-int p1, v2

    .line 166
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    float-to-int p1, p1

    .line 170
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    .line 172
    float-to-int p1, v2

    .line 173
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    .line 175
    :cond_6
    return-void
.end method
