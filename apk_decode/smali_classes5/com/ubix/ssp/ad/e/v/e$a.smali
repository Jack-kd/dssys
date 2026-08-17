.class public Lcom/ubix/ssp/ad/e/v/e$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/v/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ubix/ssp/ad/e/v/e$b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/e$a;->a:Lcom/ubix/ssp/ad/e/v/e$b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/v/e$a;->a:Lcom/ubix/ssp/ad/e/v/e$b;

    if-eqz p1, :cond_2

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/AdError;

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/v/e$a;->a:Lcom/ubix/ssp/ad/e/v/e$b;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/ad/e/v/e;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
