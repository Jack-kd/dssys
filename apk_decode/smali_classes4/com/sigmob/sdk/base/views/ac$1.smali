.class Lcom/sigmob/sdk/base/views/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/views/ac;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/views/ac;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/views/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/ac;->a(Lcom/sigmob/sdk/base/views/ac;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {v2}, Lcom/sigmob/sdk/base/views/ac;->a(Lcom/sigmob/sdk/base/views/ac;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/ac;->a(Lcom/sigmob/sdk/base/views/ac;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/ac$1;->a:Lcom/sigmob/sdk/base/views/ac;

    invoke-static {v1}, Lcom/sigmob/sdk/base/views/ac;->a(Lcom/sigmob/sdk/base/views/ac;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_1
    :goto_0
    return-void
.end method
