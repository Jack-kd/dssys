.class public final Lcom/kwad/sdk/core/response/helper/SlideConvertHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;
    }
.end annotation


# direct methods
.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;FFFF)Z
    .locals 8
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/core/response/helper/d;->eD(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->as(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->ar(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-float/2addr p3, p1

    .line 18
    float-to-double v2, p3

    .line 19
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 20
    .line 21
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    sub-float/2addr p4, p2

    .line 26
    float-to-double p1, p4

    .line 27
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide p3

    .line 31
    add-double/2addr v6, p3

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide p3

    .line 36
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    double-to-float p3, p3

    .line 41
    invoke-static {v4, p3}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    int-to-float p3, p3

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    cmpl-double p4, v4, v6

    .line 55
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    if-ltz p4, :cond_1

    .line 59
    .line 60
    cmpl-double p1, v2, v4

    .line 61
    .line 62
    if-lez p1, :cond_0

    .line 63
    .line 64
    sget-object p1, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;->RIGHT:Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    sget-object p1, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;->LEFT:Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    cmpl-double p1, p1, v4

    .line 71
    .line 72
    if-lez p1, :cond_2

    .line 73
    .line 74
    sget-object p1, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;->DOWN:Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    sget-object p1, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;->UP:Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;

    .line 78
    .line 79
    :goto_0
    if-eqz p0, :cond_3

    .line 80
    .line 81
    int-to-float p0, v0

    .line 82
    cmpl-float p0, p3, p0

    .line 83
    .line 84
    if-lez p0, :cond_3

    .line 85
    .line 86
    iget p0, p1, Lcom/kwad/sdk/core/response/helper/SlideConvertHelper$SlideDirection;->value:I

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    const/16 p1, 0x31

    .line 93
    .line 94
    if-ne p0, p1, :cond_3

    .line 95
    .line 96
    const/4 p0, 0x1

    .line 97
    return p0

    .line 98
    :cond_3
    const/4 p0, 0x0

    .line 99
    return p0
.end method
