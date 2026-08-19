.class Lcom/ubix/ssp/ad/k/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/k/b;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ubix/ssp/ad/k/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/k/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/k/b$f;->b:Lcom/ubix/ssp/ad/k/b;

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/k/b$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/k/b$f;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/k/b$f;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {p1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/k/b$f;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/k/b$f;->b:Lcom/ubix/ssp/ad/k/b;

    invoke-static {v0, p1}, Lcom/ubix/ssp/ad/k/b;->a(Lcom/ubix/ssp/ad/k/b;Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method
