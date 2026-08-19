.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a


# instance fields
.field private cradleVerticalOffset:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    cmpg-float p2, p3, p1

    .line 12
    .line 13
    if-ltz p2, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "cradleVerticalOffset must be positive."

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method


# virtual methods
.method public getCradleVerticalOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 19
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    cmpl-float v4, v3, v9

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 19
    .line 20
    const/high16 v10, 0x40000000    # 2.0f

    .line 21
    .line 22
    mul-float/2addr v4, v10

    .line 23
    add-float/2addr v4, v3

    .line 24
    div-float v11, v4, v10

    .line 25
    .line 26
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 27
    .line 28
    mul-float v12, p3, v3

    .line 29
    .line 30
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 31
    .line 32
    add-float v13, p2, v3

    .line 33
    .line 34
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 35
    .line 36
    mul-float v3, v3, p3

    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    sub-float v5, v4, p3

    .line 41
    .line 42
    mul-float/2addr v5, v11

    .line 43
    add-float v14, v3, v5

    .line 44
    .line 45
    div-float v3, v14, v11

    .line 46
    .line 47
    cmpl-float v3, v3, v4

    .line 48
    .line 49
    if-ltz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    add-float v3, v11, v12

    .line 56
    .line 57
    mul-float/2addr v3, v3

    .line 58
    add-float v4, v14, v12

    .line 59
    .line 60
    mul-float v5, v4, v4

    .line 61
    .line 62
    sub-float/2addr v3, v5

    .line 63
    float-to-double v5, v3

    .line 64
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    double-to-float v3, v5

    .line 69
    sub-float v5, v13, v3

    .line 70
    .line 71
    add-float v15, v13, v3

    .line 72
    .line 73
    div-float/2addr v3, v4

    .line 74
    float-to-double v3, v3

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    double-to-float v8, v3

    .line 84
    const/high16 v3, 0x42b40000    # 90.0f

    .line 85
    .line 86
    sub-float v16, v3, v8

    .line 87
    .line 88
    invoke-virtual {v2, v5, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 89
    .line 90
    .line 91
    sub-float v3, v5, v12

    .line 92
    .line 93
    add-float/2addr v5, v12

    .line 94
    mul-float v6, v12, v10

    .line 95
    .line 96
    const/high16 v7, 0x43870000    # 270.0f

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 100
    .line 101
    .line 102
    move/from16 v18, v6

    .line 103
    .line 104
    move/from16 v17, v8

    .line 105
    .line 106
    sub-float v3, v13, v11

    .line 107
    .line 108
    neg-float v2, v11

    .line 109
    sub-float v4, v2, v14

    .line 110
    .line 111
    add-float v5, v13, v11

    .line 112
    .line 113
    sub-float v6, v11, v14

    .line 114
    .line 115
    const/high16 v2, 0x43340000    # 180.0f

    .line 116
    .line 117
    sub-float v7, v2, v16

    .line 118
    .line 119
    mul-float v16, v16, v10

    .line 120
    .line 121
    sub-float v8, v16, v2

    .line 122
    .line 123
    move-object/from16 v2, p4

    .line 124
    .line 125
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 126
    .line 127
    .line 128
    sub-float v3, v15, v12

    .line 129
    .line 130
    add-float v5, v15, v12

    .line 131
    .line 132
    const/high16 v2, 0x43870000    # 270.0f

    .line 133
    .line 134
    sub-float v7, v2, v17

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    move-object/from16 v2, p4

    .line 138
    .line 139
    move/from16 v8, v17

    .line 140
    .line 141
    move/from16 v6, v18

    .line 142
    .line 143
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v1, v9}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public getFabCradleMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 2
    .line 3
    return v0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public getFabDiameter()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalOffset()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public setCradleVerticalOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 2
    .line 3
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 2
    .line 3
    return-void
.end method

.method public setFabDiameter(F)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 2
    .line 3
    return-void
.end method

.method public setHorizontalOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 2
    .line 3
    return-void
.end method
