.class Lcom/ubix/ssp/ad/i/e/a$b;
.super Lcom/ubix/ssp/ad/g/k/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/e/a;->b([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/f;

.field final synthetic b:Lcom/ubix/ssp/ad/i/e/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/e/a;Lcom/ubix/ssp/ad/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/e/a$b;->a:Lcom/ubix/ssp/ad/d/f;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/g/k/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, p1, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ubix/ssp/ad/g/k/g;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object p2, p2, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const-string v1, "\u52a0\u8f7d\u5728\u7ebf\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ubix/ssp/ad/g/k/g;->a(ILcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/g/k/g;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$b;->a:Lcom/ubix/ssp/ad/d/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/f;->b()V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/i/e/a;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    const v1, 0x1ed2a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/i/e/a;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    const v1, 0x30d4f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    const v1, 0x1eab91

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->c(I)V

    :cond_4
    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Lcom/ubix/ssp/ad/i/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->g(I)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/g/k/g;->h(I)V

    const-string v0, "onVideoPlayStarted"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/i/e/a;->a(Lcom/ubix/ssp/ad/i/e/a;Z)Z

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/e/a;->l:Lcom/ubix/ssp/ad/e/t/a/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    const v1, 0x30d53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->h(I)V

    :cond_2
    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/e/a;->a(Lcom/ubix/ssp/ad/i/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/e/a$b;->b:Lcom/ubix/ssp/ad/i/e/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/i/e/a;->N:Lcom/ubix/ssp/ad/g/k/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/g/k/g;->j(I)V

    :cond_0
    return-void
.end method
