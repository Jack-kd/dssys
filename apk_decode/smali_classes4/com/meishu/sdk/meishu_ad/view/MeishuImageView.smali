.class public Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:Landroid/graphics/Path;

.field public c:Landroid/graphics/Paint;

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a:Landroid/graphics/RectF;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->d:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 13
    .line 14
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->e:F

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->d:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 35
    .line 36
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 42
    .line 43
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->e:F

    .line 44
    .line 45
    const/high16 v2, 0x40c00000    # 6.0f

    .line 46
    .line 47
    mul-float/2addr v1, v2

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0xc

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/lit8 v2, v2, -0xc

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    const/high16 v3, 0x40c00000    # 6.0f

    .line 18
    .line 19
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->a:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v2, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->e:F

    .line 32
    .line 33
    mul-float/2addr v2, v3

    .line 34
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->c:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->b:Landroid/graphics/Path;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/view/MeishuImageView;->d:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 54
    .line 55
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
