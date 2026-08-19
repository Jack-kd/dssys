.class Lcom/ubix/ssp/ad/e/a0/c0/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/c0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/c0/b;->b(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->a:Z

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->b:Landroid/content/Context;

    const-string v0, "seed"

    const-string v1, "ubix_sp_seed"

    invoke-static {p1, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->b:Landroid/content/Context;

    const-string v0, "oaid"

    invoke-static {p1, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->y()Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/b$a$a;-><init>(Lcom/ubix/ssp/ad/e/a0/c0/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/c0/b$a;->a:Z

    return v0
.end method
