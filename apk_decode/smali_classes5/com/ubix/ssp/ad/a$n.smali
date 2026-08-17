.class Lcom/ubix/ssp/ad/a$n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/d;

.field final synthetic c:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;ILcom/ubix/ssp/ad/e/a0/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$n;->c:Lcom/ubix/ssp/ad/a;

    iput p2, p0, Lcom/ubix/ssp/ad/a$n;->a:I

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$n;->b:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivity onHide"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ubix/ssp/ad/a$n;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$n;->b:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$n;->c:Lcom/ubix/ssp/ad/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/a;->f:Lcom/ubix/ssp/ad/a$x;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ubix/ssp/ad/a$n;->a:I

    const/16 v2, 0xc

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
