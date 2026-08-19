.class Lcom/ubix/ssp/ad/d/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/d/h;->setCustomDownloadConfirmListener(Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;

.field final synthetic b:Lcom/ubix/ssp/ad/d/h;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/d/h;Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/d/h$b;->b:Lcom/ubix/ssp/ad/d/h;

    iput-object p2, p0, Lcom/ubix/ssp/ad/d/h$b;->a:Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/ad/g/b;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/d/h$b;->a:Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;

    new-instance v1, Lcom/ubix/ssp/ad/d/h$b$a;

    invoke-direct {v1, p0, p3}, Lcom/ubix/ssp/ad/d/h$b$a;-><init>(Lcom/ubix/ssp/ad/d/h$b;Lcom/ubix/ssp/ad/g/b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/ubix/ssp/open/UBiXDownloadConfirmListener;->onDownloadConfirm(Landroid/content/Context;Landroid/os/Bundle;Lcom/ubix/ssp/open/UBiXDownloadConfirmCallback;)V

    return-void
.end method
