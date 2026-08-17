.class Lcom/ubix/ssp/ad/k/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/k/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/a;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 3
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

    .line 2
    const-string p3, "__CLICK_TRIGGER__"

    const-string v0, "__CLICK_AREA__"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7a188

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/k/a;->g(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->h(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/k/a;->i(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->j(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p3}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p3}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$f;->a:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->k(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

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

.method public i(I)V
    .locals 0

    return-void
.end method
