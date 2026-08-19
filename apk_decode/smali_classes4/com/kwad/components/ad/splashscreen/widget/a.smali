.class public final Lcom/kwad/components/ad/splashscreen/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Kg:F

.field private Lt:I

.field private Lu:I

.field private Lv:I

.field private Lw:I

.field private Lx:I

.field private Ly:I

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 2
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lt:I

    const/16 v0, 0xc

    .line 3
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lu:I

    const/16 v1, 0x10

    .line 4
    iput v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lv:I

    .line 5
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lw:I

    const/4 v0, 0x6

    .line 6
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lx:I

    const/4 v0, 0x4

    .line 7
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Ly:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 9
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    iput p2, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 12
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    const/16 p1, 0x11

    .line 13
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lt:I

    const/16 p1, 0xa

    .line 14
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lu:I

    const/16 p1, 0xc

    .line 15
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lv:I

    const/16 p1, 0x8

    .line 16
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lw:I

    const/4 p1, 0x4

    .line 17
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lx:I

    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Ly:I

    return-void
.end method

.method public static ai(Landroid/content/Context;)Lcom/kwad/components/ad/splashscreen/widget/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/ad/splashscreen/widget/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/kwad/components/ad/splashscreen/widget/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static aj(Landroid/content/Context;)Lcom/kwad/components/ad/splashscreen/widget/a;
    .locals 8

    .line 1
    new-instance v0, Lcom/kwad/components/ad/splashscreen/widget/a;

    .line 2
    .line 3
    const/4 v6, 0x4

    .line 4
    const/4 v7, 0x3

    .line 5
    const/16 v2, 0x11

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/16 v4, 0xc

    .line 10
    .line 11
    const/16 v5, 0x8

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/kwad/components/ad/splashscreen/widget/a;-><init>(Landroid/content/Context;IIIIII)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method


# virtual methods
.method public final d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 2
    .line 3
    return-void
.end method

.method public final nU()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lt:I

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lv:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    int-to-float v0, v0

    .line 9
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 10
    .line 11
    mul-float/2addr v0, v1

    .line 12
    float-to-int v0, v0

    .line 13
    return v0
.end method

.method public final nV()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lw:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 5
    .line 6
    mul-float/2addr v0, v1

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public final nW()Lcom/kwad/sdk/utils/am;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lx:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget v2, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Ly:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    iget v2, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 26
    .line 27
    mul-float/2addr v1, v2

    .line 28
    float-to-int v1, v1

    .line 29
    new-instance v2, Lcom/kwad/sdk/utils/am;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, v3, v3}, Lcom/kwad/sdk/utils/am;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/utils/am;->ga(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/kwad/sdk/utils/am;->gb(I)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method

.method public final nX()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lu:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->b(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    return v0
.end method

.method public final nY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lt:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr v0, v1

    .line 17
    return v0
.end method

.method public final nZ()Lcom/kwad/sdk/utils/am;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lv:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    new-instance v1, Lcom/kwad/sdk/utils/am;

    .line 16
    .line 17
    invoke-direct {v1, v0, v0}, Lcom/kwad/sdk/utils/am;-><init>(II)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public final nx()Lcom/kwad/sdk/utils/am;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Lt:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/a;->Kg:F

    .line 12
    .line 13
    mul-float/2addr v0, v1

    .line 14
    float-to-int v0, v0

    .line 15
    new-instance v1, Lcom/kwad/sdk/utils/am;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/utils/am;-><init>(II)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method
