.class Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;
.super Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/b/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJZFDLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAIDCallBack handleResult retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvertisingIdPlatform"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    if-eqz p1, :cond_2

    const-string p1, "oa_id_limit_state"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    iput-boolean p1, p2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->b:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OAIDLimitCallback handleResult success  isLimit="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OAIDLimitCallback handleResult error retCode= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b$c;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
