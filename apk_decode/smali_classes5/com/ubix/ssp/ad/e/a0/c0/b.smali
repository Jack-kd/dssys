.class public final Lcom/ubix/ssp/ad/e/a0/c0/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/Object;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/a0/c0/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c0/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/ubix/ssp/ad/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ubix_sp_seed"

    const-string v1, "android_id"

    invoke-static {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/ubix/ssp/ad/e/a0/c0/b;->b(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/c0/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    sput-object p0, Lcom/ubix/ssp/ad/e/a0/c0/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "ubix_sp_seed"

    :try_start_0
    sget-object v1, Lcom/ubix/ssp/ad/e/a0/c0/b;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/ubix/ssp/ad/e/a0/c0/b;->a:Ljava/lang/String;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "seed"

    invoke-static {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "oaid"

    invoke-static {p0, v0, v1}, Lcom/ubix/ssp/ad/e/a0/v;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    sput-object p0, Lcom/ubix/ssp/ad/e/a0/c0/b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    sget-object p0, Lcom/ubix/ssp/ad/e/a0/c0/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 5

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/a0/c0/b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/ubix/ssp/ad/e/a0/c0/b;->c:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/ubix/ssp/ad/d/b;->s:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/ubix/ssp/ad/e/a0/c0/b;->c:J

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/c0/b$a;

    invoke-direct {v1, p1, p0}, Lcom/ubix/ssp/ad/e/a0/c0/b$a;-><init>(ZLandroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/ubix/ssp/ad/e/a0/c0/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/a0/c0/c;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
