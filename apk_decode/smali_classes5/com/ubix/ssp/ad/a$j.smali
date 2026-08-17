.class Lcom/ubix/ssp/ad/a$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ubix/ssp/ad/e/a0/d$e;Lcom/ubix/ssp/ad/e/a0/d$d;Lcom/ubix/ssp/ad/e/a0/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/d;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/d$e;

.field final synthetic c:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;Lcom/ubix/ssp/ad/e/a0/d;Lcom/ubix/ssp/ad/e/a0/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$j;->c:Lcom/ubix/ssp/ad/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/a$j;->a:Lcom/ubix/ssp/ad/e/a0/d;

    iput-object p3, p0, Lcom/ubix/ssp/ad/a$j;->b:Lcom/ubix/ssp/ad/e/a0/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JZ)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockPredict-onPopup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$j;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$j;->b:Lcom/ubix/ssp/ad/e/a0/d$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/a0/d$e;->a(JZ)V

    :cond_1
    return-void
.end method

.method public b(JZ)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockPredict-onPopup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$j;->a:Lcom/ubix/ssp/ad/e/a0/d;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/a$j;->b:Lcom/ubix/ssp/ad/e/a0/d$e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/a0/d$e;->b(JZ)V

    :cond_1
    return-void
.end method
