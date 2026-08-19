.class Lcom/ubix/ssp/ad/i/c$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/a$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/ubix/ssp/ad/d/a;

.field final synthetic d:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;ILandroid/view/View;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$f;->d:Lcom/ubix/ssp/ad/i/c;

    iput p2, p0, Lcom/ubix/ssp/ad/i/c$f;->a:I

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$f;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/c$f;->c:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 2
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ubix/ssp/ad/i/c$f;->a:I

    const/16 v0, 0x2c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$f;->c:Lcom/ubix/ssp/ad/d/a;

    iget v2, v2, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p1, v0, v2}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    return v1

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$f;->c:Lcom/ubix/ssp/ad/d/a;

    iget v2, v2, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p1, v0, v2}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
