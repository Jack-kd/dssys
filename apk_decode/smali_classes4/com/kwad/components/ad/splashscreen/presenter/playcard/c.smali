.class public final Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Kg:F

.field private Kq:Lcom/kwad/sdk/utils/am;

.field private Kr:Lcom/kwad/sdk/utils/am;

.field private Ks:Lcom/kwad/sdk/utils/am;

.field private Kt:Lcom/kwad/sdk/utils/am;

.field private Ku:Lcom/kwad/sdk/utils/am;

.field private Kv:Lcom/kwad/sdk/utils/am;

.field private Kw:I

.field private Kx:I

.field private Ky:I

.field private Kz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 7
    .line 8
    const/16 v0, 0x22

    .line 9
    .line 10
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kw:I

    .line 11
    .line 12
    const/16 v0, 0x13

    .line 13
    .line 14
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kx:I

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ky:I

    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kz:I

    .line 23
    .line 24
    return-void
.end method

.method public static c(F)Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;
    .locals 8

    .line 1
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v1, 0xae

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kq:Lcom/kwad/sdk/utils/am;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    const/16 v3, 0x21

    .line 23
    .line 24
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kr:Lcom/kwad/sdk/utils/am;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/16 v3, 0x1a

    .line 32
    .line 33
    const/16 v5, 0xb

    .line 34
    .line 35
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ks:Lcom/kwad/sdk/utils/am;

    .line 40
    .line 41
    const/16 v2, 0xae

    .line 42
    .line 43
    const/16 v3, 0xab

    .line 44
    .line 45
    const/4 v5, 0x6

    .line 46
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kt:Lcom/kwad/sdk/utils/am;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ku:Lcom/kwad/sdk/utils/am;

    .line 59
    .line 60
    const/4 v5, 0x7

    .line 61
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kv:Lcom/kwad/sdk/utils/am;

    .line 66
    .line 67
    const/16 v1, 0x15

    .line 68
    .line 69
    iput v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kw:I

    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    iput v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kx:I

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    iput v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ky:I

    .line 77
    .line 78
    iput p0, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 79
    .line 80
    const/16 p0, 0x8

    .line 81
    .line 82
    iput p0, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kz:I

    .line 83
    .line 84
    return-object v0
.end method

.method public static nI()Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;
    .locals 8

    .line 1
    new-instance v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v1, 0x116

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kq:Lcom/kwad/sdk/utils/am;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v2, 0x35

    .line 21
    .line 22
    const/16 v3, 0x35

    .line 23
    .line 24
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kr:Lcom/kwad/sdk/utils/am;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/16 v3, 0x2b

    .line 32
    .line 33
    const/16 v5, 0xb

    .line 34
    .line 35
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ks:Lcom/kwad/sdk/utils/am;

    .line 40
    .line 41
    const/16 v2, 0x116

    .line 42
    .line 43
    const/16 v3, 0x112

    .line 44
    .line 45
    const/16 v5, 0x8

    .line 46
    .line 47
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kt:Lcom/kwad/sdk/utils/am;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ku:Lcom/kwad/sdk/utils/am;

    .line 60
    .line 61
    const/16 v5, 0xa

    .line 62
    .line 63
    invoke-static/range {v2 .. v7}, Lcom/kwad/sdk/utils/am;->a(IIIIII)Lcom/kwad/sdk/utils/am;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kv:Lcom/kwad/sdk/utils/am;

    .line 68
    .line 69
    return-object v0
.end method


# virtual methods
.method public final W(Landroid/content/Context;)Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kq:Lcom/kwad/sdk/utils/am;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/utils/am;->c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final X(Landroid/content/Context;)Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kr:Lcom/kwad/sdk/utils/am;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/utils/am;->c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final Y(Landroid/content/Context;)Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ks:Lcom/kwad/sdk/utils/am;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/utils/am;->c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final Z(Landroid/content/Context;)Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kt:Lcom/kwad/sdk/utils/am;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/utils/am;->c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final aa(Landroid/content/Context;)Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ku:Lcom/kwad/sdk/utils/am;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/utils/am;->c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final ab(Landroid/content/Context;)Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kv:Lcom/kwad/sdk/utils/am;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/kwad/sdk/utils/am;->c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final ac(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kw:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->b(Landroid/content/Context;F)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    float-to-int p1, p1

    .line 13
    return p1
.end method

.method public final ad(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kx:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->b(Landroid/content/Context;F)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    float-to-int p1, p1

    .line 13
    return p1
.end method

.method public final ae(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Ky:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->b(Landroid/content/Context;F)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    int-to-float p1, p1

    .line 9
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kg:F

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    float-to-int p1, p1

    .line 13
    return p1
.end method

.method public final nJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/playcard/c;->Kz:I

    .line 2
    .line 3
    return v0
.end method
