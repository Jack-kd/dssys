.class Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/b$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ubix/ssp/ad/e/a0/c0/b$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/c0/b$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/b$a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "ubix_sp_seed"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOAIDGetComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/b$a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->b:Landroid/content/Context;

    const-string v3, "seed"

    invoke-static {v2, v0, v3, v1}, Lcom/ubix/ssp/ad/e/a0/v;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;->b:Lcom/ubix/ssp/ad/e/a0/c0/b$a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "seed_expired"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x337f9800

    add-long/2addr v3, v5

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
