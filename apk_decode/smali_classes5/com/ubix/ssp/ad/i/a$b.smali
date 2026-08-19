.class Lcom/ubix/ssp/ad/i/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/a;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/i/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/a;->k(Lcom/ubix/ssp/ad/i/a;)Lcom/ubix/ssp/ad/g/k/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/a;->k(Lcom/ubix/ssp/ad/i/a;)Lcom/ubix/ssp/ad/g/k/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/a;->h(Lcom/ubix/ssp/ad/i/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/g/k/f;->d(I)V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/a;->i(Lcom/ubix/ssp/ad/i/a;)Lcom/ubix/ssp/ad/i/e/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/a;->i(Lcom/ubix/ssp/ad/i/a;)Lcom/ubix/ssp/ad/i/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/a$b;->a:Lcom/ubix/ssp/ad/i/a;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/b;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/i/e/a;->a(Z)V

    :cond_1
    return-void
.end method
