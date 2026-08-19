.class abstract Lcom/ubix/ssp/ad/e/w/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/w/g;


# static fields
.field protected static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/ubix/ssp/ad/e/w/n;",
            ">;"
        }
    .end annotation
.end field

.field static b:Z

.field protected static c:Lcom/ubix/ssp/ad/e/w/i;

.field protected static d:Z


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:Lcom/ubix/ssp/ad/e/w/c;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Lcom/ubix/ssp/ad/e/w/s/c;

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcom/ubix/ssp/ad/e/w/l;

.field protected o:Lcom/ubix/ssp/ad/e/w/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/w/b;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ubix/ssp/ad/e/w/b;->b:Z

    sput-boolean v0, Lcom/ubix/ssp/ad/e/w/b;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->k:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->l:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->f:Lcom/ubix/ssp/ad/e/w/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/i;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->k:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->l:Z

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->m:Z

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/b;->e:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/w/i;->a()Lcom/ubix/ssp/ad/e/w/i;

    move-result-object p2

    sput-object p2, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/l;->a()Lcom/ubix/ssp/ad/e/w/l;

    move-result-object p2

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/w/b;->n:Lcom/ubix/ssp/ad/e/w/l;

    new-instance p2, Lcom/ubix/ssp/ad/e/w/m;

    invoke-direct {p2}, Lcom/ubix/ssp/ad/e/w/m;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/w/b;->o:Lcom/ubix/ssp/ad/e/w/m;

    new-instance p2, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->o:Lcom/ubix/ssp/ad/e/w/m;

    const-string v1, "Ubix.TaskQueueThread"

    invoke-direct {p2, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/p;->b()V

    sget-object p2, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-object p2, p2, Lcom/ubix/ssp/ad/e/w/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/e/w/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ubix/ssp/ad/e/w/s/c;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/w/b;->e:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/w/b;->m:Z

    invoke-direct {p1, p2, v0}, Lcom/ubix/ssp/ad/e/w/s/c;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/b;->i:Lcom/ubix/ssp/ad/e/w/s/c;

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/w/b;->e:Landroid/content/Context;

    move-object p2, p0

    check-cast p2, Lcom/ubix/ssp/ad/e/w/n;

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/w/c;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/w/n;)Lcom/ubix/ssp/ad/e/w/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/b;->f:Lcom/ubix/ssp/ad/e/w/c;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/w/b;->d()V

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/h;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-----.AbsUbixDataAPI"

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/ubix/ssp/ad/e/w/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/w/b;->f:Lcom/ubix/ssp/ad/e/w/c;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/w/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/ubix/ssp/ad/e/w/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static b()Z
    .locals 2

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    if-nez v0, :cond_0

    const-string v0, "-----.AbsUbixDataAPI"

    const-string v1, "SAConfigOptions is null"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/w/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/w/a;->i:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/b;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/w/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/p;->a()V

    :cond_0
    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean v1, v0, Lcom/ubix/ssp/ad/e/w/i;->j:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/w/a;->g:Z

    invoke-interface {p0, v0}, Lcom/ubix/ssp/ad/e/w/g;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/w/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/w/b;->b(Lcom/ubix/ssp/ad/e/w/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/w/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3
    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/w/b;->h:Z

    new-instance v0, Lcom/ubix/ssp/ad/e/w/i;

    invoke-direct {v0, p1}, Lcom/ubix/ssp/ad/e/w/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/ubix/ssp/ad/e/w/b;->h:Z

    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->e:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ubix/ssp/ad/core/monitor/data/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ubix/ssp/ad/core/monitor/data/c/b;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/w/b;->n:Lcom/ubix/ssp/ad/e/w/l;

    sget-object v0, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/e/w/a;->f:Z

    invoke-virtual {p2, v0}, Lcom/ubix/ssp/ad/e/w/l;->a(Z)V

    sget-object p2, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean v0, p2, Lcom/ubix/ssp/ad/e/w/i;->j:Z

    if-eqz v0, :cond_1

    iget-boolean p2, p2, Lcom/ubix/ssp/ad/e/w/a;->g:Z

    invoke-interface {p0, p2}, Lcom/ubix/ssp/ad/e/w/g;->a(Z)V

    :cond_1
    sget-object p2, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean p2, p2, Lcom/ubix/ssp/ad/e/w/a;->i:Z

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/w/h;->a(Z)V

    invoke-interface {p0, p1}, Lcom/ubix/ssp/ad/e/w/g;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/w/a;->b:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/w/p;->a()V

    :cond_2
    sget-object p1, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-wide v3, p1, Lcom/ubix/ssp/ad/e/w/a;->e:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-nez p2, :cond_3

    const-wide/32 v3, 0x2000000

    invoke-virtual {p1, v3, v4}, Lcom/ubix/ssp/ad/e/w/i;->a(J)Lcom/ubix/ssp/ad/e/w/i;

    :cond_3
    sget-object p1, Lcom/ubix/ssp/ad/e/w/b;->c:Lcom/ubix/ssp/ad/e/w/i;

    iget-boolean p1, p1, Lcom/ubix/ssp/ad/e/w/a;->i:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/ubix/ssp/ad/e/w/b;->j:Z

    sput-boolean v1, Lcom/ubix/ssp/ad/e/w/b;->d:Z

    :cond_4
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b;->n:Lcom/ubix/ssp/ad/e/w/l;

    new-instance v1, Lcom/ubix/ssp/ad/e/w/b$a;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/w/b$a;-><init>(Lcom/ubix/ssp/ad/e/w/b;)V

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/w/l;->a(Ljava/lang/Runnable;)V

    return-void
.end method
