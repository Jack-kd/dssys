.class public Lcom/ubix/ssp/ad/e/a0/y/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ZEdsMGJHVT0="

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->a:Ljava/lang/String;

    const-string v0, "WVdSa1JteGhaM009"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->b:Ljava/lang/String;

    const-string v0, "YzNSaGNuUkJZM1JwZG1sMGFXVno="

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->c:Ljava/lang/String;

    const-string v0, "WTNKbFlYUmxRMmh2YjNObGNnPT0="

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->d:Ljava/lang/String;

    const-string v0, "YzNSaGNuUkJZM1JwZG1sMGVRPT0="

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->e:Ljava/lang/String;

    const-string v0, "b09207f5c299c42708e1badb72c04025"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->f:Ljava/lang/String;

    const-string v0, "ff5e66b76340c5636aa40e7c6a46628f"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->g:Ljava/lang/String;

    const-string v0, "9b6bf0057c19bd94df69372d48ec7149"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->h:Ljava/lang/String;

    const-string v0, "c892ba238c98835d4d53a3faed43ee52"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->i:Ljava/lang/String;

    const-string v0, "b2f39f17253fa5e90a05d637249c53e1"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->j:Ljava/lang/String;

    const-string v0, "c1aafc7e23f24ba11aae492f5caa2d97"

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->k:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WVc1a2NtOXBaQzV2Y3k1Q2RXbHNaQT09"

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "UWxKQlRrUT0="

    invoke-direct {p0, v2}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/n;->a()Lcom/ubix/ssp/ad/e/a0/n$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/a0/n$b;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ubix/ssp/ad/e/a0/n$b;->a([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 10

    .line 3
    const/high16 v0, 0x10000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x10008000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/y/b;->b()I

    move-result v3

    const-string v4, "."

    const-class v5, Landroid/content/Context;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, [Landroid/content/Intent;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Z)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    return v2

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v9, Ljava/lang/CharSequence;

    filled-new-array {v7, v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v9, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->a:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {p2, v9}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v9, 0x0

    invoke-virtual {v3, v9, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/y/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Z)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->e()Lcom/ubix/ssp/ad/e/a0/y/d/d;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ubix/ssp/ad/e/a0/y/d/d;->a(Ljava/lang/String;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v8

    :catch_1
    :cond_5
    :goto_0
    return v2
.end method

.method private b()I
    .locals 1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/a0/y/b;->a()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .line 4
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :try_start_0
    new-instance p3, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, p1, p3}, Lcom/ubix/ssp/ad/e/a0/y/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    return v0
.end method
