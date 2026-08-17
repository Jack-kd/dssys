.class Lcom/ubix/ssp/ad/e/c$a;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/c;->setBackground(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/ubix/ssp/ad/e/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/c;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/c$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/c;->a(Lcom/ubix/ssp/ad/e/c;)I

    move-result v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/c;->a(Lcom/ubix/ssp/ad/e/c;)I

    move-result v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/c;->b(Lcom/ubix/ssp/ad/e/c;)I

    move-result v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/c;->a(Lcom/ubix/ssp/ad/e/c;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/c;->c(Lcom/ubix/ssp/ad/e/c;)I

    move-result v4

    iget-object v5, p0, Lcom/ubix/ssp/ad/e/c$a;->b:Lcom/ubix/ssp/ad/e/c;

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/c;->a(Lcom/ubix/ssp/ad/e/c;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/c$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
