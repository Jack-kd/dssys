.class public final Lcom/kwad/sdk/utils/am;
.super Lcom/kwad/sdk/utils/bo;
.source "SourceFile"


# instance fields
.field private bpA:I

.field private bpB:I

.field private bpC:I

.field private bpD:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/utils/bo;-><init>(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private VI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpA:I

    .line 2
    .line 3
    return v0
.end method

.method private VJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpB:I

    .line 2
    .line 3
    return v0
.end method

.method private VK()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpC:I

    .line 2
    .line 3
    return v0
.end method

.method private VL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpD:I

    .line 2
    .line 3
    return v0
.end method

.method public static a(IIIIII)Lcom/kwad/sdk/utils/am;
    .locals 0

    .line 1
    new-instance p2, Lcom/kwad/sdk/utils/am;

    invoke-direct {p2, p0, p1}, Lcom/kwad/sdk/utils/am;-><init>(II)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p2, p0}, Lcom/kwad/sdk/utils/am;->ga(I)V

    .line 3
    invoke-virtual {p2, p0}, Lcom/kwad/sdk/utils/am;->gb(I)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/kwad/sdk/utils/am;->fY(I)V

    .line 5
    invoke-direct {p2, p0}, Lcom/kwad/sdk/utils/am;->fZ(I)V

    return-object p2
.end method

.method public static a(Landroid/view/View;Lcom/kwad/sdk/utils/am;)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/kwad/sdk/utils/bo;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/kwad/sdk/utils/bo;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/utils/bo;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/kwad/sdk/utils/bo;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_5

    .line 12
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VK()I

    move-result v2

    if-lez v2, :cond_2

    .line 14
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VK()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 15
    :cond_2
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VJ()I

    move-result v2

    if-lez v2, :cond_3

    .line 16
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VJ()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    :cond_3
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VL()I

    move-result v2

    if-lez v2, :cond_4

    .line 18
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VL()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 19
    :cond_4
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VI()I

    move-result v2

    if-lez v2, :cond_5

    .line 20
    invoke-direct {p1}, Lcom/kwad/sdk/utils/am;->VI()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private fZ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/utils/am;->bpB:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;F)Lcom/kwad/sdk/utils/am;
    .locals 3

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/bo;->mWidth:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr v0, p2

    .line 5
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    iget v1, p0, Lcom/kwad/sdk/utils/bo;->mHeight:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    mul-float/2addr v1, p2

    .line 14
    invoke-static {p1, v1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    new-instance v2, Lcom/kwad/sdk/utils/am;

    .line 20
    .line 21
    float-to-int v0, v0

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-direct {v2, v0, v1}, Lcom/kwad/sdk/utils/am;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpC:I

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    mul-float/2addr v0, p2

    .line 30
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, v2, Lcom/kwad/sdk/utils/am;->bpC:I

    .line 35
    .line 36
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpB:I

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    mul-float/2addr v0, p2

    .line 40
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, v2, Lcom/kwad/sdk/utils/am;->bpB:I

    .line 45
    .line 46
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpD:I

    .line 47
    .line 48
    int-to-float v0, v0

    .line 49
    mul-float/2addr v0, p2

    .line 50
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, v2, Lcom/kwad/sdk/utils/am;->bpD:I

    .line 55
    .line 56
    iget v0, p0, Lcom/kwad/sdk/utils/am;->bpA:I

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    mul-float/2addr v0, p2

    .line 60
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, v2, Lcom/kwad/sdk/utils/am;->bpA:I

    .line 65
    .line 66
    return-object v2
.end method

.method public final fY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/utils/am;->bpA:I

    .line 2
    .line 3
    return-void
.end method

.method public final ga(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/utils/am;->bpC:I

    .line 2
    .line 3
    return-void
.end method

.method public final gb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/utils/am;->bpD:I

    .line 2
    .line 3
    return-void
.end method
