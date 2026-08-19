.class Lcom/ubix/ssp/ad/k/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/l;

.field final synthetic b:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;Lcom/ubix/ssp/ad/e/l;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/k/a$d;->a:Lcom/ubix/ssp/ad/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->H(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->I(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "__CLICK_AREA__"

    const-string v1, "21"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->b(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "__CLICK_TRIGGER__"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$d;->a:Lcom/ubix/ssp/ad/e/l;

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/k/a;->c(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$d;->b:Lcom/ubix/ssp/ad/k/a;

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a$d;->a:Lcom/ubix/ssp/ad/e/l;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
