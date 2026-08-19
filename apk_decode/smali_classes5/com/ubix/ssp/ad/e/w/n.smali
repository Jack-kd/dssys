.class public Lcom/ubix/ssp/ad/e/w/n;
.super Lcom/ubix/ssp/ad/e/w/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/w/b;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/w/n;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ubix/ssp/ad/e/w/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/ubix/ssp/ad/e/w/o;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/o;-><init>()V

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Lcom/ubix/ssp/ad/e/w/o;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/o;-><init>()V

    return-object p0

    :cond_1
    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/ad/e/w/n;

    if-nez p0, :cond_2

    const-string p0, "-----.AbsUbixDataAPI"

    const-string v1, "The static method sharedInstance(context, serverURL, debugMode) should be called before calling sharedInstance()"

    invoke-static {p0, v1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/ubix/ssp/ad/e/w/o;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/o;-><init>()V

    :cond_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)Lcom/ubix/ssp/ad/e/w/n;
    .locals 2

    .line 2
    if-nez p0, :cond_0

    new-instance p0, Lcom/ubix/ssp/ad/e/w/o;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/w/o;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/w/n;

    if-nez v1, :cond_1

    new-instance v1, Lcom/ubix/ssp/ad/e/w/n;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/w/n;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/ubix/ssp/ad/e/w/n;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)Lcom/ubix/ssp/ad/e/w/n;

    move-result-object p0

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/w/b;->h:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/w/b;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context\u3001UbixConfigOptions \u4e0d\u53ef\u4ee5\u4e3a null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static j()Lcom/ubix/ssp/ad/e/w/n;
    .locals 3

    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/w/n;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/ubix/ssp/ad/e/w/o;

    invoke-direct {v1}, Lcom/ubix/ssp/ad/e/w/o;-><init>()V

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static l()Lcom/ubix/ssp/ad/e/w/n;
    .locals 1

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/w/o;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/w/o;-><init>()V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/w/n;->j()Lcom/ubix/ssp/ad/e/w/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/b;->g:Ljava/lang/String;

    const-string p1, "-----.AbsUbixDataAPI"

    const-string v0, "Server url is null or empty."

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->n:Lcom/ubix/ssp/ad/e/w/l;

    new-instance v1, Lcom/ubix/ssp/ad/e/w/n$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/w/n$a;-><init>(Lcom/ubix/ssp/ad/e/w/n;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/w/l;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->b(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "md_event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string p1, "SDKEvent"

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/e/w/n;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->n:Lcom/ubix/ssp/ad/e/w/l;

    new-instance v1, Lcom/ubix/ssp/ad/e/w/n$b;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/w/n$b;-><init>(Lcom/ubix/ssp/ad/e/w/n;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/w/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->n:Lcom/ubix/ssp/ad/e/w/l;

    new-instance v1, Lcom/ubix/ssp/ad/e/w/n$c;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/w/n$c;-><init>(Lcom/ubix/ssp/ad/e/w/n;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/w/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()I
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget v0, v0, Lcom/ubix/ssp/ad/e/w/a;->d:I

    return v0
.end method

.method public h()I
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget v0, v0, Lcom/ubix/ssp/ad/e/w/a;->c:I

    return v0
.end method

.method public i()J
    .locals 2

    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-wide v0, v0, Lcom/ubix/ssp/ad/e/w/a;->e:J

    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->g:Ljava/lang/String;

    return-object v0
.end method
