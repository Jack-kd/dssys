.class Lcom/ubix/ssp/ad/e/a0/o$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/s$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/o;->setShakeSensor(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/o;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    const v1, 0xde314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v0, v3, v1, v2}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;FZLjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/o;->b()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/o;->c(Lcom/ubix/ssp/ad/e/a0/o;)Lcom/ubix/ssp/ad/e/a0/o$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/o;->c(Lcom/ubix/ssp/ad/e/a0/o;)Lcom/ubix/ssp/ad/e/a0/o$f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/o$f;->a(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    const v1, 0xde314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-static {v0, v3, v1, v2}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;FZLjava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/o;->c(Lcom/ubix/ssp/ad/e/a0/o;)Lcom/ubix/ssp/ad/e/a0/o$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/o$e;->a:Lcom/ubix/ssp/ad/e/a0/o;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/o;->c(Lcom/ubix/ssp/ad/e/a0/o;)Lcom/ubix/ssp/ad/e/a0/o$f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/a0/o$f;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
