.class Lcom/ubix/ssp/ad/h/c/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ubix/ssp/ad/e/b0/g;

.field final synthetic c:Lcom/ubix/ssp/ad/h/c/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/h/c/b;Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/h/c/b$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubix/ssp/ad/h/c/b$a;->b:Lcom/ubix/ssp/ad/e/b0/g;

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
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    iget-object v1, v0, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz v1, :cond_0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ubix/ssp/ad/g/k/e;->a(IJJ)V

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
    iget-object p3, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    iget-object v0, p3, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz v0, :cond_0

    iget-object p3, p3, Lcom/ubix/ssp/ad/h/c/b;->l:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    const v0, 0x61a84

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    const v1, 0x61a89

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->b:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    const v1, 0x61a87

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    .locals 3

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    const v0, 0x61a84

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->b:Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/b0/e;->e:Z

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    iget v1, p1, Lcom/ubix/ssp/ad/h/c/b;->m:I

    const/16 v2, 0x177e

    if-ne v1, v2, :cond_0

    const v1, 0x61a89

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    const v1, 0x61a87

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b$a;->c:Lcom/ubix/ssp/ad/h/c/b;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(I)V
    .locals 0

    return-void
.end method
