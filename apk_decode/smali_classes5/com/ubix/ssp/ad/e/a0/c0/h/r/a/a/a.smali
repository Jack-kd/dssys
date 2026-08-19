.class public Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;
    .locals 7

    .line 1
    const-string v0, "oaid"

    const-string v1, "ubix_sp_special_seed"

    new-instance v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    invoke-direct {v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;-><init>()V

    iput-object p0, v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a:Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "seed"

    invoke-static {p0, v1, v4}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :goto_1
    const-string v0, "seed_time"

    invoke-static {p0, v1, v0}, Lcom/ubix/ssp/ad/e/a0/v;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v5, v0

    if-lez v0, :cond_2

    :cond_1
    invoke-static {p0, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V

    return-object v3

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->b:Z

    iget-object v0, v3, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v4, v3, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a$a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const-string v0, "AdvertisingIdPlatform"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use global oaid"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    invoke-static {p0, v2}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V

    return-object v3

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;)V
    .locals 4

    .line 2
    const-string v0, "AdvertisingIdPlatform"

    :try_start_0
    const-string v1, "bindService start"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.hihonor.id.HnOaIdService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.hihonor.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, p1, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->e:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdvertisingIdInfo error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ubix/ssp/ad/e/a0/c0/h/r/a/a/b;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
