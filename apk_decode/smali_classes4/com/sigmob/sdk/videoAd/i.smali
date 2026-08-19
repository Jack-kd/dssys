.class public Lcom/sigmob/sdk/videoAd/i;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lcom/sigmob/sdk/base/views/y;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sigmob/sdk/base/views/y;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/base/views/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/videoAd/i;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/y;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/y;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/y;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/base/views/y;->a(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getImageViewDrawable()Lcom/sigmob/sdk/base/views/y;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    return-object v0
.end method

.method public setAnchorId(I)V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/sigmob/sdk/videoAd/i;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setImageViewDrawable(Lcom/sigmob/sdk/base/views/y;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/i;->a:Lcom/sigmob/sdk/base/views/y;

    return-void
.end method
