.class Lcom/sigmob/sdk/base/views/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/b;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/b$1;->a:Lcom/sigmob/sdk/base/views/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b$1;->a:Lcom/sigmob/sdk/base/views/b;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b$1;->a:Lcom/sigmob/sdk/base/views/b;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/b;->a(Lcom/sigmob/sdk/base/views/b;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/b$1;->a:Lcom/sigmob/sdk/base/views/b;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/b;->b(Lcom/sigmob/sdk/base/views/b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/b$1;->a:Lcom/sigmob/sdk/base/views/b;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/b;->b(Lcom/sigmob/sdk/base/views/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
