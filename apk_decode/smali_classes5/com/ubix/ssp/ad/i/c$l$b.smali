.class Lcom/ubix/ssp/ad/i/c$l$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c$l;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/i/c$l;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c$l;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v2, v2, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    iget-object v2, v2, Lcom/ubix/ssp/ad/i/c$l;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "111111onAttachedToWindow in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$l$b;->a:Lcom/ubix/ssp/ad/i/c$l;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method
