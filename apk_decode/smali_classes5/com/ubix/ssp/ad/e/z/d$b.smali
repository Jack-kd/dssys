.class Lcom/ubix/ssp/ad/e/z/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/z/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/z/d;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$b;->a:Lcom/ubix/ssp/ad/e/z/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$b;->a:Lcom/ubix/ssp/ad/e/z/d;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$b;->a:Lcom/ubix/ssp/ad/e/z/d;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/e/z/h;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$b;->a:Lcom/ubix/ssp/ad/e/z/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/z/d;->a(Lcom/ubix/ssp/ad/e/z/d;Z)Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$b;->a:Lcom/ubix/ssp/ad/e/z/d;

    iget-object v0, p1, Lcom/ubix/ssp/ad/e/z/h;->e:Lcom/ubix/ssp/ad/e/z/h$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ubix/ssp/ad/e/z/h$c;->a(Lcom/ubix/ssp/ad/e/z/h;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 0

    return-void
.end method
