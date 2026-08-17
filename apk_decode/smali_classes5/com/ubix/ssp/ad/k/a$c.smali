.class Lcom/ubix/ssp/ad/k/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/a;->a(ZIIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/i;

.field final synthetic b:Lcom/ubix/ssp/ad/k/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/a;Lcom/ubix/ssp/ad/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/a$c;->b:Lcom/ubix/ssp/ad/k/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/k/a$c;->a:Lcom/ubix/ssp/ad/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$c;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$c;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->E(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "__CLICK_AREA__"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$c;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->F(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/a$c;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/a;->a(Lcom/ubix/ssp/ad/k/a;)Lcom/ubix/ssp/ad/g/k/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/a$c;->a:Lcom/ubix/ssp/ad/e/i;

    iget-object v2, p0, Lcom/ubix/ssp/ad/k/a$c;->b:Lcom/ubix/ssp/ad/k/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/k/a;->G(Lcom/ubix/ssp/ad/k/a;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
