.class Lcom/ubix/ssp/ad/k/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/open/AdError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/k/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$c;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$c;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const-string v2, "reward"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/k/b$c;->a:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v1}, Lcom/ubix/ssp/ad/k/b;->b(Lcom/ubix/ssp/ad/k/b;)Lcom/ubix/ssp/ad/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/b;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
