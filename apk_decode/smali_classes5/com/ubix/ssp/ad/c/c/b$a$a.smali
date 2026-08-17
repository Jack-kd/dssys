.class Lcom/ubix/ssp/ad/c/c/b$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/c/c/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/c/c/b$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/c/c/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

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
    .locals 0

    .line 3
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

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 4

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/c/c/b$a;->c:Lcom/ubix/ssp/ad/c/c/b;

    const v0, 0x186aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/c/c/b$a;->a:Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object p1

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/c/c/b$a;->b:Landroid/os/Bundle;

    const-string v3, "IMAGE_URL"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/c/c/b$a;->c:Lcom/ubix/ssp/ad/c/c/b;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p1, v1, v0}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/c/c/b$a;->a:Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/b0/g;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

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
    .locals 2

    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/c/c/b$a;->c:Lcom/ubix/ssp/ad/c/c/b;

    const v0, 0x186ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/c/c/b$a$a;->a:Lcom/ubix/ssp/ad/c/c/b$a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/c/c/b$a;->c:Lcom/ubix/ssp/ad/c/c/b;

    const v1, 0x186aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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
