.class public Lcom/sigmob/sdk/base/views/k;
.super Lcom/sigmob/sdk/base/views/h;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/views/k;-><init>(F)V

    return-void
.end method

.method private constructor <init>(F)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/h;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/sigmob/sdk/base/views/k;->b:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/k;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Lcom/sigmob/sdk/base/views/r$a;->f:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Lcom/sigmob/sdk/base/views/k;->b:F

    const/4 v4, 0x0

    add-float v6, v3, v4

    int-to-float v2, v2

    sub-float v7, v2, v3

    int-to-float v1, v1

    sub-float v8, v1, v3

    add-float v9, v3, v4

    iget-object v10, v0, Lcom/sigmob/sdk/base/views/k;->a:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, v0, Lcom/sigmob/sdk/base/views/k;->b:F

    add-float v12, v3, v4

    add-float v13, v3, v4

    sub-float v14, v1, v3

    sub-float v15, v2, v3

    iget-object v1, v0, Lcom/sigmob/sdk/base/views/k;->a:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Lcom/sigmob/sdk/base/views/h;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/views/h;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/views/h;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
