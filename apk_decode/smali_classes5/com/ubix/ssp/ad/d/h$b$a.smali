.class Lcom/ubix/ssp/ad/d/h$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/UBiXDownloadConfirmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/d/h$b;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/g/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/g/b;

.field final synthetic b:Lcom/ubix/ssp/ad/d/h$b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/h$b;Lcom/ubix/ssp/ad/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h$b$a;->b:Lcom/ubix/ssp/ad/d/h$b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/h$b$a;->a:Lcom/ubix/ssp/ad/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const-string v0, "custom download: onCancel"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h$b$a;->a:Lcom/ubix/ssp/ad/g/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/b;->onCancel()V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 1

    const-string v0, "custom download: onClose"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h$b$a;->a:Lcom/ubix/ssp/ad/g/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/b;->onClose()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 1

    const-string v0, "custom download: onConfirm"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h$b$a;->a:Lcom/ubix/ssp/ad/g/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ubix/ssp/ad/g/b;->onConfirm()V

    :cond_0
    return-void
.end method
