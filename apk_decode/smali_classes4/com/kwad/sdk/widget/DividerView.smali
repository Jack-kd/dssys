.class public Lcom/kwad/sdk/widget/DividerView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static ORIENTATION_HORIZONTAL:I = 0x0

.field public static ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private bsU:I

.field private mPaint:Landroid/graphics/Paint;

.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/widget/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/kwad/sdk/R$styleable;->ksad_DividerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    :try_start_0
    sget p2, Lcom/kwad/sdk/R$styleable;->ksad_DividerView_ksad_dashGap:I

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 4
    sget v2, Lcom/kwad/sdk/R$styleable;->ksad_DividerView_ksad_dashLength:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 5
    sget v2, Lcom/kwad/sdk/R$styleable;->ksad_DividerView_ksad_dashThickness:I

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 6
    sget v3, Lcom/kwad/sdk/R$styleable;->ksad_DividerView_ksad_color:I

    const/high16 v4, -0x1000000

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/kwad/sdk/widget/DividerView;->bsU:I

    .line 7
    sget v3, Lcom/kwad/sdk/R$styleable;->ksad_DividerView_ksad_orientation:I

    sget v4, Lcom/kwad/sdk/widget/DividerView;->ORIENTATION_HORIZONTAL:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/kwad/sdk/widget/DividerView;->orientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 10
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object p1, p0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/kwad/sdk/widget/DividerView;->bsU:I

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p1, p0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-object p1, p0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    int-to-float v0, v0

    int-to-float p2, p2

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v1

    aput p2, v4, v3

    const/4 p2, 0x0

    invoke-direct {v2, v4, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :catchall_0
    move-exception p2

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    throw p2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/kwad/sdk/widget/DividerView;->orientation:I

    .line 4
    .line 5
    sget v2, Lcom/kwad/sdk/widget/DividerView;->ORIENTATION_HORIZONTAL:I

    .line 6
    .line 7
    const/high16 v3, 0x3f000000    # 0.5f

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    mul-float v6, v1, v3

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v7, v1

    .line 23
    iget-object v9, v0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move v8, v6

    .line 27
    move-object/from16 v4, p1

    .line 28
    .line 29
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    mul-float v11, v1, v3

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-float v14, v1

    .line 45
    iget-object v15, v0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    move v13, v11

    .line 49
    move-object/from16 v10, p1

    .line 50
    .line 51
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/kwad/sdk/widget/DividerView;->bsU:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/sdk/widget/DividerView;->mPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
