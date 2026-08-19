.class Lcom/ubix/ssp/ad/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/b;->a(Lcom/ubix/ssp/ad/d/l$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_TRIGGER__"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__CLICK_AREA__"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__RAW_DOWN_X__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "__RAW_UP_X__"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__RAW_DOWN_Y__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "__RAW_UP_Y__"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__DOWN_X__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "__UP_X__"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const-string v1, "__DOWN_Y__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "__UP_Y__"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getInterface()Lcom/ubix/ssp/ad/g/k/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/b;->getInterface()Lcom/ubix/ssp/ad/g/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/b$a;->a:Lcom/ubix/ssp/ad/b;

    iget-object v2, v1, Lcom/ubix/ssp/ad/b;->a:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
