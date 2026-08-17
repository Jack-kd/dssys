.class public Lcom/ubix/ssp/ad/h/c/e;
.super Lcom/ubix/ssp/ad/h/c/b;


# instance fields
.field private v:I

.field private w:I

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/Rect;

.field z:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/h/c/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/e;->x:Landroid/graphics/Bitmap;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/h/c/e;->y:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/e;->z:Landroid/view/WindowManager;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/e;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/e;->w:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/h/c/e;->d()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 2
    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    invoke-static {p1, v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    iget v2, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    iget v7, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v2, v6, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v0, 0x32

    invoke-static {v1, v0, v4}, Lcom/ubix/ssp/ad/e/a0/j;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/h/c/e;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "#A6020202"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xc

    invoke-static {v0, v1, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    iget v4, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    invoke-virtual {v0, v8, v8, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string v0, "#CCC9C9C9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#6BEDEDED"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, v1, v3, v4}, Lcom/ubix/ssp/ad/e/a0/c;->a(IIILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    iget v4, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    invoke-virtual {v0, v8, v8, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#40000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/ubix/ssp/ad/e/a0/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    add-int/lit8 v3, v1, -0x64

    iget v4, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    invoke-virtual {v0, v8, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    const v0, 0x61a84

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v2, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v5, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int v6, v4, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v3, v6, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/h/c/e;->y:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v2, p0, Lcom/ubix/ssp/ad/h/c/e;->w:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    if-gtz v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-nez v4, :cond_2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v3

    :catchall_0
    return v0
.end method

.method private d()V
    .locals 3

    const v0, 0x61a84

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/h/c/e;->b(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/h/c/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ubix/ssp/ad/h/c/b;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/c/e;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/c/e;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public getRealTemplateId()I
    .locals 1

    const/16 v0, 0x1773

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/c/e;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/c/e;->y:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    :cond_0
    move v2, v0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v6

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    const v11, 0x61a82

    const/high16 v12, 0x41a00000    # 20.0f

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move/from16 p1, v3

    goto/16 :goto_9

    :sswitch_0
    iget v6, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v3

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x4

    add-int v8, v6, v7

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int/2addr v9, v10

    div-int/2addr v9, v3

    add-int/2addr v9, v7

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int/2addr v7, v10

    div-int/2addr v7, v3

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    add-int/2addr v7, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v10, v10, 0x4

    add-int/2addr v7, v10

    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :sswitch_1
    iget v6, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v6, v7

    div-int/2addr v6, v3

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    add-int/2addr v7, v8

    div-int/2addr v7, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v8, 0x3

    sub-int/2addr v7, v9

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v10, v11

    div-int/2addr v10, v3

    mul-int/2addr v8, v3

    sub-int/2addr v10, v8

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    add-int/2addr v8, v11

    div-int/2addr v8, v3

    sub-int/2addr v8, v9

    invoke-virtual {v0, v6, v7, v10, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :sswitch_2
    const v6, 0xe0a25

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-wide v11, v1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    mul-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v7, v11

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v9, v9, 0x6

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v10, 0x3fcb22d0e5604189L    # 0.212

    mul-double/2addr v8, v10

    double-to-int v8, v8

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    iget v9, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int v11, v9, v10

    div-int/2addr v11, v3

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    add-int/2addr v12, v13

    div-int/2addr v12, v3

    int-to-double v13, v12

    div-int/lit8 v15, v2, 0x14

    add-int/2addr v6, v15

    add-int/lit8 v6, v6, 0x32

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    int-to-double v6, v6

    const-wide v15, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v6, v15

    sub-double/2addr v13, v6

    double-to-int v8, v13

    add-int/2addr v9, v10

    div-int/2addr v9, v3

    invoke-virtual {v0, v11, v8, v9, v12}, Landroid/view/View;->layout(IIII)V

    check-cast v0, Lcom/ubix/ssp/ad/e/e;

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    double-to-int v6, v6

    invoke-virtual {v0, v8, v6}, Lcom/ubix/ssp/ad/e/e;->a(II)V

    goto/16 :goto_1

    :sswitch_3
    :try_start_0
    iget-wide v11, v1, Lcom/ubix/ssp/ad/h/c/b;->o:D

    mul-double/2addr v11, v9

    div-double/2addr v11, v7

    double-to-int v6, v11

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    int-to-double v8, v7

    const-wide v10, 0x3fec28f5c28f5c29L    # 0.88

    mul-double v12, v8, v10

    const-wide v14, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v12, v14

    double-to-int v12, v12

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    sub-int/2addr v13, v7

    div-int/2addr v13, v3

    int-to-double v13, v13

    const-wide v15, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v8, v15

    add-double/2addr v13, v8

    double-to-int v7, v13

    sub-int/2addr v7, v6

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v8

    div-int/lit8 v9, v2, 0x14

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x32

    sub-int/2addr v8, v12

    sub-int/2addr v8, v6

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v9, v13

    div-int/2addr v9, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 p1, v3

    int-to-double v3, v9

    int-to-double v13, v13

    mul-double/2addr v13, v15

    sub-double/2addr v3, v13

    double-to-int v3, v3

    add-int/2addr v3, v6

    :try_start_1
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v4

    div-int/lit8 v9, v2, 0x14

    sub-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x32

    add-int/2addr v4, v6

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object v3, v0

    check-cast v3, Lcom/ubix/ssp/ad/e/c;

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/c;->b()V

    check-cast v0, Lcom/ubix/ssp/ad/e/c;

    iget v3, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    int-to-double v3, v3

    mul-double/2addr v3, v10

    double-to-int v3, v3

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    add-int/2addr v12, v6

    invoke-virtual {v0, v3, v12}, Lcom/ubix/ssp/ad/e/c;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 p1, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    :sswitch_4
    move/from16 p1, v3

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_4

    :cond_2
    move/from16 v3, p5

    :goto_4
    const v4, 0xde3dd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    const/4 v4, 0x1

    goto :goto_5

    :cond_3
    const/4 v4, 0x0

    :goto_5
    const v6, 0x61a84

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int v6, v3, v6

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/e;->getRealTemplateId()I

    move-result v8

    const/16 v9, 0x1773

    if-ne v8, v9, :cond_6

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    if-eqz v4, :cond_5

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v9

    goto :goto_6

    :cond_5
    const/4 v9, 0x0

    :goto_6
    sub-int/2addr v6, v9

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    if-eqz v4, :cond_8

    invoke-static {v12}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    goto :goto_8

    :cond_6
    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    const/high16 v9, 0x42200000    # 40.0f

    if-eqz v4, :cond_7

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v10

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    sub-int/2addr v6, v10

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    if-eqz v4, :cond_8

    invoke-static {v9}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    sub-int/2addr v3, v4

    invoke-virtual {v0, v8, v6, v7, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :sswitch_5
    move/from16 p1, v3

    iget v3, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v4, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int v6, v3, v4

    div-int/lit8 v6, v6, 0x2

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int v9, v8, v7

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v7

    iget v4, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v7

    invoke-virtual {v0, v6, v9, v3, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :sswitch_6
    move/from16 p1, v3

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iget v6, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    add-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    :sswitch_7
    move/from16 p1, v3

    iget v3, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v4, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v4

    div-int/lit8 v6, v2, 0x1c

    sub-int/2addr v4, v6

    iget v6, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v2, 0xc

    add-int/2addr v6, v7

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/h/c/b;->getAppInfoTop()I

    move-result v7

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    :sswitch_8
    move/from16 p1, v3

    iget v3, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v4, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget v6, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x10

    iget v6, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v3, v6

    sub-int/2addr v4, v3

    iget v3, v1, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    add-int v8, v7, v6

    iget v9, v1, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget v10, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    add-int/2addr v10, v9

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x10

    add-int/2addr v7, v3

    iget v3, v1, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v7, v3

    invoke-virtual {v0, v4, v8, v10, v7}, Landroid/view/View;->layout(IIII)V

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p1

    goto/16 :goto_0

    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x61a81 -> :sswitch_8
        0x61a82 -> :sswitch_7
        0x61a83 -> :sswitch_6
        0x61a84 -> :sswitch_5
        0xde314 -> :sswitch_4
        0xde378 -> :sswitch_4
        0xde3dd -> :sswitch_3
        0xde441 -> :sswitch_2
        0xe0a25 -> :sswitch_1
        0xe0aed -> :sswitch_0
    .end sparse-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/e;->z:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/e;->z:Landroid/view/WindowManager;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/e;->z:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/util/HashMap;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/e;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/e;->w:I

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->f(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/e;->v:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->g(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/ubix/ssp/ad/h/c/e;->v:I

    iget p3, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    sub-int p4, p2, p3

    div-int/lit8 p4, p4, 0x2

    iget v0, p0, Lcom/ubix/ssp/ad/h/c/e;->w:I

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p1, p4, v2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/e;->y:Landroid/graphics/Rect;

    return-void
.end method
