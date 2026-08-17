.class Lcom/ubix/ssp/ad/h/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/h/b;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ubix/ssp/ad/h/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/h/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/h/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/b;->a(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->z()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/b;->c(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/h/b;->a(Lcom/ubix/ssp/ad/h/b;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/b;->b(Lcom/ubix/ssp/ad/h/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/l;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/b;->c(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/ubix/ssp/ad/e/a0/l;-><init>(Landroid/view/View;II)V

    invoke-static {v0, v2}, Lcom/ubix/ssp/ad/h/b;->a(Lcom/ubix/ssp/ad/h/b;Lcom/ubix/ssp/ad/e/a0/l;)Lcom/ubix/ssp/ad/e/a0/l;

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/b;->d(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/e/a0/l;

    move-result-object v0

    iget-object v2, p0, Lcom/ubix/ssp/ad/h/b$a;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/ubix/ssp/ad/e/a0/l;->b(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x5

    const-string v1, "\u521b\u5efa/\u5c55\u793aPopupwindow\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/h/b;->a(Lcom/ubix/ssp/ad/h/b;Lcom/ubix/ssp/open/AdError;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/h/b;->e(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/g/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/b$a;->b:Lcom/ubix/ssp/ad/h/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/h/b;->e(Lcom/ubix/ssp/ad/h/b;)Lcom/ubix/ssp/ad/g/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ubix/ssp/ad/g/e;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_1
    return-void
.end method
