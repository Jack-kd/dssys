.class Lcom/ubix/ssp/ad/j/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/j/a;->a(Ljava/lang/String;Ljava/lang/String;I)V
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

    iput-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(IJJ)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ubix/ssp/ad/g/k/i;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 0

    .line 5
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 1
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

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->w(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p3}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p3}, Lcom/ubix/ssp/ad/j/a;->l(Lcom/ubix/ssp/ad/j/a;)Lcom/ubix/ssp/ad/g/k/i;

    move-result-object p3

    iget-object v0, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/j/a;->H(Lcom/ubix/ssp/ad/j/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    const v0, 0xdbc06

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    const v0, 0xdbc06

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/a;->u()V

    :cond_2
    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/j/a;->a(Lcom/ubix/ssp/ad/j/a;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/j/a$d;->a:Lcom/ubix/ssp/ad/j/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/j/a;->m:Lcom/ubix/ssp/ad/k/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/k/a;->u()V

    :cond_0
    return-void
.end method
