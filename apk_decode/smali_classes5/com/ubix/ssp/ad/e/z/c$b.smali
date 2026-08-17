.class Lcom/ubix/ssp/ad/e/z/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/z/c;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/z/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/z/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/c$b;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c$b;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/c;->b(Lcom/ubix/ssp/ad/e/z/c;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c$b;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/c;->c(Lcom/ubix/ssp/ad/e/z/c;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c$b;->a:Lcom/ubix/ssp/ad/e/z/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/z/c;->c(Lcom/ubix/ssp/ad/e/z/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/z/c$b;->a:Lcom/ubix/ssp/ad/e/z/c;

    new-instance v1, Lcom/ubix/ssp/ad/e/z/c$b$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/z/c$b$a;-><init>(Lcom/ubix/ssp/ad/e/z/c$b;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
