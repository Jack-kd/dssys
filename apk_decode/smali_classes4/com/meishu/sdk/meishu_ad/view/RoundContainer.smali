.class public Lcom/meishu/sdk/meishu_ad/view/RoundContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 4
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->a:F

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->b:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->c:Landroid/graphics/Paint;

    .line 7
    iget p2, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->b:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->d:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->d:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/RectF;

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    int-to-float p2, p2

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->d:Landroid/graphics/Path;

    .line 15
    .line 16
    iget p2, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->a:F

    .line 17
    .line 18
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->d:Landroid/graphics/Path;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->c:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->a(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setContainerBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->b:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->c:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->a:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/meishu/sdk/meishu_ad/view/RoundContainer;->a(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
