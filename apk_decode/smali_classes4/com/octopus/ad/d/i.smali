.class public Lcom/octopus/ad/d/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    int-to-double v2, p0

    .line 6
    mul-double/2addr v0, v2

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    add-double/2addr v0, v2

    .line 10
    double-to-int p0, v0

    .line 11
    return p0
.end method
