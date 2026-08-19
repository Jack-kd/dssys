.class Lcom/ubix/ssp/ad/e/z/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$a;->a:Lcom/ubix/ssp/ad/e/z/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$a;->a:Lcom/ubix/ssp/ad/e/z/d;

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/z/d;->a(Lcom/ubix/ssp/ad/e/z/d;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$a;->a:Lcom/ubix/ssp/ad/e/z/d;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/z/d$a;->a:Lcom/ubix/ssp/ad/e/z/d;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/z/h;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
