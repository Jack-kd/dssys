.class Lcom/ubix/ssp/ad/j/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/a;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/j/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/j/a;->k(I)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->a0(Lcom/ubix/ssp/ad/j/a;)Z

    move-result v0

    const v1, 0x493ec

    const v2, 0x493e8

    const v3, 0xe0a25

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$b;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method
